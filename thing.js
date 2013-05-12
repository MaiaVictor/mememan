require("prelude-ls").installPrelude(global);
require("viclib")();
(function(){
  var quadtree;
  quadtree = require('./quadtree');
  global.things = [];
  global.tree = quadtree({
    width: 128,
    height: 128
  });
  global.get_around = function(x, y){
    return tree.get(x - B / 2, y - B / 2, x + B / 2, y + B / 2);
  };
  global.has_solid = function(x, y){
    return !empty(filter(function(it){
      return it.solid;
    }, get_around(x, y)));
  };
  global.has_stair = function(x, y){
    return !empty(filter(function(it){
      return it.is_stair;
    }, get_around(x, y)));
  };
  global.thing = mixin(function(){
    var this$ = this;
    defer(function(){
      things.push(this$);
      return tree.add(this$, this$.pos.x, this$.pos.y);
    });
    return {
      draw: function(screen){
        var img, ref$;
        global.drw++;
        img = sprite(((ref$ = this$.sprite) != null ? ref$ : "ground/0") + (this$.dir != null && this$.dir === 1 ? "_r" : ""));
        return screen.image(img, this$.pos.x - img.width / 2 + camera.offset().x, this$.pos.y - img.height / 2 + camera.offset().y);
      },
      destroy: function(){
        return defer(function(){
          return remove(things, this$);
        });
      },
      tick: function(dt){
        var near_things;
        this$.pos.x += this$.vel.x * dt;
        this$.pos.y += this$.vel.y * dt;
        if (!this$.floats) {
          this$.pos.y += 0.5 * G * dt * dt;
          this$.vel.y += G * dt;
        }
        this$.is_grounded = just(false);
        if (this$.collides) {
          near_things = tree.get(this$.pos.x - B * 4, this$.pos.y - B * 4, this$.pos.x + B * 4, this$.pos.y + B * 4);
          each(function(it){
            return this$.check_collision(it);
          }, near_things);
        }
        if (this$.pos.x !== this$.old_pos.x && this$.pos.y !== this$.old_pos.y) {
          tree.add(this$, this$.pos.x, this$.pos.y);
        }
        this$.old_pos.x = this$.pos.x;
        return this$.old_pos.y = this$.pos.y;
      },
      check_collision: function(b){
        var a, abs, ax, aw, axi, axf, ay, ah, ayi, ayf, bx, bw, bxi, bxf, by, bh, byi, byf, dx, dy, av, avx, avy;
        a = this$;
        abs = Math.abs;
        ax = a.pos.x;
        aw = a.size.x / 2;
        axi = ax - aw;
        axf = ax + aw;
        ay = a.pos.y;
        ah = a.size.y / 2;
        ayi = ay - ah;
        ayf = ay + ah;
        bx = b.pos.x;
        bw = b.size.x / 2;
        bxi = bx - bw;
        bxf = bx + bw;
        by = b.pos.y;
        bh = b.size.y / 2;
        byi = by - bh;
        byf = by + bh;
        dx = abs(bx - ax) - (aw + bw);
        dy = abs(by - ay) - (ah + bh);
        if (dx >= 0 || dy >= 0) {
          return false;
        }
        if (!this$.ghost && b.solid) {
          av = a.vel;
          avx = av.x;
          avy = av.y;
          if (dx > dy) {
            if ((bxi < axi && axi < bxf) && avx <= 0) {
              a.pos.x += bxf - axi;
              a.vel.x = 0;
            }
            if ((bxi < axf && axf < bxf) && avx >= 0) {
              a.pos.x += bxi - axf;
              a.vel.x = 0;
            }
          } else {
            if ((byi < ayi && ayi < byf) && avy <= 0) {
              a.pos.y += -dy;
              a.vel.y = 0;
            }
            if ((byi < ayf && ayf < byf) && avy >= 0) {
              a.pos.y += dy;
              a.vel.y = 0;
              this$.is_grounded = just(true);
            }
          }
        }
        if (typeof a.collide === 'function') {
          a.collide(b);
        }
        return true;
      },
      ghost: false,
      floats: false,
      solid: false,
      depth: 0,
      hp: 28,
      col: [200, 200, 200],
      size: v3(B, B, 0),
      dir: void 8,
      pos: v3(0, 0, 0),
      old_pos: v3(0, 0, 0),
      vel: v3(0, 0, 0)
    };
  });
}).call(this);

require("prelude-ls").installPrelude(global);
require("viclib")();
(function(){
  global.camera = mixin(function(){
    var this$ = this;
    return {
      pos: v3(0, 0, 0),
      scale: window.innerHeight / (16 * 16),
      target_y: void 8,
      width: 16 * 16 * window.innerWidth / window.innerHeight,
      height: 16 * 16,
      center: v3(8 * 16, 8 * 16 * window.innerWidth / window.innerHeight, 0),
      visible_objects: function(){
        var c;
        c = this$.center;
        return tree.get(c.x - 20 * B, c.y - 10 * B, c.x + 20 * B, c.y + 10 * B);
      },
      tick: function(dt){
        var ref$;
        this$.scale = window.innerHeight / (16 * 16);
        this$.width = window.innerWidth / this$.scale;
        this$.center = v3(this$.pos.x, this$.pos.y + this$.height / 2);
        this$.offset = {
          x: -this$.pos.x + window.innerWidth / this$.scale / 2,
          y: -this$.pos.y
        };
        if (this$.target_y == null && ((ref$ = global.hero) != null ? ref$.pos : void 8) != null) {
          this$.pos.y = hero.pos.y - 16 * 16;
          this$.target_y = floor(global.hero.pos.y / (16 * 16)) * 16 * 16;
        }
        this$.pos.x = global.hero.pos.x;
        if ((typeof hero != 'undefined' && hero !== null ? hero.pos.y : void 8) < this$.target_y) {
          this$.target_y -= 16 * B;
        }
        if ((typeof hero != 'undefined' && hero !== null ? hero.pos.y : void 8) > this$.target_y + 16 * 16) {
          this$.target_y += 16 * B;
        }
        if (abs(this$.pos.y - this$.target_y) > 8) {
          return this$.pos.y += (this$.target_y - this$.pos.y) / abs(this$.target_y - this$.pos.y) * 12 * 16 * dt;
        } else {
          return this$.pos.y = this$.target_y;
        }
      }
    };
  })();
}).call(this);

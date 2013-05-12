require("prelude-ls").installPrelude(global);
require("viclib")();
(function(){
  global.shot = mixin(thing, function(){
    var this$ = this;
    return {
      tick: after(this.tick, function(){
        if (time_since(this$.created) > 1.2) {
          return this$.destroy();
        }
      }),
      floats: true,
      created: now(),
      sprite: "shot/shot",
      size: v3(4, 4, 0),
      collides: true,
      dmg: 2,
      collide: function(it){
        if (it !== this$.owner) {
          it.hp -= this$.dmg;
        }
        if (it.solid) {
          return this$.destroy();
        }
      }
    };
  });
}).call(this);

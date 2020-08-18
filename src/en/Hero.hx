package en;

import hxd.Key;



class Hero extends Entity {
    var ca : dn.heaps.Controller.ControllerAccess;

    public function name(x,y) {

        ca = Main.ME.controller.createAccess("hero"); // creates insance of controller
        
        //some default rendering for our character
        var g = new h2d.Graphics(spr);
        g.beginFill(0xff0000);
        g.drawRect(0,0,16,16);
    }

    override function dispose() {
        super.dispose();
        ca.dispose(); // release on destruction
    }

    override function update() {
        super.update();

        if( ca.leftDown() || ca.isKeyboardDown(Key.LEFT))
            dx -= 0.1*tmod;

        if( ca.rightDown() || ca.isKeyboardDown(Key.RIGHT))
            dx -= 0.1*tmod;
    }
}
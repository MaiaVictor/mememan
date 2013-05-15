global.hardstage = do mixin stage, ~>
	music: "hardman"
	background: ~> 
		if 100 < camera.pos.y < 1700 then
			sprite("stages/hardstage/sprites/cavern.png")
		else
			sprite("stages/hardstage/sprites/mountains.png")
	objects:
		o: ground
		M: mememan
		b: bee_queen
		X: bar
		h: stair
		T: trapdoor
		m: macer
		H: stair
		B: hardman

	stage_map: <[
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo........................b.....................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..............................................ooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo..T.T.T.T.T.....T.T...T.......T.T......m......oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooo..ooooT.ooooooooooooooooooooooo.oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooHoooooooooooooT.ooooooooooooooooooooooooooooo.oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooo.oooooooooooooooooooooooooooooooooo

		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooo,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooHoooo,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooH,oooooooooXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooH,oooooooooXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooH,oooooooooXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................oooooooooooooooooooooooooooooooooH,oooooooooXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,oXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,oXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooo,,,,m,,,,,oXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooo,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooo,,B,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		...........................................................................................................................................................................ooooooooooooooooooooooooooooooooooooooooooHoXoHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

		
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,XX,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooHoXoHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,XX,,,,,,,,,,,,,,,ooooooooooooooooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,XX,,,,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,XX,,,,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,XX,,,,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,,,,,,,,,,m,,,,,,,,oX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,oooooooooooooooooooX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,,,,,,,,,,,,,,oooooooooooooooooooo,,,,,,,,,,,oooooooooooooooooooX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooX,Hooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,b,,,,,,,,,ooooooooooooooooooooooX,,ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,,,,,,m,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooX,,ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,XX,,,oooooooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooX,,ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooo,,,,,,,,,ooooooooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,m,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooXoooooXoooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,H,oooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,H,oooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,,,,,,,,H,oooooooooooooooooooooooooooooooooo
		..........................................................................................................ooooooooooooooooooooooooooooooooo,,,m,,,,,,H,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		..........................................................................................................oooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo

		....................................................................oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		....................................................................oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		....................................................................oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooH,oooooooooooooooooooooooooooooooooo
		....................................................................oooooooooooooooooooooooooooooooooo,,,,,,,,,,oooooooooooooooo,,ooooooooooooooo,,ooH,oooooooooooooooooooooooooooooooooo
		....................................................................oooooooooooooooooooooooooooooooooo,,,,,,,,,,ooooooooooo,,,,,,,,,,,,,,,,oooo,,,,,,H,oooooooooooooooooooooooooooooooooo
		....................................................................oooooooooooooooooooooooooooooooooo,,,,,,,,,,,,,,,oo,,,,,,,,,,,,,,,,,,,,,,oo,,,,,,H,oooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHooooo,,,,,,,,,,,,,,,b,,,,,,,,,,,,,b,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHooooooo,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,m,,,,,,,oooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooooo,,,,,,,,,,,,,,,,,,,,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHooooooooo,,,,,,,,,,,,,m,,,,,oooooooooooooooooooooooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		....................................................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
	
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooHoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,,,,,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,,m,,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,oooooH,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooH,,oooooH,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................oooooooooooooooooooooooooooooooooo,,,oooooH,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................oooooooooooooooooooooooooooooooooo,,,oooooH,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................oooooooooooooooooooooooooooooooooo,,,ooo,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................oooooooooooooooooooooooooooooooooo,,,ooo,,,,,,oooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooo.............................................ooooooooooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooo

		oooooooooooooooooooooooX.X..........................................ooooooooooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooX.X..........................................ooooooooooooooooooooooooooooooooooooooooHooooooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooX.X....................................................................ooooooo,,,,,,,H,,,,ooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooX........................................................................oooo,,,,,,,,,,,,ooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooo.........................................................................oooo,,,,,,,,,,,,ooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooX.........................................................................ooo,,,,,,,,,,,,ooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooX........................................................b................ooo,*,,,,,,,,,,ooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooX..........................................................................ooooT,T,T,oooHooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooo...........................................................................oooooooooooooHooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooXX.................................b............ooooo........oo..............oooooooooooHooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooX...........................................ooooooooo......oooo..............oooooooooooHooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooXX..........................oo.............ooooooooooooo...oooooo.......ooo....oooooo....ooooooooooooooooooooooooooooooooooo
		ooooooooooooooooooooooooxx....M..................T.oooo............oooooooooooooo..ooooooT.T.T.oooo..............ooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
		oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
	]>

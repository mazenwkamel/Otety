/// @desc Spawn the enemy facing Otety & Enemy Variables

horizontalSpeed = 1;
horizontalFallSpeed = 0.75;
verticalSpeed = 0;
verticalAcceleration = 1.05
grav = 0.2;

speed = horizontalFallSpeed;

if (x > obj_otety.x) {
	image_xscale = -1;
}
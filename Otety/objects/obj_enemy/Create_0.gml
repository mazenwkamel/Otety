/// @desc Spawn the enemy facing Otety & Enemy Variables

/// Variables
horizontalSpeed = 1;
horizontalFallSpeed = 0.75;
verticalSpeed = 0;
verticalAcceleration = 1.05
grav = 0.2;


/// Inital Values
speed = horizontalFallSpeed;


/// Spawn Direction
if (x > obj_otety.x) {
	image_xscale = -1;
}
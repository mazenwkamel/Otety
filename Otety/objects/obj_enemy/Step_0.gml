/// @desc Move the enemy towards Otety

/// Free fall
verticalSpeed += grav * verticalAcceleration;


/// Vertical Collision 
if (place_meeting(x, y + verticalSpeed, obj_inv_wall))
{
	while(!place_meeting(x, y + sign(verticalSpeed), obj_inv_wall))
	{
		y = y + sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;


/// Movement
if (verticalSpeed != 0) { // In Air
	speed = horizontalFallSpeed;
} else { // Grounded
	speed = horizontalSpeed;
}
direction = point_direction(x, y, obj_otety.x, y);

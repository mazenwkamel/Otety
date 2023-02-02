/// @description Player movement


//Set Player direction
if(x > mouse_x)
{
	image_xscale = -1;
} else 
{
	image_xscale =1;
}


//Get player input
leftKey = keyboard_check(ord("A"));
rightKey = keyboard_check(ord("D"));
jumpKey = keyboard_check(vk_space);

var _move = rightKey - leftKey;

horizontalSpeed = _move * walkSpeed;

verticalSpeed += grav;

if (place_meeting(x,y+1,obj_inv_wall)) && (jumpKey)
{
	verticalSpeed = -jumpSpeed;	
}
//Horizontal Collision 

if (place_meeting(x+horizontalSpeed,y,obj_inv_wall))
{
	while(!place_meeting(x+sign(horizontalSpeed),y,obj_inv_wall))
	{
		x = x + sign(horizontalSpeed);	
	}
	horizontalSpeed = 0;
}

x = x + horizontalSpeed;

//Vertical Collision 

if (place_meeting(x,y+ verticalSpeed,obj_inv_wall))
{
	while(!place_meeting(x,y+sign(verticalSpeed),obj_inv_wall))
	{
		y = y + sign(verticalSpeed);	
	}
	verticalSpeed = 0;
}

y = y + verticalSpeed;



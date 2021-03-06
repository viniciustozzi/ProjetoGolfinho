///player_move_state(collision_object)

//var col_obj = argument0;

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (right)
    hSpeed = mSpeed;
else if (left)
    hSpeed = -mSpeed;
    
if (up)
    vSpeed = -mSpeed;
else if (down)
    vSpeed = mSpeed;
    
if (!right && !left)
    hSpeed = 0;
if (!up && !down)
    vSpeed = 0;

if (hSpeed != 0){
    image_xscale = sign(hSpeed);
}

//Check horizontal collision
if (place_meeting(x + hSpeed, y, Solid)){
    while(!place_meeting(x+sign(hSpeed), y, Solid)){
        x += sign(hSpeed);
    }
    hSpeed = 0;
}
x += hSpeed;

//Check vertical collision
if (place_meeting(x, y + vSpeed, Solid)){
    while(!place_meeting(x, y + sign(vSpeed), Solid)){
        y += sign(vSpeed);
    }
    vSpeed = 0;
}
y += vSpeed;

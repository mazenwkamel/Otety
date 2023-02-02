/// @desc Game Variables
maxEnemyCount = 5;

function spawnEnemy() 
{
	if (instance_number(obj_enemy) < maxEnemyCount) {
		spawnPointNumber = random(instance_number(obj_enemy_spawn));
		spawnPoint = instance_find(obj_enemy_spawn, spawnPointNumber);
		instance_create_layer(spawnPoint.x, spawnPoint.y, layer_get_id("Instances"), obj_enemy);
	}
}

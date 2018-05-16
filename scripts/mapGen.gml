//create new map and place enemies.

var mapSize = objGameControl.mapSize;

//ds_grid_clear(objGameControl.gameMap, 0);
var monsterCount = 5;
for(j = 0;j<mapSize;j++){
    for(i = 0;i<mapSize;i++){
        tile_add(bkrBasicTile, 0, 0, 32, 32, i*32, j*32, 1);
        
        if((irandom(100) >= 99) && (monsterCount > 0)){
            monsterCount--;
            newInstance = instance_create(i*32, j*32, objBasicHero);
            ds_list_add(heroList, newInstance);
            show_debug_message( string(i) + " : " + string(j) + " monsterCount : " + string(monsterCount));
        }    
        
    }
}


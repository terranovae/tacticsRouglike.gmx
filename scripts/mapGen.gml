//create new map and place enemies.

var mapSize = objGameControl.mapSize;

//ds_grid_clear(objGameControl.gameMap, 0);
var monsterCount = 0;
for(j = 0;j<mapSize;j++){
    for(i = 0;i<mapSize;i++){
        tile_add(bkrBasicTile, 0, 0, 32, 32, i*32, j*32, 1);
        
        if((irandom(100) >= 99) && (monsterCount > 0)){
            monsterCount--;
            instance_create(i*32, j*32, objBasicHero);
            show_debug_message( string(i) + " : " + string(j) + " monsterCount : " + string(monsterCount));
        }    
        
    }
}
testPlayer = instance_create( 0, 0, objBasicHero);
testPlayer.playerControlled = 1;
testPlayer.myTurn = 1;


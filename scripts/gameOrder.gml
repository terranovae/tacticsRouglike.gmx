
if(ds_list_size(heroList) > 0){ 
    show_debug_message("object : " + string(heroList[| turnOrder])); 
    if(heroList[| turnOrder].myTurn == 0){
        heroList[| turnOrder].turnTimer += heroList[| turnOrder].heroAgility;
        if(heroList[| turnOrder].turnTimer >= 100){
            heroList[| turnOrder].myTurn = true;
        }
    
    turnOrder++;
    if(turnOrder > ds_list_size(heroList)) turnOrder = 0;
    }
}

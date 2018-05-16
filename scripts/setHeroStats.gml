
//gives creatures their stats on creation.
var statBuy = 20;

var 
while(statBuy >0){
    stat = irandom(5);
    switch(stat){
        case 0:
            heroSpeed++;
        break;
        case 1:
            heroStrength++;
        break;
        case 2:
            heroAgility++;
        break;
        case 3:
            heroStealth++;
        break;
        case 4:
            heroSight++;
        break;
        case 5:
            heroHealth++;
        break;
        default:
            show_error("Case in setHeroStats default", true);
        break;
    }
    statBuy--;
}
        
      
heroSpeed++;
heroStrength++;
heroAgility++;
heroStealth++;
heroSight++;
heroHealth++;

if(heroSpeed > heroSight){
    var temp = heroSight;
    heroSight = heroSpeed;
    heroSpeed = temp;
}  

 show_debug_message( "health : " + string(heroHealth) + " speed : " + string(heroSpeed) + " Sight : " + string(heroSight));


//gives creatures their stats on creation.
var statBuy = 20;

var val = irandom(statBuy);
statBuy -= val;
objBasicHero.heroSpeed = 1 + val;

var val = irandom(statBuy);
statBuy -= val;
objBasicHero.heroStrength = 1 + val;

var val = irandom(statBuy);
statBuy -= val;
objBasicHero.heroAgility = 1 + val;

var val = irandom(statBuy);
statBuy -= val;
objBasicHero.heroStealth = 0 + val;

var val = irandom(statBuy);
statBuy -= val;
objBasicHero.heroSight = heroSpeed + val + 1 ;

objBasicHero.heroHealth = 3 + statBuy;

 show_debug_message( "health : " + string(heroHealth) + " speed : " + string(heroSpeed) + " Sight : " + string(heroSight));


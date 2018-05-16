playerControls();


switch(state){
    case 0: //waiting for turn
        if(myTurn){
            steps = heroSpeed;
            //show_debug_message("steps = " + string(steps));
            abilityUsed = 0;
            state = 2;   //set by objGameControl        
        }
        break;
        
/*    case 1: //set hero information (GUI stuff, center camera)
            
        break;*/
    
    case 2: //move hero/select ability to use (show move area)
            if(steps <= 0){
                myTurn = 0;
                turnTimer = 0;
                state = 0;
                /*if (abilityUsed){
                    state = 0;
                }else{
                    state = 3;
                }*/
            }
            playerMovement();
        break;

    case 3: //use ability
            steps = floor(steps/2);
            abilityUsed = 1;
            state = 2;
        break;
    }

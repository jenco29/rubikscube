char colChar(color c){
  if(c == red){
    return 'R';
  }
  else if(c == blue){
    return 'B';
  }
  else if(c == green){
    return 'G';
  }
  else if(c == yellow){
    return 'Y';
  }
  else if(c == orange){
    return 'O';
  }
  else{
    return 'W';
  }
}

void mapMid(int x){
    for(cubes c : cube){
      if(c.x == x){
        Boolean doneY = false;
        Boolean doneZ = false;
        if(c.y == -1){
          print(colChar(c.colours[5]));
          doneY = true;
          }
        if(c.z == 1 && doneY){
          print(colChar(c.colours[1]));        
        }
        if(c.z == 1 && c.y!= -1){
          print(colChar(c.colours[1]));  
          doneZ = true;
        } 
        if(c.y == 1 && doneZ){
          print(colChar(c.colours[4]));
          
        }

         
        

        /*
        if(c.z == 1){
          lfrb += colChar(c.colours[1]);
        }
        if(c.y == 1){
          lfrb += colChar(c.colours[4]);
        }
        if(c.z == -1){
          lfrb += colChar(c.colours[0]);
        }
        if(lfrb.length() % 12 == 0){
            println(lfrb);
            lfrb = "";
          }*/
      }
      
  }
  print("\n");
}

void map(){
  String up = "      ";
  for(cubes c : cube){
    if(c.x == -1){
      up += colChar(c.colours[3]);
      if(up.length() % 3 == 0){
        println(up);
        up = "      ";
      }
    }
  }
  
  mapMid(1);
  mapMid(0);
  mapMid(-1);
 
  String dwn = "      ";
  for(cubes c : cube){
    if(c.x == -1){
      dwn += colChar(c.colours[2]);
      if(dwn.length() % 3 == 0){
        println(dwn);
        dwn = "      ";
      }
    }
  }
}

//a way to check that each cube was generated correctly
int pieceType(int i){
  cubes c = cube[i];
  if((c.x==1 || c.x==-1) && (c.y==1 || c.y==-1) && (c.z==1 || c.z==-1)){
    return corner;
  }
  else if(c.x==0 && c.y==0 && c.z==0){
    return core;
  }
  else if(((c.x==1 || c.x==-1)^(c.y==1 || c.y==-1)) ^ (c.z==1 || c.z==-1)){
    return centre;
  }
  else{
    return edge;
  }

}

void menu(){
  
  //labels most of the sides- others figureable, only when l key pressed
    if(l){
    text("Up", -10, -100, 20);
    text("Down", -10, 120, 20 );
    text("Left",-120, 0, 20 );
    text("Right", 100, 0 , 20);
    text("Front", -10, 0, 100);
    }
    
    //prints commands 
    text("Shuffle cube: s", -150, -125, -20);
    text("Label sides: l", -150, -140, -20);
    text("Solve cube: space",-150, -155, -20);
    text("Start/stop timer: click",-150, -170, -20);
    text("Reset timer: r",-150, -185, -20);
    
}

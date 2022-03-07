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

//prints the colour of the cubies on each side in a map

void mapUp(int x){
  print("\n");
  print("    ");
  for(cubes c : cube){
    if(c.x == x){
      if(c.y == -1){
        char ch = colChar(c.colours[3]);
        print(ch);
      }
    } 
  }
}

void mapLeft(int z){
  print("\n");
  for(cubes c : cube){
    if(c.z == z){
      if(c.x == -1){
        print(colChar(c.colours[5]));
      }
    }
  }
  print(" ");
}

void mapFront(int y){
  for(cubes c : cube){
    if(c.y == y){
      if(c.z == 1){
        print(colChar(c.colours[1]));
      }
    }
  }
  print(" ");
}

void mapRight(int y){
  for(cubes c : cube){
    if(c.y == y){
      if(c.x == 1){
        print(colChar(c.colours[4]));
      }
    }
  }
  print(" ");
}

void mapBack(int y){
    for(cubes c : cube){
    if(c.y == y){
      if(c.z == -1){
        print(colChar(c.colours[0]));
      }
    }
  }
}

void mapDown(int x){
      print("    ");
  for(cubes c : cube){
    if(c.x == x){
      if(c.y == 1){
        print(colChar(c.colours[2]));
      }
    } 
  }
}


void plan(){
  for(int i=-1; i<2; i++){
    mapUp(i);
  }
  
  for(int i=-1; i<2; i++){
    mapLeft(i);
    mapFront(i);
    mapRight(i*-1);
    
  }
  print("\n");
  for(int i=-1; i<2; i++){
    mapDown(i);
    print("\n");
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
  
  //labels the sides, only when l key pressed
  if(l){
    if(L){
      fill(white);
    }
    fill(0);
    text("Up (3)", -10, -100, 20);
    text("Down (4)", -10, 120, 20 );
    text("Left (1)",-120, 0, 20 );
    text("Right (2)", 100, 0 , 20);
    text("Front (5)", -10, 0, 100);
    }
    
    
    //prints commands 
    text("Shuffle cube: s", -150, -125, -20);
    text("Label sides: l", -150, -140, -20);
    text("Solve cube: space",-150, -155, -20);
    text("Start/stop timer: click",-150, -170, -20);
    text("Reset timer: r",-150, -185, -20);
    text("Reverse move: shift", -150, -200, -20);

    
}

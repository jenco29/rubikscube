char checkCol(int num, int i){
  if(cube[i].colours[num] == green){
    return 'G';
  }
  else if(cube[i].colours[num] == blue){
    return 'B';
  }
  else if(cube[i].colours[num] == red){
    return 'R';
  }
  else if(cube[i].colours[num] == orange){
    return 'O';
  }
  else if(cube[i].colours[num] == white){
    return 'W';
  }
  else{
    return 'Y';
  }
  //will print the colour of each visible position in the cube
  
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
    text("Up", 0, -100);
    text("Down", 0, 300 );
    text("Left",-100, 0 );
    text("Right", 300, 0 );
    }
    
    //prints commands 
    text("Shuffle cube: s", -150, -145, -20);
    text("Label sides: l", -150, -160, -20);
    text("Solve cube: space",-150, -175, -20);
}

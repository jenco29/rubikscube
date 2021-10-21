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
  
}

int pieceType(int i){
  cubes c = cube[i];
  if(c.x==abs(1) && c.y==abs(1) && c.z==abs(1)){
    return corner;
  }
  else if(c.x==0 && c.y==0 && c.z==0){
    return core;
  }
  else if((c.x==abs(1)^c.y==abs(1)) ^ c.z==abs(1)){
    return centre;
  }
  else{
    return edge;
  }

}

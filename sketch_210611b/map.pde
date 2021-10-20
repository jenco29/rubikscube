char checkCol(int num, int i, int j, int k){
  if(cubies[i][j][k].colors[num] == green){
          return 'G';
        }
        else if(cubies[i][j][k].colors[num] == blue){
          return 'B';
        }
        else if(cubies[i][j][k].colors[num] == red){
          return 'R';
        }
        else if(cubies[i][j][k].colors[num] == orange){
          return 'O';
        }
        else if(cubies[i][j][k].colors[num] == white){
          return 'W';
        }
        else{
          return 'Y';
        }
  
}

int pieceType(cube c){
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

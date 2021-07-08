
void keyPressed(){
  switch(key){
    case ('1'):
    turnX(PI/2, 0);
    break;
    
    case ('2'):
    turnX(-PI/2, 2);
    break;
    
    case('3'):
    turnY(PI/2, 0);
    break;
    
    case('4'):
      turnY(-PI/2, 2);
      break;
      
      case('5'):
      turnZ(1);
      break;
      
      case('6'):
      turnZ(-1);
      break;
      
  }
}

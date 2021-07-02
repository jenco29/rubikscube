
void controls(){
  switch(key){
    case ('1'):
    turnZ(PI/2);
    break;
    
    case ('2'):
    turnZ(-PI/2);
    break;
    
    case('3'):
    turnY(PI/2);
    break;
    
    case('4'):
      turnY(-PI/2);
      break;
      
      case('5'):
      turnX(PI/2);
      break;
      
      case('6'):
      turnX(-PI/2);
      break;
      
  }
}

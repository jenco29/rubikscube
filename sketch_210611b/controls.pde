
void keyPressed(){
  switch(key){
    case ('1'):
    LeftRight(0);
    break;
    
    case ('2'):
    LeftRight(2);
    break;
    
    case('3'):
    UpDown(0);
    break;
    
    case('4'):
      UpDown(2);
      break;
      
      case('5'):
      FrontBack(2);
      break;
      
      case('6'):
      FrontBack(0);
      break;
      
      case('w'):
      xRotd = true;
      break;
      
      case('a'):
      yRotd = true;
      break;
      
     case('s'):
     xRotd = false;
     break;
     
     case('d'):
     yRotd = false;
     break;
     
      
  }
  
}


void keyPressed(){
  switch(key){
    case ('1'):
      LeftRight(0, 1);
      break;
    
    case ('2'):
      LeftRight(2, 1);
      break;
    
    case('3'):
      UpDown(0, 1);
      break;
    
    case('4'):
      UpDown(2, 1);
      break;
      
    case('5'):
      FrontBack(2, 1);
      break;
      
    case('6'):
      FrontBack(0, 1);
      break;
      
    case('!'):
      LeftRight(0, -1);
      break;
    
    case ('@'):
      LeftRight(2, -1);
      break;
    
    case('#'):
      UpDown(0, -1);
      break;
    
    case('$'):
      UpDown(2, -1);
      break;
      
    case('%'):
      FrontBack(2, -1);
      break;
      
    case('^'):
      FrontBack(0, -1);
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

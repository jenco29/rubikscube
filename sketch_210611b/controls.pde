
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
  

      
  }
  
}

void move(char m){
  switch(m){
    case ('l'):
      LeftRight(0, 1);
      break;
    
    case ('r'):
      LeftRight(2, 1);
      break;
    
    case('u'):
      UpDown(0, 1);
      break;
    
    case('d'):
      UpDown(2, 1);
      break;
      
    case('f'):
      FrontBack(2, 1);
      break;
      
    case('b'):
      FrontBack(0, 1);
      break;
      
    case('L'):
      LeftRight(0, -1);
      break;
    
    case ('R'):
      LeftRight(2, -1);
      break;
    
    case('U'):
      UpDown(0, -1);
      break;
    
    case('D'):
      UpDown(2, -1);
      break;
      
    case('F'):
      FrontBack(2, -1);
      break;
      
    case('B'):
      FrontBack(0, -1);
      break;
  

      
  }
}

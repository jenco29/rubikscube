
void keyPressed() {
  switch(key){
      case '1': 
      LeftRight(-1, -1);
      break;
    case '!': 
      LeftRight(-1, 1);
      break;  
    case '2': 
      LeftRight(1, -1);
      break;
    case '@': 
      LeftRight(1, 1);
      break;
    case '3': 
      UpDown(-1, 1);
      break;
    case '#': 
      UpDown(-1, -1);
      break;
    case '4': 
      UpDown(1, 1);
      break;
    case '$': 
      UpDown(1, -1);
      break;
    case '5': 
      FrontBack(1, 1);
      break;
    case '%': 
      FrontBack(1, -1);
      break;
    case '6': 
      FrontBack(-1, 1);
      break;
    case '^': 
      FrontBack(-1, -1);
      break;
  }
}


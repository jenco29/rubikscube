
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

void moving(String move){
    switch(move){
      case "l": 
      LeftRight(-1, -1);
      break;
    case "L": 
      LeftRight(-1, 1);
      break;  
    case "r": 
      LeftRight(1, -1);
      break;
    case "R": 
      LeftRight(1, 1);
      break;
    case "u": 
      UpDown(-1, 1);
      break;
    case "U": 
      UpDown(-1, -1);
      break;
    case "d": 
      UpDown(1, 1);
      break;
    case "D": 
      UpDown(1, -1);
      break;
    case "f": 
      FrontBack(1, 1);
      break;
    case "F": 
      FrontBack(1, -1);
      break;
    case "b": 
      FrontBack(-1, 1);
      break;
    case "B": 
      FrontBack(-1, -1);
      break;
  }
}
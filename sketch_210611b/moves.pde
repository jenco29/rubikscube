String moves = "u,d,f,b,l,r,U,D,L,R,F,B,U2,D2,L2,R2,F2,B2";  
String[] moves_ = split(moves, ",");

void moving(String move){
    switch(move){
      case "l": 
      LeftRight(-1, -1);
      break;
    case "L": 
      LeftRight(-1, 1);
      break;  
    case"L2":
      LeftRight(-1, -1);
      LeftRight(-1, -1);
      break;
    case "r": 
      LeftRight(1, -1);
      break;
    case "R": 
      LeftRight(1, 1);
      break;
    case"R2":
      LeftRight(1, -1);
      LeftRight(1, -1);
      break;
    case "u": 
      UpDown(-1, 1);
      break;
    case "U": 
      UpDown(-1, -1);
      break;
    case"U2":
      UpDown(-1, 1);
      UpDown(-1, 1);
      break;
    case "d": 
      UpDown(1, 1);
      break;
    case "D": 
      UpDown(1, -1);
      break;
    case"D2":
      UpDown(1, 1);
      UpDown(1, 1);
      break;
    case "f": 
      FrontBack(1, 1);
      break;
    case "F": 
      FrontBack(1, -1);
      break;
    case"F2":
      FrontBack(1, 1);
      FrontBack(1, 1);
      break;
    case "b": 
      FrontBack(-1, 1);
      break;
    case "B": 
      FrontBack(-1, -1);
      break;
    case"B2":
      FrontBack(-1, 1);
      FrontBack(-1, 1);
      break;
  }
}


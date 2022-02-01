String moves = "U,D,L,R,F,B,U',D',L',R',F',B',U2,D2,L2,R2,F2,B2";  
String[] moves_ = split(moves, ",");



//there are six faces and three possible moves per face (90 clockwise, 90 anticlockwise, 180)
//this gives a total of 18 different moves
//a clockwise move is shown as X, anticlockwise X' and 180 X2.

void moving(String move){
    switch(move){
      case "L": 
      LeftRight(-1, -1);
      break;
    case "L'": 
      LeftRight(-1, 1);
      break;  
    case"L2":
      LeftRight(-1, -1);
      LeftRight(-1, -1);
      break;
    case "R": 
      LeftRight(1, -1);
      break;
    case "R'": 
      LeftRight(1, 1);
      break;
    case"R2":
      LeftRight(1, -1);
      LeftRight(1, -1);
      break;
    case "U": 
      UpDown(-1, 1);
      break;
    case "U'": 
      UpDown(-1, -1);
      break;
    case"U2":
      UpDown(-1, 1);
      UpDown(-1, 1);
      break;
    case "D": 
      UpDown(1, 1);
      break;
    case "D'": 
      UpDown(1, -1);
      break;
    case"D2":
      UpDown(1, 1);
      UpDown(1, 1);
      break;
    case "F": 
      FrontBack(1, 1);
      break;
    case "F'": 
      FrontBack(1, -1);
      break;
    case"F2":
      FrontBack(1, 1);
      FrontBack(1, 1);
      break;
    case "B": 
      FrontBack(-1, 1);
      break;
    case "B'": 
      FrontBack(-1, -1);
      break;
    case"B2":
      FrontBack(-1, 1);
      FrontBack(-1, 1);
      break;
  }
  R = R.ApplyMove(getMove(move, allMoves));
}

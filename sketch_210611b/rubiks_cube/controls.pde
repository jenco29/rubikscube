
void keyPressed() {
  switch(key){
    //all moves and reverse moves
      case '1': 
      moving("L");
      break;
    case '!': 
      moving("L'");
      break;  
    case '2': 
      moving("R");
      break;
    case '@': 
      moving("R'");
      break;
    case '3': 
      moving("U");
      break;
    case '#': 
      moving("U'");
      break;
    case '4': 
      moving("D");
      break;
    case '$': 
      moving("D'");
      break;
    case '5': 
      moving("F");
      break;
    case '%': 
      moving("F'");
      break;
    case '6': 
      moving("B");
      break;
    case '^': 
      moving("B'");
      break;
    case ' ':
      sol = true;
      break;
      //shuffle
    case 's':
      shuf = true;
      break;
      //label sides
    case 'l':
      l = true;
      break;
      //reset timer
    case 'r':
      millisecs = 0;
      seconds = 0;
      minutes = 0;
      break;
      //show menu
    case 'm':
      menu = true;
      break;
    case 'x':
    //save changes to moves file
      movesFile.close();
      exit();
    case '\n':
      resetCube = true;
  }
  
}

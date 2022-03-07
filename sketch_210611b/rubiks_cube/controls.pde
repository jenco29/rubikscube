
void keyPressed() {
  switch(key){
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
    case 's':
      shuf = true;
      break;
    case 't':
      t = true;
      break;
    case 'l':
      l = true;
      break;
    case 'L':
      L = true;
      break;
    case 'r':
      millisecs = 0;
      seconds = 0;
      minutes = 0;
      break;
    case 'm':
      menu = true;
      break;
    case 'Q':
      M = true;
      break;
  }
  
}

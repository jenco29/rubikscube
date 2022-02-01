
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
    case 's':
      shuf = true;
    case 't':
      t = true;
    case 'l':
      l = true;
  }
}

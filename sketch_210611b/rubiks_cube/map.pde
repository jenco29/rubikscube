char colChar(color c){
  if(c == red){
    return 'R';
  }
  else if(c == blue){
    return 'B';
  }
  else if(c == green){
    return 'G';
  }
  else if(c == yellow){
    return 'Y';
  }
  else if(c == orange){
    return 'O';
  }
  else{
    return 'W';
  }
}
/*
class Plan{
  int col;
  int perm;
  int var;
  
  Plan(int c, int p, int v){
    this.col = c;
    this.perm = p;
    this.var = v;
  }
  
  void map(int perm){
    for(cubes c : cube){
      if(c.perm == perm){
        if(c.var == -1){
          print(colChar(c.colours[col]));
        }
      } 
    }
  }
}
*/
 //<>//
void plan(){
  
    print("    ");
  for(cubes c : cube){
    if(c.x == -1){
      if(c.y == -1){
        char ch = colChar(c.colours[3]);
        print(ch);
      }
    } 
  }
  print("\n");
    print("    ");
  for(cubes c : cube){
    if(c.x == 0){
      if(c.y == -1){
        char ch = colChar(c.colours[3]);
        print(ch);
      }
    } 
  }
  print("\n");
    print("    ");
  for(cubes c : cube){
    if(c.x == 1){
      if(c.y == -1){
        char ch = colChar(c.colours[3]);
        print(ch);
      }
    } 
  }
  print("\n");
    for(cubes c : cube){
    if(c.z == -1){
      if(c.x == -1){
        print(colChar(c.colours[5]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == -1){
      if(c.z == 1){
        print(colChar(c.colours[1]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == 1){
      if(c.x == 1){
        print(colChar(c.colours[4]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == -1){
      if(c.z == -1){
        print(colChar(c.colours[0]));
      }
    }
  }
  print("\n");
    for(cubes c : cube){
    if(c.z == 0){
      if(c.x == -1){
        print(colChar(c.colours[5]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == 0){
      if(c.z == 1){
        print(colChar(c.colours[1]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == 0){
      if(c.x == 1){
        print(colChar(c.colours[4]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == -1){
      if(c.z == -1){
        print(colChar(c.colours[0]));
      }
    }
  }
  print("\n");
    for(cubes c : cube){
    if(c.z == 1){
      if(c.x == -1){
        print(colChar(c.colours[5]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == 1){
      if(c.z == 1){
        print(colChar(c.colours[1]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == -1){
      if(c.x == 1){
        print(colChar(c.colours[4]));
      }
    }
  }
  print(" ");
    for(cubes c : cube){
    if(c.y == -1){
      if(c.z == -1){
        print(colChar(c.colours[0]));
      }
    }
  }
  print("\n");
    print("    ");
  for(cubes c : cube){
    if(c.x == -1){
      if(c.y == 1){
        print(colChar(c.colours[2]));
      }
    } 
  }
  print("\n");
    print("    ");
  for(cubes c : cube){
    if(c.x == 0){
      if(c.y == 1){
        print(colChar(c.colours[2]));
      }
    } 
  }
  print("\n");
    print("    ");
  for(cubes c : cube){
    if(c.x == 1){
      if(c.y == 1){
        print(colChar(c.colours[2]));
      }
    } 
  }
  print("\n");
}

//a way to check that each cube was generated correctly
int pieceType(int i){
  cubes c = cube[i];
  if((c.x==1 || c.x==-1) && (c.y==1 || c.y==-1) && (c.z==1 || c.z==-1)){
    return corner;
  }
  else if(c.x==0 && c.y==0 && c.z==0){
    return core;
  }
  else if(((c.x==1 || c.x==-1)^(c.y==1 || c.y==-1)) ^ (c.z==1 || c.z==-1)){
    return centre;
  }
  else{
    return edge;
  }

}

void menu(){
  
  //labels the sides, only when l key pressed
{}    if(l){
    text("Up (3)", -10, -100, 20);
    text("Down (4)", -10, 120, 20 );
    text("Left (1)",-120, 0, 20 );
    text("Right (2)", 100, 0 , 20);
    text("Front (5)", -10, 0, 100);
    }
    
    //prints commands 
    text("Shuffle cube: s", -150, -125, -20);
    text("Label sides: l", -150, -140, -20);
    text("Solve cube: space",-150, -155, -20);
    text("Start/stop timer: click",-150, -170, -20);
    text("Reset timer: r",-150, -185, -20);
    text("Reverse move: shift", -150, -200, -20);

    
}

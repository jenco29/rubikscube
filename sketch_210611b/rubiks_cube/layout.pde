Move Identity = new Move("I", OrIE, OrIC, PermIE, PermIC);
Move Front = new Move("F", OrIE, OrFC, PermFE, PermFC);
Move Back = new Move("B", OrIE, OrBC, PermBE, PermBC);
Move Left = new Move("L", OrIE, OrIC, PermLE, PermLC);
Move Right = new Move("R", OrIE, OrIC, PermRE, PermRC);
Move Up = new Move("U", OrUE, OrUC, PermUE, PermUC);
Move Down = new Move("D", OrDE, OrDC, PermDE, PermDC);

StringList moveCombos = new StringList(); 

  Move getMove(String mov){
  Move theMove = null;
  for(Move m : allMoves){
    if(m.Name.equals(mov)){
      theMove = m;
    }
  }
  return theMove;
}

  Move getState(StringList movShuffle){
    Move state = Identity;
    for(String mov : movShuffle){
      state = state.ApplyMove(getMove(mov));
    }
    
    return state;
  }


class Move{
    int[] OrME;
    int[] OrMC;
    int[] PermME;
    int[] PermMC;
    String Name;
    
    
    Move(String name, int[] orme, int[] ormc, int[] perme, int[] permc){
        this.OrME = orme;
        this.OrMC = ormc;
        this.PermME = perme;
        this.PermMC = permc;
        this.Name = name;
    }
    
    Move ApplyMove(Move mov){
    int[] newOrME = new int[mov.OrME.length];
    int[] newOrMC = new int[mov.OrMC.length];
    int[] newPermME = new int[mov.PermME.length];
    int[] newPermMC = new int[mov.PermMC.length];
    
    
    for(int i=0; i<(mov.PermME.length); i++){
        newPermME[i] = PermME[mov.PermME[i]-1];
    }

    for(int i=0; i<(mov.PermMC.length); i++){
        newPermMC[i] = PermMC[mov.PermMC[i]-1];
    }

    for(int i=0; i<(mov.OrME.length); i++){
        newOrME[i] = (OrME[i] + mov.OrME[i]) % 2;
    }

    for(int i=0; i<(mov.OrMC.length); i++){
        newOrMC[i] = (OrMC[i] + mov.OrMC[i]) % 3;
    }

    Move newM = new Move(Name + mov.Name, newOrME, newOrMC, newPermME, newPermMC);
    return newM;

}
}

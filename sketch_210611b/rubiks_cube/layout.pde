//initialise all moves
Move Identity = new Move("I", OrIE, OrIC, PermIE, PermIC);
Move Front = new Move("F", OrIE, OrFC, PermFE, PermFC);
Move Back = new Move("B", OrIE, OrBC, PermBE, PermBC);
Move Left = new Move("L", OrIE, OrIC, PermLE, PermLC);
Move Right = new Move("R", OrIE, OrIC, PermRE, PermRC);
Move Up = new Move("U", OrUE, OrUC, PermUE, PermUC);
Move Down = new Move("D", OrDE, OrDC, PermDE, PermDC);

StringList moveCombos = new StringList(); 
  //find object move from move name
  Move getMove(String mov, Move[] allMovs){
  Move theMove = null;
  for(Move m : allMovs){
    if(m.Name.equals(mov)){
      theMove = m;
    }
  }
  return theMove;
}

  Move getState(StringList movShuffle){
    //apply all shuffle moves to cube state
    Move state = Identity;
    for(String mov : movShuffle){
      state = state.ApplyMove(getMove(mov, allMoves));
    }
    
    return state;
  }


class Move{
  //orientation and permutation arrays for edges and corners
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
      
      //move the positions of the pieces based on the move being applied
      for(int i=0; i<(mov.PermME.length); i++){
          newPermME[i] = PermME[mov.PermME[i]-1];
      }
  
      for(int i=0; i<(mov.PermMC.length); i++){
          newPermMC[i] = PermMC[mov.PermMC[i]-1];
      }
  
      //add the new orientation to the old one- number from 0 to 1 and -1 to 1 respectively
      for(int i=0; i<(mov.OrME.length); i++){
          newOrME[i] = (OrME[i] + mov.OrME[i])%2;
      }
  
      for(int i=0; i<(mov.OrMC.length); i++){
          newOrMC[i] = (OrMC[i] + mov.OrMC[i])%3;
      }
  
      Move newM = new Move(Name + mov.Name, newOrME, newOrMC, newPermME, newPermMC);
      return newM;
  
  }
  
  //return type of array based on input
  int[] getType(String m){
    switch(m){
      case("EO"):
      return OrME;
      case("EP"):
      return PermME;
      case("CO"):
      return OrMC;
      case("CP"):
      return PermMC;
      default:
      return null;
    }
  }
 
}

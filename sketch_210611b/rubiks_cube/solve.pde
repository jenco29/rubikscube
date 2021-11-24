
/*

//G=<L, R, F, B, U, D>
//all possible moves 

for each of the 12 edge pieces check if good or bad
if good: can return home w/o quarter turns of up or down faces
if bad: needs quarter turns of up or down faces
to go from good to bad a quarter turn of the up or down face is applied
basically solve each edge individually
if U or D needed take it back, cure it
otherwise it is already good
bfs only corners
if all edge pieces are good it will now be in G1

//G1=<L, R, F, B, U2, D2>
//no quarter turns of the up or down faces



//G2=<L, R, F2, B2, U2, D2>
//no quarter turns of up, down, front or bad faces

//G3=<L2, R2, F2, B2, U2, D2>
//no quarter turns at all 


*/
  /*
 for each cube read the data on the faces
 corners: ULF, URF, ULB, URB, DLF, DRF, DLB, DRB
 edges: UF, UB, UL, UR, LF, LB, LD, RF, RB, RD, BL, BR 
 int[][] edges = new int[12][12];
 int[][][] corners = new int[8][8][8];  

 each element in the array has 2/3 colours

 

 */

Boolean good = false;

Layout[] edges = new Layout[12];
Layout[] corners = new Layout[8];

color[] getColour(int i){
  return null;
}

void checkOrientation(){
  for(Layout e : edges){
    if(e.orientation == 0){
      good = true;
    }
    else{
      good = false;
    }
  }

}



void setCube(){
  for(int i=0; i<12; i++){
    edges[i] = new Layout(2, i);
  }

  for(int i=0; i<8; i++){
    corners[i] = new Layout(3, i);

  } 

//edge 1
  edges[0].colour[0] = white;
  edges[0].colour[1] = green;
  edges[0].sides[0] = up;
  edges[0].sides[1] = left;




}

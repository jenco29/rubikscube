import peasy.*;
PeasyCam cam;

cubes[] cube = new cubes[27];


void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;
  int e = 0;
  int c = 0;
  int cn = 0;
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new cubes(matrix, x, y, z);
        println(pieceType(index));
        if(pieceType(index) == corner){
          c++;
        }
        if(pieceType(index) == edge){
          e++;
        }
        if(pieceType(index) == centre){
          cn++;
        }
        //forward, down, right
        index++;
      }
    }
  }


  //check correct no. of each piece type
  println(e);
  println(c);
  println(cn);
  setCube();
  
  //SHUFFLE
  //random number of moves
  //could only allow specific combos of moves to avoid cancellation- doing a larger shuffle mitigates this somewhat
  int m = int(random(100, 130));
  for(int i=0; i<m; i++){
    //random moves
    int num = int(random(0, 11));
    moving(moves_[num]);
  }
  

}



void draw() {
  background(255); 

  scale(50);
  for (int i = 0; i < cube.length; i++) {
    cube[i].show();
  }
}

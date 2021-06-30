import peasy.*;
PeasyCam cam;
PMatrix3D matrix;
int d = 3;

cube[][][]  cubies = new cube[d][d][d];

void setup(){
 cam = new PeasyCam(this, 300);
  size(600,600,P3D);

  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        float size = 1;
        float x = i;
        float y = j;
        float z = k;
        PMatrix3D matrix = new PMatrix3D();
        cubies[i][j][k] = new cube(x, y, z, size);
        matrix.translate(x, y, z);
        printMatrix();
         
      }
    }
  }
  

}


void draw(){
  background(255);
  scale(50);
  pushMatrix();
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        cubies[i][j][k].show();
        
      }
    }
  }
 
  
}

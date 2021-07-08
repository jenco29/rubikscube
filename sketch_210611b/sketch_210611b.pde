import peasy.*;
PeasyCam cam;
PMatrix3D matrix;

cube[][][]  cubies = new cube[3][3][3];

//colours
color red = color(255, 0, 0);
color blue = color(0, 0, 255);
color white = color(255);
color green = color(0, 190, 0);
color orange = color(255, 100, 0);
color yellow = color(255, 255, 0);


void setup(){
 cam = new PeasyCam(this, 400);
  size(600,600,P3D);

  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        PMatrix3D matrix = new PMatrix3D();
        cubies[i][j][k] = new cube(i, j, k);
       matrix.translate(i, j, k);
       printMatrix();
         
      }
    }
  }
  

}

void draw(){
  background(255);
  scale(50);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        cubies[i][j][k].show();
        
      }
    }
  }
  
}

import peasy.*;
PeasyCam cam;
PMatrix3D matrix;
float xRot =2*PI*mouseY/width;
float yRot = 2*PI*mouseX/height;
Boolean xRotd = false;
Boolean yRotd = false;
cube[][][]  cubies = new cube[3][3][3];

//colours
color red = color(255, 0, 0);
color blue = color(0, 0, 255);
color white = color(255);
color green = color(0, 190, 0);
color orange = color(255, 100, 0);
color yellow = color(255, 255, 0);


void setup(){
  size(600,600,P3D);
  cam = new PeasyCam(this, 400);
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(i, j, k);
        cubies[i][j][k] = new cube(i, j, k, matrix);
        printMatrix();
         
      }
    }
  }

}
void keyRotate(){
  
  if (keyPressed == true && key == RIGHT){
    xRot -= PI/180;
    if(xRot >= TWO_PI) xRot = 0;
    rotateX(xRot);
  }
  else if (keyPressed == true && key == 'a'){
    yRot += PI/180;
    if(yRot >= TWO_PI) yRot = 0;
    rotateY(yRot);
  }
  else if (keyPressed == true && key == DOWN){
    yRot -= PI/180;
    if(yRot >= TWO_PI) yRot = 0;
    rotateY(yRot);
  }
}

void keyed(){
  if(xRotd){
    xRot += PI/180;
    if(xRot >= TWO_PI) xRot = 0;
    rotateX(xRot);
  }
  if(yRotd){
    yRot += PI/180;
    if(yRot >= TWO_PI) yRot = 0;
    rotateY(yRot);
    
  }
}
void draw(){
  background(255);
  scale(50);

  
  keyed();

  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      for(int k=0; k<3; k++){
        rotateX(xRot);
        rotateY(yRot);
        cubies[i][j][k].show();
        
      }
    }
  }
  
}

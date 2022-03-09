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
  move('u');
  map();

}

char checkCol(int num, int i, int j, int k){
  if(cubies[i][j][k].colors[num] == green){
          return 'G';
        }
        else if(cubies[i][j][k].colors[num] == blue){
          return 'B';
        }
        else if(cubies[i][j][k].colors[num] == red){
          return 'R';
        }
        else if(cubies[i][j][k].colors[num] == orange){
          return 'O';
        }
        else if(cubies[i][j][k].colors[num] == white){
          return 'W';
        }
        else{
          return 'Y';
        }
  
}

void map(){
  int k1=0;
  while(k1<3){
    print("    ");
    for(int i=0; i<3; i++){
      print(checkCol(4, i, 0, k1));
    }
    print("\r\n");
    k1++;
  }
  
  int j=0;
  while(j<3){
    for(int k=0; k<3; k++){
      print(checkCol(0, 0, j, k));
    }
    print(" ");
    for(int i=0; i<3; i++){
      print(checkCol(3, i, j, 2));
    }
    print(" ");
    for(int k=2; k>-1; k--){
      print(checkCol(1, 2, j, k));
    }
    print(" ");
    for(int i=2; i>-1; i--){
      print(checkCol(2, i, j, 0));
    }   
    print("\r\n");
    j++;
  }
  
  int k2=0;
  while(k2<3){
    print("    ");
    for(int i=0; i<3; i++){
      print(checkCol(5, i, 2, k2));
    }
    print("\r\n");
    k2++;
  }
  
  println("");
  
  
    
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

import peasy.*;
PeasyCam cam;

cubes[] cube = new cubes[27];


void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new cubes(matrix, x, y, z);
        index++;
        cube[index].type = pieceType(cube[index]);
      }
    }
  }
}



void draw() {
  background(255); 

  scale(50);
  for (int i = 0; i < cube.length; i++) {
    cube[i].show();
  }
}

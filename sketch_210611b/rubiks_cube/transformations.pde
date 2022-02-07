void LeftRight(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubes qb = cube[i];
    if (qb.x == index) {
      //checks that the cube is the correct one to rotate
      PMatrix2D matrix = new PMatrix2D();
      //updates the location after move applied
      matrix.rotate(dir*(PI/2));
      //either forwards or backwards
      matrix.translate(qb.y, qb.z);
      qb.update(qb.x, round(matrix.m02), round(matrix.m12));
      qb.turnFacesX(dir);
      //rotates all planes after cube itself rotated.
    }
  }
}

//similar code for all three methods, changes the sides that are used.

void UpDown(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubes qb = cube[i];
    if (qb.y == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*(PI/2));
      matrix.translate(qb.x, qb.z);
      qb.update(round(matrix.m02), qb.y, round(matrix.m12));
      qb.turnFacesY(dir);
    }
  }
}


void FrontBack(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubes qb = cube[i];
    if (qb.z == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*(PI/2));
      matrix.translate(qb.x, qb.y);
      qb.update(round(matrix.m02), round(matrix.m12), round(qb.z));
      qb.turnFacesZ(dir);
    }
  }
}

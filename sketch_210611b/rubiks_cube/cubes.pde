class cubes {
  PMatrix3D matrix;
  int x = 0;
  int y = 0;
  int z = 0;
  color c;
  Face[] faces = new Face[6];
  color[] colours = new color[6];
  int type;

  cubes(PMatrix3D m, int x, int y, int z) {
    this.matrix = m;
    this.x = x;
    this.y = y;
    this.z = z;
    c = color(255);

    faces[0] = new Face(new PVector(0, 0, -1), orange);
    faces[1] = new Face(new PVector(0, 0, 1), red);
    faces[2] = new Face(new PVector(0, 1, 0), yellow);
    faces[3] = new Face(new PVector(0, -1, 0), white);
    faces[4] = new Face(new PVector(1, 0, 0), blue);
    faces[5] = new Face(new PVector(-1, 0, 0), green);

    for(int i=0; i<6; i++){
      colours[i] = faces[i].c;
    }
  }
  
  void turnFacesZ(int dir) {
    for (Face f : faces) {
      f.turnZ(dir*PI/2); 
    }
  }

  void turnFacesY(int dir) {
    for (Face f : faces) {
      f.turnY(dir*PI/2); 
    }
  }

    void turnFacesX(int dir) {
    for (Face f : faces) {
      f.turnX(dir*PI/2); 
    }
  }
  
  void update(int x, int y, int z) {
    matrix.reset(); 
    matrix.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void show() {
    noFill();
    stroke(0);
    strokeWeight(0.05);
    pushMatrix(); 
    applyMatrix(matrix);
    box(1);
    for (Face f : faces) {
      f.show();
    }
    popMatrix();
  }
}

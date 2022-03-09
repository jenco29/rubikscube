class Face {
  PVector normal;
  color c;

  Face(PVector normal, color c) {
    this.normal = normal;
    this.c = c;
  }

  //applies matrix transformation to the planes of the cubes, dependent on the direction of the control
  void turnZ(float angle) {
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.y * sin(angle));
    v2.y = round(normal.x * sin(angle) + normal.y * cos(angle));
    v2.z = round(normal.z);
    normal = v2;
  }

  void turnY(float angle) {
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.z * sin(angle));
    v2.z = round(normal.x * sin(angle) + normal.z * cos(angle));
    v2.y = round(normal.y);
    normal = v2;
  }

  void turnX(float angle) {
    PVector v2 = new PVector();
    v2.y = round(normal.y * cos(angle) - normal.z * sin(angle));
    v2.z = round(normal.y * sin(angle) + normal.z * cos(angle));
    v2.x = round(normal.x);
    normal = v2;
  }

  void show() {
    pushMatrix();
    fill(c);
    noStroke();
    rectMode(CENTER);
    //move plane to the sides of the cubes
    translate(0.5*normal.x, 0.5*normal.y, 0.5*normal.z);
    //moves planes to the correct orientation
    if (abs(normal.x) > 0) {
      rotateY(HALF_PI);
    } else if (abs(normal.y) > 0) {
      rotateX(HALF_PI);
    }
    //plane of size 1 to match with matrix transformations
    square(0, 0, 1);
    popMatrix();
  }
}

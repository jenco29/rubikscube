class cube{
  PMatrix3D matrix = new PMatrix3D();
  planes[] face = new planes[6];
  float x = 0;
  float y = 0;
  float z = 0;

  PVector pos;
  float size;
  cube(float x, float y, float z, PMatrix3D m){
    pos = new PVector(x, y, z);
    this.matrix = m;
    this.x = x;
    this.y = y;
    this.z = z;
    
    float l = size/2;
    face[0] = new planes(-l, 0, 0, green);
    face[1] = new planes(l, 0, 0, blue); 
    face[2] = new planes(0, 0, -l, orange);
    face[3] = new planes(0, 0, l, red);  
    face[4] = new planes(0, -l, 0, white); 
    face[5] = new planes(0, l, 0, yellow); 
   
   
  }
  
  void turnX(float angle){
    for(planes P : face){
      P.turnPlaneX(angle);
    }
  }
  
  void turnY(float angle){
    for(planes P : face){
      P.turnPlaneY(angle);
    }
  }
  
  void turnZ(float angle){
    for(planes P : face){
      P.turnPlaneZ(angle);
      }
  }
  
  /*
  void update(int x, int y, int z){
    matrix.reset();
    matrix.translate(x, y, z);
    x = this.x;
    y = this.y;
    z = this.z;
  }

  */
  void show(){
    pushMatrix();
    noFill();
    strokeWeight(0.05);
    translate(pos.x, pos.y, pos.z);
    rectMode(CENTER);
    box(1);
    for(planes P : face){
      P.show();
    }
    popMatrix();

  }
}

class cube{
  planes[] face = new planes[6];

  PVector pos;
  float size;
  cube(float x, float y, float z, float size){
    pos = new PVector(x, y, z);
    this.size = size;
    face[0] = new planes(-0.5, 0, 0, green);
    face[1] = new planes(0.5, 0, 0, blue); 
    face[2] = new planes(0, 0, -0.5, orange);
    face[3] = new planes(0, 0, 0.5, red);  
    face[4] = new planes(0, -0.5, 0, white); 
    face[5] = new planes(0, 0.5, 0, yellow); 
    
   
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

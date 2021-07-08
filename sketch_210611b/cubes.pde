class cube{
  planes[] face = new planes[6];
  int x = 0;
  int y = 0;
  int z = 0;
  PMatrix matrix;
  Boolean highlight = false;
  PVector pos;
  cube(int x, int y, int z, PMatrix3D m){
    this.x = x;
    this.y =y;
    this.z = z;
    this.matrix = m;
    pos = new PVector(x, y, z);
    face[0] = new planes(-0.5, 0, 0, green);
    face[1] = new planes(0.5, 0, 0, blue); 
    face[2] = new planes(0, 0, -0.5, orange);
    face[3] = new planes(0, 0, 0.5, red);  
    face[4] = new planes(0, -0.5, 0, white); 
    face[5] = new planes(0, 0.5, 0, yellow); 
    
   
  }
  

  
  void show(){
    pushMatrix();
    applyMatrix(matrix);
    noFill();
    if(highlight){
      fill(255);
    }
    
    strokeWeight(0.05);
    rectMode(CENTER);
    box(1);
    
    for(planes P : face){
      P.show();
    }
    
    popMatrix();
    
  }
  
  void turnZ(){
    for(planes P :face){
      P.turnZPlane(PI/2);
    }
  }
  
  void update(int x, int y, int z){
    resetMatrix();      
    matrix.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
    
  }
}

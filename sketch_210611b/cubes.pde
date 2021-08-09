class cube{
  planes[] face = new planes[6];
  color[] colors = new color[6];
  
  PMatrix matrix;
  PVector pos;
  //Boolean s = false;
  cube(int x, int y, int z, PMatrix3D m){
    this.matrix = m;
    pos = new PVector(x, y, z);
    face[0] = new planes(-0.5, 0, 0, green);
    colors[0] = green;
    face[1] = new planes(0.5, 0, 0, blue); 
    colors[1] = blue;
    face[2] = new planes(0, 0, -0.5, orange);
    colors[2] = orange;
    face[3] = new planes(0, 0, 0.5, red);  
    colors[3] = red;
    face[4] = new planes(0, -0.5, 0, white);
    colors[4] = white;
    face[5] = new planes(0, 0.5, 0, yellow); 
    colors[5] = yellow;
   
  }

  void show(){
    pushMatrix();
    applyMatrix(matrix);
    noFill();
    
    strokeWeight(0.05);
    rectMode(CENTER);
    box(1);
    
    for(planes P : face){
      P.show();
    }
    translate(pos.x, pos.y, pos.z);
    popMatrix();
    
  }
  
  void changeUpDown(){
    colors[4] = colors[3];
    colors[2] = colors[4];
    colors[5] = colors[2];
    colors[3] = colors[5];
    
    face[3].c = colors[4];
    face[4].c = colors[2];
    face[2].c = colors[5];
    face[5].c = colors[3];
           
    

  }
  
  
  
}

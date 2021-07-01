class cube{
  planes[] face = new planes[6];

  PVector pos;
  float size;
  cube(float x, float y, float z, float size){
    pos = new PVector(x, y, z);
    this.size = size;
    face[0] = new planes(0, -0.5, 0, color(0, 190, 0)); //green
    face[1] = new planes(0, 0.5, 0, color(0, 0, 255)); //blue
    face[2] = new planes(0.5, 0, 0, color(255, 100, 0)); //orange
    face[3] = new planes(-0.5, 0, 0, color(255, 0, 0));  //red
    face[4] = new planes(0, 0, 0.5, color(255)); //white
    face[5] = new planes(0, 0, -1, color(255, 255, 0)); //yellow
    
   
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
    
   // turnZ();

    
    
  }
}

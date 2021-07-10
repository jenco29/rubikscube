class planes{
  PVector pos = new PVector();
  color c;
  planes(float x, float y, float z,  color c){
    this.c = c;
    pos = new PVector(x, y, z);

  }
  
  void turnZPlane(float angle){
    translate(pos.x, pos.y, pos.z);
    PVector v = new PVector();
    v.x = round(pos.x * cos(angle) - pos.y * sin(angle));
    v.y = round(pos.x * sin(angle) + pos.y * cos(angle));
    v.z = round(pos.z);
    pos = v;
    
    
  }
  
  void turnYPlane(float angle){
    PVector v = new PVector();
    v.x = round(pos.x * cos(angle) + pos.y * sin(angle));
    v.z = round(pos.x * -sin(angle) + pos.y * cos(angle));
    v.y = round(pos.z);
    pos = v;
  
  }
  
  void turnXPlane(float angle){
    PVector v = new PVector();
    v.x = round(pos.x);
    v.y = round(pos.x * cos(angle) - pos.y * sin(angle));
    v.z = round(pos.x * -sin(angle) + pos.y*cos(angle));
    pos = v;
  }
  
  void show(){

    pushMatrix();
    strokeWeight(0);
    fill(c);
    translate(pos.x, pos.y, pos.z);
    
    if(pos.x == 0.5 || pos.x == -0.5){
      rotateY(PI/2);
    }
    else if(pos.y == 0.5 || pos.y == -0.5){
      rotateX(PI/2);
    }
 
    square(0, 0, 1);

    popMatrix();
  }
}

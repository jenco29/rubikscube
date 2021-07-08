class planes{
  PVector pos = new PVector();
  color c;
  planes(float x, float y, float z,  color c){
    this.c = c;
    pos = new PVector(x, y, z);

  }
  
  void turnZPlane(float angle){
    PVector v = new PVector();
    v.x = round(pos.x * cos(angle) - pos.y * sin(angle));
    v.y = round(pos.x * sin(angle) + pos.y * cos(angle));
    v.z = round(pos.z);
    pos = v;
  }
  
  void turnYPlane(){}
  
  void turnZPlane(){}
  
  void show(){

    pushMatrix();
    strokeWeight(0);
    fill(c);
    translate(pos.x, pos.y, pos.z);
    
    if(c == green || c == blue){
      rotateY(PI/2);
    }
    else if(c == white || c == yellow){
      rotateX(PI/2);
    }
 
    square(0, 0, 1);

    popMatrix();
  }
}

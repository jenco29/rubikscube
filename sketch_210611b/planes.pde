class planes{
  PVector axis = new PVector();
  color c;
  planes(float x, float y, float z,  color c){
    this.c = c;
    axis = new PVector(x, y, z);

  }
  
  void show(){
    pushMatrix();
    strokeWeight(0);
    fill(c);
    translate(axis.x, axis.y, axis.z);
    if(c == green || c == blue){
      rotateY(PI/2);
    }
    else if(c == white || c == yellow){
      rotateX(PI/2);
    }
 
    square(0, 0, 1);
    popMatrix();
  }
  
  void turnPlaneX(float angle){
    axis.y += (cos(angle) -sin(angle));
    axis.z += (sin(angle) + cos(angle));
    translate(axis.y, axis.z);
    
    
  }
  
  void turnPlaneY(float angle){
    axis.x += (cos(angle)- sin(angle));
    axis.z += (sin(angle) + cos(angle));
    translate(axis.x, axis.z);
  }
  
  void turnPlaneZ(float angle){
    axis.x += (cos(angle) + sin(angle));
    axis.y += (-sin(angle) + cos(angle));
    translate(axis.x, axis.y);
    
  }
  
}

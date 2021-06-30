class planes{
  PVector pos = new PVector();
  color c;
  planes(float x, float y, float z,  color c){
    this.c = c;
    pos = new PVector(x, y, z);

  }
  
  void show(){

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

  }
}

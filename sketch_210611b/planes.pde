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
    
 
    square(0, 0, 1);

  }
}

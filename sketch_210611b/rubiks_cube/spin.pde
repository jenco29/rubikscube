class Spin{
  int x;
  int y;
  int z;
  int dir;
  int angle = 0;
  Boolean animate;
  
  Spin(int x, int y, int z, int dir){
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }
  
  void start(){
    animate = true;
  }
  
  void update(){
    if(animate){
      angle += dir * 0.1;
      if(abs(angle) == PI/2){
        angle = 0;
        animate = false;
      } 
    }
  }
}

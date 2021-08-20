class cube{
  planes[] face = new planes[6];
  color[] colors = new color[6];
  color[] newColors = new color[6];
  
  PMatrix matrix;
  PVector pos;
  //Boolean s = false;
  cube(int x, int y, int z, PMatrix3D m){
    this.matrix = m;
    pos = new PVector(x, y, z);
    face[0] = new planes(-0.5, 0, 0, green);
    face[1] = new planes(0.5, 0, 0, blue); 
    face[2] = new planes(0, 0, -0.5, orange);
    face[3] = new planes(0, 0, 0.5, red);  
    face[4] = new planes(0, -0.5, 0, white);
    face[5] = new planes(0, 0.5, 0, yellow); 
    for(int i =0; i<6; i++){
      colors[i] = face[i].c;
    }
   
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
  
  void changeColor(char sides){
    switch(sides){
      case('i'):
      
    newColors[3] = colors[4];
    newColors[4] = colors[2];
    newColors[2] = colors[5];
    newColors[5] = colors[3];
    newColors[1] = colors[1];
    newColors[0] = colors[0];

    break;
    
    case('j'):

    newColors[0] = colors[2];
    newColors[2] = colors[1];
    newColors[1] = colors[3];
    newColors[3] = colors[0];
    newColors[5] = colors[5];
    newColors[4] = colors[4];
    
    break;
    
    case('k'):

    newColors[1] = colors[4];
    newColors[5] = colors[1];
    newColors[0] = colors[5];
    newColors[4] = colors[0];
    newColors[2] = colors[2];
    newColors[3] = colors[3];
    
    break;

    }
    for(int i=0; i<6; i++){
      face[i].c = newColors[i];
      colors[i] = newColors[i];
    }
           
    

  }
  
  
  
}

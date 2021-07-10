 void turnX(int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(i == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2 * dir);
           matrix.translate(j, k);
           current.turnX();
         }
       }
     }
   }
  }
  
    void turnY(int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2 * dir);
           matrix.translate(i, k);
           current.turnY();
         }
       }
     }
   }
  
  }
  
  void turnZ(int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(k == 2){
           float angle = PI/2;
           PVector v = new PVector();
           v.x = round(i * cos(angle) - j * sin(angle));
           v.y = round(i * sin(angle) + j * cos(angle));
           v.z = round(k);
           translate(i, j);
           /*
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(dir*PI/2);
           matrix.translate(i, j);
           */
           current.turnZ();
           
         }
       }
     }
   }
    
  
  }
  

 void turnX(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(i == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(j, k);
           //current.turnX(angle);
           //current.update(i, round(matrix.m02), round(matrix.m12));
         }
       }
     }
   }
  }
  
    void turnY(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(i, k);
          // current.turnY(angle);
          //current.update(round(matrix.m00), j, round(matrix.m02));
         }
       }
     }
   }
  
  }
  
  void turnZ(){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(k == 2){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           //matrix.translate(i, j);
           
           current.update(round(matrix.m02),round( matrix.m12), k);
           current.turnZ();
         }
       }
     }
   }
    
  
  }
  

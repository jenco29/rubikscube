
  void turnX(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(i == 0){
           PVector vector = new PVector(j, k);
           //vector.j +=(cos(angle) + sin(angle));
           //vector.k +=(-sin(angle) + cos(angle));
           translate(j ,k);
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(j, k);
           current.turnX(angle);
           current.update(i, round(matrix.m02), round(matrix.m12));
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
           PVector vector = new PVector(i, k);
           //vector.i += (cos(angle) - sin(angle));
           //vector.k += (sin(angle) + cos(angle));
           translate(i, k);
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(i, k);
           current.turnY(angle);
          current.update(round(matrix.m00), j, round(matrix.m02));
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
           /*
           PVector vector = new PVector(i, j);
           vector.i += (cos(angle) + sin(angle));
           vector.j += (-sin(angle) + cos(angle));
           translate(i, j);
           */
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(i, j);
           println(i, j);
           //current.turnZ(angle);

          current.update(round(matrix.m02),round( matrix.m12), k);
         }
       }
     }
   }
    
  
  }

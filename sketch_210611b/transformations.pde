 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           
           current.face[3] = new planes(0, 0, 0.5, white); 
           current.face[3].show();
           current.face[4] = new planes(0, 0.5, 0, red);
           current.face[4].show();
           current.face[5] = new planes(0, 0, -0.5, yellow);
           current.face[5].show();
           current.face[2] = new planes(0, -0.5, 0, orange);
           current.face[2].show();
           
           
           }
         }
         

       }
     }
   }

  
    void UpDown(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == side){
           current.face[1] = new planes(0.5, 0, 0, red); 
           current.face[2] = new planes(0, 0, -0.5, blue);
           current.face[0] = new planes(-0.5, 0, 0, orange);
           current.face[3] = new planes(0, 0, 0.5, green); 
           for(planes P : current.face){
             P.show();
           }
           
          
         }
       }
     
     }
   }
  
  }
  
   void FrontBack(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(k == side){
           float angle = PI/2;
           /*
           PVector v = new PVector();
           v.x = round(i * cos(angle) - j * sin(angle));
           v.y = round(i * sin(angle) + j * cos(angle));
           v.z = round(k);
           translate(i, j, k);
           */
           PMatrix2D matrix = new PMatrix2D();
           current.matrix.translate(i, j);
           current.matrix.rotate(PI/2);
           
           
           for(planes P : current.face){
             P.turnZPlane(PI/2);
              P.show();
           
         }
       }
     }
     
   }
    
  
  }
  
   }

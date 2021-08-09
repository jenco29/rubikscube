color[] newColors = new color[6];
 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           current.changeUpDown();
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
           current.face[0].c = current.colors[3];
           current.face[2].c = current.colors[0];
           current.face[1].c = current.colors[2];
           current.face[3].c = current.colors[1];
           
           current.colors[3] = current.colors[0];
           current.colors[0] = current.colors[2];
           current.colors[2] = current.colors[1];
           current.colors[1] = current.colors[3];
           
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
           /*
           current.face[1] = new planes(0.5, 0, 0, white); 
           current.face[1].show();
           current.face[5] = new planes(0, 0.5, 0, blue);
           current.face[5].show();
           current.face[0] = new planes(-0.5, 0, 0, yellow);
           current.face[0].show();
           current.face[4] = new planes(0, -0.5, 0, green);
           current.face[4].show();
*/
       }
     }
     
   }
    
  
  }
  
   }

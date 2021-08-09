color[] newColors = new color[6];
 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           current.changeColor('i');
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
            current.changeColor('j');
           
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
           current.changeColor('k');

       }
     }
     
   }
    
  
  }
  
   }

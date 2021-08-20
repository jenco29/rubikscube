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
      Boolean sideT=false;
      //change i & k
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == side){
           sideT = true;
            current.changeColor('j');

         }
        }
       }
     
     }
     for(int i=0; i<3; i++){
       for(int k=i; k<3; k++){
         if(sideT){
           cube temp = cubies[i][side][k];
           cubies[i][side][k].face[5].c = cubies[k][side][i].face[5].c;
           cubies[i][side][k].face[4].c = cubies[k][side][i].face[4].c;
           cubies[k][side][i] = temp;
         }
       }
     }
     
     for (int i=0; i<3; i++){
       for(int k=0; k<(3/2); k++){
         cube temp = cubies[i][side][k];
         cubies[i][side][k].face[5].c = cubies[i][side][2-k].face[5].c;
         cubies[i][side][k].face[4].c = cubies[i][side][2-k].face[4].c;
         cubies[i][side][2-k] = temp;
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

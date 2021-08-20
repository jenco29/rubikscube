Boolean sideT=false;
color[] newColors = new color[6];


 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           sideT = true;
           current.changeColor('i');
           }
         } 
       }
     }
     if(sideT){
     for(int j=0; j<3; j++){
       for(int k=j; k<3; k++){
           color tempU = cubies[side][j][k].face[0].c;
           color tempD = cubies[side][j][k].face[1].c;
           cubies[side][j][k].face[0].c = cubies[side][k][j].face[0].c;
           cubies[side][j][k].face[1].c = cubies[side][k][j].face[1].c;
           cubies[side][k][j].face[0].c = tempU;
           cubies[side][k][j].face[1].c = tempD;
       }
     }
     
     for (int j=0; j<3; j++){
       for(int k=0; k<(3/2); k++){
         color tempU = cubies[side][j][k].face[5].c;
         color tempD = cubies[side][j][k].face[4].c;
         cubies[side][j][k].face[5].c = cubies[side][j][2-k].face[5].c;
         cubies[side][j][k].face[4].c = cubies[side][j][2-k].face[4].c;
         cubies[side][j][2-k].face[5].c = tempU; 
         cubies[side][j][2-k].face[4].c = tempD;
         
       }
     }
     
    }
     
   }

  
    void UpDown(int side){
      
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
     
     if(sideT){
     for(int i=0; i<3; i++){
       for(int k=i; k<3; k++){
           color tempU = cubies[i][side][k].face[5].c;
           color tempD = cubies[i][side][k].face[4].c;
           cubies[i][side][k].face[5].c = cubies[k][side][i].face[5].c;
           cubies[i][side][k].face[4].c = cubies[k][side][i].face[4].c;
           cubies[k][side][i].face[5].c = tempU;
           cubies[k][side][i].face[4].c = tempD;
       }
     }
     
     for (int i=0; i<3; i++){
       for(int k=0; k<(3/2); k++){
         color tempU = cubies[i][side][k].face[5].c;
         color tempD = cubies[i][side][k].face[4].c;
         cubies[i][side][k].face[5].c = cubies[i][side][2-k].face[5].c;
         cubies[i][side][k].face[4].c = cubies[i][side][2-k].face[4].c;
         cubies[i][side][2-k].face[5].c = tempU; 
         cubies[i][side][2-k].face[4].c = tempD;
         
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

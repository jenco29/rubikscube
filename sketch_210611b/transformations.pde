Boolean sideT=false;

 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         if(i == side){
           sideT = true;
           
           }
         } 
       }
     }
     if(sideT){
     for(int j=0; j<3; j++){
       for(int k=j; k<3; k++){
         for(int x=0; x<6; x++){
           planes temp = cubies[side][j][k].face[x];
           cubies[side][j][k].face[x] = cubies[side][k][j].face[x];
           cubies[side][k][j].face[x] = temp;
         }
           

       }
     }
     
     for (int j=0; j<3; j++){
       for(int k=0; k<(3/2); k++){
         for(int x=0; x<6; x++){
           planes temp = cubies[side][j][k].face[x];
           cubies[side][j][k].face[x] = cubies[side][j][2-k].face[x];
           cubies[side][j][2-k].face[x] = temp; 
           
         }
         
         
       }
     }
     
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

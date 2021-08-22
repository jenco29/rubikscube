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
         if(j == side){
           sideT = true;

         }
        }
       }
     
     }
     
     if(sideT){
     for(int i=0; i<3; i++){
       for(int k=i; k<3; k++){
         for(int x=0; x<6; x++){
           planes temp = cubies[i][side][k].face[x];
           cubies[i][side][k].face[x] = cubies[k][side][i].face[x];
           cubies[k][side][i].face[x] = temp;
         }
           
       }
     }
     
     for (int i=0; i<3; i++){
       for(int k=0; k<(3/2); k++){
         for(int x=0; x<6; x++){
           planes temp = cubies[i][side][k].face[x];
           cubies[i][side][k].face[x] = cubies[i][side][2-k].face[x]; 
           cubies[i][side][2-k].face[x] = temp;
         }
         
         
       }
     }
     
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
   }
   
  

  
   void FrontBack(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         if(k == side){
           sideT = true;

       }
     }    
   }
     
  }
     if(sideT){
     for(int i=0; i<3; i++){
       for(int j=i; j<3; j++){
         for(int x=0; x<6; x++){
           planes temp = cubies[i][j][side].face[x];
           cubies[i][j][side].face[x] = cubies[j][i][side].face[x];
           cubies[j][i][side].face[x] = temp;
         }
           

       }
     }
     
     for (int i=0; i<3; i++){
       for(int j=0; j<(3/2); j++){
         for(int x=0; x<6; x++){
           planes temp = cubies[i][j][side].face[x];
           cubies[i][j][side].face[x] = cubies[i][2-j][side].face[x];
           cubies[i][2-j][side].face[x] = temp; 
           
         }
         
         
       }
     }
     
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
  
  
  
   }

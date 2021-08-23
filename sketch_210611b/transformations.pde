Boolean sideT=false;

 void LeftRight(int side, int dir){
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
       
            for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           if(dir == 1){
             current.changeColor('i', 1);
           }
           else{
             current.changeColor('i', -1);
           }
         } 
       }
     }
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
            }
     }

    
     
   }

  
    void UpDown(int side, int dir){
      
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
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == side){
           if(dir == 1){
             current.changeColor('j', 1);
           }
           else{
             current.changeColor('j', -1);
           }
        }
       }
     
     }
           }
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
     

     
    }
   }
   
  

  
   void FrontBack(int side, int dir){
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
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(k == side){
           if(dir == 1){
             current.changeColor('k', 1);
           }
           else{
             current.changeColor('k', -1);
           }
           
           
           }
         } 
       }
     }
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
     
  
    }
  
  
  
   }

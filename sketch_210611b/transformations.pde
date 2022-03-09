Boolean sideT=false;

 void LeftRight(int side, int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
           cube current = cubies[i][j][k];
         
           if(i == side){
             sideT = true;
             if(dir == 1){
               current.changeColor('i', 1);
             }
             else{
               current.changeColor('i', -1);
             }
           } 
           
           
         } 
       }
     }
     if(sideT){

       for(int j=0; j<3; j++){
         for(int k=j; k<3; k++){
           /*
           cube qb = cubies[side][j][k];
           cubies[side][j][k] = cubies[side][k][j];
           cubies[side][k][j] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[side][j][k].face[x];
             cubies[side][j][k].face[x] = cubies[side][k][j].face[x];
             cubies[side][k][j].face[x] = temp;
             
           } 
  
         }
       }
       
       if(dir == 1){
         for (int j=0; j<3; j++){
         for(int k=0; k<(3/2); k++){
           /*
           cube qb = cubies[side][j][k];
           cubies[side][j][k] = cubies[side][j][2-k];
           cubies[side][j][2-k] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[side][j][k].face[x];
             cubies[side][j][k].face[x] = cubies[side][j][2-k].face[x];
             cubies[side][j][2-k].face[x] = temp; 
             
           }
           
         }
       }
       }
       else{
         for (int k=0; k<3; k++){
         for(int j=0; j<(3/2); j++){
           /*
           cube qb = cubies[side][j][2-k];
           cubies[side][j][k] = cubies[side][2-j][k];
           cubies[side][2-j][k] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[side][j][k].face[x];
             cubies[side][j][k].face[x] = cubies[side][2-j][k].face[x];
             cubies[side][2-j][k].face[x] = temp; 
             
            }   
          }
        }     
      }
       map();
       
     }
      
   }

    
     
   

  
 void UpDown(int side, int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         if(j == side){
           sideT = true;
           cube current = cubies[i][j][k];
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
     
     if(sideT){

       for(int i=0; i<3; i++){
         for(int k=i; k<3; k++){
           /*
           cube qb = cubies[i][side][k];
           cubies[i][side][k] = cubies[k][side][i];
           cubies[k][side][i] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[i][side][k].face[x];
             cubies[i][side][k].face[x] = cubies[k][side][i].face[x];
             cubies[k][side][i].face[x] = temp;
           }
             
         }
       }
       
       if(dir ==1){
         for (int i=0; i<3; i++){
         for(int k=0; k<(3/2); k++){
           /*
           cube qb = cubies[i][side][k];
           cubies[i][side][k] = cubies[i][side][2-k];
           cubies[i][side][2-k] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[i][side][k].face[x];
             cubies[i][side][k].face[x] = cubies[i][side][2-k].face[x]; 
             cubies[i][side][2-k].face[x] = temp;
           }      
         }
        }
       }
       
       else{
         for (int k=0; k<3; k++){
         for(int i=0; i<(3/2); i++){
           /*
           cube qb = cubies[i][side][2-k];
           cubies[i][side][k] = cubies[2-i][side][k];
           cubies[2-i][side][k] = qb;
           */
           for(int x=0; x<6; x++){
             planes temp = cubies[i][side][k].face[x];
             cubies[i][side][k].face[x] = cubies[2-i][side][k].face[x]; 
             cubies[2-i][side][k].face[x] = temp;
           }
           
           
         }
        }
       }  
       map();
     }
   }
   
  

  
 void FrontBack(int side, int dir){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         if(k == side){
           sideT = true;
           cube current = cubies[i][j][k];
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
  if(sideT){

     for(int i=0; i<3; i++){
       for(int j=i; j<3; j++){
         /*
         cube qb = cubies[i][j][side];
         cubies[i][j][side] = cubies[j][i][side];
         cubies[j][i][side] = qb;
         */
         for(int x=0; x<6; x++){
           planes temp = cubies[i][j][side].face[x];
           cubies[i][j][side].face[x] = cubies[j][i][side].face[x];
           cubies[j][i][side].face[x] = temp;
         }
       }
     }
     
     if(dir==1){
       for (int i=0; i<3; i++){
       for(int j=0; j<(3/2); j++){
         /*
         cube qb = cubies[i][j][side];
         cubies[i][j][side] = cubies[i][2-j][side];
         cubies[i][2-j][side] = qb;
         */
         for(int x=0; x<6; x++){
           planes temp = cubies[i][j][side].face[x];
           cubies[i][j][side].face[x] = cubies[i][2-j][side].face[x];
           cubies[i][2-j][side].face[x] = temp; 
           
         }  
       }
      }
     }
     else{
       for (int j=0; j<3; j++){
       for(int i=0; i<(3/2); i++){
         /*
         cube qb = cubies[i][j][side];
         cubies[i][j][side] = cubies[2-i][j][side];
         cubies[2-i][j][side] = qb;
         */
         for(int x=0; x<6; x++){
           planes temp = cubies[i][j][side].face[x];
           cubies[i][j][side].face[x] = cubies[2-i][j][side].face[x];
           cubies[2-i][j][side].face[x] = temp; 
           
         }  
       }
      }
     }
     map();
    } 
   }

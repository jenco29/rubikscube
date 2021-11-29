
 class Layout{

     int index;
     int type;

     void setColours(color[] c){
        Sides[] side = new Sides[type];
        for(int i=0; i<type; i++){
            side[i].col = c[i];
        }

     }


     Layout(int type, int i){

        this.index = i;
        this.type = type;



     }



 }

 class Sides{
     color col;

     Sides(){
         this.col = col;
     }
 }



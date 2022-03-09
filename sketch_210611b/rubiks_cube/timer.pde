int millisecs;
int seconds;
int minutes;
Boolean start = false;
Boolean starter;

void timer(){
  if(start){
    if(int(millis()/100) % 10 != millisecs){
      millisecs++;
    }
    if(millisecs >= 10){
      millisecs -= 10;
      seconds++;
    }
    if(seconds >= 60){
      seconds -= 60;
      minutes++;
    }
    
  }
    
  text(nf(minutes, 2) + ":" + nf(seconds, 2) + "." + nf(millisecs, 1), -150, 150); 
  
}

void mouseClicked(){
  if(start == false){
    starter = true;
  }
  if(start == true){
    starter = false;
  }
  start = starter;
  
}

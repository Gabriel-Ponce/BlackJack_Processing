int aces;
int counter;
int x;
boolean still_playing = true;
String score;
PFont mono;
void setup(){
  size(2080, 1000);
   background(33, 127, 33);
   
  
  for(int i = 0; i < 2; i++) {
    
    Cards card = new Cards();
    card.drawImage(x, 0);
    aces += card.getAces();
    counter += card.getnumber_card();
    x+= 60; 
  }
 
  
  
  
}

void draw() {
  println(counter);
   if (still_playing == true) {
   fill(0);
   mono = createFont("Arial", 32);
   textFont(mono);
   text("Another card: Space", 0, 500);
   text("That's enough: Enter", 0, 600);
   } 
   else {
   
   }
    
  }
    void keyReleased() {
  
  if (key == ' ' && still_playing == true) {
    Cards card = new Cards();
    card.drawImage(x, 0);
    aces += card.getAces();
    counter += card.getnumber_card();
    x+= 60; 
    
}
  if (counter > 21 && aces > 0) {
    
   counter -= 10; 
   aces--;
  }
else if (key == ENTER) {
      still_playing = false;
      showResult(counter);
       
}
if (counter > 21) {
  still_playing = false;
  showResult(counter);
}
    }
    

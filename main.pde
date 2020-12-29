int aces;
int counter;
int x;
boolean still_playing = false;
boolean isscreen = true;
boolean isstart = false;
String score;
PFont mono;
PFont start;
PImage logo;
PImage S;

Cards cardexample = new Cards();

void setup(){

  size(2080, 1000);
  startupScreen( logo, cardexample, start); 
  
}



void draw() {
   
checkLose();
  println(counter);
  
   if (still_playing == true) {
   mono = createFont("Arial", 32);
   textFont(mono);
   text("Another card: Space", 0, 500);
   text("That's enough: Enter", 0, 600);
   } 
   else {
   
   }
    
  }
void keyReleased() {
  
KeyBindings();

}

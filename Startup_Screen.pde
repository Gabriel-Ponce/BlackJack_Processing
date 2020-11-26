void startGame() {
  
 
  background(33, 127, 33);
    for(int i = 0; i < 2; i++) {
    
    
    Cards cardsetup = new Cards();
    cardsetup.drawImage(x, 0);
    aces += cardsetup.getAces();
    counter += cardsetup.getnumber_card();
    x+= 60; 
    
    
  } 
}


void startupScreen(PImage logo, Cards card, PFont start) {

 background (0, 0, 0); 
 logo = loadImage("404StudiosWhite.png");
 image(logo, 1040-500, 300);
 delay(1000);


 
 

 background(33, 127, 33);
 start = createFont("Arial", 100);
 textFont(start);
 card.drawBack(650, 35);
 text("BlackJack", 600, 500);
 text("Press E to start", 600, 600);

 
 
   
   

}

void modeSelection(PFont selection, PImage S) {
 
  background(33, 127, 33);
 selection = createFont("Arial", 100);
 textFont(selection);
 text("Solo Player", 600, 400);
 S = loadImage("S.png");
 S.resize(100, 100);
 image(S, 1200, 300);
 text("Local Multiplayer", 600, 500);
 selection = createFont("Arial", 80);
 textFont(selection);
 text("Available soon", 600, 860);
 
}

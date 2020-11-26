void KeyBindings() {
    if (key == 'e' && isscreen == true) {
    
    isstart = true;
    isscreen = false;
    modeSelection(mono, S);
    
    }
    
    if (key == 's' && isstart == true) {
    still_playing = true;
    startGame();
    }
      
      
   if (key == ' ' && still_playing == true) {
    Cards card = new Cards();
    card.drawImage(x, 0);
    aces += card.getAces();
    counter += card.getnumber_card();
    x+= 60; 
    
}
  else if (key == ENTER && still_playing == true) {
      still_playing = false;
      showResult(counter);
      
 

       
}

if (key == 'r' && still_playing == false) {
    background(33, 127, 33);
    counter = 0;
    x = 0;
    startGame();
    still_playing = true;
    }
}
void checkLose() {
if (counter > 21 && aces > 0) {
    
   counter -= 10; 
   aces--;
  }
  else if (counter > 21 && still_playing == true && aces == 0) {
  still_playing = false;
  showResult(counter);

}
}

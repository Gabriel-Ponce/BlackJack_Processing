Cards cardResult = new Cards();
void showResult(int counter) {
   score = Integer.toString(counter);
   background(33, 127, 33);
   text("You got: " + score + "points", 0, 500);
   int bot = (int)random(6.9)+15;
   text("AI got: " + bot + "points", 1000, 500);
   cardResult.drawBack(1000,0);
   text("Press R to restart", 500, 800);
   
   if (counter > 21) {
     cardResult.drawManualImage(counter-21, 0, 0);
     text("You loose", 500, 700);
   }
   else if (counter > bot) {
     cardResult.drawBack(0,0);
     text("You win", 0, 700);
   }
   else if (counter == bot) {
     cardResult.drawBack(0,0);
     text("Tie", 500, 700);
   }
   else {
    cardResult.drawBack(0,0);
     text("You loose", 500, 500); 
   }
}

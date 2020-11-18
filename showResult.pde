void showResult(int counter) {
   score = Integer.toString(counter);
   background(33, 127, 33);
   text("You got: " + score + "points", 0, 500);
   int bot = (int)random(6)+15;
   text("AI got: " + bot + "points", 1000, 500);
   text("Press R to restart", 500, 800);
   
   if (counter > 21) {
     text("You loose", 500, 700);
   }
   else if (counter > bot) {
     text("You win", 500, 700);
   }
   else if (counter == bot) {
     text("Tie", 500, 700);
   }
   else {
    text("You loose", 500, 500); 
   }
}

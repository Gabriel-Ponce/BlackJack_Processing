PImage card;


class Cards {
  
  boolean isAce = false;
  private int number_card = (int)random(9)+1;  
    
 
  void setImage() {
    
   switch(number_card) {
   
     case (1):
     isAce = true;
     card = loadImage("A.jpg");
     break;
     
     case(2):
     card = loadImage("2.jpg");
     break;
     
     case(3):
     card = loadImage("3.jpg");
     break;
     
     
     case(4):
     card = loadImage("4.jpg");
     break;
     
     case(5):
     card = loadImage("5.jpg");
     break;
     
     case(6):
     card = loadImage("6.jpg");
     break;
     
     case(7):
     card = loadImage("7.jpg");
     break;
     
      case(8):
     card = loadImage("8.jpg");
     break;
     
     case(9):
     card = loadImage("9.jpg");
     break;
     
     case(10):
     card = loadImage("Queena.jpg");
     break;
     
     
     
     
   }
   
   
   
  }

  void setManualImage(int number) {
   
   switch(number) {
   
     case (1):
     card = loadImage("A.jpg");
     break;
     
     case(2):
     card = loadImage("2.jpg");
     break;
     
     case(3):
     card = loadImage("3.jpg");
     break;
     
     
     case(4):
     card = loadImage("4.jpg");
     break;
     
     case(5):
     card = loadImage("5.jpg");
     break;
     
     case(6):
     card = loadImage("6.jpg");
     break;
     
     case(7):
     card = loadImage("7.jpg");
     break;
     
      case(8):
     card = loadImage("8.jpg");
     break;
     
     case(9):
     card = loadImage("9.jpg");
     break;
     
     case(10):
     card = loadImage("Queena.jpg");
     break;
   }
   }
    int getAces() {
     
    if (number_card == 1) {
      number_card = 11;     
      return 1;
    }
    else {
     return 0; 
    }
    
     
   }
  
  
  int getnumber_card() {
     
    
    return number_card; 
   }
  
  void drawImage(int x, int y) {
    setImage();
    image(card, x, y);
    
  }
  
  
  void drawManualImage(int no, int x, int y) {
    setManualImage(no);
    image(card, x, y);
    
  }
  void drawBack(int x, int y) {
   card = loadImage("Reverso.jpg");
   image(card, x, y);
   
    
    
  }
  
}

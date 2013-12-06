class Catcher {
  
  Catcher() {
    photo1 = loadImage("kirbybasket.jpg.png");
    x = width/2;
  }
    
    void display() {
    imageMode(CENTER);
    image(photo1, x, height-40, 50, 50);
    }
  }


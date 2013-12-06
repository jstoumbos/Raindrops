class Catcher {
  
  Catcher() {
    photo1 = loadImage("kirbybasket.jpg.png");
    x = width/2;
  }
    
    void display() {
    imageMode(CENTER);
    image(photo1, x, height-40, 50, 50);
      if (keyPressed && key == 'j') {
      x = x-3;
    }
      if (keyPressed && key == 'k') {
      x = x+3;
    }
    }
  }


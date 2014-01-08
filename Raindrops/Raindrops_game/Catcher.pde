class Catcher {
  PImage photo1;
  PVector loc;
  int score = 0;
  int lives = 1;

  Catcher() {
    photo1 = loadImage("kirbybasket.jpg.png");
    //kirby image for catcher
    loc = new PVector(width/2, height - 50);
  }

  void display() {
    imageMode(CENTER);
    image(photo1, loc.x, height-40, 50, 50);
    if (keyPressed && key == 'j') {
      loc.x = loc.x-3;
    }
    if (keyPressed && key == 'k') {
      loc.x = loc.x+3;
    }
    //allows kirby to move left and right by pressing the "j" and "k" keys
  }
}

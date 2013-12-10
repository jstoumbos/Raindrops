class Catcher {
  PImage photo1;
  PVector loc;

  Catcher() {
    photo1 = loadImage("kirbybasket.jpg.png");
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
  }
}

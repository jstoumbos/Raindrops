class Comets {
  PVector loc;
  PVector vel;
  PVector acc;
  PImage comet;

  Comets() {
    loc = new PVector(random(5, width-5), 0);
    vel = new PVector(0, random(1, 2));
    acc = new PVector(0, 0.004);
    comet = loadImage("comet.png");
    //comet image inserted
  }

  void display() {
    imageMode(CENTER);
    image(comet, loc.x, loc.y, 55, 75);
    if (loc.y > height) {
      loc.y = 0;
      //makes comets regenerate after reaching the bottom
      loc.x = random(30, width-30);
    }
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
  }

  void kirby(Catcher c) {
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < 20) {
      loc.x = random(width);
      loc.y = 0;
      //comets disappear after reaching the catcher
      c.lives --;
      //lives decrease with every comet caught
    }
  }
  void restart(Catcher c) {
    if (c.lives == 0) {
      vel.y = 0;
      acc.y = 0;
    }
    if (c.lives == 5) {
      acc.y = 0.004;
    }
    //comets stop when lives run out
  }
}

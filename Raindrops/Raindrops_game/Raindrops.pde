class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;

  Raindrops() {
    loc = new PVector(random(5, width-5), random(0,70));
    vel = new PVector(0, random(0.05, 1.5));
    acc = new PVector(0, 0.002);
  }

  void display() {
    fill(loc.y, 100, 100);
    ellipse(loc.x, loc.y, random(10), random(5, 10));
    //allows drops to give the appearance of falling coins
    if (loc.y > height) {
      loc.y = 0;
      //makes coins regenerate after reaching the bottom
    }
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
  }

  void kirby(Catcher c) {
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < 20) {
      loc.y = 0;
      //drops disappear after reaching the catcher
      c.score ++;
      //score increases with every drop caught
    }
  }

  void restart(Catcher c) {
    if (c.lives == 0) {
      vel.y = 0;
      acc.y = 0;
    }
    if (c.lives > 0) {
      acc = new PVector(0, 0.002);
    }
    //coins stop when lives run out
  }
}

class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;

  Raindrops() {
    loc = new PVector(random(5, width-5), 0);
    vel = new PVector(0, random(-2, 2));
    acc = new PVector(0, 0.003);
  }

  void display() {
    fill(loc.y, 100, 100);
    ellipse(loc.x, loc.y, random(10), random(5, 10));
    if (loc.y > height) {
      loc.y = 0;
    }
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
}

Raindrops[] rain = new Raindrops[300];
Catcher c1;

void setup() {
  size(500, 500);
  for (int i=0; i < rain.length; i++) {
    rain[i] = new Raindrops() ;
  }
  c1 = new Catcher();
  colorMode(HSB, height, 100, 100);
}

void draw() {
  noStroke();
  background(0);
  for (int i=0; i < rain.length; i++) {
    rain[i].display();
    rain[i].fall();
  }
  c1.display();
}


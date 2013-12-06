Raindrops[] rain = new Raindrops[50];
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
  fill(170,70,100);
  rect(0,height-20,width,20);
  c1.display();
  for (int i=0; i < rain.length; i++) {
    rain[i].display();
    rain[i].fall();
  }
}

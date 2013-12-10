Raindrops[] rain = new Raindrops[50];
Catcher c1;
PImage photo2;

void setup() {
  size(500, 500);
  photo2 = loadImage("night.jpg");
  for (int i=0; i < rain.length; i++) {
    rain[i] = new Raindrops() ;
  }
  c1 = new Catcher();
  colorMode(HSB, height, 100, 100);
}

void draw() {
  noStroke();
  image(photo2, width/2, height/2, width, height);
  c1.display();
  for (int i=0; i < rain.length; i++) {
    rain[i].display();
    rain[i].fall();
    rain[i].kirby(c1);
  }
}

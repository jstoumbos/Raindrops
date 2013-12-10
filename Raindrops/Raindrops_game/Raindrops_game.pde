Catcher c1;
PImage photo2;

void setup() {
  size(500, 500);
  photo2 = loadImage("night.jpg");
  //night sky image for background
  for (int i=0; i < rain.length; i++) {
    rain[i] = new Raindrops() ;
  }
  //array created for drops
  c1 = new Catcher();
  colorMode(HSB, height, 100, 100);
}

void draw() {
  noStroke();
  image(photo2, width/2, height/2, width, height);
  //makes night sky image the background
  c1.display();
  //inserts the catcher
  for (int i=0; i < rain.length; i++) {
    rain[i].display();
    rain[i].fall();
    rain[i].kirby(c1);
    //makes the drops fall in a continuous loop
  }
  textSize(30);
  text(c1.score, width-80, 50);
  //puts the score on the screen
}

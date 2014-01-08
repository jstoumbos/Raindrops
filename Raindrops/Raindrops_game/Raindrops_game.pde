Raindrops[] rain = new Raindrops[20];
Comets[] comet = new Comets[1];
Catcher c1;
PImage photo2;
boolean play;
boolean stop;
int x;
int y;
int d;

void setup() {
  size(500, 500);
  photo2 = loadImage("night.jpg");
  play = true;
  //night sky image for background
  for (int i=0; i < rain.length; i++) {
    rain[i] = new Raindrops() ;
  }
  //array created for drops
  for (int i=0; i < comet.length; i++) {
    comet[i] = new Comets() ;
  }
  c1 = new Catcher();
  colorMode(HSB, height, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  x = width/2; 
  y = height/2;
  d = 300;
}

void draw() {
  noStroke();
  image(photo2, width/2, height/2, width, height);
  //makes night sky image the background
  c1.display();
  //inserts the catcher
  textSize(30);
  text("SCORE:", width-150, 30);
  text(c1.score, width-50, 30);
  text("LIVES:", 50, height-50);
  text(c1.lives, 110, height-50);
  //puts the score on the screen
  textSize(69);
  if (play) {
    fill (100, 255, 100);
    rect(x, y, d, d-100);
    fill(0);
    text("START", x, y);
  }
  textSize(11);
  if (!play) {
    stop = false;
    rect(30, 30, 40, 40);
    fill (0);
    text ("PAUSE", 30, 27);
    for (int i=0; i < rain.length; i++) {
      rain[i].display();
      rain[i].fall();
      rain[i].kirby(c1);
      rain[i].restart(c1);
      //makes the drops fall in a continuous loop
    }
    for (int i=0; i < comet.length; i++) {
      comet[i].display();
      comet[i].fall();
      comet[i].kirby(c1);
      comet[i].restart(c1);
      if (c1.lives <= 0) {
        stop = true;
        //allows comets to fall in continuous loop
      }
    }
    if (stop == true) {
      fill(0, 100, 100);
      textSize(50);
      rect(x, y, d, d-100);
      fill(0);
      text("GAME OVER", x, y-40);
      textSize(30);
      text("RESTART?", x, y+40);
      fill(300);
      //creates restart button
    }
  }
}

void mousePressed() {
  if (mouseX>=100 && mouseX<=400 && mouseY>=150 && mouseY<=350) {
    play = false;
    c1.lives = 5;
    c1.score = 0;
    
  }
  if (mouseX>=10 && mouseX<=50 && mouseY>=10 && mouseY<=50) {
    play = true;
  }
  //restricts mousePressed to start button, pause button, and restart button
}

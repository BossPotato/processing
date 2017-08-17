import ddf.minim.*;
AudioSample sound;
PImage catPic;
int x = 200;
int y = 260;
int acceleration = 1;

void setup() {
  size(600, 700);
  catPic = loadImage("cat.jpg");
  catPic.resize(600, 700);
  background(catPic);
  noStroke();
  Minim minim = new Minim(this);
  sound = minim.loadSample("cat-lazer.wav");
}

void draw() {
  fill(255, 36, 36);
  ellipse(x, y, 70, 70);
  ellipse(x+170, y, 70, 70);
  if (x<0) {
    background(catPic);
    println(x+", "+y);
    x=200;
    y=260;
  }
}

void keyPressed() {
  x-=2*acceleration;
  y+=2*acceleration;
  sound.trigger();
}
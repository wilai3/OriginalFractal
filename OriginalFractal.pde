public void setup() {
  size(600, 600);
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}

public void draw() {
  rectMode(CENTER);
  fractal(300, 300, 600, 1);
}

public void mousePressed()
{
  if (mouseButton == LEFT) {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  } else if (mouseButton == RIGHT) {
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
}

public void fractal(int x, int y, float len, int limit) {
  if (len <= limit) {
    rect(x, y, len, len);
  } else {
    rect(x, y, len, len);
    ellipse(x, y, len, len);
    fractal(x, y, (len/2)*sqrt(2), 1);
  }
}

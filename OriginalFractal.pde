public void setup(){
  size(500,500);
  fill(0);
}

public void draw(){
  rectMode(CENTER);
  squares(250,250,50);
}

public void squares(int x, int y, int len){
  if (len < 1000){
    square(x,y,len);
  } else {
    square(x-len/2,y-len/2,len+20);
  }
}

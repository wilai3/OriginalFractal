public void setup(){
  size(500,500);
}

public void draw(){
  rectMode(CENTER);
  fractal(250,250,250,1);
}

public void fractal(int x, int y, int len, int limit){
  if (len <= limit){
    square(x,y,len);
  } else {
    square(x-10,y-10,len-10);
    fractal(x-len/2,y-len/2,len/2,1);
  }
}

public void setup(){
  size(800, 800);
  background(250);
}

public void draw(){
  fill(0);
  sierpinski(0, 800, 800);
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

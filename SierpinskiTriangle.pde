boolean pressed = false;

public void setup(){
  size(800, 800);
  background(250);
}

public void draw(){
  background(250);
  if(pressed == true)
    sierpinski(0, 800, mouseX);
  else
    sierpinski(0, 800, 800);
}

public void mousePressed(){
  if(mouseButton == LEFT)
    pressed = true;
}

public void mouseReleased(){
  if(mouseButton == LEFT)
    pressed = false;
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    fill(0);
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    fill(0);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

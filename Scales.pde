void setup() {
  size(200, 200);
  frameRate(1);
}
boolean shift = true;
void draw() {
  for (int y = 380; y > -11; y-=20)
  {
    for (int x = -20; x < 400; x+=25)
      scale(x, y);
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}
void scale(int x, int y) {
  if (shift == true) {
    fill(10, (float)(Math.random() * 25 + 60), 10);
    stroke(0, 0, 0);
    beginShape();
    curveVertex(x, y);
    curveVertex(x, y);
    curveVertex(x, y+4);
    curveVertex(x+4, y+8);
    curveVertex(x+4, y+12);
    curveVertex(x+8, y+16);
    curveVertex(x+8, y+20);
    curveVertex(x+12, y+24);
    curveVertex(x+12, y+28);
    curveVertex(x+16, y+32);
    curveVertex(x+16, y+36);
    curveVertex(x+20, y+40);
    curveVertex(x+20, y+40);
    endShape();
    beginShape();
    curveVertex(x+40, y);
    curveVertex(x+40, y);
    curveVertex(x+40, y+4);
    curveVertex(x+36, y+8);
    curveVertex(x+36, y+12);
    curveVertex(x+32, y+16);
    curveVertex(x+32, y+20);
    curveVertex(x+28, y+24);
    curveVertex(x+28, y+28);
    curveVertex(x+24, y+32);
    curveVertex(x+24, y+36);
    curveVertex(x+20, y+40);
    curveVertex(x+20, y+40);
    endShape();
    
    noStroke();
    triangle(x, y, x+20, y+40, x+40, y);
    
    fill(20, (float)(Math.random() * 50 + 125), 100);
    stroke(0,0,0);
    triangle(x+5, y, x+20, y+30, x+35, y);
    
  } else {
    fill(10, (float)(Math.random() * 25 + 60), 10);
    stroke(0, 0, 0);
    
    beginShape();
    curveVertex(x+10, y);
    curveVertex(x+10, y);
    curveVertex(x+10, y+4);
    curveVertex(x+14, y+8);
    curveVertex(x+14, y+12);
    curveVertex(x+18, y+16);
    curveVertex(x+18, y+20);
    curveVertex(x+22, y+24);
    curveVertex(x+22, y+28);
    curveVertex(x+26, y+32);
    curveVertex(x+26, y+36);
    curveVertex(x+30, y+40);
    curveVertex(x+30, y+40);
    endShape();
    
    beginShape();
    curveVertex(x+50, y);
    curveVertex(x+50, y);
    curveVertex(x+50, y+4);
    curveVertex(x+46, y+8);
    curveVertex(x+46, y+12);
    curveVertex(x+42, y+16);
    curveVertex(x+42, y+20);
    curveVertex(x+38, y+24);
    curveVertex(x+38, y+28);
    curveVertex(x+34, y+32);
    curveVertex(x+34, y+36);
    curveVertex(x+30, y+40);
    curveVertex(x+30, y+40);
    endShape();
    
    noStroke();
    triangle(x+10, y, x+30, y+40, x+50, y);
    
    fill(20, (float)(Math.random() * 50 + 125), 100);
    stroke(0, 0, 0);
    triangle(x+15, y, x+30, y+30, x+45, y);
  }
}

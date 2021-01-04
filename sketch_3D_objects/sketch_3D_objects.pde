float rotx, roty;


void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(255);



  ball(width/3, height/3, 0, #0000FF, 100);
  ball(width +200, height- 300, 0, #0000FF, 50);
  ball(50, 225, 0, #0000FF, 135);

  cube(width/2, height/2, 0, #FF0000, 200);
  cube(700, 600, 0, #FF0000, 150);
  cube(360, 90, 0, #FF0000, 75);


}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(0);
  strokeWeight(3);
  sphere(size);  //width, height, depth, side length if only one thing in brackets
  popMatrix();
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size);  //width, height, depth, side length if only one thing in brackets
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY) * 0.01;
  roty = roty + (pmouseX - mouseX) * -0.01;
}

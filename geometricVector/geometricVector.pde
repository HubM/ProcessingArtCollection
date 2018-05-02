class PVector {
  float x;
  float y;
  
  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void add(PVector v) {
   x += v.x;
   y += v.y;
  }
}



PVector location;
PVector velocity;

void setup() {
  int rand_velocity_x = int(random(2.5, 15));
  int rand_velocity_y = int(random(5,15));
  size(800,800);
  background(0);
  smooth();
  location = new PVector(0, 0);
  velocity = new PVector(rand_velocity_x, rand_velocity_y);
}

void draw() {
  int r = int(random(128, 255));
  int g = int(random(128, 255));
  int b = int(random(128, 255));

  location.add(velocity);

  if (location.x > width || location.x < 0) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height || location.y < 0) {
    velocity.y = velocity.y * -1;
  }

  noStroke();
  fill(r, g, b);
  ellipse(location.x, location.y, int(random(2, 30)), int(random(2, 30)));
}

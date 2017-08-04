int s = millis();
float deg = 0.0;
float convertRad;
int count;
int limit;
PShape shape;

void setup() 
{
  size(600,600);
  background(255);
  
  //initialize each time the count to 0
  count = 0;
  
  // give a limit for vertex
  limit = int(random(2,10));
  println(limit);
  
  //creation of the shape
  shape = createShape();
  shape.beginShape();
  for(int i=0; i<limit;i++){
    shape.vertex(random(0,width/4),random(0,height/4));
  }
  shape.endShape(CLOSE);
}

void draw() 
{
  translate(width/2,height/2);
  
  if(millis() > s + 120) {
    deg = randomGaussian() * 180;
    convertRad = radians(deg);
    count++;
    rotate(convertRad);
    s = millis();
  }
  
  if(count < 100) {
    strokeWeight(1);
    noFill();
    stroke(0);
    //rect(-25,-25, 200,200);
    shape(shape);
    
    
  } else {
    setup();
  }
}
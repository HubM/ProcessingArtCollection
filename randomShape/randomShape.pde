int s = millis();
float deg = 0.0;
float convertRad;
int count;
int limit;
PShape shape;
int numberOf;
float r,g,b;
int setupCount = 0;

void setup() 
{
  size(600,600);
  background(10,9,36);
  r = random(128,255);
  g = random(128,255);
  b = random(128,255);
  
  //initialize each time the count to 0
  count = 0;
  numberOf = int(random(50,100));
  
  // give a limit for vertex
  limit = int(random(2,10));
  println(limit);
  
  //creation of the shape
  shape = createShape();
  
  //drawing the shape with the number of vertex
  shape.beginShape();
  for(int i=0; i<limit;i++){
    shape.vertex(random(0,width/3),random(0,height/3));
  }
  shape.endShape(CLOSE);
}

void draw() 
{
  translate(width/2,height/2);
  
  // rotate all the shapes
  if(millis() > s + 120) {
    deg = randomGaussian() * 180;
    convertRad = radians(deg);
    count++;
    rotate(convertRad);
    s = millis();
  }
  
  //draw all shapes
  if(count < numberOf) {
    stroke(r,g,b);
    noFill();
    shape(shape);
  } else {
    // save the frame when finished
    setupCount++;
    if(setupCount != 1) {
    saveFrame("render/sun-"+setupCount+".png");
    }
    
    // relaunch
    setup();
  }
}
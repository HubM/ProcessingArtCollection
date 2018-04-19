Circle circle;
final static ArrayList<Circle> circles = new ArrayList();
boolean looping = true;

void setup() {
 size(600,600);
 background(0,0,0);
 frameRate(5);
 mousePressed();
}

void draw() { 
 translate(width/2,height/2);
 pushMatrix();
 for (Circle b: circles) {  
   b.display();
   b.live();
 }
 popMatrix();
}

void mousePressed() {
 
 float rCircle = random(128,255);
 float gCircle = random(128,255);
 float bCircle = random(128,255);
 float limitCircle = int(random(30,540));
 circles.add(new Circle(limitCircle, rCircle,gCircle,bCircle));
 
 if(looping) noLoop();
 else loop();
 
 looping = !looping;
}

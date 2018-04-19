class Circle {
 
 float limitCircle, rCircle, gCircle, bCircle;
 Circle(float limit, float r, float g, float b) {
    limitCircle = limit;
    rCircle = r;
    gCircle = g;
    bCircle = b;
 }
 void display() {
   noStroke();
    fill(rCircle,gCircle,bCircle);
    ellipse(0,0,int(random(30,width-60)),int(random(30,height-60)));
 }
 
 void live() {
   mouseX += random(-1,1);
   mouseY += random(-1,1);
 }
}

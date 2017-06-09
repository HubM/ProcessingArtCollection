class Walker{
 float x;
 float y;
 
 
 Walker() {
   x = width/2;
   y = height/2;
 }
 
 void walk(int value) {
   int choice = int(random(4));
   switch(choice) {
   case 0:
     x+=value;
     break;
   case 1:
     x-=value;
     break;
   case 2:
     y+=value;
     break; 
   case 3:   
     y-=value;
     break;       
   }
   
   x = constrain(x, 0, width-1);
   y = constrain(y, 0, height-1);
 }
 
 void display(){
   strokeWeight(random(1,2));
   stroke(random(100,255),random(100,255),random(100,255));
   //stroke(#D93240);
   fill(#262831);
   ellipse(x,y,5,5);
 }
 

  

}
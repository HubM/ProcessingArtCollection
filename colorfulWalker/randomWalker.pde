Walker[] walkers;
PFont font; 
int deplacement = int(random(30,60));
void setup() 
{
  // create the font
  font = createFont("gothamB.otf",100);
  
  //Initialize the sketch
  size(1000, 1000);
  background(#262831);
  
  // Nb of walker
  int nb = int(random(10,30));

  // The text
  textSize(100);
  textFont(font);
  fill(0, 0, 0, 20);
  text("We love Walkers", 30, 100);   
  
  // Create the walker
  walkers = new Walker[nb];
  for(int i=0; i< walkers.length; i++){
    walkers[i] = new Walker();;  }
    
    
}

void draw() 
{
  frameRate(15);
  smooth();
  for(int i=0; i< walkers.length; i++){
   walkers[i].walk(deplacement);
   walkers[i].display();
  }
}
import processing.video.*;

Capture video;
int x = 0;

void setup()
{
  size(1280,480);
  video = new Capture(this,640,480);
  video.start();
}


void captureEvent(Capture video)
{
  video.read();
}
void draw()
{
  int w = video.width;
  int h = video.height;
  
  filter(THRESHOLD, 0.6);
  copy(video,w/2,0,1,h,x,0,2,h);
  x+=1;
  
  if(x > width)
  {
   x = 0;
  }
  
  if(x == width)
  {    
    saveFrame("screen-####.png");
  }
  //image(video,0,0);
}
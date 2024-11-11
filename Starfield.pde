 Particle[] bob = new Particle[500];
 Planet[] sam = new Planet[25];
void setup(){
  size(500,500);
  background(0);
   
 for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Particle();
    
  }
  for(int i = 0; i < sam.length; i++)
  {
    sam[i] = new Planet();
    
  }
 /* for(int i = 0; i < bob.length-700; i++)
  {
    bob[i] = new Oddball();
  }*/
}

void draw(){

   background(0);
   for(int i = 0; i < sam.length; i++)
  {
    sam[i].show();
    sam[i].move();
  }
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
  
}

class Planet extends Particle {
  double myAngle1,size;
  Planet(){
  myX = 250;
  myY = 250;
  myAngle1 = Math.random()*2*Math.PI;
  mySpeed = Math.random()*2-1;
  myColor = color((int)(Math.random()*156),(int)(Math.random()*156),(int)(Math.random()*156));
  }
  
  void move(){
  double xSpeed = Math.cos(myAngle)*mySpeed;
    double ySpeed = Math.tan(myAngle)*mySpeed;
    
    myX = myX + Math.cos(myAngle) * xSpeed;
    myY = myY + Math.cos(myAngle) * ySpeed;
    if(myX > 500 || myY > 500)
          {
              myX = 250;
              myY = 250;
          }
          else if(myX < -50 || myY < -50)
          {
              myX = 250;
              myY = 250;
          }
  }
  void show(){
    size = dist((float)250,(float)250,(float)myX,(float)myY) / 5;
   noStroke();
    fill(myColor);
    //if(mySpeed > 5 || (mySpeed > -5 && mySpeed < 0))
    //{
    //}
    ellipse((float)myX,(float)myY,(float)size,(float)size); 
  }
  
}

class Particle{
  double myX,myY, mySpeed, size;
  int myColor;
  double myAngle;
  
  Particle(){  
  myX =250;// (Math.random()*500);
  myY = 250;//(Math.random()*500);
  myAngle = (Math.random()*(2*Math.PI));
  mySpeed = Math.random()*15-7.5;
  myColor = color(255,255,255);
  }
  void move(){
   double xSpeed = Math.cos(myAngle)*mySpeed;
    double ySpeed = Math.tan(myAngle)*mySpeed;
    
    myX = myX + Math.cos(myAngle) * xSpeed;
    myY = myY + Math.cos(myAngle) * ySpeed;
    if(myX > 500 || myY > 500)
          {
              myX = 250;
              myY = 250;
          }

          else if(myX < 0 || myY < 0)
          {
              myX = 250;
              myY = 250;
          }
  }
  void show(){
    size = dist((float)250,(float)250,(float)myX,(float)myY) / 35;
   noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)size,(float)size); 
  }
  }

void mousePressed(){
redraw();
}


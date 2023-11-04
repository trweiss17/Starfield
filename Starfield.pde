class Particle{
  double myX,myY, mySpeed, myAngle; 
  int myColor, myOpacity;
  Particle(){
    myX= 400;
    myY= 400;
    mySpeed= Math.random()*4;
    myAngle= Math.random()*2*Math.PI;
    myColor=(int)(Math.random()*235)+90;
    myOpacity=(int)(Math.random()*75)+70;
  }
  void show(){
    fill(myColor,myOpacity);
    ellipse((int)myX,(int)myY,10,10);
  }
  void move(){
    myX+= mySpeed*Math.cos(myAngle);
    myY+=mySpeed*Math.sin(myAngle);
  }
}
Particle[] stars= new Particle[1000];
void setup(){
  size(800,800);
  for(int i=0;i<100;i++){
  stars[i]= new OddballParticle();
}
  for(int i=100; i<stars.length; i++){
    double angle=Math.random()*2*Math.PI;
  stars[i]=new Particle();
  stars[i].myAngle=angle;
}
noStroke();
}
void draw(){
  background(0,0,0);
  for(int i=0;i<stars.length;i++){
    stars[i].show();
    stars[i].move();
}
}
class OddballParticle extends Particle{
  OddballParticle(){
myX= 400;
myY= 400;
mySpeed= (Math.random()*8)+15;
myAngle=Math.random()*4*Math.PI;
myColor= color(255,255,0);
myOpacity= 255;
}
void show(){
  fill(myColor,myOpacity);
  triangle((float)myX,(float)myY,(float)myX+5,(float)myY+10,(float)myX-5,(float)myY+10);
}
  void move(){
    myX+= mySpeed*Math.cos(myAngle);
    myY+=mySpeed*Math.sin(myAngle);
}
}


PImage img;
PFont font;
boolean q = true;
boolean w = false;
boolean e = false;
boolean r = false;
boolean t = false;
boolean y = false;
boolean u = false;
boolean i = false;
boolean x = false;
int x1 = 0;
int x2 = 580;
int x3 = 600;
int x4 = -100;
int x5 = 160;
int x6 = 500;
int x7 = 580;
int x8 = 500;
int x9 = 40;

void setup(){
  size(600,600);
  background(#F6FAF5);
}
void draw(){
  if(q==true){
  noStroke();
  fill(0,0,random(180,250));
  rect(x1,500,100,100);
  x1=x1+5;
  if(x1==600){
    q = false;
    w = true;
  }
  }
  if(w==true){
  fill(0,0,random(180,250));
  rect(500,x2,100,100);
  x2=x2-5;
  if(x2==0){
    w = false;
    e = true;
  }
  }
  if(e==true){
  fill(0,0,random(180,250));
  rect(x3,0,100,100);
  x3=x3-5;
  if(x3==-20){
    e = false;
    r = true;
  }
  }
  if(r==true){
  fill(0,0,random(180,250));
  rect(0,x4,100,100);
  x4=x4+5;
  if(x4==600){
    r = false;
    t = true; 
  }
  }
  if(t==true){
  strokeWeight(3);
  stroke(100,200,200);
  fill(50,100,250);
  ellipse(300,300,150,150);
  fill(100,150,210);
  triangle(270,260,270,340,350,300);
  if(mousePressed){
  background(#F6FAF5);
  t = false;
  x = true;
  }
  }
  if(x==true){
   fill(150);
   noStroke();
   rect(20,30,50,540,90);
   fill(255);
   rect(27,40,35,520,100);
   fill(100,250,250);
   rect(27,40,35,mouseY,100);
   fill(255);
   strokeWeight(4);
   stroke(0,150,200);
   rect(160,60,280,500);
  if(mouseY>520){
    x = false;
    y = true;
  }
  }
  if(y==true){
  background(#F6FAF5);
  fill(150);
  noStroke();
  rect(20,30,50,540,90);
  fill(100,250,250);
  rect(27,40,35,520,100);
  stroke(0,150,200);
  strokeWeight(4);
  fill(255);
  rect(x5,60,280,500);
  x5=x5+2;
  if(x5==300){
    y = false;
    u = true;
  }
  }
  if(u==true){
    background(#F6FAF5);
    fill(150);
    noStroke();
    rect(20,30,50,540,90);
    fill(100,250,250);
    rect(27,40,35,520,100);
    stroke(0,150,200);
    strokeWeight(4);
    fill(255);
    rect(280,60,280,500);
    quad(280,60,280,560,x6,x7,x8,x9);
    x6=x6-1;
    x7=x7-4;
    x8=x8-1;
    x9=x9-4;
    if(x6==450){
    u = false;
    i = true;
    }
  }
  if(i==true){
    background(#F6FAF5);
    fill(150);
    noStroke();
    rect(20,30,50,540,90);
    fill(100,250,250);
    rect(27,40,35,520,100);
    stroke(0,150,200);
    strokeWeight(4);
    fill(255);
    rect(280,60,280,500);
    img = loadImage("thank you.jpg");
    image(img,290,65,width/2.3,height/2);
    font = createFont("VladimirScript-48.vlw");
    textFont(font);
    textSize(25);
    fill(0);
    text("for wasting your money on me",300,340);
    fill(255);
    quad(280,60,280,560,x6,x7,x8,x9);
    x6=x6-2;
    x7=x7+1;
    x8=x8-2;
    x9=x9+1;
    if(x6==100){
      i = false;
    }
}
  }

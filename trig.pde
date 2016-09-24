float moveX = 0;
float moveY = 0;
float ang = 0;
float speed = 200;
String s;

void setup() {
  size(800, 800);
}

void draw() {
  background(230);
  //top text
  fill(0);
  s= "SOH CAH TOA";
  textSize(36);
  textAlign(CENTER);
  text(s, width/2, 50);

  s= "sin(angle) = opposite/hypotenuse";
  s+= "\ncos(angle) = adjacent/hypotenuse";
  s+= "\ntan(angle) = opposite/adjacent";
  textAlign(LEFT);
  textSize(24);
  text(s, 340, 86);

  //draw triangle
  pushMatrix();
  translate(0, 25);
  fill(200);
  triangle(50, 200, 225, 200, 225, 50);
  rect(210, 185, 15, 15);

  textSize(18);
  fill(0);
  text("adjacent", 70, 220);

  pushMatrix();
  translate(240, 182);
  rotate(-PI/2);
  text("opposite", 0, 0);
  popMatrix();

  pushMatrix();
  translate(60, 182);
  rotate(-0.725);
  text("hypotenuse", 0, 0);
  popMatrix();
  popMatrix();
  // main circle
  ang = (atan2(height/2-mouseY, mouseX-width/2));
  moveX = cos(ang)*speed;
  moveY = sin(-ang)*speed;

  float ax = cos(ang)*50;
  float ay = sin(-ang)*50;

  pushMatrix();
  translate(width/2, height/2);
  stroke(255);
  fill(0);
  ellipse(0, 0, speed*2, speed*2);
  line(-speed, 0, speed, 0);
  line(0, -speed, 0, speed);
  stroke(255, 0, 0);
  line(0, 0, moveX, moveY);
  line(moveX, 0, moveX, moveY);
  line(moveX, 0, 0, 0);
  fill(255, 0, 0);
  ellipse(moveX, moveY, 10, 10);
  popMatrix();

  //bottom text
  fill(0);
  textSize(22);
  textAlign(LEFT);
  s = "Angle: "+nf(degrees(ang), 3, 2)+" degrees";
  s += "\nAngle: "+nf(ang, 3, 2)+" radians";
  s += "\nAdjacent: "+nf(moveX/200, 3, 2);
  s += "\nOpposite: "+nf(-moveY/200, 3, 2);
  s += "\nHypotenuse: "+speed/200;
  text(s, 270, 650);
}


import java.awt.Frame;
import java.awt.BorderLayout;
import controlP5.*;
private ControlP5 cp5;


boolean button = false;
int pointsPerRay = 40;
int distPerPoint = 5;
int rays = 10;
int sphereRad = 10;
int waistRad = 50;
float newZ;
int it;
float k;
int color1;
int color2;
int color3;
int rows;
float noiseFactor;
float someZ;
ArrayList<Point> points;
ControlFrame cf;



//PVector origin; PVector not really working with point() function. ask Shiffman



void setup() {
  size(2000, 1000, P3D);
  cp5 = new ControlP5(this);
  cf = addControlFrame("extra", 200, 200);
  points = new ArrayList<Point>();
  for (int i = 0; i < pointsPerRay ; i++) {
    points.add(new Point(0, i*distPerPoint, 100, i));
    println(i); // only printing up to 19
  }
  colorMode(HSB, 100);
}

void draw() {
  println(someZ);
  background(0);
lights();
  //directionalLight(255, 178, 178, 0, 0, 1);
  //ambientLight(255, 255, 255);
  translate(width/2, height/2);
 
  if(button){
  rotateY(mouseX * 0.008);
  rotateX(mouseY * 0.008);
 }
  
  //make a ring of spheres
//pushMatrix();
//translate(0,0, 150 * noise(k));
//ellipseMode(RADIUS);
//ellipse(0,0, 195,195);
//popMatrix();


pushMatrix();
translate(0,0, someZ-10);
fill(color3, 100, 255);
for (int i= 1; i <=200; i= i +40){
 makeRing(i + waistRad +20);
 
}


makeRing(waistRad);
makeRing(195 + waistRad);
popMatrix();


  for (int j = 0; j < rays; j++ ) {
    pushMatrix();

    rotate(TAU/rays*j);
    for (Point point : points) {
      if (j % 2 == 0 ) {
        fill(color1, 100, 255);
        point.makeOne();
      } 
      else {
        fill(color2, 100, 100);
        point.makeTwo();
      }
//     if (j == 3){
//       point.printCoord();
//     }

    }
    popMatrix();
  }
  k=k+ 0.01;
}


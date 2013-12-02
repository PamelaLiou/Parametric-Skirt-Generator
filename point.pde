
class Point {
  int x;
  int y;
  float z;
  float iter;
  float q;

  Point(int x, int y, float z, float iter) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.iter = iter;
  }

  void makeOne() {
    q+=0.01;
    float n = norm(this.y, 0, pointsPerRay);
    this.z = (30 * sin(n * rows* TWO_PI))+ noise((q+(this.iter/10))/10)*100;
   // println(noise((q+(this.iter/10))/10)*150);
    pushMatrix();
    translate(this.x, this.y+waistRad, this.z);
    noStroke();
    sphereDetail(8);
    sphere(sphereRad);
    popMatrix();
    someZ = noise((q+(this.iter/10))/10)*150;
  }
  void makeTwo() {
    q+=0.01;
    float n = norm(this.y, 0, pointsPerRay);
    this.z = -1 * 30 * sin(rows* n * TWO_PI)+ noise((q+(this.iter/10))/10)*100;
    pushMatrix();
    translate(this.x, this.y+waistRad, this.z);
    noStroke();
    sphereDetail(8);


    sphere(sphereRad);
    popMatrix();
  }
  
  void printCoord(){
    println(this.x + " , " + this.y + " , " + this.z); 
    }

}

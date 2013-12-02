void makeRing(float radius){
for (int something=0; something < 200; something ++){
    pushMatrix();
    translate(0, radius, 0);
    sphere(sphereRad);
    popMatrix();
    rotate(TAU/200);
  
  }
}

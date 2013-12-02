void mousePressed() {
  button = !button;

}



ControlFrame addControlFrame(String theName, int theWidth, int theHeight) {
  Frame f = new Frame(theName);
  ControlFrame p = new ControlFrame(this, theWidth, theHeight);
  f.add(p);
  p.init();
  f.setTitle(theName);
  f.setSize(p.w, p.h);
  f.setLocation(100, 100);
  f.setResizable(false);
  f.setVisible(true);
  return p;
}


public class ControlFrame extends PApplet {

  int w, h;

  int abc = 100;
  
  public void setup() {
    size(w, h);
    frameRate(25);
    cp5 = new ControlP5(this);

    
  cp5.addSlider("pointsPerRay").plugTo(parent,"pointsPerRay").setPosition(10, 10).setRange(600, 1500);
    cp5.addSlider("rows").plugTo(parent,"rows").setPosition(10, 30).setRange(3,15);

  cp5.addSlider("rays").plugTo(parent,"rays").setPosition(10, 50).setRange(8, 50);
  cp5.addSlider("sphereRad").plugTo(parent,"sphereRad").setPosition(10, 70).setRange(3, 40);
  cp5.addSlider("waistRad").plugTo(parent,"waistRad").setPosition(10, 90).setRange(10, 200);
    cp5.addSlider("color1").plugTo(parent,"color1").setPosition(10, 110).setRange(0, 100);
  cp5.addSlider("color2").plugTo(parent,"color2").setPosition(10, 130).setRange(0, 100);
    cp5.addSlider("color3").plugTo(parent,"color3").setPosition(10, 150).setRange(0, 100);




  }

  public void draw() {
      background(abc);
  }
  
  private ControlFrame() {
  }

  public ControlFrame(Object theParent, int theWidth, int theHeight) {
    parent = theParent;
    w = theWidth;
    h = theHeight;
  }


  public ControlP5 control() {
    return cp5;
  }
  
  
  ControlP5 cp5;

  Object parent;

  
}

//void initGUI() {
//  gui = new ControlP5(this);
//  gui.addSlider("pointsPerRay").setPosition(10, 10).setRange(10, 340);
//  //gui.addSlider("distPerPoint").setPosition(10, 30).setRange(5, 100);
//  gui.addSlider("rays").setPosition(10, 50).setRange(8, 30);
//  gui.addSlider("sphereRad").setPosition(10, 70).setRange(3, 40);
//  gui.addSlider("waistRad").setPosition(10, 90).setRange(10, 200);
//
//  // gui.addSlider("interval").setPosition(10, 110).setRange(1, 10);
//}


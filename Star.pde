class Star //note that this class does NOT extend Floater
{
  private double myX, myY,mySize;
  private int myColor;
  public Star() {
    myX=(Math.random()*500)-100;
    myY=(Math.random()*500)-100;
    mySize=(int)(Math.random()*5+2);
    myColor = 255;
  } 

  public void show() {
    noStroke();
    fill(myColor,255);
    ellipse((float)myX, (float)myY,(float)mySize,(float)mySize);
  }
}

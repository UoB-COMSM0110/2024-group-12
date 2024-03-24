public class RedSmile extends Enemy {

  float boundaryLeft;
  float boundaryRight;

  public RedSmile(PImage image, float scale, float bLeft, float bRight) {
    super(image, scale, bLeft, bRight);
    super.moveLeft = new PImage[6];
    PImage[] left = super.moveLeft;
    left[0] = loadImage("./data/redsmile/redsmile1.png");
    left[1] = loadImage("./data/redsmile/redsmile2.png");
    left[2] = loadImage("./data/redsmile/redsmile3.png");
    left[3] = loadImage("./data/redsmile/redsmile4.png");
    left[4] = loadImage("./data/redsmile/redsmile5.png");
    left[5] = loadImage("./data/redsmile/redsmile6.png");
    super.currentImages = left;
    
    super.moveRight = new PImage[6];
    PImage[] right = super.moveRight;
    right[0] = loadImage("./data/redsmile/redsmile7.png");
    right[1] = loadImage("./data/redsmile/redsmile8.png");
    right[2] = loadImage("./data/redsmile/redsmile9.png");
    right[3] = loadImage("./data/redsmile/redsmile10.png");
    right[4] = loadImage("./data/redsmile/redsmile11.png");
    right[5] = loadImage("./data/redsmile/redsmile12.png");
    super.direction = 1;
    boundaryLeft = bLeft;
    boundaryRight = bRight;
    super.change_x = 2;
  }
}

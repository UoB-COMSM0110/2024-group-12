public class Witch extends Enemy {

  float boundaryLeft;
  float boundaryRight;
  float t = 0.01;

  public Witch(PImage image, float scale, float bLeft, float bRight) {
    super(image, scale, bLeft, bRight);
    super.moveLeft = new PImage[4];
    PImage[] left = super.moveLeft;
    left[0] = loadImage("./data/witch/fly/witch1.png");
    left[1] = loadImage("./data/witch/fly/witch2.png");
    left[2] = loadImage("./data/witch/fly/witch3.png");
    left[3] = loadImage("./data/witch/fly/witch4.png");
    super.currentImages = left;
    
    super.moveRight = new PImage[4];
    PImage[] right = super.moveRight;
    right[0] = loadImage("./data/witch/fly/witch5.png");
    right[1] = loadImage("./data/witch/fly/witch6.png");
    right[2] = loadImage("./data/witch/fly/witch7.png");
    right[3] = loadImage("./data/witch/fly/witch8.png");
    
    super.direction = 1;
    boundaryLeft = bLeft;
    boundaryRight = bRight;
    super.change_x = 2;
  }
  
  @Override
  public void update() {
      float random_x = random(-1, 1);
      float random_y = random(-1, 1);
      
      if (super.getLeft() <= boundaryLeft || super.getRight() >= boundaryRight) {
          super.change_x = random_x * -1; 
      }
      
      if (super.getTop() <= boundaryLeft || super.getBottom() >= boundaryRight) {
          super.change_y = random_y * -1; 
      }
  
      super.center_x += super.change_x;
      super.center_y += super.change_y;
  }
}

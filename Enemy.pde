public class Enemy extends AnimatedSprite {

  float boundaryLeft;
  float boundaryRight;
  
  public Enemy(PImage image, float scale, float bLeft, float bRight) {
    super(image, scale);
    boundaryLeft = bLeft;
    boundaryRight = bRight;
  }
  
  @Override
  public void update() {
    super.update();
    if (super.getLeft() <= boundaryLeft) {
      super.setLeft(boundaryLeft);
      super.change_x = super.change_x * -1;
    }
    else if (super.getRight() >= boundaryRight) {
      super.setRight(boundaryRight);
      super.change_x = super.change_x * -1;
    }
  }
}

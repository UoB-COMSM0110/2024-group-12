public class AnimatedSprite extends Sprite {

  PImage[] currentImages;
  PImage[] standNeutral;
  PImage[] moveLeft;
  PImage[] moveRight;
  int direction;
  int index;
  int frame;
  int speed = 5;
  static final int NEUTRAL_FACING = 0;
  static final int RIGHT_FACING = 1;
  static final int LEFT_FACING = 2;

  public AnimatedSprite(PImage img, float scale) {
    super(img, scale);
    direction = NEUTRAL_FACING;
    index = 0;
    frame = 0;
  }

  void updateAnimation() {
    if (frame++ % speed == 0) {
      selectDirection();
      selectCurrentImages();
      advanceToNextImage();
    }
  }

  void selectDirection() {
    direction = (super.change_x > 0) ? RIGHT_FACING : (super.change_x < 0) ? LEFT_FACING : NEUTRAL_FACING;
  }

  void selectCurrentImages() {
    currentImages = (direction == RIGHT_FACING) ? moveRight : (direction == LEFT_FACING) ? moveLeft : standNeutral;
  }

  void advanceToNextImage() {
    index = index % currentImages.length;
    super.image = currentImages[index++];
  }
}

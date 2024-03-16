public class Pumpkin extends AnimatedSprite {

  public Pumpkin(PImage img, float scale) {
    super(img, scale);
    super.standNeutral = new PImage[8];
    PImage[] standNeutral = super.standNeutral;
    standNeutral[0] = loadImage("./data/pumpkin/pumpkin1.png");
    standNeutral[1] = loadImage("./data/pumpkin/pumpkin2.png");
    standNeutral[2] = loadImage("./data/pumpkin/pumpkin3.png");
    standNeutral[3] = loadImage("./data/pumpkin/pumpkin4.png");
    standNeutral[4] = loadImage("./data/pumpkin/pumpkin5.png");
    standNeutral[5] = loadImage("./data/pumpkin/pumpkin6.png");
    standNeutral[6] = loadImage("./data/pumpkin/pumpkin7.png");
    standNeutral[7] = loadImage("./data/pumpkin/pumpkin8.png");
    super.currentImages = standNeutral;
  }

  public Pumpkin(PImage img, double scale) {
    this(img, (float) scale);
  }
}

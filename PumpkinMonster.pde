public class PumpkinMonster extends Enemy {

  float boundaryLeft;
  float boundaryRight;
  PImage[] transform;
  int distance = 150;
  long timer = 2000;
  long transformationTime = 0;
  long startTime = 0;
  boolean hasTransformed = false;
  boolean chaseComplete = false;

  public PumpkinMonster(PImage image, float scale, float bLeft, float bRight) {
    super(image, scale, bLeft, bRight);
    transform = new PImage[7];
    transform[0] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster1.png");
    transform[1] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster2.png");
    transform[2] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster3.png");
    transform[3] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster4.png");
    transform[4] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster5.png");
    transform[5] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster6.png");
    transform[6] = loadImage("./data/pumpkinMonster/transform/pumpkinMonster7.png");
    
    super.moveLeft = new PImage[3];
    PImage[] left = super.moveLeft;
    left[0] = loadImage("./data/pumpkinMonster/run/pumpkinMonster1.png");
    left[1] = loadImage("./data/pumpkinMonster/run/pumpkinMonster2.png");
    left[2] = loadImage("./data/pumpkinMonster/run/pumpkinMonster3.png");
    super.currentImages = left;
    
    super.moveRight = new PImage[3];
    PImage[] right = super.moveRight;
    right[0] = loadImage("./data/pumpkinMonster/run/pumpkinMonster4.png");
    right[1] = loadImage("./data/pumpkinMonster/run/pumpkinMonster5.png");
    right[2] = loadImage("./data/pumpkinMonster/run/pumpkinMonster6.png");
    
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
    super.direction = 0;
    boundaryLeft = bLeft;
    boundaryRight = bRight;
    super.change_x = 0;
  }
  
  void updateAnimation(Sprite player) {
    if (detect(player) && !hasTransformed) {
      // Check if at least 2 seconds have passed since the last transformation
      if (millis() - transformationTime >= 1000) {
        hasTransformed = true;
        super.standNeutral = transform;
        super.speed = 30;
              
        super.w = super.image.width * (50.0 / 30.0);
        super.h = super.image.height * (50.0 / 25.0);
        
        super.change_x = -2;
        transformationTime = millis();
      }
    } 
    else {
      transformationTime = 0;
    }
      
    super.speed = 5;
    updateAnimation();
  }
  
  void update(Sprite p) {
    if (hasTransformed && millis() - startTime < timer) {
      float t = (millis() - startTime) / (float) timer;
      float progress = easeInOutQuad(t);
      
      float mappedValue = map(progress, 0, 1, super.center_x, p.center_x);
      super.center_x = mappedValue;
      
      super.change_x = (mappedValue < super.center_x) ? -1 : 1;
      super.boundaryLeft = mappedValue;
      super.boundaryRight = super.boundaryLeft + 4 * (float) SPRITE_SIZE;
    } 
    
    else if (!hasTransformed) {
      startTime = millis();
      super.update();
    }
    
    else {
      super.update();
    }
  }

  float easeInOutQuad(float t) {
      float result = t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
      return (1 - result) * 0.03;
  }

  boolean detect(Sprite player) {
    return (Math.abs(player.center_x - super.center_x) < distance && Math.abs(player.center_y - super.center_y) < distance);
  }
}

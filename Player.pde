public class Player extends AnimatedSprite {
  int lives;
  boolean onPlatform, inPlace;
  private boolean Alive = true;
  PImage[] jump;
 
  public Player(PImage img, float scale) {
  super(img, scale);
  lives = 3;
  direction = RIGHT_FACING;
  onPlatform = true;
  inPlace = true;
  super.moveRight = new PImage[4];
  PImage[] moveRight = super.moveRight;
  moveRight[0] = loadImage("./data/player/GhostWalk/walk1.png");
  moveRight[1] = loadImage("./data/player/GhostWalk/walk2.png");
  moveRight[2] = loadImage("./data/player/GhostWalk/walk3.png");
  moveRight[3] = loadImage("./data/player/GhostWalk/walk4.png");

  jump = new PImage[3];
  jump[0] = loadImage("./data/player/GhostJump/Jump1.png");
  jump[1] = loadImage("./data/player/GhostJump/Jump2.png");
  jump[2] = loadImage("./data/player/GhostJump/Jump3.png");
 super.currentImages = moveRight;
  
}

@Override
public void updateAnimation() {
    onPlatform = isOnPlatforms(this, platforms);
    inPlace = change_x == 0 && change_y == 0;
    super.updateAnimation();
}


@Override
public void selectCurrentImages() {
  if (Alive) {
    if (direction == RIGHT_FACING) {
        if (inPlace) {
            currentImages = moveRight;
          } 
          else if (!onPlatform) {
              currentImages = jump;
            }
        
         }
       
      }
}
  

private void onDeath() {
  center_x = 0;
  setBottom(0);
  lives = 3;
}


public void setAlive(boolean alive){
this.Alive = alive;
if (!alive) {
    onDeath();
  }
}


public boolean isAlive() {
return Alive;

}

}

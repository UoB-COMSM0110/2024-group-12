public class Player extends AnimatedSprite {
  
  // TODO: When player dies, play the ghost animation. 
  
  int lives;
  boolean onPlatform, inPlace, isOnLadder;
  boolean isFLying = false;
  private boolean Alive = true;
  PImage[] jump;
  PImage[] jumpLeft;
 
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
  
  super.moveLeft = new PImage[4];
  PImage[] moveLeft = super.moveLeft;
  moveLeft[0] = loadImage("./data/player/GhostWalkLeft/WalkLeft/Ghost_Walk_1.png");
  moveLeft[1] = loadImage("./data/player/GhostWalkLeft/WalkLeft/Ghost_Walk_2.png");
  moveLeft[2] = loadImage("./data/player/GhostWalkLeft/WalkLeft/Ghost_Walk_3.png");
  moveLeft[3] = loadImage("./data/player/GhostWalkLeft/WalkLeft/Ghost_Walk_4.png");
  

  jump = new PImage[3];
  jump[0] = loadImage("./data/player/GhostJump/Jump1.png");
  jump[1] = loadImage("./data/player/GhostJump/Jump2.png");
  jump[2] = loadImage("./data/player/GhostJump/Jump3.png");
  
  jumpLeft = new PImage[3];
   jumpLeft[0] = loadImage("./data/player/GhostJumpLeft/GhostJumpLeft/Jump1.png");
   jumpLeft[1] = loadImage("./data/player/GhostJumpLeft/GhostJumpLeft/Jump2.png");
   jumpLeft[2] = loadImage("./data/player/GhostJumpLeft/GhostJumpLeft/Jump3.png");
 
  
 super.currentImages = moveRight;
  
}

@Override
public void updateAnimation() {
    onPlatform = isOnPlatforms(this, platforms);
    inPlace = change_x == 0 && change_y == 0;
    super.updateAnimation();
}


@Override
void selectDirection() {
    if (change_x > 0 ) {
        direction = RIGHT_FACING;
      }
     else if (change_x < 0) {
         direction = LEFT_FACING;
       }
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
   if (direction == LEFT_FACING) {
     if (inPlace) {
         currentImages = moveLeft;
       }
       else if (!onPlatform) {
         currentImages = jumpLeft;
       }
   }
       
      }
}
  

private void onDeath() {
  center_x = 0;
  setBottom(0);
  lives = 3;
  Alive = true;
  isFLying = false;
  GRAVITY = 0.8;
}

public void onLifeLoss() {
center_x = 0;
  setBottom(0);
  Alive = true;
  isFLying = false; 
GRAVITY = 0.8;
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

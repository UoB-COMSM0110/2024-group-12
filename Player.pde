public class Player extends AnimatedSprite{
  int lives;
  boolean onPlatform, inPlace;
  private boolean Alive = true;
  private boolean deathAnimationComplete = false;
  PImage[] death;
  PImage[] jump;
  PImage[] Walk;
 
  
  public Player(PImage img, float scale) {
  super(img, scale);
  lives = 3;
  direction = NEUTRAL_FACING;
  onPlatform = true;
  inPlace = true;
  
  Walk = new PImage[4];
  Walk[0] = loadImage("./data/player/GhostWalk/walk1.png");
  Walk[1] = loadImage("./data/player/GhostWalk/walk2.png");
  Walk[2] = loadImage("./data/player/GhostWalk/walk3.png");
  Walk[3] = loadImage("./data/player/GhostWalk/walk4.png");

  death = new PImage[6];
  death[0] = loadImage("./data/player/GhostDeath/death.png");
  death[1] = loadImage("./data/player/GhostDeath/death2.png");
  death[2] = loadImage("./data/player/GhostDeath/death3.png");
  death[3] = loadImage("./data/player/GhostDeath/death4.png");
  death[4] = loadImage("./data/player/GhostDeath/death5.png");
  death[5] = loadImage("./data/player/GhostDeath/death6.png");
  
  jump = new PImage[3];
  jump[0] = loadImage("./data/player/GhostJump/Jump1.png");
  jump[1] = loadImage("./data/player/GhostJump/Jump2.png");
  jump[2] = loadImage("./data/player/GhostJump/Jump3.png");
  
 super.currentImages = Walk;
  
}

@Override
public void updateAnimation() {
    onPlatform = isOnPlatforms(this, platforms);
    inPlace = change_x == 0 && change_y == 0;
    
    if (!Alive && !deathAnimationComplete) {
        if (frame % 10 == 0) { // Slow down the death animation
            if (index < death.length) {
                index++; // Increment the index to advance the death animation
            }
            // Check if the animation has reached its end
            if (index >= death.length) {
                deathAnimationComplete = true;
                resetPlayer(); // Call resetPlayer here once the animation is done
            }
        }
        frame++;
    } else if (Alive) {
        // Reset frame counter for non-death animations
        if (frame % 5 == 0) { // Adjust the modulus value for desired animation speed
            super.updateAnimation();
        }
        frame++;
    }
}


@Override
public void selectCurrentImages() {
 if (!Alive && !deathAnimationComplete) {
        currentImages = death;
        }
     else if (Alive) {
        if (direction == NEUTRAL_FACING) {
            if (inPlace) {
                currentImages = Walk;
            } else if (!onPlatform) {
                currentImages = jump;
            }
        }
    }
}

private void resetPlayer() {
    // Delay the reset of the player to allow the death animation to complete.
    new java.util.Timer().schedule( 
        new java.util.TimerTask() {
            @Override
            public void run() {
                center_x = 0;
                setBottom(0); // Adjust this as needed.
                Alive = true;
                deathAnimationComplete = false;
                currentImages = Walk; // Return to walk animation.
                index = 0; // Reset animation index for walking.
            }
        }, 
        500 // Delay in milliseconds after the death animation completes to reset the player.
    );
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

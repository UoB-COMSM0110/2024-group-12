public class Player extends AnimatedSprite{
// Ghost has walk assiciated with in no direction, so I will be using standNeutral 
// Ghost has jump animations associated with it as well
// Ghost has ghost death associated with it as well 

  int lives;
  boolean onPlatform, inPlace;
  
  public Player(PImage img, float scale){
  super(img, scale);
  lives = 3;
  direction = RIGHT_FACING;
  onPlatform = true;
  inPlace = true;
  super.standNeutral = new PImage[4];
  standNeutral[0] = loadImage("data/player/GhostWalk/walk1.png");
  standNeutral[1] = loadImage("data/player/GhostWalk/walk2.png");
  standNeutral[2] = loadImage("data/player/GhostWalk/walk3.png");
  standNeutral[3] = loadImage("data/player/GhostWalk/walk4.png");
  super.death = new PImage[6];
  death[0] = loadImage("");
  death[1] = loadImage("");
  death[2] = loadImage("");
  death[3] = loadImage("");
  death[4] = loadImage("");
  death[5] = loadImage("");
  death[6] = loadImage("");
  super.jump = new PImage[3];
  // TODO load the jump images
}



}

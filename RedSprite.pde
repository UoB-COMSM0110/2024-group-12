public class RedSprite extends Boss{
  public RedSprite(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed){
    super(img, size_x,size_y, x, y,dam, ChaseDis,chase_speed);
    stand = new PImage[2];
    attack = new PImage[8];
    walk = new PImage[8];
    this.loadFrames(this.stand, "./data/RedSprite/stand");
    this.loadFrames(this.walk, "./data/RedSprite/walk");
    this.loadFrames(this.attack, "./data/RedSprite/attack");
  }
}

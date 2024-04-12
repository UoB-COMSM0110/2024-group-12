public class RedSmile extends Boss{
  public RedSmile(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed){
    super(img, size_x,size_y, x, y,dam, ChaseDis,chase_speed);
    stand = new PImage[6];
    attack = new PImage[10];
    walk = new PImage[6];
    this.loadFrames(this.stand, "./data/RedSmile/stand");
    this.loadFrames(this.walk, "./data/RedSmile/walk");
    this.loadFrames(this.attack, "./data/RedSmile/attack");
  }
}

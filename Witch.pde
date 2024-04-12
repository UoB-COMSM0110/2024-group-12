public class Witch extends Enemy {
  float boundaryLeft;
  float boundaryRight;
  int now;
  public Witch(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed ,float bLeft, float bRight){
    super(img, size_x,size_y, x, y,dam, ChaseDis,chase_speed);
    stand = new PImage[1];
    walk = new PImage[4];
    boundaryLeft = bLeft;
    boundaryRight = bRight;
    fly = true;
    this.loadFrames(this.stand, "./data/whitch/stand");
    this.loadFrames(this.walk, "./data/whitch/walk");
    now = millis();
  }
  @Override
    public void selectImg(){
       ms = millis(); 
       CheckAttack(player);
       if(Chase(player)){
         currentImg = walk;
       }
       else if (change_x==0) {
           currentImg = stand;
       }
    }
  @Override
  boolean Chase(Player player){
      float dis = 10000;
      if (collisionTest(player, this)){
        return false;
      }
      dis = sqrt(abs(player.getCenter_x() - this.getCenter_x())*abs(player.getCenter_x() - 
      this.getCenter_x())+abs(player.getCenter_y() - this.getCenter_y())*abs(player.getCenter_y() - this.getCenter_y()));
      if (dis<ChaseDis){
        if(player.getCenter_x()>this.getCenter_x()){
          this.change_x = + chase_speed;
        }
        else{
          this.change_x = - chase_speed;
        }
        
        if(player.getCenter_y()>this.getCenter_y()){
         
          this.change_y = + chase_speed;
        }
        else{
          this.change_y = - chase_speed;
        }
        return true;
      }
      else{
         return false;
      }
    }
    @Override
    public void update() {
        float random_x = random(-1, 1);
        float random_y = random(-1, 1);
        if(!Chase(player)&& (millis() - now)/1000 > 2){
          now = millis();
          if(super.getLeft() <= boundaryLeft || super.getRight() >= boundaryRight) {
              change_x = random_x * -1; 
          }
          
          if(super.getTop() <= boundaryLeft || super.getBottom() >= boundaryRight) {
              change_y = random_y * -1; 
          }
        }
        center_x += change_x;
        center_y += change_y;
    }
}

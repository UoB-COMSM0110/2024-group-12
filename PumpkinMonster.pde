public class PumpkinMonster extends Boss{
    boolean findPlayer = false;
    float findDis;
    PImage[] stand2;
    PImage[] transform;
    boolean transformed; 
    int changetime;
    public PumpkinMonster(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed, float findDis){
    super(img, size_x,size_y, x, y,dam, ChaseDis,chase_speed);
    stand = new PImage[8];
    walk = new PImage[3];
    stand2 = new PImage[1];
    transform = new PImage[7];
    transformed = false;
    this.findDis = findDis;
    this.loadFrames(this.walk,"./data/pumkinMonster/run/pumpkinMonster");
    this.loadFrames(this.stand,"./data/pk/pumpkin");
    this.loadFrames(this.stand2,"./data/pumkinMonster/run/pumpkinMonster");
    this.loadFrames(this.transform, "./data/pumkinMonster/transform/pumpkinMonster");
    currentImg = stand;
  }
  @Override
  public void selectImg(){
       ms = millis(); 
       if (!findPlayer){FindPlayer(player);}
       CheckAttack(player);
       if (findPlayer){ 
         if(!transformed){
           changetime = millis();
           currentImg = transform;
           transformed = true;
           w = PUMKINMONSTER_SIZE_X;
           h = PUMKINMONSTER_SIZE_Y;
         }
         else if (transformed && (millis() - changetime)/100>5){
         if(Chase(player)){
           currentImg = walk;
         }
       }

       else if (change_x==0) {
           if (findPlayer)
             currentImg = stand2;
            else
             currentImg = stand;
       }
    }
  }
  boolean Chase(Player player){
      float dis = 10000;
      if (collisionTest(player, this)){
        return false;
      }
      if(player.getBottom()==this.getBottom()){
        dis = abs(player.getCenter_x() - this.getCenter_x());
      }
      if (dis<ChaseDis){
        if(player.getCenter_x()>this.getCenter_x()){
          this.change_x = +chase_speed;
          return true;
        }
        else{
          this.change_x = -chase_speed;
          return true;
        }
      }
      else{
         this.change_x = 0;
         return false;
      }
    }
    
    boolean CheckAttack(Player player){
      if (collisionTest(player, this)){
        if ((ms - attms)/1000>=2 ){
        player.lives-=dam;
        attms = ms;
        return true;
        }
        return true;
      }
      return false;
    }
    public void updateAnimation() {
        frame++;
        if (frame % 9 == 0) {
            selectImg();
            moveToNextImg();
        }
    }
    void FindPlayer(Player player){
      if (abs(player.getCenter_x() - this.getCenter_x()) < findDis)
        findPlayer = true;
        
    }
}

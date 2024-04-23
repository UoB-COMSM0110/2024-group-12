public class Enemy extends AnimatedSprite{
    PImage[] stand; 
    PImage[] attack;
    PImage[] walk;
    int dam;
    float chase_speed;
    float ChaseDis;
    int attms = 0;
    int ms = 0;
  public Enemy(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed){
    super(img, size_x,size_y,x,y);
    this.dam = dam;
    this.ChaseDis = ChaseDis;
    currentImg = stand;
    this.chase_speed = chase_speed;
    attms = millis();
  }
    @Override
    public void selectImg(){
       ms = millis(); 
       if (CheckAttack(player)){
         currentImg = attack;
       }
       else if(Chase(player)){
         currentImg = walk;
       }
       else if (change_x==0) {
           currentImg = stand;
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
}


void displayEnemy(){
  for(Sprite enemy : Enemies){
     AnimatedSprite enemyy = (AnimatedSprite)enemy;
     enemyy.display();
     enemyy.updateAnimation();
     enemyy.update();
     solveCollisions(enemyy,gw.platforms);
  }
}

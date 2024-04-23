public class Boss extends AnimatedSprite{
    PImage[] stand; 
    PImage[] attack;
    PImage[] walk;
    int dam;
    float chase_speed;
    float ChaseDis;
    int attms = 0;
    int ms = 0;
    int chasems;
    int change;
  public Boss(PImage img, int size_x, int size_y, float x, float y, int dam, float ChaseDis, float chase_speed){
    super(img, size_x,size_y,x,y);
    this.dam = dam;
    this.ChaseDis = ChaseDis;
    this.currentImg = stand;
    this.chase_speed = chase_speed;
    attms = millis();
    chasems = millis();
    change = -1;
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
      if(difficulty == "Hard"){
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
      else{
        this.change_x = 1 * change;
        if((millis()-chasems)/1000>CHANGE_TIME){
          change = -change;
          chasems = millis();
        }
        return true;
      }
    }
    
    boolean CheckAttack(Player player){
      if (collisionTest(player, this)){
        if ((ms - attms)/1000>=2 ){
        player.lives-=dam;
        attms = ms;
        change_x = 0;
        return true;
        }
        return true;
      }
      return false;
    }
}

void displayBoss(){
  for(Sprite boss : bosses){
     AnimatedSprite bosss = (AnimatedSprite)boss;
     bosss.display();
     bosss.updateAnimation();
     bosss.update();
     solveCollisions(bosss,gw.platforms);
  }
}

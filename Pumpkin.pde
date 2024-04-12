public class Pumpkin extends AnimatedSprite {
  public Pumpkin(PImage image, int size_x, int size_y, float x, float y){
    super(image, size_x,size_y, x ,y);
     stand = new PImage[8];
    this.loadFrames(this.stand, "./data/pk/pumpkin"); 
  }
  public void updateAnimation() {
        frame++;
        if (frame % 4 == 0) {
            selectImg();
            moveToNextImg();
        }
    }
}


void displaypk(){
  for(Sprite pk : Pumpkins){
     AnimatedSprite pkk = (AnimatedSprite)pk;
     pkk.display();
     pkk.updateAnimation();
     solveCollisions(pkk,gw.platforms);
  }
}

void pumpkinCollisions(Sprite player, ArrayList<Sprite> Pumpkins) {
  ArrayList<Sprite> pumpkinList = checkCollisionList(player, Pumpkins);
  if (pumpkinList.size() > 0) {
    for (Sprite pk: pumpkinList) {
      score++;
      Pumpkins.remove(pk);
    }
  }
}

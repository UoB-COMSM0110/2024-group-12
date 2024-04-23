public class Orb extends AnimatedSprite {
  public Orb(PImage image, int size_x, int size_y, float x, float y){
    super(image, size_x,size_y, x ,y);
     stand = new PImage[6];
    this.loadFrames(this.stand, "./data/PowerUpOrb/powerOrb"); 
  }
  public void updateAnimation() {
        frame++;
        if (frame % 8 == 0) {
            selectImg();
            moveToNextImg();
        }
    }
}


long flyStartTime;
void displayOrb(){
  for(Sprite o: Orbs){
     AnimatedSprite orb = (AnimatedSprite)o;
     orb.display();
     orb.updateAnimation();
     solveCollisions(orb,gw.platforms);
  }
}

void OrbCollisions(Sprite player, ArrayList<Sprite> Orbs) {
  ArrayList<Sprite> orbList = checkCollisionList(player, Orbs);
  if (orbList.size() > 0) {
    for (Sprite o: orbList) {
      player.fly = true;
      flyStartTime = millis();
      timeOutHasStarted = true;
      Orbs.remove(o);
    }
  }
  if (timeOutHasStarted) {
    timeOut(player);
  }
}
void timeOut(Sprite player) {
  long elapsedTime = millis() - flyStartTime;
  if (elapsedTime < FLY_DURATION) {
    float timerX = player.center_x + 30; // Adjust as needed
    float timerY = player.center_y - 70; // Adjust as needed
    
    // Draw the timer at the calculated position
    pushMatrix();
    translate(timerX, timerY);
    strokeWeight(10.0);
    fill(255);
    stroke(0, 0, 0);
    float endAngle = map(elapsedTime, 0, FLY_DURATION, 0, TWO_PI);
    arc(0, 0, 50, 50, 0, endAngle, OPEN);
    popMatrix();
  }
 
  else {
    player.fly = false;
    timeOutHasStarted = false;
  }
}

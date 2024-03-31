import java.util.Collections;
float view_x = 0;
float view_y = 0;
int score = 0;
boolean gameStarted = false; 
boolean introVisible = false; 
boolean gameOver = false; 
boolean jump = false;
boolean created = false;
String difficulty = "Easy";
boolean timeOutHasStarted;
Player player;
gameworld gw;


PImage sky;
PImage heart, emptyheart;
void setup() {
  gw= new gameworld();
  size(800, 600);
  background(100,100,100);
  imageMode(CENTER);
  sky = loadImage("./data/background/Background.png");
  heart = loadImage("./data/Player/heart.png");
  emptyheart = loadImage("./data/Player/empytHeart.png");
  sky.resize(width,height);
}

void draw() {
  if (!gameStarted) {
    drawPage();
  }else if (created == false){
    gw.createMap();
    created = true;
  }
  else  if (!gameOver){
    background(sky);
    scroll();
    displayAll();
    updateAll();
    collideAll();
  }
  else{
    drawRestart();
  }

}

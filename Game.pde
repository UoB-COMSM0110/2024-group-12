import java.util.Collections;
//sound
import processing.sound.*;
SoundFile bgm;
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
boolean showLeaderboard = false;
Player player;
gameworld gw;

String playerName = ""; // Player's name
PImage sky;
PImage heart, emptyheart;
void setup() {
  gw= new gameworld();
   //bgm
  bgm = new SoundFile(this, "./data/background/background_music.mp3");
  bgm.loop();
  size(800, 600);
  background(100,100,100);
  imageMode(CENTER);
  sky = loadImage("./data/background/Background.png");
  heart = loadImage("./data/Player/heart.png");
  emptyheart = loadImage("./data/Player/empytHeart.png");
  sky.resize(width,height);
  loadLeaderboard();
}

void draw() {
  if (!gameStarted) {
    drawPage();
  }else if (created == false){
    gw.createMap();
    created = true;
     //bgm loop
      bgm.loop();
  }
  else  if (gw.isReady && !gameOver){
    background(sky);
    scroll();
    drawBackButton();
    displayAll();
    updateAll();
    collideAll();
  }
  else if (gameOver){
    drawRestart();
     //bgm stop
     bgm.stop();
    if( showLeaderboard){
     LeaderBoard();
   }
  }
}

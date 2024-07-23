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

void updateMousePosition() {
  // 更新全局变量，计算鼠标在游戏世界中的位置
  worldMouseX = mouseX + view_x;
  worldMouseY = mouseY + view_y;
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
    updateMousePosition();
    
  }
  else if (gameOver){
    drawRestart();
     //bgm stop
     bgm.stop();
    if( showLeaderboard){
     LeaderBoard();
   }
  }
  
    if (drawLine) {
    float elapsedTime = (millis() - startTime) / 1000.0; // 已经过的时间，单位为秒
    float t = constrain(elapsedTime / duration, 0, 1); // 插值参数t，范围在0到1之间

    currentX = lerp(player.center_x, worldMouseX, t);
    currentY = lerp(player.center_y, worldMouseY, t);
    
    
    player.drawLineTo(currentX, currentY);
    

    if (t == 1) { // 完成绘制
      drawLine = false;
    }
    
    if (mousecollision){
     
      drawLine = false;
    }
    
   
  }
}

void mousePressed() {
  // 鼠标按下时启动绘制
  if (gw.isReady && !gameOver){
  
  startTime = millis();
  drawLine = true;}
  
}

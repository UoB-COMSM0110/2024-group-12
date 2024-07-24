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
SoundFile hookSound; // Grappling hook sound effect
SoundFile collisionSound; // Collision sound effect



String playerName = ""; // Player's name
PImage sky;
PImage heart, emptyheart;
void setup() {
  gw= new gameworld();
   //bgm
  // Load background music
  //bgm = new SoundFile(this, "./data/background/background_music.mp3");
  //bgm.loop();
  //bgm.amp(0.01); // Set background music volume to 30%
  size(800, 600);
  background(100,100,100);
  imageMode(CENTER);
  sky = loadImage("./data/background/Background.png");
  heart = loadImage("./data/Player/heart.png");
  emptyheart = loadImage("./data/Player/empytHeart.png");
  sky.resize(width,height);
  loadLeaderboard();
  
    // Load grappling hook sound effect
   // Load grappling hook sound effect
  hookSound = new SoundFile(this, "./data/sound/hook_launch.mp3");
  hookSound.amp(2.0); // Set hook launch sound effect volume to 100%
  
 // Load collision sound effect
  collisionSound = new SoundFile(this, "./data/sound/hook_collision.mp3");
  collisionSound.amp(2.0); // Set collision sound effect volume to 100%
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
      //bgm.loop();
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
     //bgm.stop();
    if( showLeaderboard){
     LeaderBoard();
   }
  }
  
    if (drawLine) {
      
      // 计算起点到目标点的距离
    float dx = worldMouseX - player.center_x;
    float dy = worldMouseY - player.center_y;
    float distance = dist(player.center_x, player.center_y, worldMouseX, worldMouseY);

    // 计算10像素长的方向向量
    float ratio = 200 / distance;
    
    endX = player.center_x + dx * ratio;
    endY = player.center_y + dy * ratio;
      
    float elapsedTime = (millis() - startTime) / 1000.0; // 已经过的时间，单位为秒
    float t = constrain(elapsedTime / duration, 0, 1); // 插值参数t，范围在0到1之间

    currentX = lerp(player.center_x, endX, t);
    currentY = lerp(player.center_y, endY, t);
    
    
    player.drawLineTo(currentX, currentY);
    
    mousecollision(currentX,currentY,gw.platforms);
    if (mousecollision){
      playerHook();
      drawLine = false;
            // Play collision sound effect
      collisionSound.play();
    }
    
    if(Pumpkins.size()>0)
    hookpumpkincollision(currentX,currentY,Pumpkins);
    
    if(hookpumpkincollision){
      pumpkinHook();
      drawLine = false;
            // Play collision sound effect
      collisionSound.play();
    }
    
    if (t == 1) { // 完成绘制
      drawLine = false;
    }
    
  }
  
  // 在每一帧中逐步移动玩家位置
  if (isMoving) {
    player.center_x += playerM;
    player.center_y += playerN;
    currentStep++;
    if (currentStep >= steps) {
      isMoving = false; // 移动完成
    }
  }
  
  if (ispumpkinMoving) {
    currentpumpkin.center_x += playerM;
    currentpumpkin.center_y += playerN;
    currentStep++;
    if (currentStep >= steps) {
      ispumpkinMoving = false; // 移动完成
    }
  }
  
  
}

void pumpkinHook(){
    // 计算每一步的移动量
  playerM = (player.center_x - currentpumpkin.center_x) / steps;
  playerN = (player.center_y - currentpumpkin.center_y) / steps;
  currentStep = 2;
  ispumpkinMoving = true; // 开始移动

}


void playerHook() {
  // 计算每一步的移动量
  playerM = (currentX - player.center_x) / steps;
  playerN = (currentY - player.center_y) / steps;
  currentStep = 2;
  isMoving = true; // 开始移动
}

void mousePressed() {
  // 鼠标按下时启动绘制
  if (gw.isReady && !gameOver){
      // Play grappling hook sound effect
     
    hookSound.play();
    startTime = millis();
    drawLine = true;

 }
  
}

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
Player player1;

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
  
  if(returnline){
    
      boolean reverse = true;
      hooktime(reverse);
      player.drawLineTo(player.center_x,player.center_y,currentX, currentY);
   
      if (rt == 0) { // 完成绘制
        returnline = false;
      }
   }
   
  
  
   if (drawLine) {
    hookposition();
    boolean reverse = false;
    hooktime(reverse);
    player.drawLineTo(player.center_x,player.center_y,currentX, currentY);
    hookcollision(currentX,currentY,gw.platforms);
    
    if (hookcollision(currentX,currentY,gw.platforms)){
      
      if (player.center_x > currentthing.center_x){
        endX = currentthing.getRight();
      }else{
        endX = currentthing.getLeft();
      }

      endY = currentthing.center_y;
  
      playerHook();
      drawLine = false;
      // Play collision sound effect
      collisionSound.play();
    }
    
    if( hookcollision(currentX,currentY,Pumpkins) ){
      pumpkinHook();
      endX = currentthing.center_x;
      endY = currentthing.center_y;
      // Play collision sound effect
      startTime = millis();
      returnline = true; 
      drawLine = false;
      collisionSound.play();
      
    }
    
    if( hookcollision(currentX,currentY,allenmise) ){
      EnemiesHook();
      endX = currentthing.center_x;
      endY = currentthing.center_y;
      startTime = millis();
      returnline = true; 
      drawLine = false;
      // Play collision sound effect
      collisionSound.play();
    }
   
    
    if( hookcollision(currentX,currentY,gw.Doughnuts) ){
      drawLine = false;
      playerhookmove();
      collisionSound.play();
    }
    
    
    if (t == 1) { // 完成绘制
      drawLine = false;
      startTime = millis();
      returnline = true;
    }
    
    
  }
  
  if (hookmove){
    
     player.drawLineTo(player.center_x,player.center_y,currentthing.center_x, currentthing.center_y);
     player.center_x += playerM;
     player.center_y = playerN;
     currentStep++;
  
     if (currentStep >= hooksteps) {
      hookmove = false; // 移动完成
      currentStep = 0;
    }  

  }
  
  // 在每一帧中逐步移动玩家位置
  
  if (isMoving) {
    if (player.center_x < currentthing.center_x){
      player.center_x += playerM-2;
    }else{
      player.center_x += playerM+2;
    }
    
    player.center_y += playerN;
    currentStep++;
    player.drawLineTo(endX,endY,player.center_x, player.center_y);
    
    if (currentStep >= steps) {
      isMoving = false; // 移动完成
      currentStep = 0;
    }  
  }
  
  if (ispumpkinMoving) {
    currentthing.center_x += playerM;
    currentthing.center_y += playerN;
    currentStep++;
    if (currentStep >= steps) {
      ispumpkinMoving = false; // 移动完成
    }
  }
  
  if (isenemyMoving) {
    
    currentthing.center_x += playerM;
    currentthing.center_y += playerN;
    currentStep++;
    if (currentStep >= steps) {
      isenemyMoving = false; // 移动完成
    }
  }

}


void hooktime(boolean isReverse) {
    float elapsedTime = (millis() - startTime) / 1000.0; // 已经过的时间，单位为秒
    t = constrain(elapsedTime / duration, 0, 1); // 插值参数t，范围在0到1之间

    if (isReverse) {
        rt = 1.0 - t;
        currentX = lerp(player.center_x, endX, rt);
        currentY = lerp(player.center_y, endY, rt);
    } else {
        currentX = lerp(player.center_x, endX, t);
        currentY = lerp(player.center_y, endY, t);
    }
}

void hookposition( ){
    float dx = worldMouseX - player.center_x;
    float dy = worldMouseY - player.center_y;
    float distance = dist(player.center_x, player.center_y, worldMouseX, worldMouseY);

    // 计算10像素长的方向向量
    float ratio = 200 / distance;
    
    endX = player.center_x + dx * ratio;
    endY = player.center_y + dy * ratio;
}


void EnemiesHook(){
  playerM = (endX - currentthing.center_x) / steps;
  playerN = (endY - currentthing.center_y) / steps;
  currentStep = 0;
  isenemyMoving = true; // 开始移动
}


void pumpkinHook(){
    // 计算每一步的移动量
  playerM = (player.center_x - currentthing.center_x) / steps;
  playerN = (player.center_y - currentthing.center_y) / steps;
  currentStep = 0;
  ispumpkinMoving = true; // 开始移动

}

void playerHook() {
  // 计算每一步的移动量
  playerM = (currentX - player.center_x) / steps;
  playerN = (currentY - player.center_y) / steps;
  currentStep = 0;
  isMoving = true; // 开始移动
}

void playerhookmove(){
  playerM = 300 / hooksteps;
  playerN = player.center_y;
  currentStep = 0;
  hookmove = true;
}



void mousePressed() {
  // 鼠标按下时启动绘制
  if (gw.isReady && !gameOver && !returnline &&!drawLine && gameStarted){
      // Play grappling hook sound effect
    hookSound.play();
    startTime = millis();
    drawLine = true;

 }
  
}

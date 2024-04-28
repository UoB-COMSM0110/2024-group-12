boolean cursorVisible = true; // Flag to indicate whether the cursor is visible
boolean back = false;
int lastTime = 0; // Variable to track the last time the cursor was toggled

int pageSize = 10; // Number of entries per page
int currentpage = 0; // Current page of the leaderboard
int buttonWidth = 150;
int buttonHeight = 50;
int buttonX, buttonY; // Coordinates for the start button
int introButtonX, introButtonY; // Coordinates for the intro button
int startGameButtonX, startGameButtonY; // Coordinates for the start game button
int restartButtonX, restartButtonY;
int easyButtonX, easyButtonY; // Coordinates for the easy button
int hardButtonX, hardButtonY; // Coordinates for the hard button
int leaderboardButtonX, leaderboardButtonY; // Coordinates for the leaderboard button
ArrayList<LeaderboardEntry> leaderboard = new ArrayList<LeaderboardEntry>(); // Leaderboard list
boolean drawed = false; //<>//



void drawIntroWindow() {
  
  pushMatrix();
  int introWindowWidth = 700;
  int introWindowHeight = 300;
  int introWindowX = width/2 - introWindowWidth/2;
  int introWindowY = height/2 - introWindowHeight/2 - 50;
  
  fill(200);
  rect(introWindowX, introWindowY, introWindowWidth, introWindowHeight);

  fill(0);
  textSize(16);
  
   // Load the Right arrow for image for the intro window
  PImage Rightarrow = loadImage("./data/IntroPage/RightArrow.png");
  PImage Jumparrow = loadImage("./data/IntroPage/HoldUp.png");
  
  
  // Calculate image dimensions and position to fit inside the intro window
  float imageScale = ( min(introWindowWidth / (float)Rightarrow.width, introWindowHeight / (float)Rightarrow.height) ) / 8;
  int imageWidth = (int)(Rightarrow.width * imageScale);
  int imageHeight = (int)(Rightarrow.height * imageScale);
  int imageX = introWindowX + (introWindowWidth - imageWidth) / 15; // center the image horizontally within the window
  int imageY = introWindowY + (introWindowHeight - imageHeight) / 8; // center the image vertically within the window
  int moveInstructionX = introWindowX + 300;
  int moveInstructionY = introWindowY + 20;

  // Display the arrow images + text: 
  image(Rightarrow, imageX, imageY, imageWidth, imageHeight);
  text("Use the arrows keys to move right, left, up and down", moveInstructionX, moveInstructionY);
  image(loadImage("./data/PowerUpOrb/powerOrb3.png"), imageX, imageY + 50, imageWidth, imageHeight);
  text("Collect the orb to fly, but be careful the Orb only lets you fly for 5 seconds !", moveInstructionX + 30, moveInstructionY + 50);
  image(Jumparrow, imageX, imageY + 100, imageWidth, imageHeight);
  text("Press and hold the UP key to fly, when you get an Orb", moveInstructionX, moveInstructionY + 100);
  image(loadImage("./data/pk/pumpkin1.png"), imageX, imageY + 160);
  text("Collect the pumkins to gain points !", moveInstructionX, moveInstructionY + 160);
  image(loadImage("./data/redsmile/attack2.png"), moveInstructionX - 250, moveInstructionY + 235, imageWidth, imageHeight);
  text("Avoid enemies or lose a life !", moveInstructionX, moveInstructionY + 235);
    
  //textAlign(CENTER, CENTER);
  //text("Game Introduction:\n\nThis is a simple game. Play and have fun!", introWindowX, introWindowY, introWindowWidth, introWindowHeight);

  // Draw the start game button
  fill(200, 0, 0);
  rect(startGameButtonX, startGameButtonY, buttonWidth, buttonHeight);
  fill(255);
  text("Start Game", startGameButtonX, startGameButtonY, buttonWidth, buttonHeight);
  drawButton("back" , startGameButtonX, startGameButtonY+100);
  popMatrix();
  
}

void drawPage(){
  
    background(sky);
    buttonX = width/2 - buttonWidth/2;
    buttonY = height/2 - buttonHeight/2;
    introButtonX = width/2 - buttonWidth/2;
    introButtonY = height/2 + buttonHeight;
    startGameButtonX = width/2 - buttonWidth/2;
    startGameButtonY = height/2 + buttonHeight + 100;
    easyButtonX = width/2 - buttonWidth - 50;
    easyButtonY = height/2 + buttonHeight + 100;
    hardButtonX = width/2 + 50;
    hardButtonY = height/2 + buttonHeight + 100;
    // Draw the start button
    fill(28, 82, 97);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    image(loadImage("./data/play.png"), buttonX+75, buttonY+25, buttonWidth-50, buttonHeight-10);
    // Draw the intro button
    fill(28, 82, 97);
    rect(introButtonX, introButtonY, buttonWidth, buttonHeight);
    fill(255);
    drawButton("Game Intro", introButtonX, introButtonY);

    // Show the intro window if introVisible is true
    if(introVisible) {
      drawIntroWindow();
    }
    else{
      draw_diff();
      drawInputBox();
    }
    if (millis() - lastTime > 500) {
      cursorVisible = !cursorVisible;
      lastTime = millis();
    }
}


void drawButton(String label, int x, int y) {
  
  pushMatrix();
  fill(200);
  rect(x, y, buttonWidth, buttonHeight);
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(label, x, y, buttonWidth, buttonHeight);
  popMatrix();
}



void mouseClicked() {
  
   if (mouseX >= width - 100 && mouseX <= width - 10 && mouseY >= 10 && mouseY <= 40) {
      gameStarted = false;
      back = true;
      gameOver = false;
      gw.restart();
      drawed = false;
      score = 0;
    }
  if (!gameStarted) {

    // Check if the start button is clicked
    if(mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
      gameStarted = true;
    }


    // Check if the intro button is clicked
    if(mouseX >= introButtonX && mouseX <= introButtonX + buttonWidth && mouseY >= introButtonY && mouseY <= introButtonY + buttonHeight) {
      // Toggle the visibility of the intro window
      introVisible = !introVisible;
    }

    // Check if the start game button is clicked
    if(mouseX >= startGameButtonX && mouseX <= startGameButtonX + buttonWidth && mouseY >= startGameButtonY && mouseY <= startGameButtonY + buttonHeight && introVisible) {
      gameStarted = true;
    }

    if(mouseX >= startGameButtonX && mouseX <= startGameButtonX + buttonWidth && mouseY >= startGameButtonY+100 && mouseY <= startGameButtonY+100 + buttonHeight && introVisible) {
      introVisible = !introVisible;
    }
    if(mouseX >= easyButtonX && mouseX <= easyButtonX + buttonWidth && mouseY >= easyButtonY && mouseY <= easyButtonY + buttonHeight) {
      difficulty = "Easy";
      if (back){
        gw.restart();
      }
    }

    // Check if the hard button is clicked
    if(mouseX >= hardButtonX && mouseX <= hardButtonX + buttonWidth && mouseY >= hardButtonY && mouseY <= hardButtonY + buttonHeight) {
      difficulty = "Hard";
      if (back){
        gw.restart();
      }
    }
  } else if (gameOver && !showLeaderboard) {
    // Check if the restart button is clicked
    if(mouseX >= restartButtonX-75 && mouseX <= restartButtonX + buttonWidth -75 && mouseY >= restartButtonY-25 && mouseY <= restartButtonY + buttonHeight-25) {
      restartGame();
      drawed = false;
    }
    if(mouseX >= leaderboardButtonX-75 && mouseX <= restartButtonX + buttonWidth-75 && mouseY >= restartButtonY-25+200 && mouseY <= restartButtonY + buttonHeight+200-25) {
      showLeaderboard = true;
    }
  }
  else if (showLeaderboard) {
    // Check if the restart button is clicked
    if(mouseX >= restartButtonX-70+200 && mouseX <= restartButtonX + buttonWidth -70+200 && mouseY >= restartButtonY-25+240-15 && mouseY <= restartButtonY + buttonHeight-25+240-15) {
      restartGame();
      drawed = false;
      showLeaderboard = false;
    }
  if (mouseX >= restartButtonX+100+200 && mouseX <= restartButtonX + buttonWidth +100+200 && mouseY >= restartButtonY-25+170-15 && mouseY <= restartButtonY + buttonHeight-25+170-15 && (currentpage + 1) * pageSize < leaderboard.size()) {
      currentpage++;
   }
  if (mouseX >= restartButtonX-100-75+200 && mouseX <= restartButtonX + buttonWidth -100-75+200 && mouseY >= restartButtonY-25+170-15 && mouseY <= restartButtonY + buttonHeight-25+170-15 && currentpage > 0) {
      currentpage--;
    }
  }


}

void restartGame() {
  score = 0;
  player.lives = 3;
  gameOver = false;
  player.setCenter_x(100);
  player.setCenter_y(100);
  bgm.loop();
}

void drawRestart(){
    restartButtonX = width/2 - buttonWidth/2+75;
    restartButtonY = height/2 + buttonHeight + 100-100;
    fill(255, 0, 0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Game Over", width/2, height/2 - 50);
    text("Score: " + score, width/2, height/2);
    drawButton("Restart", restartButtonX-50, restartButtonY);
    drawButton("Leaderboard", restartButtonX-50, restartButtonY+200);
    gw.restart();
    if (!playerName.isEmpty() && !drawed) {
    leaderboard.add(new LeaderboardEntry(playerName, score, difficulty));
    Collections.sort(leaderboard, (e1, e2) -> Integer.compare(e2.score, e1.score));
    drawed = true;
  }
    saveLeaderboard();

}

void draw_diff(){
    if (difficulty.equals("Easy")) {
      fill(255, 0, 0); // Red color for easy button
    } else {
      fill(200); // Default color for easy button
    }
    rect(easyButtonX, easyButtonY, buttonWidth, buttonHeight);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Easy", easyButtonX, easyButtonY, buttonWidth, buttonHeight);

    if (difficulty.equals("Hard")) {
      fill(255, 0, 0); // Red color for hard button
    } else {
      fill(200); // Default color for hard button
    }
    rect(hardButtonX, hardButtonY, buttonWidth, buttonHeight);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Hard", hardButtonX, hardButtonY, buttonWidth, buttonHeight);
}

void LeaderBoard(){
  background(sky);
    int startIndex = currentpage * pageSize;
    int endIndex = min(startIndex + pageSize, leaderboard.size());
    fill(255,255,255);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Leaderboard", width/2, height/2 - 200);
    for (int i = startIndex; i < endIndex; i++) {
      LeaderboardEntry entry = leaderboard.get(i);
      text("Name: " + entry.playerName + " score: " + entry.score + " difficulty: " + entry.difficulty, width/2, height/2 - 150 + (i - startIndex) * 30);
    }
    // Draw the restart button
    drawButton("Restart", restartButtonX+140, restartButtonY+185);
    drawButton("Prev", restartButtonX-200, restartButtonY+120);

    // Draw next page button
    drawButton("Next", restartButtonX+140, restartButtonY+120);
}

 void drawInputBox() {
  fill(200);
  rect(introButtonX-25, introButtonY + 200, 200, 30);
  fill(0);
  textSize(16);
  textAlign(LEFT, CENTER);
  text(playerName, introButtonX, introButtonY + 210);
  fill(255, 0, 0);
  String text = (!back) ? "Enter Your Name" : "Cannot Change Your Name:";
  text(text, introButtonX, introButtonY + 180);
  if (cursorVisible && playerName.length()!=0) {
    float cursorX = textWidth(playerName) + width/2 - 75; // Calculate cursor position
    line(cursorX,  introButtonY + 200, cursorX,  introButtonY + 225); // Draw cursor line
  }
}

void saveLeaderboard() {
  String[] lines = new String[leaderboard.size()];
  for (int i = 0; i < leaderboard.size(); i++) {
    LeaderboardEntry entry = leaderboard.get(i);
    lines[i] = entry.playerName + "," + entry.score + "," + entry.difficulty;
  }
  saveStrings("./data/leaderboard.txt", lines);
}
void loadLeaderboard() {
 // Check if the file exists
    String[] lines = loadStrings("./data/leaderboard.txt");
    if (lines != null) {
      for (String line : lines) {
        String[] parts = line.split(",");
        if (parts.length == 3) {
          String playerName = parts[0];
          int score = Integer.parseInt(parts[1]);
          String difficulty = parts[2];
          leaderboard.add(new LeaderboardEntry(playerName, score, difficulty));
        }
      }
    }
}
void drawBackButton() {
  // Draw back button at top left corner
  fill(200);
  rect(width - 70 +view_x, 20+view_y, 60, 30);
  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Back", width - 70 +view_x, 20+view_y, 60, 30);
}

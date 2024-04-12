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
  int introWindowWidth = 300;
  int introWindowHeight = 200;
  int introWindowX = width/2 - introWindowWidth/2;
  int introWindowY = height/2 - introWindowHeight/2;
  fill(200);
  rect(introWindowX, introWindowY, introWindowWidth, introWindowHeight);
  
  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Game Introduction:\n\nThis is a simple game. Play and have fun!", introWindowX, introWindowY, introWindowWidth, introWindowHeight);
  
  // Draw the start game button
  fill(200, 0, 0);
  rect(startGameButtonX, startGameButtonY, buttonWidth, buttonHeight);
  fill(255);
  text("Start Game", startGameButtonX, startGameButtonY, buttonWidth, buttonHeight);
  drawButton("back" , startGameButtonX, startGameButtonY+100);
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
    drawInputBox();

    // Show the intro window if introVisible is true
    if(introVisible) {
      drawIntroWindow();
    }
    else{
      draw_diff();
    }
}


void drawButton(String label, int x, int y) {
  fill(200);
  rect(x, y, buttonWidth, buttonHeight);
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(label, x, y, buttonWidth, buttonHeight);
}



void mouseClicked() {
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
    }
    
    // Check if the hard button is clicked
    if(mouseX >= hardButtonX && mouseX <= hardButtonX + buttonWidth && mouseY >= hardButtonY && mouseY <= hardButtonY + buttonHeight) {
      difficulty = "Hard";
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
    if(mouseX >= restartButtonX-75 && mouseX <= restartButtonX + buttonWidth -75 && mouseY >= restartButtonY-25+240 && mouseY <= restartButtonY + buttonHeight-25+240) {
      restartGame();
      drawed = false;
      showLeaderboard = false;
    }
  if (mouseX >= restartButtonX-75+100 && mouseX <= restartButtonX + buttonWidth -75+100 && mouseY >= restartButtonY-25+170 && mouseY <= restartButtonY + buttonHeight-25+170 && (currentpage + 1) * pageSize < leaderboard.size()) {
      currentpage++;
      println("+");
   }
  if (mouseX >= restartButtonX-75-100 && mouseX <= restartButtonX + buttonWidth -75-100 && mouseY >= restartButtonY-25+170 && mouseY <= restartButtonY + buttonHeight-25+170 && currentpage > 0) {
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
}

void drawRestart(){
    restartButtonX = width/2 - buttonWidth/2+75;
    restartButtonY = height/2 + buttonHeight + 100-100;
    fill(255, 0, 0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Game Over", width/2, height/2 - 50);
    text("Score: " + score, width/2, height/2);
    drawButton("Restart", restartButtonX, restartButtonY);
    drawButton("Leaderboard", restartButtonX, restartButtonY+200);
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
    drawButton("Restart", restartButtonX, restartButtonY+240);
    drawButton("Prev", restartButtonX-100, restartButtonY+170);
    
    // Draw next page button
    drawButton("Next", restartButtonX+100, restartButtonY+170);
}
  
 void drawInputBox() {
  fill(200);
  rect(introButtonX-25, introButtonY + 200, 200, 30);
  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(playerName, introButtonX+45, introButtonY + 210);
  fill(255, 0, 0);
  text("Enter Your Name:", introButtonX+35, introButtonY + 180);
  
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

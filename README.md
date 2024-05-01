<p align="center">
 <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/8bb8b7e9-b76a-4005-a784-5067c5234a8d" alt="Halloween" style="width:100%;">
</p>

<p align="center">
  <a href="https://youtu.be/q2mqtx54D-A">Click Here to Watch A Demo Video</a>
</p>


## Table of Contents
- [Team](#team)
- [How to Donwload and Play](#how-to-download--halloween-adventure)
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Design](#design)
- [Implementation](#implementation)
- [Evaluation](#evaluation)
- [Process](#process)
- [Conclusion](#conclusion)
- [Individual Contribution Table](#individual-contribution-table)

# Team

<figure>
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/9738be08-5bbc-4ed8-9dd3-4c4d29ff4089" alt="Team_photo" style="width:100%">
</figure>

<table align="center">
  <thead>
    <tr>
      <th style="text-align:center">Name</th>
      <th style="text-align:center">Email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:center">Hamza Ahmed</td>
      <td style="text-align:center"><a href="mailto:io23632@bristol.ac.uk">io23632@bristol.ac.uk</a></td>
    </tr>
    <tr>
      <td style="text-align:center">Yiran Liu</td>
      <td style="text-align:center"><a href="mailto:fm19201@bristol.ac.uk">fm19201@bristol.ac.uk</a></td>
    </tr>
    <tr>
      <td style="text-align:center">Gunho Ryu</td>
      <td style="text-align:center"><a href="mailto:jm23986@bristol.ac.uk">jm23986@bristol.ac.uk</a></td>
    </tr>
    <tr>
      <td style="text-align:center">Xiaoqian Lu</td>
      <td style="text-align:center"><a href="mailto:fd23007@bristol.ac.uk">fd23007@bristol.ac.uk</a></td>
    </tr>
    <tr>
      <td style="text-align:center">Feng Xue</td>
      <td style="text-align:center"><a href="mailto:zp23769@bristol.ac.uk">zp23769@bristol.ac.uk</a></td>
    </tr>
  </tbody>
</table>

# How to download  Halloween Adventure 


**requirements:**
MAC OS / WINDOWS, **Halloween adventure will not work on linux machines**
Processing, which can be downlaoded here: 
https://processing.org/download

1. **Donwload the zipped folder of this repo**

<img width="1028" alt="DownloadGame-ZipFolder" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/f7110e88-cb41-416c-82ca-c3becda346b6">

2. **Open Processing from your Mac OS or windows computer**

3. **Click on File - > Open**
   
<img width="1439" alt="DownloadGame-FileOpenProcessing" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/45a4836d-6e4a-4eb6-a4a8-9e9ab25420dd">

4. **Select the "Game.pde" File**

<img width="1440" alt="DownloadGame-OpenGamepde" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/ea32b19f-c8a1-4c71-8b1f-ca5bd76148ff">

5.**Once the file is open, click on the Play Button on the bottom Left corner of Processing**

<img width="383" alt="DownloadGame-PressPlay" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/d018b586-8b28-42f0-b75e-60b98b41f4b6">


6. **HAVE FUN**

# Introduction

Our game is a 2D platform game which, like other similar 2D platforms, allows for a character to jump through obstacles, avoiding enemies and collecting points. 

<br>
<p align="center">
 <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/aef13f50-98de-417a-aa9f-402e4b209f9c" alt="Enemies Chase Mechanics" style="width:100%; height:350px;">
 <p align="center">Enemies Chase Mechanics </p>
</p>

<br>

The added twist within our game is the addition of a timed flying mechanic. This ‘power-up’ allows the player to fly for a short period of time, making traversal through the game world easier. 

<br>
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/bad4b69e-b302-44f0-8c62-0d49154a1dfe" alt="Flying Mechanics" style="width:100%; height:350px;">
  <p align="center">Flying Mechanics</p>
</p>

<br>
<br>

Early on the inspiration for our game was the fondness all team members had towards games like Super Mario, we chose this because it also gave a simple vision to consitantly aim for in the game development process. This was reflected in our initial idea for the game where the twist would be that princess peach would be rescuing Mario. Over time however this evolved, as we sought after our own story line and unique game aesthetic.

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/3b29196e-f7c5-4ec3-b1b1-5fcce879aa62" alt="Game Clear" style="width:100%; height:350px;">
  <p align="center">Game Playing</p>
</p>

(videos have been editted by VEED.io)

## How  Play Halloween Adventure 

1. ***Controls***
    <p >
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/c821c6ec-92da-4050-ade8-0367724dcf7f" alt="image" style="width:90px; height:80px;"
   </p>
Use the arrow keys to move adventurer left and right.
Press the up and down arrow key to make adventurer jump. Adventurer can also use this key to climb ladders.

2. ***Objective***
   <p >
   <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/f00bde97-8ad9-4136-9600-cc3ec68a5ea8" alt="image" style="width:20px; height:20px;"
   </p>
 
Your goal is to safely guide adventurer through each level to reach the mystical flag at the end.

3. ***Avoid Enemies***
   
   <span>
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/1874678e-9a90-473b-944e-fab58c0d646a" alt="redsprite" style="width:40px; height:40px;"
   </span>
     <span>
     <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/d1966a87-bd81-45de-bfb0-5cb37c4d4dd4" alt="witch"style="width:40px; height:40px;"
     </span>
      
    <span >
      <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/b7ef13d3-beef-4896-b51d-73d5a5ccfb65" alt="redsmile" style="width:40px; height:40px;"
     </span>
    
     <span>
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/257a5d24-e355-409d-a888-f318bc312d14" alt="pumpkinmonster" style="width:40px; height:40px;"
    </span>

Beware of the lurking enemies ! Dodge the menacing pumpkin monsters, evade the spells of wicked witches, watch out for the mischievous red sprites, and beware of the eerie Redsmile. 
Use your agility and quick reflexes to outmaneuver them.

4. ***Collectibles***
<span>
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/c3ce1d22-9818-496c-96df-3937e483bedf" alt="redsprite" style="width:80px; height:80px;"
</span>

Along the way, collect pumpkins scattered throughout the levels. Pumpkins are essential for scoring points.The more pumpkins you collect, the higher your score will be.

5. ***Power-ups***
  <span>
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/b32cec24-8519-471f-a7f3-7ee02d7635e0" alt="pumpkinmonster" style="width:40px; height:40px;"
    </span>
    
Look out for special power-ups hidden throughout the levels. They might enhance advanturer jumping abilities, allowing him to overcome obstacles and enemies with ease.

# Requirements

 **ideation, Use-cases and User Stories**

Our group first came up with six game ideas, these were narrowed down to two potential games that looked the most promising. The games that we selected were : 

- 2D Platform. Inspired by Mario, with a twist that would allow the user to control the player in the same manner as seen in flappy bird (each press of a key will elevate the player in space, keeping the player afloat)
- Temple Run: Similar to the 2D platform game idea, however the the camera would follow the player as you traversed through the map. The twist for this game would be that the screen would shrink as the game progressed, closing centrally onto the character, meaning that there was a inherit time limit within which the user had to complete the map.

For both these games, we identified the stakeholders, user stories and the potential challenges, we then prepared our paper mock ups, divieing up the task within the group. We used the paper prototypes to visualise how the main game screen would look and to work out the aesthetics of the game.

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/4d2145e1-922c-4c5d-ac44-03e8053819c4" alt="Game Preview" style="width:100%; height:350px;">
</p>

<br>
<br>

**Identifying the stakeholders**

We identified the *primary stakeholders* for the game are the individuals who will be directly playing the game and reviewing it, these are: 

- Friend and Family / Other teams within our cohort : As the ones testing and playing, students within our cohort as well as friends and family members have a direct stake in the games success making them the operational support within the onion diagram shown below
- Lecturers / Markers / TAs : As the game is part of an educational goal, the game will be reviewed and tested thus making the educational support staff / Lecturers functional beneficiaries and sponsors of the game.

<br>
<br>

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/c9d2c6e1-9805-42d4-b642-737598cf019c" alt="Game Preview" style="width:70%; height:70%;">
</p>

The interaction of the stake holders with this game is designed to be identical so the user specification and user stories can be condensed for all stake holders identified above.

**User Case Story**

- Control the player / character via intuitive controls
- Have clear objectives and goals that the user must achieve when playing the game, i.e. a clear incentive
- Have special power ups and milestones

**User Story**

> “Meet Hanna, a novice gamer: As a new gamer, I want to control the characters movements using simple controls that are immediately responsive. These controls should be intuitive so that I can navigate through the game easily and enjoy a immersive gaming experience.”
>
> ![UserStory-Hannah](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/4ee9813e-1c6b-47ff-851b-b5093551951e)
> 

> “Meet John, a casual gamer: As a causal player of the game, I want a clear objective that provides a rewarding experience,  I want to unlock special levels or achievements by collecting specific power-ups or achieving certain in-game milestones so that I can explore additional content and challenges. e.g. a method to earn points."
> 
> ![Jon-CasualGamer](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/9165a121-7700-49dd-b380-cc792c33df08)
> 

> “Meet Fenix, a experianced gamer: As an experianced user, I want a challanging game, I want to know I am the best player!!”
>
> ![Fenix-_ExperiancedGamer](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/680a512a-2bf7-4e21-993b-408c7feabaa6)
> 


<br>
<br>

| Use Case Section | Easy Mode | Hard Mode | 
| ------------- | ------------- | ------------- |
| Description  | A run through the game with fewer enemies and more power up placements | A run through of the game with more enemies and fewer special power upgrades |
| Game Screen  | The player can enter their name, view the game tutorial, select the game difficulty and view the leaderboard | The player can enter their name, view the game tutorial, select the game difficulty and view the leaderboard |
| Basic Flow  | Complete the game with no loss of life, collecting as many points as possible  | Complete the game with no loss of life, collecting as many points as possible  |
| 1  | The player presses uses the RIGHT, UP, LEFT and DOWN keys to traverse through the game map  | The player presses uses the RIGHT, UP, LEFT and DOWN keys to traverse through the game map  |
| 2  | The player collects pumpkins to increase score  | The player collects pumpkins to increase score  |
| 3  | The user collects power up to navigate around the map, avoiding enemies  | The user collects power up to navigate around the map, avoiding enemies, these power ups however are less abundant |
| 4  | The user navigates to the end of the map   | The user navigates to the end of the map  |
| Alternative Flow  | Collision with the enemy or falling off the edge   | Collision with the enemy or falling off the edge |
| 1  | The player presses uses the RIGHT, UP, LEFT and DOWN keys to traverse through the game map  | The player presses uses the RIGHT, UP, LEFT and DOWN keys to traverse through the game map |
| 2  | The player encounters an enemy and loses a life.  | The player immediately encounters an enemy and loses a life, there are more *special enemies* which have the apperance of pumpkins but are transfomring |
| 3  |The player player falls of an edge and is returned to the start of the game screen   | The player player falls of an edge and is returned to the start of the game screen   |
| 4  | When all three lives are list the game ends there with the option to restart the game  | When all three lives are list the game ends there with the option to restart the game  |

<br>
<br>

# Design

**System Architecture**

The architecture of the game consists of largely three main components: Game Manager, UI and In-Game Components. It was of critical importance for all components to be fully integrated to develop a functioning game. 

Game Manager corresponds to the default main.pde file of the newly created Processing Project, implying that the file manages the overall flow of the game and renders the UI and In-Game Components only under relevant situations. It overrides most built-in functions from Processing in which its keyboard and mouse actions are then controlled by this Game Manager. 

To display the right UI and perhaps the In-Game components, main.pde has to identify current state of the game. For instance, if it is on start state, it may display the Game Start Page with a lot of helper features (Start, Intro, Levels, Name) while at game-play state, it may display what is relevant for the play state (the player, enemies, and maps).

User Interfaces corresponds to all the user-friendly components including the start button, intro, leader board, difficulty levels, and a back button. They are designed to be well recognisable by users by their names without requiring understandings from the users on what to do and how to use these. 

In-Game Components includes all the game related objects from a player, platforms, enemies, and score relevant collectables. Each of these game components are of a separate object with unique methods, and properties and if relevant may inherit from an identical parent class. It might be also important to find appealing visuals for each in-game components in which they may all look visually appealing. 

**CLASS DIAGRAM**

![Game Class Diagram](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/fb6f8e37-a65f-4c2a-bbaf-8083a01caa8a)

To have a common static view of the game, our group devised a class diagram where it may roughly represent a good view of the classes that may be in used for the project. 

- <b>Game Class</b>: Game Class corresponds to the above-mentioned Game Manager in which it oversees overall flow of the game. It has access to all the classes and variables relevant to the game then renders appropriate screen in accordance to the user actions. 
- <b>Sprite Class</b>: Sprite Class has coordinate properties represented as in x and y value and PImage property that holds the image data. Such data if called by Game Class via Sprite display method then will be rendered into the game screen.
- <b>Animated Sprite Class</b>: It is a class that extends from Sprite Class and may have arrays of PImages where there could be used in varying situations. The situation may be determined by its current Direction.
- <b>Player, Pumpkin, Enemy, Donut Classes</b>: They are classes that extend from Animated Sprite Class and will present different animated images on varying circumstances. Their image displaying logics, however, may vary. 


# Implementation
  
  Our game features an intricate system centered around the creation of "AnimatedSprite," a class housing the base character animations responsible for loading and executing various actions. Built upon this foundation, we implement the attributes of the player character, enhancing their functionality atop the AnimatedSprite framework. The core logic governing the behavior of boss characters takes precedence in our game, encompassing elements such as damage calculation, pursuit tactics, movement speed, and engagement range. Notably, classes like "PumpkinMonster," "RedSmile," and "RedSprite" derive from the original Boss class, loading distinct actions to diversify gameplay.

  To orchestrate the game's mechanics and level progression, we utilize the "Game" class for initializing maps, characters, and classes, while employing "Map" to dynamically generate environments and adversaries. Meanwhile, "PlayPage" facilitates seamless transitions between various game states, encompassing the start screen, end screen, and leaderboard interfaces. Additionally, the "Movement" class governs character movement logic and key mappings, ensuring fluid player control.
 
  Throughout the development journey, we encountered a myriad of challenges, ranging from optimizing character animations to managing the intricacies of boss logic and crafting dynamic game maps. Moreover, implementing interactions between players and enemies presented its own set of obstacles. In our pursuit of refining the game's quality and enhancing user experience, we'll delve into the specific challenges encountered and detail our strategies for overcoming them, ultimately fortifying our game development process.

### Challenge 1

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/3e9419ed-ddfd-4bda-b8e3-0edfd9584fbc" alt="image" style="width:50%; height:350px;"
</p>
 
   <br>
   
   During our development process, we encountered a challenge related to preserving the correct game state after a character's death and game restart. Specifically, utilizing the gw.create() method post-character death and subsequent game restart failed to maintain the intended game state. Despite collecting crucial elements like a pumpkin before the character's demise, certain elements were not retained upon game restart. This issue led to an accumulation of items and an abrupt termination of the game due to inadvertent duplication of item quantities.

### Solution 1

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/ddd64f74-2bbf-4304-aae7-6a042c41678e" alt="image" style="width:50%; height:350px;"
</p>

  <br>
  
  To tackle this dilemma effectively, we implemented a solution that involved resetting all monster lists and character information within the gameworld object. By doing so, we ensured that the game starts afresh with the accurate state upon each restart, thereby mitigating the risk of unintended item duplication and ensuring a smoother gameplay experience.


### Challenge 2
 
 <p align="center">
   <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/34ba7f29-3a5a-4add-ae59-815fa1c15fe4" alt="image" style="width:100%; height:350px;"
 </p>
 <br>
  
  In our game, when the difficulty level is set to "Hard," enemy behavior involves calculating the distance between enemies and the player. However, a critical flaw in our collision detection logic causes enemies to inaccurately perceive the player's position. As a result, they mistakenly believe they've collided with the player, particularly when the player is positioned above a brick (as depicted in the provided video). This erroneous perception leads enemies to cease their pursuit, disrupting the intended gameplay flow.

 ### Solution 2
   <p align="center">
    <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/2e174034-ea3a-4e1b-991f-ef2bbfc914c2" alt="image" style="width:50%; height:350px;"
   </p>

  <br>
  
  To swiftly address this issue while prioritizing efficiency, we opted for a pragmatic solution rather than investing extensive resources into modifying the complex collision detection mechanism. Our chosen approach involves elevating the brick, thereby increasing the distance between the player and enemies. By implementing this adjustment, we effectively mitigate the impact of the collision detection error. Enemies are less likely to mistakenly converge on the brick, ensuring that their behavior aligns more closely with the intended gameplay dynamics.


 ### Challenge 3

 <p align="center">
   <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/5f4bdd9f-ee65-4eba-b9c2-e5588a30c407" alt="image" style="width:100%; height:350px;"
 </p>

 <p align="center">
   <img width="416" alt="image" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/0ee6c46c-8637-464d-a253-9cddecd35d45">
   <img width="416" alt="image" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/a863099f-5610-4ebe-b03b-78baca5646c1">
 </p>

<br>
  During gameplay, clicking on the leaderboard button consistently triggered a sudden switch to a new game, preventing players from accessing the leaderboard in time. This issue arose because the restart button shared the same location as the leaderboard button. Consequently, double-clicking on the leaderboard button often inadvertently activated the restart button, leading to unintended game restarts.


 ### Solution 3

 <p align="center">
   <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/ea0d3f47-3155-4c5c-adb2-b5beb88b158c" alt="image" style="width:50%; height:350px;"
 </p>
  
  To address this usability issue and improve player experience, we relocated the restart button to a different position. By separating the restart button from the leaderboard button, we reduced the likelihood of accidental activations during interactions with the leaderboard interface. This adjustment aimed to minimize player frustration and ensure that accessing the leaderboard remained a smooth and uninterrupted experience.

   ### Challenge 4

   During the development phase, we encountered a significant challenge related to the character's collision box, which was oversized. This discrepancy caused the character to appear suspended above the ground rather than properly grounded. Additionally, when the character flipped, improper collision positioning resulted in a subtle yet noticeable displacement of the character's image. Upon investigation, we identified that transparent pixels within the character's image were causing issues in collision detection. These transparent pixels inadvertently triggered collisions prematurely, especially when the character approached a wall or obstacle.

  ### Solution 4
  <p align="center">
   <img width="248" alt="image" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/3e8684fa-7c51-4553-9ebb-76d5cac27e30">
   <img width="250" alt="image" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/126887318/a1816845-5c2d-4249-8eb0-e55e2de63e70">
  </p>

<br>
To address this issue effectively, we implemented a transparent pixel cropping technique on the character's image. This process involved trimming away the transparent pixels surrounding the character's visible portions, ensuring that the collision box accurately represented the character's silhouette. By restricting the collision box to encompass only the visible areas of the character, we significantly enhanced the accuracy of collision detection.



# Evaluation

 Evaluation is fundamental in software development as it enables developers to analyse and refine the software to meet users’ requirements effectively. To ensure that our project meets users’ requirements, our group implemented two evaluation measures: qualitative and quantitative evaluations. Any issues identified from these evaluations, if applicable, were addressed and some evaluations were run multiple times to better evaluate the project.

 Our game’s main objective could be summarised as below:
-	Collect as much as pumpkins.
-	Go as far as you can.

 Given the tasks, for qualitative evaluation, two methods were introduced: Think Aloud and Heuristics Evaluation. Think Aloud evaluation requires users to verbalise their thoughts and impressions while performing the requested tasks. Such verbalised thoughts are highly associated with the user’s experience and addressing these potential issues or bugs pointed out by the participants is essential to ensure the quality of a developing software is consistent and reliable. 
 
 The below represents the results from the Think Aloud evaluation of the prototype game.  The game was run on the test map and with test features. Two participants, one facilitator and two observers joined the evaluation and the issues identified during the evaluation were then addressed to improve the real game. The collected data were then processed into customised categories: “Nothing to be addressed”, “Issues to be addressed”, “Issues to be discussed”, and “Uncertain”. The first two categories identify data that their names clearly suggests while the “Issues to be discussed” identifies issues that is worth discussing at a group level since this could be viewed as a bug or perhaps the game developers’ (our) intention. Lastly, the last category identifies data that could not be interpreted. 

### Think Aloud (Raw) ###
 <p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/834c2a7c-f040-4596-b609-e0e544308b8d" style="width:70%; height:70%;">
</p>

### Think Aloud (Categorised) ###
 <p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/01ff64e1-ecc4-4ff7-997c-53846dd89a2f" style="width:70%; height:70%;">
</p>

 Two more participants joined the same evaluation after Easter holiday right after the real game features and the two difficulty levels were finally introduced into out project. Its following results are presented underneath in the same style as above. 

### Think Aloud (Raw) ###

### EASY ###
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/fc6d0baf-a564-4f2a-90a0-286c0132a223" style="width:70%; height:70%;">
</p>

### HARD ### 
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/7483c75f-0329-415f-8f36-36d560dd45c4" style="width:70%; height:70%;">
</p>

### Think Aloud (Categorised) ### 
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/b6d5d06d-26c2-466c-b38c-6948bde7faf4" style="width:70%; height:70%;">
</p>
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/c4b24198-b774-4a0e-98df-ee1967150248" style="width:70%; height:70%;">
</p>

 For better analysis, Heuristic Evaluation was also conducted as well. The below results represent the Heuristic Evaluation. Overall, qualitative evaluations in which Think Aloud combined with Heuristic Evaluation may have proposed what could be better improved in the context of developing a user friendly software (game).

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/33897ede-1910-4c7b-97cb-264f110c264a" style="width:70%; height:70%;">
</p>

 For quantitative evaluation, NASA TLX have been implemented to evaluate the perceived difference of the two game levels, namely “easy” and “hard”, and these results then have been analysed in the context of W test statistic. NASA TLX is one of the most widely used tool to measure the subjective workload perceived by the users and it is used across various industries including software engineering, health, and so on. It specifically, measures the multidimensional workload from executing a specific requested task and these dimensions are comprised of Mental Demand, Physical Demand, Temporal Demand, Performance, Effort, and Frustration. The detailed explanation of these components is provided underneath.

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/1efd47bf-f9ba-442f-8391-1df371fd77e5" style="width:70%; height:70%;">
</p>

 The overall derived results and its subscale measures from NASA TLX is valid as demonstrated from significant independent research. Considering all these, NASA TLX appeared to be the most appropriate quantitative method to evaluate the designed level systems, “easy” and “hard”, in the game.  

 For the evaluation, 10 participants (N=10) were recruited. The participants were then requested to play the designed two different levels (easy, hard) of the game with the required task. All participants first played the “easy” level then played the “hard” level. After the completion, the same participants were asked to finish the NASA TLX. It is worth noting that there could have been a training effect where a participant after finishing the “easy” level had higher chance of better performing at the “hard” level, implying that there could have been a plausible bias for participants to underestimate the “hard” level. However, due to the difficulty in recruiting participants, the evaluation continued with its original design. Finally, the collected NASA TLX data has been processed into the raw TLX scores as suggested from some researchers. 
 
 The below represents the processed TLX scores. To find its statistical differences, the processed data were passed to conducted Wilcoxon-Signed-Rank-Test and the test at its sample size, proved that the given results to be statistically highly significant at (p = 0.005) level. This may imply that the two designed levels of the game were perceived by our potential users to be significantly different where our design then meets our intention. 

<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/3917c4b2-0f1b-46a3-b6bb-c92edee72336" style="width:70%; height:70%;">
</p>
<p align="center">
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/d1bb0b26-cc1d-4f46-8764-85faf85e4970" style="width:70%; height:70%;">
</p>

<br>
<br>

# Process

## Introduction

The goal for our project was to create a simple visually aesthetic game that gave players a fun yet challenging experience. We aimed to create in one level a replayability factor for the game which would:

- Be a challenging yet engaging experience.
- Have a unique look, prompting the user to explore the map and the game world.
- Create an engaging story, that immerses the user in the game.

To meet these objectives, we adopted the Agile methodology, emphasising:

- Team collaboration with clearly defined roles.
- An iterative testing process.
- Regular feedback from key user groups, including students, teaching assistants, and lecturers.

## Inception

In our initial team meeting, attended by Hamza, GunHo, Yiran, Feng, and Lu, we brainstormed potential game concepts, prioritising personal passion over feasibility. We subsequently narrowed our focus to 2D platformers, dismissing more complex ideas like 3D and online multiplayer games due to time constraints.

**Challenges** during this phase**:**

- Varied coding skills and GitHub familiarity among team members.
- Role assignment.

**Solutions:**

- Each member developed and presented a simple game in Processing, enhancing our understanding of individual coding skills and fostering team cohesion through **pair programming** and feedback.
- We conducted a GitHub tutorial. For example, one of the team members (GunHo) had significantly more GitHub experience than the rest of the team. So we had all team members (Hamza, GunHo, and Yiran present) go through a tutorial on branching, merging, and rebasing. We did this by ‘practice’ codes that we pushed onto git, where each member practised creating their branch, merging code and resolving conflicts.

 **Organisation and Communication**

We decided on a 2D platformer with mechanics similar to those in Super Mario Bros and Flappy Bird, where players could fly by repeatedly pressing a button. Our organisational tools included the Kanban board on GitHub and personal notes on Notion. Unlike traditional Agile methods, we opted for continuous communication via WhatsApp instead of daily stand-ups.

**Challenges:**

- Tasks communicated on WhatsApp were often overlooked and not updated on the Kanban board.

**Solution:**

- As the project manager, I ensured that the Kanban board was regularly updated, facilitated access to meeting spaces, and centralised communication.

Tasks were assigned using a method akin to planning poker, where each member assessed task difficulty before distribution, these sessions also helped us to clarify roles:

- Yiran as the lead developer and coder.
- GunHo as the secondary developer and designer.
- Hamza handling project management and additional coding.

## **Game Development**

Development intensified during reading week and the Easter holiday. An initial minimal viable product was evaluated using Think Aloud and Heuristic evaluation methods, highlighting:

- **Strengths:** Appealing design and intuitive gameplay.
- **Areas for improvement:** Leaderboard integration, flying mechanics, map design, and respawn features.

**Challenges:**

- Uncertainty about game appearance and goals.
- Lack of testers.

**Solution:**
Focusing on a core narrative, we redefined our game around a ghost character collecting pumpkins. We simplified the flying mechanics to better suit the game's aesthetic, transitioning from a flapping to a continuous flight model within a time frame.

During Easter, we held sprint days, refining features and incorporating feedback from friends and family, crucially expanding our tester base to include novice gamers. This feedback led to the implementation of smoother controls and personalised start screens.

<img width="795" alt="FlowChartImage-Process" src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/4636efc2-ae31-4631-a7da-0fd5cdcd3ab7">

**Challenges:**

- Bugs and a scattered focus delayed narrative development.

**Solution:**
We decided against a detailed narrative, opting instead to enhance the gameplay and visual elements. Unimplemented ideas included gameplay mechanics like collecting donuts for extra lives and transforming the ghost into a human.

# Conclusion
In conclusion, our journey in developing this 2D platform game has been a testament to the power of collaboration, iteration, and user-centric design. Through the Agile methodology, we navigated various challenges, from refining our initial concept to addressing technical hurdles and user feedback. Our commitment to regular communication, role clarity, and task prioritization helped us stay on track despite the complexities of game development.

As we progressed, user feedback played a pivotal role in shaping our game's direction. Whether it was tweaking mechanics for smoother gameplay or refining visual elements for better immersion, every iteration brought us closer to our goal of creating a compelling gaming experience.

While not without its challenges, our journey reinforced the importance of adaptability and resilience in the face of setbacks. By embracing feedback, iterating on our designs, and remaining focused on our objectives, we were able to overcome obstacles and deliver a game we're proud of.

In the end, our game stands as a testament to the power of teamwork, creativity, and perseverance. Our adherence to Agile practices such as pair programming and iterative testing was instrumental in creating a game that was both enjoyable and aesthetically pleasing. This project underscored the importance of user feedback and continuous iteration, and taught us effective use of tools like Kanban boards and GitHub. These experiences will undoubtedly benefit our future projects, as we apply the lessons learned to new challenges and endeavors in the world of game development and beyond.

# Individual Contribution Table

| Name            | Role                                        | Individual Weight |
|------------     |---------------------------------------------|-------------------|
| Yiran           | Lead Developer and Coder                    |       1           |
| Hamza           | Project Manager and Coder                   |       1           |
| GunHo           | Secondary Developer and Designer            |       1           |
| Feng            | null                                        |       1           |
| Lu              | null                                        |       1           |

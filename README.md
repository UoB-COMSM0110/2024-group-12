<p align="center">
 <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/104866923/8bb8b7e9-b76a-4005-a784-5067c5234a8d" alt="Halloween" style="width:100%;">
</p>

## Table of Contents
- [Team](#team)
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Implementation](#implementation)
- [Evaluation](#evaluation)
- [Process](#process)
- [Conclusion](#conclusion)
- [Individual Contribution Table](#individual-contribution-table)

# Team

<figure>
  <img src="https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/9738be08-5bbc-4ed8-9dd3-4c4d29ff4089" alt="Team_photo" style="width:100%">
</figure>

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

**CLASS DIAGRAM**

![Game Class Diagram](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/fb6f8e37-a65f-4c2a-bbaf-8083a01caa8a)

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

Our adherence to Agile practices such as pair programming and iterative testing was instrumental in creating a game that was both enjoyable and aesthetically pleasing. This project underscored the importance of user feedback and continuous iteration, and taught us effective use of tools like Kanban boards and GitHub. These experiences will undoubtedly benefit our future projects.

# Individual Contribution Table


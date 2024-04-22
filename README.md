# 2024-group-12

// TODO: 
1. Table of Contents 
2. Demo Video of Finished Game 
3. Banner for the Game 
4. Gifs of the Game working - Jumping, Flying Mechanic, Falling Mechanic, Chasing mechanic from the enemies 
5. Implementation part of the Report 
6. Contributions Group member roles - who did what, e.g. Hamza - User Stories, User Specifications, GunHo - Evaluation, Yiran - StakeHolder Identification
7. Process - Write as Group  (Agile Working Method + Kanban board)
8. Conclusion - Write as Group 
9. Input and Situations
10. Change orientation of Paper Prototype.
11. Update Class Diagram



![IMG_8164](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/9738be08-5bbc-4ed8-9dd3-4c4d29ff4089)

# Introduction
Our game is a 2D platform game which like other similar 2D platforms allows for a character to jump through obstacles, avoiding enemies and collecting points. The added twist within our game is the addition of a timed flying mechanic, this ‘power up’ allows the player to fly for a short period of time, making traversal through the game world easier. Early on the inspiration for our game was the fondness all team members had towards games like Super Mario, we chose this because it also gave a simple vision to consitantly aim for in the game development process. This was reflected in our initial idea for the game where the twist would be that princess peach would be rescuing Mario. Over time however this evolved, as we sought after our own story line and unique game aesthetic.


# Requirements

 **ideation, Use-cases and User Stories**

Our group first came up with six game ideas, these were narrowed down to two potential games that looked the most promising. The games that we selected were : 

- 2D Platform. Inspired by Mario, with a twist that would allow the user to control the player in the same manner as seen in flappy bird (each press of a key will elevate the player in space, keeping the player afloat)
- Temple Run: Similar to the 2D platform game idea, however the the camera would follow the player as you traversed through the map. The twist for this game would be that the screen would shrink as the game progressed, closing centrally onto the character, meaning that there was a inherit time limit within which the user had to complete the map.

For both these games, we identified the stakeholders, user stories and the potential challenges, we then prepared our paper mock ups, divieing up the task within the group. We used the paper prototypes to visualise how the main game screen would look and to work out the aesthetics of the game.


![IMG_8136](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/5e728a3a-4046-4157-afb2-9b57238f4895)


 **Identifying the stakeholders**

We identified the *primary stakeholders* for the game are the individuals who will be directly playing the game and reviewing it, these are: 

- Friend and Family / Other teams within our cohort : As the ones testing and playing, students within our cohort as well as friends and family members have a direct stake in the games success making them the operational support within the onion diagram shown below
- Lecturers / Markers / TAs : As the game is part of an educational goal, the game will be reviewed and tested thus making the educational support staff / Lecturers functional beneficiaries and sponsors of the game.

 ![image](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/c9d2c6e1-9805-42d4-b642-737598cf019c)

The interaction of the stake holders with this game is designed to be identical so the user specification and user stories can be condensed for all stake holders identified above.

**User Case Story**

- Control the player / character via intuitive controls
- Have clear objectives and goals that the user must achieve when playing the game, i.e. a clear incentive
- Have special power ups and milestones

**User Story**

> “As a gamer, I want to control the characters movements using simple controls that are immediately responsive. These controls should be intuitive controls so that I can navigate through the game easily and enjoy a immersive gaming experience.”
> 

> “As a player of the game, I want a clear objective that provides a rewarding experience, e.g. a method to earn points.”
> 

> “As a user, I want to unlock special levels or achievements by collecting specific power-ups or achieving certain in-game milestones so that I can explore additional content and challenges.”
>

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


**CLASS DIAGRAM**

![Game Class Diagram](https://github.com/UoB-COMSM0110/2024-group-12/assets/153836423/fb6f8e37-a65f-4c2a-bbaf-8083a01caa8a)



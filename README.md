# Pong
A Godot 4.2, pong game 
_________________________
<img width="577" alt="Screenshot 2024-01-03 at 1 04 15 PM" src="https://github.com/had2020/Pong/assets/59424667/9741f6d8-fad5-4fc7-8342-dd011e2d5619">
_________________________
# By Hadrian Lazic, Date 1/3/23

Simple project of mine, made this for fun in 30 mins, while offline on small road trip. 

How the game works, same rules of pong, but the game goes to 11 points, and theres a basic npc that plays back to you.

# Main Scene Node Tree
_________________________
<img width="265" alt="Screenshot 2024-01-03 at 1 04 37 PM" src="https://github.com/had2020/Pong/assets/59424667/d595dcb5-1117-49e6-9e9b-3bdac2e66997">

_________________________
# How the code works

Level - Node 2D
Is the main scene, which holds all the used child scenes.

Camera 2D
Is a camera node used to display video in the viewport

Walls - Node 2D
Parent of all the Static Body nodes 2D used in keep the ball within the viewport.

ColorRect
Background of the main game scene.

Racket - Node 2D
holds all the childern of the player's racket. It holds the main Static Body moved by controls,
and a area 3D used for making the ball move randomly, after it lefts the area of the racket this makes the game more fun and replayable. 

Racket-Enemy2 - Static Body 2D Node
holds all the enemy's code and the same kind of area 2D node that does a simliar function, when the ball exits the area, to add force in a random direction after a hit, this makes the game more fun, and realistic.

Goal-enemy - Area 2D 
sends a signal to the Game-handler - Node 2D, that adds score for the enemy.

Goal-player - Area 2D 
sends a signal to the Game-handler - Node 2D, that adds score for the player. Score counts up to 11, and then the game ends, and the scene is restarted, this is done in the Game-handler - Node 2D.

Game-handler - Node 2D 
Node 2D, that holds the important data in the game. Counts score up to 11, Using Area 2Ds positions as Goals, starting with Goal in there name. It also resets the game scene if the score pasts 11 points the game resets.

Blue Score - Label 2D
ui used for displaying the counted score.

Red score  Label 2D 
ui used for displaying the counted score.

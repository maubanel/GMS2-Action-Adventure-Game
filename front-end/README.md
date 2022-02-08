<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Front End

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Chapter introduction here.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

We have completed a front end for you.  To activate it requires a few steps.  First lets add another state for the player called FE.  Open the player object and add another <tt><b>macro</b></tt> called <tt><b>FE</b></tt>.
		<h3><tt><b>obj_player: Create Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

We are also going to change the starting state of the player to <tt><b>FE</b></tt>.
		<h3><tt><b>obj_player: Create Event</b></tt></h3>


![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Remove the player from <tt><b>rm_castle</b></tt>.
		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Move <tt><b>rm_fe</b></tt> from the <tt><b>FE</b></tt> folder to the top of the room list.  Drag and drop <tt><b>obj_gamepad</b></tt> into the room as well as <tt><b>obj_player</b></tt>

		<h3><tt><b>rm_fe</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Open up the <tt><b>obj_player Step</b></tt> event and add a call to <tt><b>scr_player_movement_fe()</b></tt> so that the player can only move on the x axis and is restrained between the two buttons.
		<h3><tt><b>obj_player: Step Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Open up the <tt><b>rm_castle</b></tt> and press the <tt><b>Creation Code</b></tt> button and make sure we get the collision volumes when we first enter this room:
		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new room called <tt><b>rm_credits</b></tt> and add <tt><b>obj_credits_controller</b></tt> to the instance layer.
		<h3><tt><b>rm_credits</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Go to the credits screen by noving the player and when on top of the credits button, pressing the enter button.  Also try going start the game by doing the same thing with the game button.  You can leave the credits screen by letting it play or by pressing enter again.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now you should be able to escape out of the front end room and credit room to quit the game but NOT from the game back to the FE.  Add a <tt><b>Step | Step</b></tt> event to <tt><b>obj_game_controller</b></tt> and restart game if escape is pressed:

		<h3><tt><b>obj_game_controller: Step Event</b></tt></h3>
        
![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Press escape in all rooms and it should work properly!

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

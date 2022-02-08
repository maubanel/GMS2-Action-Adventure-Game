<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Pathfinding Zombie

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

I have provided an enemy sprite for you. Create a new folder in the <tt><b>Sprites</b></tt> section in the <tt><b>Resources</b></tt> menu.  Call it <tt><b>Zombie</b></tt>.  Create a new sprite and call it <tt><b>spr_zombie_right</b></tt>.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Press the <tt><b>Edit Image</b></tt> button and select <tt><b>Image | Import Strip Image</b></tt>.  Navigate to <tt><b>TutorialResources | Sprites | spr_zombie_right.png</b></tt> in the browser (or click <a href="gms2tutorials:///ShowFiles?path=../TutorialResources/Sprites/spr_zombie_rightpng">here</a>). Set the <tt><b>Frame Width</b></tt> and <tt><b>Frame Height</b></tt> to <tt><b>32</b></tt>.  Set the <tt><b>Number of Frames</b> and <tt><b>Frames per Row</b></tt> to </tt><tt><b>3</b></tt>. Press the <tt><b>Convert</b></tt> button.  Adjust the speed accordingly. 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

	Name the sprite <tt><b>spr_zombie_right</b></tt>.
<h3><tt><b>spr_zombie_right</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Repeat this for <tt><b>spr_zombie_up</b></tt> and <tt><b>spr_zombie_down</b></tt>
		
		<h3><tt><b>spr_zombie_up</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new Game Object called <tt><b>obj_zombie</b></tt> and bind the <tt><b>spr_zombie_right</b></tt> sprite to it.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

 The zombie will move between patrolling and chasing the player.	The Zombie will have its own finite state machine. The first state we will create is a <tt><b>PATROL</b></tt> state. So create a new Create Event on the zombie and add:
	<h3><tt><b>obj_zombie: Create Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Now we are going to create a path for the zombie to roam.  Now I am cautioning you that in the past this mode has been VERY slow and crashed often. Save your work now before starting. We will be using paths for the Zombie to walk around the room with. This requires no logic and we just lay out a track to where the Zombie will roam. Create a new Path and call it <tt><b>path_enemy</b></tt>: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now we open <tt><b>rm_castle</b></tt> and add a <tt><b>Path</b></tt> Layer and place it under the <tt><b>Instances</b></tt> Path Layer and call it <tt><b>Zombie_Path</b></tt>. 
		<p>
		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Select the path you just created <tt><b>path_enemy</b></tt>:

		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Press the Smooth Curve radio button in the path so that the turns are not all 90 degrees and the zombie moves more naturally.
		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Left click around the level and draw a path for the zombie.  Give the enemy a path for patrolling.

		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Keep clicking until you are back close to the beginning.  Press the <tt><b>CLosed</b></tt> radio button and the loop will fill in by itself!

		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

	Scale the three zombie sprites to be <tt><b>64</b></tt> by <tt><b>64</b></tt> :

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Place zombie into <tt><b>rm_castle</b></tt> and put him close to the start of your path. 
<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now we need to trigger the <tt><b>obj_zombie</b></tt>> to follow this path. We will be using a new function that GameMaker provides. Paths do not start running by default we need to start them in code.  This is done through the <b><a href="gms2tutorials:///ShowHelp?keyword=path_start">path_start(path, speed, endaction, absolute)</a></b> function.
		<p>
	To start the enemy down the path add to the bottom of the create event:

	<h3><tt><b>obj_zombie: Create Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Follow the zombie around and see how it follows the path.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

I noticed that the sprite was following the path by its origin.  I moved the origin of all three sprites to <tt><b>Middle Center</b></tt> and adjusted the path so that the zombie did not pass any solid objects.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Add a new script called <tt><b>scr_set_zombie_directions</b></tt>.  The pathfniding uses the direction that the player is in so we can select the best sprite based on whether they are facing in the angle they are moving in.  Add to this new script:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open up the zombie and add a regular step event to the enemy and call this new script:

		<h3><tt><b>obj_zombie: Step | Step Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Follow the zombie around and see how it follows the path and faces the direction it is walking in.  Next up we will have the zombie chase the player.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

We want the zombie to chase the player when he gets a certain distance away and can see the player (and can&rsquo;t see through walls). Open the zombie create event and add another marcro state called CHASE right after the previous macro and assign it a value of 1:
	<h3><tt><b>obj_zombie: Create Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

We also want to know the range that triggers the zombie to chase the player. This will be calculated in pixels.  Lets start with a small number for testing, so you almost have to touch the enemy to get it to switch to CHASE. Add to the end of the zombie create event:
		<h3><tt><b>obj_zombie: Create Event</b></tt></h3>
        
![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

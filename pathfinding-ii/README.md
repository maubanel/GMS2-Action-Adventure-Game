<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Pathfinding Zombie II

<sub>[previous](../pathfinding/README.md#user-content-pathfinding-zombie) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../pathfinding-iii/README.md#user-content-pathfinding-zombie-iii)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Lets get the zombie to chase the player while avoiding collisions.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:



<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button. Approach the zombie and it should stop the path then get stuck in the CHASE state when you get too close:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Since this is in a step event every frame we will be stopping the pathfinding and changing states.  We only need to do this once.  We can use the state as a switch and only make a change if the zombie is in PATROL state.

	obj_zombie: Step Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now how do we have the zombie chase the player without running over water, a wall or any other part you don't want the enemy to walk on (typically the same areas the player can't walk on). We will now use GameMaker&rsquo;s pathfinding to create a path to chase the player. This pathfinding goes along a path that is full of free cells.  

	
		We need to get access to this layer id.  To do this we call the <a href="gms2tutorials:///ShowHelp?keyword=layer_get_id">layer_get_id(layer)</a> function.
		obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

We need to get access to this to the tilemap holding this layer.  To do this we call the <a href="gms2tutorials:///ShowHelp?keyword=layer_tilemap_get_id">layer_tilemap_get_id(layer id)</a> function.
		obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

	With this function you can create an mp_grid for the motion planning functions. It returns an index that must be used in all other mp_grid function calls. The x and y coordinates indicate the position of the top-left corner of the grid, hcells and vcells indicate the number of horizontal and vertical cells to be created within the grid, and cell width and cell height indicate the size of the cells in pixels. You can create and maintain multiple grid structures at the same moment if you need them for different things, but be aware that these are complex functions and the more you use and the higher the cell resolution then the slower your game could be. - Gamemaker Manual
	</blockquote>
	obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

We need to add cells to the collision volume in this grid.  To do this we use the <a href="gms2tutorials:///ShowHelp?keyword=tilemap_get_at_pixel">tilemap_get_at_pixel(tilemap_element_id, x, y)</a> and <a href="gms2tutorials:///ShowHelp?keyword=mp_grid_add_cell">mp_grid_add_cell(id, h, v)</a> 
		obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

How do we test to know if we have done it correctly? We can&rsquo;t just start using it as we don&rsquo;t know if this has no bugs. What we want to do is overlay this grid to see if the red parts match where our collision volumes lie. We can create a temporary script and use the function <a href="gms2tutorials:///ShowHelp?keyword=mp_grid_draw">mp_grid_draw(grid)</a> and is pretty self explanatory. Add a new draw event to the zombie and add the following:
	obj_zombie: Draw Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button. Now you see that green is where the zombie can travel and red it blocked.  This looks correct to me.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

First we have to create a new path for the zombie to follow that leads to the player's location.  We will be using <a href="gms2tutorials:///ShowHelp?keyword=path_add">path_add()</a> and set a chase speed in the zombie create.

	obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Check to see if we are in the chase state and then call a new script that will chase the player.

	obj_zombie: Step Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now we set up this grid because gamemaker provides a function that dynamically creates a path based on this collision grid so the enemy won&#39;t run into a grid section. We can create a path dynamically in script using: <a href="gms2tutorials:///ShowHelp?keyword=mp_grid_path">mp_grid_path(d, path, xstart, ystart, xgoal, ygoal, allowdiag)</a>. Create a new script called scr_enemy_chase and add:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button. Run up to the zombie then run away from it. Notice that it now follows you!


![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

The zombie updates every frame so he mirrors your every move. This is annoying and we want to avoid mimicking the players moves step by step.  When moving we don't change our minds 30 times a second. We want to only update the movement ai every 20 frames. Now add to zombie create event at the end:
		obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Now lets adjust the distance the zombie is from player to trigger the state change:

	obj_zombie: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Open scr_enemy_chase and only adjust path every 20 frames:
		scr_enemy_chase

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Play the game and test your work.  The zombie should have a slight delay when you change directions and it should feel a little bit more natural. On the next page we will look at returning to patrol if the player gets away from the zombie.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

When the player gets far enough away from the zombie this creature will need to find its way back to its patrol path and go back to patrolling.  So we need to switch back to PATROL mode when the player gets too far away. We need to get the enemy back to the starting point of his patrol. We will need a new state called RETURN. Open the enemy create event and add to the macros:

		obj_npc_tiger: Create Event

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open the scr_enemy_chase scriptand add to the end of the script a check to see if it should chase else go back to PATROL. We end the path of the enemy chase and switch to the RETURN state when the player has gone twice the trigger distance away from the enemy.
		scr_enemy_chase

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button. Run up to the zombie then run away from it. The zombie will give up and freeze (run on spot) when you get far enough away.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

First lets make sure that the zombie can go to CHASE state from either PATROL or RETURN state.  Open up the zombie step event and add this condition:
		obj_npc_tiger: Step Event
        
![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../pathfinding/README.md#user-content-pathfinding-zombie)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../pathfinding-iii/README.md#user-content-pathfinding-zombie-iii)|
|---|---|---|

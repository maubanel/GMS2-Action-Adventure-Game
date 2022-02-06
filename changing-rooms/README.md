<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Changing Rooms

<sub>[previous](../resolve-collision/README.md#user-content-resolve-collision) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Lets now add another level and change rooms.  We will add a teleporter to the level to be the device that gets us back and forth between rooms.

<br>

---

##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Download the teleporter ray sprite here: [spr_teleporter_ray.png](images/spr_teleporter_ray.png).
		
*Right click* on **Sprites** and select **New | Sprite** and name it `spr_teleporter_ray`. Press the Import button and go to the folder you downloaded `spr_teleporter_ray.png`. 

![import teleporter ray into new sprite](images/sprTeleporterRay.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Now do the exact same thing and create a new sprite and Import [spr_teleporter.png](images/spr_teleporter.png).

![import teleporter into a new sprite](images/sprTeleporter.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we want the teleporter only to trigger when you are in the center middle of it. We will make the collision volume (which is a trigger volume to activate the room change) very small. Open the **Collision Mask** in `spr_teleporter` and change the **Mode** from **Automatic** to `Manual`. Then change **Left** to `60`, **Right** to `67`, **Top** to `100` and **Bottom** to `140`. Now we have a collision volume that is triggered inside the teleporter.

![reduce collision volume in teleporter](images/reduceTeleporterCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We need to create a small finite state machine for the player.  We have to watch for a few things:

* If the player collides with the teleporter go to the second room
* Change state of player to out of game.
* Stop user control
* When in new room start in TELEPORTER state, walk off teleporter
* Change state back to ingame.

Lets use an enumerator to store the player state.  An enumerator is a constant which makes it non-mutable (cannot be altered at run time) name that will represent the state of the player. Open the player create event and add at the top (typically we will place macros before variables):

![create player_state enumerator](images/createEnum.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Now lets create variable that stores the macro containing the player state. The player starts the game in `player_state.in_game` so we will default to this state.  Open the **obj_player | Create** event and add to the bottom:

![store state variable](images/storeState.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Create a new **Game Object** and bind the `spr_teleporter` sprite to it and call it `obj_teleporter`.

![add obj teleporter and bind sprite to it](images/objTeleporter.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new **Game Object** and bind the `spr_teleporter_ray` sprite to it and call it `obj_teleporter_ray`.

![add obj teleporter ray and bind sprite to it](images/objRay.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Go to **rm_castle** and add a new layer that will be on top of the player.  Call it `Block_Player_Tiles`:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now drag and drop obj_teleporter on the Block_Player_Tiles in the castle room:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:




![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Select the Background_Collision_Tile layer in rm_castle and press the eyeball button to hide the collision layer again. On the next page we will create another room to teleport to!

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now we need a room to teleport to.  We won't get too complicated, let's create a new room and make it into a desert.  Right click on <tt><b>rm_castle</b></tt> and select <tt><b>Duplicate</b></tt>:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Select <tt><b>Background_Opaque_Tiles</b></tt> layer and select the sand tile.  Pick the <tt><b>Paint Bucket</b></tt> or <tt><b>Erase</b></tt> tool and start replacing all the opaque objects with sand. 
<h3><tt><b>rm_desert</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Select the <tt><b>Background_Collision_Tile</b></tt> layer in <tt><b>rm_desert</b></tt> and press the eyeball button to make the collision layer visible. Pick the <tt><b>Erase</b></tt> tool and start removing all collisions not on the outer edge.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Select the <tt><b>Background_Collision_Tile</b></tt> layer in <tt><b>rm_desert</b></tt> and press the eyeball button to make the collision layer visible. Go to the <tt><b>Room Editor</b></tt> tab.  Selecdt the pink brush and make sure you have selected the pencil tool.  Make sure the entire edge has collision so player can't leave the room.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Select the <tt><b>Block_Player_Tiles</b></tt> layer and move the teleporter to a different part of the room. Select the <tt><b>Background_Collision_Tile</b></tt> layer in <tt><b>rm_desert</b></tt> and press the eyeball button to make the collision layer visible. Erase the old collision volume and add new collision volumes in the new location like so:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now we want to restrict player movement to when the player is in the teleporter by changing the state<tt><b>INGAME</b></tt> state. So we will add a check to the <tt><b>obj_player</b></tt> Step Event:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Now it should be back to exaclty the same as it was before we added this check as the game starts with the player in this INGAME state.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

When the player is in the teleporter we want to change the player state.  So first we need to check for a collision with the teleporter in <tt><b>obj_player</b></tt> Collision | obj_teleporter Event:
<h3><tt><b>obj_player: Collision | obj_teleporter Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt> and run towards the teleporter. You will notice that the player stops but still keeps walking stuck in the last animation state.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

Now lets test the game. When you collide with the teleporter the player gets stuck in its last animation state and does nothing. So our state is changing succesfully. Now we need to do a few things. Add to the collision event a change to the appropriate idle animation:

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../resolve-collision/README.md#user-content-resolve-collision)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

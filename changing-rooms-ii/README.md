<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Changing Rooms II

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Lets continue with getting the teleporter to work.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Play the game and make sure the player switches to the appropriate idle frame.

https://user-images.githubusercontent.com/5504953/152676113-302e6a80-0091-4476-b5a7-7d768e85042c.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Lets have the ray start as an invisible sprite.  We will fade it in when the player collides with the teleporter volume. Open up **obj_teleporter_ray** and press the <kbd>Add Event</kbd> and select a **Create** event. Make the sprite transparent and add a variable switch `fade` to indicate when to fade in the sprite.

![create event ray](images/rayCreateEvent.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Press the <kbd>Add Event</kbd> and select a **Step | Step** event. If **fade** is true then start to fade for 3 seconds (we take one divided by room speed (60) then divided by three to get three seconds of fading in.  We then clamp the value between 0 and 1.

![add fade logic](images/addFadeLogic.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Go back to the **obj_player | Collision** event and trigger the switch to start the fade.

![start fade in collision event](images/triggerFade.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Press the <kbd>Add Event</kbd> and select a **Create** event. Run towards the teleporter and see the ray fade in over 3 seconds.
	
https://user-images.githubusercontent.com/5504953/152676593-33cf33c1-fe87-45f0-acab-cf57c6db9117.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Now lets have the player fade out while the teleporter ray fades in.  Open up **obj_player | Collision** event and add a fade out over 4 seconds. When player is faded out change rooms.

![fade player out](images/fadePlayerOut.png)


<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now we have to fix two things.  We want to have one player with its stats and items going from room to room.  So remove the player from `rm_desert`.

![delete desert player](images/deleteDesertPlayer.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Make the player in `rm_castle` persistent so they don't get deleted when changing levels.

![make obj_player persistent](images/objPlayerPersistent.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we need to get the location in the desert for where we moved the teleporter.  I put the cursor in the center of the teleporter and record the x and y values.

![center teleporter](images/getDesertTelLoc.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Now we go back to **obj_player | End Step** and add the x and y location of the teleporter in the desert room right after we change rooms.

![add teleporter x and y](images/goToTeleporter.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now you do change rooms but the player is invisible and it triggers another teleporter transition.  Lets fix this.

https://user-images.githubusercontent.com/5504953/152677288-a6d5045a-c84c-4b3e-a424-71624e73d3c8.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Open up **obj_player | Create** event script and add a `teleport_arrive` to the `player_state`.

![add teleport_arrive state](images/arriveState.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Open up the **obj_player | Collision** event and only allow this state change when you are `in_game`.  This will stop the triggering of endless back and forth between teleporter rays.

![check in_game state for collision in player](images/changeStateOnlyInGame.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now open up **obj_player | End Step** and a a state change when we change rooms.  Go from `teleporter` to `teleport_arrive`.  Then when in the `teleport_arrive` state fade in the player.

![fade in player for teleport arrive](images/teleportArrive.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now you fade in when in the new room.  We now should have the ray already in and fade the ray out.  We will also have the player move out of the teleporter before switching back to `in_game` so that it doesn't trigger an endless back and forth.


<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button and run towards the teleporter. Now when you change rooms the player now lands in the teleporter.


![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now we need to switch states as we change rooms. Open script the create event script on the player and add another Macro player state called TELEPORTERLEAVE.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open the player alarm0 event and change the player state.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we want the player to walk out to the right.  In the player step add a state to check to see if you are in TELEPORTERLEAVE and if so move to the right.

		Call an alarm1 to then go back to GAMEPLAY state.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

Go to obj_player and add an Alarm | Alarm1 event. Then make the image alpha solid again, change the state back to INGAME and get the layer_id and tilemap for this new room (otherwise it will be the one from the previous room as the player persists through levels).

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> Play Button and run towards the teleporter. Now when you change rooms the player now lands in the teleporter and you can control them back in regular game state.

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

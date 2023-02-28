![](../images/line3.png)

### Changing Rooms

<sub>[previous](../resolve-collision/README.md#user-content-resolve-collision) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../changing-rooms-ii/README.md#user-content-changing-rooms-ii)</sub>

![](../images/line3.png)

Lets now add another level and change rooms.  We will add a teleporter to the level to be the device that gets us back and forth between rooms.

<br>

---

##### `Step 1.`\|`TDAAG`|:small_blue_diamond:

Download the teleporter ray sprite here: [spr_teleporter_ray.png](images/spr_teleporter_ray.png).
		
*Right click* on **Sprites** and select **New | Sprite** and name it `spr_teleporter_ray`. Press the Import button and go to the folder you downloaded `spr_teleporter_ray.png`. 

![import teleporter ray into new sprite](images/sprTeleporterRay.png)

![](../images/line2.png)

##### `Step 2.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: 

Now do the exact same thing and create a new sprite and Import [spr_teleporter.png](images/spr_teleporter.png).

![import teleporter into a new sprite](images/sprTeleporter.png)

![](../images/line2.png)

##### `Step 3.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we want the teleporter only to trigger when you are in the center middle of it. We will make the collision volume (which is a trigger volume to activate the room change) very small. Open the **Collision Mask** in `spr_teleporter` and change the **Mode** from **Automatic** to `Manual`. Then change **Left** to `60`, **Right** to `67`, **Top** to `100` and **Bottom** to `140`. Now we have a collision volume that is triggered inside the teleporter.

![reduce collision volume in teleporter](images/reduceTeleporterCollision.png)

![](../images/line2.png)

##### `Step 4.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We need to create a small finite state machine for the player.  We have to watch for a few things:

* If the player collides with the teleporter go to the second room
* Change state of player to out of game.
* Stop user control
* When in new room start in `teleporter` state, walk off teleporter
* Change state back to ingame.

Lets use an enumerator to store the player state.  An enumerator is a constant which makes it non-mutable (cannot be altered at run time) name that will represent the state of the player. Open the player create event and add at the top (typically we will place macros before variables):

![create player_state enumerator](images/createEnum.png)

![](../images/line2.png)

##### `Step 5.`\|`TDAAG`| :small_orange_diamond:

Now lets create variable that stores the macro containing the player state. The player starts the game in `player_state.in_game` so we will default to this state.  Open the **obj_player | Create** event and add to the bottom:

![store state variable](images/storeState.png)

![](../images/line2.png)

##### `Step 6.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond:

Create a new **Game Object** and bind the `spr_teleporter` sprite to it and call it `obj_teleporter`.

![add obj teleporter and bind sprite to it](images/objTeleporter.png)

![](../images/line2.png)

##### `Step 7.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new **Game Object** and bind the `spr_teleporter_ray` sprite to it and call it `obj_teleporter_ray`.

![add obj teleporter ray and bind sprite to it](images/objRay.png)

![](../images/line2.png)

##### `Step 8.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Go to **rm_castle** and add a new **instance** layer that will be on top of the player.  Call it `Teleporter`. Now drag and drop `obj_teleporter` and `obj_teleporter_ray` onto the **Teleporter** layer.

![add Teleporter layer and add both teleporter objects to room](images/addTeleporterToRoom.png)

![](../images/line2.png)

##### `Step 9.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we need a room to teleport to.  We won't get too complicated, let's create a new room and make it into a desert.  Right click on **rm_castle** and select **Duplicate**.  Name this room `rm_desert`.

![dupe rm_castle to rm_desert](images/desertRoom.png)


![](../images/line2.png)

##### `Step 10.`\|`TDAAG`| :large_blue_diamond:

Select Background_Opaque_Tiles layer and select the sand tile.  Pick the Paint Bucket or Erase tool and start replacing all the opaque objects with sand. 

https://user-images.githubusercontent.com/5504953/152674654-5916db84-cb07-4500-b1ea-5ab543b395ab.mp4

![](../images/line2.png)

##### `Step 11.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: 

Select the Collision layer in `rm_desert` and press the eyeball button to make the collision layer visible. Pick the Erase tool and start removing all collisions not on the outer edge. Fill in any gaps and just surround the room so the player cannot escape.

https://user-images.githubusercontent.com/5504953/152674813-9d50c639-a97e-4d4e-8e38-c91c7e41fd08.mp4

![](../images/line2.png)


##### `Step 12.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Turn off the collision layer.

![turn off collision layer](images/turnOffColLayer.png)

![](../images/line2.png)

##### `Step 13.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Rather than erasing the animated and transparent tiles we can just delete the entire layers. Delete **Background_Transparent_Tiles** and **Background_Animated_Tiles**.

![delete transparent and animated layers](images/deleteTwoTileLayers.png)


![](../images/line2.png)

##### `Step 14.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Select the **Teleporter** layer and move the teleporter and ray to a different part of the room. 

![move teleporter objects in desert](images/moveTeleporter.png)

![](../images/line2.png)

##### `Step 15.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: 

Add a collision volume for both teleporters in **rm_desert** and **rm_castle**.  Move the **Collision** layer to the top layer in both rooms. Then turn off collision layer visibility.

![add teleporter collisions](images/teleporterCollisions.png)

![](../images/line2.png)

##### `Step 16.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Now we want to restrict player movement to when the player is in the teleporter by changing the state. We will only allow the player to get input and move when in the in_game state.  Open up **obj_player | Step** event and add an `if` statement around all the input and movement code.

![add if statement for state to step event in obj_player](images/ifStep.png)

![](../images/line2.png)

##### `Step 17.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Do the same thing for the **obj_player | End Step** event.

![add if state to end step](images/ifEndStep.png)

![](../images/line2.png)

##### `Step 18.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now it should be back to exaclty the same as it was before we added this check as the game starts with the player in this `player_state.in_game` state.

![game unchanged](images/gameUnchanged.png)

![](../images/line2.png)

##### `Step 19.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

When the player is in the teleporter we want to change the player state.  So first we need to check for a collision with the teleporter in **obj_player Collision | obj_teleporter Event** and change the state to `obj_player.teleporter`.  Set the `speed` to `0`. 


![change state on collision set speed to 0](images/collisionSpeed.png)

![](../images/line2.png)

##### `Step 20.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Run towards the teleporter. You will notice that the player stops but still keeps walking on the spot stuck in the last animation state.

https://user-images.githubusercontent.com/5504953/152675870-61bdadc9-0e84-469a-ac7f-57d8f30fe5a4.mp4

![](../images/line2.png)

##### `Step 21.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

 When you collide with the teleporter the player gets stuck in its last animation state and does nothing. So our state is changing succesfully. Now we need to do a few things. First, add a check to see if we are in teleport state in the **obj_player | End Step** and if we are idle the player.

![keep player in idle](images/sendIdlePlayer.png)

![](../images/line2.png)

##### `Step 22.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Select the **File | Save Project** then press **File | Quit** to make sure everything in the game is saved. If you are using **GitHub** open up **GitHub Desktop** and add a title and longer description (if necessary) and press the <kbd>Commit to main</kbd> button. Finish by pressing **Push origin** to update the server with the latest changes.

![save commit and push to github](images/github.png)
___


![](../images/line.png)

<!-- <img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - Changing Rooms II"/> -->

![next web page of walkthrough](images/banner.png)

![](../images/line.png)

| [previous](../resolve-collision/README.md#user-content-resolve-collision)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../changing-rooms-ii/README.md#user-content-changing-rooms-ii)|
|---|---|---|

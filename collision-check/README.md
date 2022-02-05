<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Four Corner Collision Check

<sub>[previous](../collision-volume/README.md#user-content-creating-collision-volume-in-room) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

We need to get access to the **TileSheet** and check on each corner of the player's collision volume if there is a collision between the player and the tile(s) they are standing on.  If there is we will move the player back outside the collision volume in the **End Step**.  Remember when we are using `vspeed` and `hspeed` the player does not move until AFTER the **Step Event** runs.  We first need to get access to the collision layer we just created.

<br>

---

##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

We will be using a function called `layer_get_id(layer_name) `to get access to the layer. Remember `layer_name` is a string so it is the name of the layer surrounded by quotation marks, for example: "the_name_of_the_layer".

Now *double click* on `obj_player` and edit the **Create Event** and add get a variable to hold the reference to the id of the **Collision** layer we created in the room:

![get layer id](images/getLayer.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Now that we have the  **ID** for the layer, we need a variable to store the reference to the tilemap that is used by that layer. Since a layer can be of different types (game objects, backgrounds etc..) we need access to the **Tilemap**.

We will be using `layer_tilemap_get_id(layer_id)` to get access to the tilemap so we can check whether there is a collision on a specific point in the room. This function can be used to retrieve the **unique ID** value of the tilemap element on a layer.

Open up **obj_player | Create Event**.

![alt_text](images/getLayer.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We also need to know how far the edge of the collision volume from the **Origin** of the sprite for each direction.  We will be using `sprite_get_bbox_left` to get the left hand pixel of the collision mox.

What will be the return  if we subtract `sprite_get_xoffset(sprite_index)`from `sprite_get_bbox_left(sprite_index)`?  We get the distance from the origin to the edge of the collision volume.  This will be how much we need to displace the character by relative to the edge of the collision in game.  Lets look at a diagram:

`sprite_get_xoffset(sprite_index)` gives us the local position of the x and y offset of the **Origin** in the sprite.  We need to ensure it is the same in ALL of our sprites!

![diagram of sprite_get_xoffset(sprite_index)](images/spr_xyoffset.png)

`sprite_get_bbox_left(sprite_index)` gives us the distance from **Origin** to the left side of the bounding box. 

![diagram of sprite_get_bbox_left(sprite_index)](images/spr_bbox.png)

So lets get the offset for all four sides and save it in the **obj_player | Create** event.

![get all four offsets](images/fourOffsets.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

To make the collision as simple as possible we want the collision volume to be identical in all sprites regardless of the direction.  We don't want the size of the collision changing when the player changes animation. For collisions to work properly all animations HAVE to have the same collision volume. Lets tighten the volume a bit on the horizontal axis and top as we want the player to get close to the walls with as little a gap as possible.

Open all of the player sprites and change the **Collision Mask Mode** from **Automatic** to **Manual** and adjust **Left** and **Top** to `4`.  Adjust **Right** to `55` and leave the **Bottom** to `63`.  Make sure you do this exactly the same on ALL player sprites:

![change collision offsets](images/collisionOffsets.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

So lets visualize what the value we are trying to aquire?

![diagram of offsets](images/offsets.png)



<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Lets add some print statements to the player's create event and print some debug to confirm our above assumptions.  Do we get the value we expect?

![print four collision offsets](images/confirmOffsetsCorrect.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game.  Look at the Output window and confirm that these variables are doing what we think they should be.  This should match what we calculated above.  If it doesn't look for errors in the code.

![alt_text](images/collisionOffsetsDebug.png)

Lets go back to the player and get the relative difference for top, right and bottom.  First start by deleting the debug printing as we no longer need this information.

<h3>obj_player: Create Event </h3>


![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../collision-volume/README.md#user-content-creating-collision-volume-in-room)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

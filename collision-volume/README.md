<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Creating Collision Volume in Room

<sub>[previous](../player-anim/README.md#user-content-importing-player-animations) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Now we use sprites as tiles for backgrounds and non-moving objects because they render faster than game objects (which include Sprites). Objects have a lot of overhead (all the variables and functionality that come with this class) that make them much more &quot;expensive&quot;. 

Now we don't know what tiles in our layer we should collide with. We are going to create a layer for collisions that will be hidden in the final game. It will have one hidden tile attached to it that we will use for collision.  
    
<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Lets start by creating a new sprite and call it `spr_collision`. Change the size to `32` by `32`. Click the <kbd>Edit Image</kbd> button. We will create a 32 by 32 block with a solid color. Use the bucket tool to fill in with a pink color (or any other color that is not being used in your level currently). Double click on the layer and change the **Opacity** to `35`%.

![35% transparent pink collision sprite called spr_collision](images/sprCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

This needs to be part of a tileset. The one rule about a **Tile Set** in **GameMaker** is that the first tile **has** to be empty. Go to the **Resize Sprite** and click on the **Resize Canvas** selection and set the ***Width*** to `64`. Also, click on the <kbd>-></kbd> next to it so the blank space is on the left hand side and the pink square on the right hand side (right justifying the sprite we have created). Press the <kbd>Apply</kbd> button to accept the changes.

https://user-images.githubusercontent.com/5504953/152643207-ff6b49af-8d03-4f4b-89dd-61684c192b28.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Create a new **Tileset** and call it `tls_collision`. Assign the `spr_collision` sprite we just prepared to the tileset.

![create tileset tls_collision and assign spr_collision](images/tlsCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Click on Tileset Properties button and set the Tile Width and Tile Height to 32:

![change tileset width and height ot 32](images/resizeTileset.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Since we will not be rendering this layer in the game we want it on the to player (that is why we made it partially translucent.  This way we can see each 32 by 32 section that has collision on it.  


Open the room rm_castle. Create a new Tile Layer on top and call it Background_Collision_Tiles.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Select the Collision layer and the newly created tileset and paint every tile that you want the player to not be able to walk on. Make sure that you block the outside of the entire level and all areas you don’t want the player to walk on. Because of the perspective when we are moving up we will move the collision tile two tiles above the meeting between ground and walls.


I ended up adjusting the Opacity to 50%.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

You can double check your work by turning layer visibity on and off on all but the collision layer to make sure that you block out all unwanted areas to walk on and that you can't escape the room.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../player-anim/README.md#user-content-importing-player-animations)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

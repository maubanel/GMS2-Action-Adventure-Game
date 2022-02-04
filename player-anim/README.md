<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Importing Player Animations

<sub>[previous](../room-size/README.md#user-content-room-size) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Lets import the animations we need for our action adventure game.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Let's import a player to use. You can replace it but for the math to work you will need to use the same size sprite.  Downloadn [MonkeyAnim.png](images/MonkeyAnim.png).

![download MonkeyAnim.png](images/MonkeyAnim.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

*Right click* on **Sprites** and select **New | Sprite** and name it `spr_player_right`.

![add spr_player_right sprite](images/sprPR.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Double click on `spr_player_right` and select <kbd>Image | Import Strip Image</kbd>. Select `MondayAnim.png` and press the <kbd>Open</kbd> button.

![import player right animation strip](images/importStripImage.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

This brings up the **Convert to Frames** window.  As you can see there are three rows of animation with 8 cells in each.  For walking right we are on the third bottom row.  The sprites are `64` by `64`.  Change **Number of Frames** and **Frames per Row** to `8` frames.  Change **Frame Width** and **Frame Height** to `64` pixels.  Now we want the third row so set the **Vertical Cell Offset** to `2`. Confrim the import.

![import the 8 walking right frames of animation](images/convertToFrames.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Open the **spr_player_right** up again and change the framerate to `12` **FPS**.

![change fps to 12](images/playerrfps.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Hit the <kbd>Play</kbd> button on the sprite and it should animate fairly qiuckly like so:

https://user-images.githubusercontent.com/5504953/152546988-1e473998-528f-49bb-a00f-06bfde5d2b52.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now change the **Origin** to `Middle Center`.

![change origin to middle center](images/middleCenter.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

*Right click* on **Sprites** and select **New | Sprite** and name it `spr_player_up`. Repeat the above process and you should change **Vertical Cell Offset** to `1`. Press the <kbd>Convert</kbd> button.

![alt_text](images/spr_player_up.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Change the **Frames per Second** to `12`**Fps** and the **Origin** to `Middle Center`.

![set origin to middle center and fps to 12](images/fpsOriginPUp.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Now for left and right I can just invert the sprite as it is symmetrical on the x plane.  The down animation can't be the up animation inverted.  We need a seperate set of frames.  I will let you create and import the sprite sheet for `spr_player_down`. Change the **Frames per Second** to `12`**Fps** and the **Origin** to `Middle Center`.

![import down animation](images/playerDown.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Open up **rm_castle** and make sure you are on the **Instances** layer.  Drag a copy of **obj_player** into the top left corner of the room inside the white box.

![drag obj_player in rm_castle](images/p1InRoom.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Press the <kbd>Add Event</kbd> and select a **Create** event. Create a new variable called `player_speed` and set it to `3`.

![set player speed to 3 in new create event](images/createPlayerSpeed.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

First we get a vertical and horizontal scalar (-1, 0 or 1).  We subtract left key from right key to get horizontal and up key from down key press to get the vertical.  We then set either the `hspeed` to a multiplied scalar and set the other axis to `0`.  Our player can only move in four directions so if there is a `vspeed` then `hspeed` has to be `0` or vice versa.

![set vertical and horizontal movement](images/pStepMovement.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../room-size/README.md#user-content-room-size)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Collectables

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Lets add an object for the player to collect in the game.  We will use a rare gem.


<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Download [spr_gem.png](images/spr_gem.png) as a collectible for the game. Right click on the **Sprites** title in the **Resources** menu and select **Create | Sprite**.  Press the **Import** button and navigate to the sprite you just doownloaded. Name the sprite `spr_gem`.

![download spr_gem.png and assign to sprite](images/sprGem.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Repeat the above and create a new **Sprite** then import [spr_gem_hud.png](images/spr_gem_hud.png), naming it `spr_gem_hud`.	

![download spr_gem_hud.png and assign to sprite](images/sprGemHud.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we have a lot of sprites in our sprites folder, lets clean them up. Right click on the **Sprites** title in the **Resources** menu and select **Add Group**. Call it `Player`. Drag the 3 player sprites into the folder.

https://user-images.githubusercontent.com/5504953/153754499-c3fb6628-cf69-4596-bd88-a2ffba3ad973.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Organize the rest of the sprite folder to your liking.

https://user-images.githubusercontent.com/5504953/153754704-716a7d58-6e16-444f-8736-b315b2d4cc27.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Organize your game objects into groups as well.

![create groups to hold objects](images/organizeObjs.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Add a new Game Object and call it `obj_gem` and bind `spr_gem` to it and place it in a logical group.

![add obj_gem and assign spr_gem to it](images/objGem.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Add a new Game Object and call it `obj_gem_hud` and bind `spr_gem_hud` to it and place it in a logical group.

![add obj_gem_hud and assign spr_gem_hud to it](images/objGemHud.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We want to add the full size gems into the rooms to collect.  First lets center both horizontally and vertically the **Origin** on `spr_gem`. Add a new **Instance Layer** called `PickUps` to both rooms and move just above **Backgrounds**. Now lets add 5 gems in `rm_castle` and 5 gems in `rm_desert` to this new layer.

https://user-images.githubusercontent.com/5504953/153755297-e9a06c22-b1f4-40b2-9af9-852538eea9aa.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now the player will be picking up these gems, so they will disapear when the player collects them. We don't want to have a variable saved on the gem object itself. Lets keep track of it in a game controller. Add a new game object and call it `obj_game`. Create a **Group** called `Logic` to put it in.  Do NOT assign a sprite to it.

![add obj_game to Logic group](images/obj_game.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Add a <tt><b>Create</b></tt> event to <tt><b>obj_game_controller</b></tt> and add a variable to track how many gems we have collected.
		<h3><tt><b>obj_game_controller: Create Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Drag and drop <tt><b>obj_game_controller</b></tt> into <tt><b>rm_castle</b></tt>
		<h3><tt><b>rm_castle</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now when the gem collides with the player we want the gemScore count to go up by 1 and the gem to dissapear. Create a new collision on the gem object with the player and add a point, destroy the gem and add an effect to sell the interaction and give positive feedback to the user action:
		<h3><tt><b>obj_gem: Collision | obj_player Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Go and collect the gems.  They should disappear with a simple particle effect like so:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now we are going to draw a small version of the gem on the Heads Up Display (HUD) on the top of the screen. We will use our <tt><b>obj_game_controller</b></tt> for this and add a <tt><b>DrawGUI</b></tt> event type. First lets draw a transparent rectangle to higlight the HUD. Please add:

		<h3><tt><b>obj_game_controller: Draw GUI Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Look at the HUD.  It is a bit ugly and you can't see what is happening behind it:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

I don&rsquo;t like fact that the blue obscures the game screen. Lets make it transluscent. 
		
	<p>
		Lets look at the manual for <b><a href="gms2tutorials:///ShowHelp?keyword=draw_set_alpha">draw_set_alpha(real)</a></b>. Now the tricky thing is that if you don't reset the alpha back to 1 it will affect every other sprite that it gets to after it draws the hud. This might include game objects in the room.  The draw event carries over to all future draw events that come after it. 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

So be careful, if you reduce the alpha always set it back to 100% which is for this built in variable <tt><b>1</b></tt>. This is only true for Gamemaker Draw events. 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Look at the HUD.  It is a bit ugly and you can't see what is happening behind it:


![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 19.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Now go between levels by entering the teleporter to see what happens. Notice the HUD appears only in <tt><b>rm_castle</b></tt> and then disappears. 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 20.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond:

We need the controller to persist just like the player so it carries to all levels. Open ObjGameController and click on the persistent radio button:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 21.`\|`SPCRK`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Now test the game again and voila, the HUD stays active on all rooms no matter how many times you go back and forth. 

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

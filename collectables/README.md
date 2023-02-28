![](../images/line3.png)

### Collectables

<sub>[previous](../basic-message/README.md#user-content-message-dialogue-box) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../collectables-ii/README.md#user-content-collectables-ii)</sub>

![](../images/line3.png)

Lets add an object for the player to collect in the game.  We will use a rare gem.


<br>

---


##### `Step 1.`\|`TDAAG`|:small_blue_diamond:

Download [spr_gem.png](images/spr_gem.png) as a collectible for the game. Right click on the **Sprites** title in the **Resources** menu and select **Create | Sprite**.  Press the **Import** button and navigate to the sprite you just doownloaded. Name the sprite `spr_gem`.

![download spr_gem.png and assign to sprite](images/sprGem.png)

![](../images/line2.png)

##### `Step 2.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: 

Repeat the above and create a new **Sprite** then import [spr_gem_hud.png](images/spr_gem_hud.png), naming it `spr_gem_hud`.	

![download spr_gem_hud.png and assign to sprite](images/sprGemHud.png)

![](../images/line2.png)

##### `Step 3.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now we have a lot of sprites in our sprites folder, lets clean them up. Right click on the **Sprites** title in the **Resources** menu and select **Add Group**. Call it `Player`. Drag the 3 player sprites into the folder.

https://user-images.githubusercontent.com/5504953/153754499-c3fb6628-cf69-4596-bd88-a2ffba3ad973.mp4

![](../images/line2.png)

##### `Step 4.`\|`TDAAG`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Organize the rest of the sprite folder to your liking.

https://user-images.githubusercontent.com/5504953/153754704-716a7d58-6e16-444f-8736-b315b2d4cc27.mp4

![](../images/line2.png)

##### `Step 5.`\|`TDAAG`| :small_orange_diamond:

Organize your game objects into groups as well.

![create groups to hold objects](images/organizeObjs.png)

![](../images/line2.png)

##### `Step 6.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond:

Add a new Game Object and call it `obj_gem` and bind `spr_gem` to it and place it in a logical group.

![add obj_gem and assign spr_gem to it](images/objGem.png)

![](../images/line2.png)

##### `Step 7.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Add a new Game Object and call it `obj_gem_hud` and bind `spr_gem_hud` to it and place it in a logical group.

![add obj_gem_hud and assign spr_gem_hud to it](images/objGemHud.png)

![](../images/line2.png)

##### `Step 8.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

We want to add the full size gems into the rooms to collect.  First lets center both horizontally and vertically the **Origin** on `spr_gem`. Add a new **Instance Layer** called `PickUps` to both rooms and move just above **Backgrounds**. Now lets add 5 gems in `rm_castle` and 5 gems in `rm_desert` to this new layer.

https://user-images.githubusercontent.com/5504953/153755297-e9a06c22-b1f4-40b2-9af9-852538eea9aa.mp4

![](../images/line2.png)

##### `Step 9.`\|`TDAAG`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now the player will be picking up these gems, so they will disapear when the player collects them. We don't want to have a variable saved on the gem object itself. Lets keep track of it in a game controller. Add a new game object and call it `obj_game`. Create a **Group** called `Logic` to put it in.  Do NOT assign a sprite to it.

![add obj_game to Logic group](images/obj_game.png)

![](../images/line2.png)

##### `Step 10.`\|`TDAAG`| :large_blue_diamond:

Add a **Create** event to `obj_game` and add a variable called `gems` to track how many gems we have collected. We start with `0` gems.

![add gems variable](images/gems0.png)

![](../images/line2.png)

##### `Step 11.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: 

Drag and drop **obj_game** into `rm_castle` anywhere in the level on the **Instances** layer.

![add obj_game to Intances layer](images/objGameInLevel.png)

![](../images/line2.png)


##### `Step 12.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now when the gem collides with the player we want the `gem` count to go up by `1` and the gem in the level to dissapear. Create a new collision collision on the **obj_gem** object with the player and add a point, destroy the gem and add an effect to sell the interaction and give positive feedback to the user action:

![add 1 when colliding with gem and destroy objectx with effect](images/gemCollision.png)

![](../images/line2.png)

##### `Step 13.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Go and collect the gems.  They should disappear with a simple particle effect like so:

https://user-images.githubusercontent.com/5504953/153760303-8d051614-ec7d-4cce-b7a6-a6560890a7d5.mp4

![](../images/line2.png)

##### `Step 14.`\|`TDAAG`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now we are going to draw a small version of the gem on the Heads Up Display (HUD) on the top of the screen. We will use our **obj_game** for this and add a **Draw GUI** event type. First lets draw a rectangle to higlight the HUD. 

![add solid rectanble background for hud](images/addHudBackground1.png)

![](../images/line2.png)

##### `Step 15.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: 

v Look at the HUD.  It is a bit ugly and you can't see what is happening behind it.  

![solid hud background in game](images/solidMenu.png)


![](../images/line2.png)

##### `Step 16.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

I don't like fact that the blue obscures the game screen. Lets make it transluscent. 
		
Lets look at the manual for [draw_set_alpha(real)](https://docs.yoyogames.com/source/dadiospice/002_reference/drawing/colour%20and%20blending/draw_set_alpha.html). Now the tricky thing is that if you don't *reset* the alpha back to 1` it will affect every other sprite that it gets to after it draws the hud. This might include game objects in the room.  The draw event carries over to all future draw events that come after it.  Open up **obj_game | Draw GUI** script and add the alpha. Don't forget to reset it so you don't affect the alpha of future draw events for other objects.

![draw alpha hud and reset to 1](images/drawAlpha.png)

![](../images/line2.png)

##### `Step 17.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Look at the HUD.  Now that is a lot better as you can still see behind the HUD.

![hud with alpha in game](images/alphaHud.png)

![](../images/line2.png)

##### `Step 18.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now lets add a visual representation of the gems you collected.  First lets change the color to white an draw a title: "Gems: ".  Then lets loop through the `obj_game` gems and draw them one next to the other.  We will us the [draw_sprite(sprite, subimg, x, y)](https://docs.yoyogames.com/source/dadiospice/002_reference/drawing/drawing%20sprites%20and%20backgrounds/draw_sprite.html) function to perform this action.

![draw gem sprite in hud](images/drawGemSprite.png)

![](../images/line2.png)

##### `Step 19.`\|`TDAAG`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now go between levels by entering the teleporter to see what happens. Notice the HUD appears only in **rm_castle** and then disappears in the next room. In fact we get a crash with an error message when we collect a gem in the sand level. 

https://user-images.githubusercontent.com/5504953/153761422-6cdbc248-04fd-43f8-bf5f-3c42cacf7a0b.mp4

![](../images/line2.png)

##### `Step 20.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond:

We need the controller to persist just like the player so it carries to all levels. Open **obj_game** and click on the **Persistent** radio button:

![change obj_game to persistent](images/persistentGame.png)

![](../images/line2.png)

##### `Step 21.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now test the game again and voila, the HUD stays active on all rooms no matter how many times you go back and forth. But there is a problem.  It doesn't remember which gems were collected in each room they get reset. So you can just keep collecting new ones for ever as the room's reset their state every time we change rooms.

https://user-images.githubusercontent.com/5504953/153761762-a7960f32-8ddd-4288-9927-c4959cfb64ee.mp4

![](../images/line2.png)

##### `Step 22.`\|`TDAAG`| :large_blue_diamond: :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Select the **File | Save Project** then press **File | Quit** to make sure everything in the game is saved. If you are using **GitHub** open up **GitHub Desktop** and add a title and longer description (if necessary) and press the <kbd>Commit to main</kbd> button. Finish by pressing **Push origin** to update the server with the latest changes.

![save commit and push to github](images/github.png)
___


![](../images/line.png)

<!-- <img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - Collectables II"> -->

![next web page of walkthrough](images/banner.png)

![](../images/line.png)

| [previous](../basic-message/README.md#user-content-message-dialogue-box)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../collectables-ii/README.md#user-content-collectables-ii)|
|---|---|---|

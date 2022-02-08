<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Audio SFX

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Now I am generally happy with what we have done to date so lets add audio.  Even though there is a lot more we can do, we will wrap up this tutorial by adding sound to the game. If the core mechanic does not include audio, we typically wait until we are happy with what we have before we add audio. 

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

OK, lets import three button sounds.  One for stepping on the button and holding it, one for selecting it and one for walking off of it.  Lets start by finding the location of <tt><b>TutorialResources | Audio | snd_button_hold.wav</b></tt> in the browser (or click <a href="gms2tutorials:///ShowFiles?path=../TutorialResources/Audio/snd_button_hold.wav">here</a>). Right click on <tt><b>Sounds</b></tt> and select <tt><b>Create Sound</b></tt>.  Press the three dots and select the above file. Call it <tt><b>snd_button_hold</b></tt>.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

	Repeat and add another sound for <tt><b>snd_button_pressed</b></tt>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Repeat and add another sound for <tt><b>snd_button_release</b></tt>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

	Now lets call the sound effects, put them as a second priority and set them to non-looping.  Open <tt><b>scr_fe_text</b></tt> and add a sound for each image change state of the buttons in the FE.
<h3><tt><b>Helper | scr_fe_text</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Walk around and press the buttons in the FE screen and listen to the three audio states.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

	Lets add a sound when leaving the credits screen.  Open <tt><b>obj_credits_conroller</b></tt> and add:

		<h3><tt><b>obj_credits_controller</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Lets make a footstep sound in the game. Create a new sound and press the three dots icon to load <tt><b>snd_footsteps.wav</b></tt> and call it <tt><b>snd_footsteps</b></tt>. 

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open <tt><b>scr_player_movement</b></tt> and add a footstep sound to the game.  Make sure you don't launch the sound multiple times by checkint to see if it is already playing and stop playign footsteps when the player stops:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Confirm that quitting the credits screen makes a sound and also make sure that footsteps work in the front end and game:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Now lets have a sound for picking up the game. Create a new Sound file and load file <tt><b>snd_gem.wav</b></tt> and call it <tt><b>snd_gem</b></tt>.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

Then open the gem object and add to the collision event script and play the gem sound:
	<h3><tt><b>obj_gem: Collision | obj_player</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now lets have a final sound effect for walking through the teleporter. Create a new Sound file and load file <tt><b>snd_transporter.wav</b></tt> and call it <tt><b>snd_transporter</b></tt>.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now lets open up <tt><b>obj_player</b></tt> collision event with the transporter and play the transporter sound.  Also, lets stop the footstep sound from playing:
		<h3><tt><b>obj_player: Collision | obj_teleporter</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

	Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Make sure the gem and teleporter sound play.  Next up lets add music to the game.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Lets import the two final sounds in the game one called <tt><b>snd_music</b></tt> and the other called <tt><b>snd_enemy_chase</b></tt>.

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 16.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond:   :small_blue_diamond: 

Open <tt><b>obj_fe_start</b></tt> and check to see if music is playing.  If not play the music.  This looping will carry over room changes so we can just let it go.
		<h3><tt><b>obj_fe_start: Create</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 17.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Open the zombie step event and when in chase turn off music and start chase sound.  When returning turn off chase sound and play music again.  

<h3><tt><b>obj_zombie: Step Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 18.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Make sure the chase sound and music works.  That is it for this tutorial, thanks for getting this far!

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

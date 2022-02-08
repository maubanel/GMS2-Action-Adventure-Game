<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Basic Message Dialogue Box

<sub>[previous](../refactor-player/README.md#user-content-refactoring-player-step-events) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

I have provided some code to make dialogue boxes easier to implement.  Lets just display some text in a pop up box.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

Lets import a sprite to act as an NPC.  This character will not animate, we will just talk to it.  Right click on the **Sprites** title in the **Resources** menu and select **Create | Sprite**.  Call it `spr_npc_tiger`.  Download the artwork [spr_npc_tiger.png](images/spr_npc_tiger.png). Press the <kbd>Import</kbd> button and selet the downloaded **pr_npc_tiger.png sprite**.

![alt_text](images/downloadNpcTiger.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

Now lets create an object from this sprite. Right click on the **Objects** title in the **Resources** menu and select **Create | Object**. Bind the `spr_npc_tiger` to this object and call it `obj_npc_tiger`.


![alt_text](images/obj_tiger.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open **rm_castle** and add a new **Instance Layer** underneath the **Instance** with the player.  Call it `NPC_Instances`.  Drag a copy of the tiger to the top of the castle.

![drag tiger into castle](images/tigerToRoom.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

There are 7 scripts in the **Scripts | Messages** folder.  You will be using 4 of them and the messaging system uses the other three.  The 4 we care about are:

* `draw_dialogue_message(x, y, text, id, player_id, space_above, is_random, typewriter_delay)` is used to display a simple message box.  It draws a message box above the character that is speaking and accepts either a simple string or an array of multiple strings.  If there is more than one string then they are all played before the menu closes. 
* `draw_dialogue_question(x, y, text, id, player_id, space_above, typewriter_delay)` has a text array with three components.  This function asks a yes/no question with two answers basing on how the player answers in the game. The first array is a question, the second array string is an answer to the affirmative (player presses yes) and the final third string array is for the negative when the player presses no.
* `draw_dialogue_input(x, y, question, variable, id, player_id, space_above, typewriter_delay)` asks a quetion and allows the user to input an answer in a text box with the keyboard.  This requires a question in an array or string and an answer to be a single string array.</li>
* `scr_message_number()` returns a number of which message is being displayed.  This allows you to put logic in the character with the text box to make decisions on what should be displayed depending how many times the player has chatted with the character.

Lets start with drawing a simple message.  Add a new create event to `obj_npc_tiger`.  We will do the most simple type of message by just displaying a string.  We will add a basic salutation that the NPC initially asks you.

We will trigger the box when the player collides with the collision volume of the tiger npg.  Open up **obj_tiger_npc** and add a **Collision | obj_player**. We pass the position of the npc to the messaging system, the text message as a string, the id of the instance of the npc and the id of the instance of the player that has triggered the event. We put a margin of 32 pixels above the NPC to separate its head from the message box.  We set is_random to false as since there is only one message there is no need to randomize the one we play.  We set the typewrite effect to false for now.

![tiger player collision text](images/tigerPlayerCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Run into the NPC and see the dialogue message pops up.  There are two ways to close the message box.  Either hit the <kbd>Enter</kbd> button or walk outside of the collision volume and in both cases the message box dissapears.  There is a 3 second cool down period to where another message box will not appear.

https://user-images.githubusercontent.com/5504953/152686410-dce8f458-928b-416b-9749-ecbbe72703f3.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 6.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond:

Lets add the typewriter effect to game.  Go back to the collision event in the npc and change the typewiter_delay to 2 frames between letters.

![add 2 frame delay for typewriter effect](images/typewriterMessage.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 7.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Run into the NPC and see the dialogue message pops up.  Now the text appears slowly. You can't skip the message box until the typewriter completes.  Pressing **Enter** button fast forwards and finishes the typing skipping the effect. The next **Enter** will close the message box. 

https://user-images.githubusercontent.com/5504953/152686664-215682b8-d70d-46f3-9972-6e5c4a7f2258.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 8.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Please note that it is up to you to determine if your text fits within the one box.  If your message takes more room it will run out the bottom of the box.  You have the ability to split this longer message into multiple messages in an array.  

An array is a simple list.  An array allows one variable name to hold multiple instances of the same data type.  We identify an array entry from the list with square brackets and the list number inside for example `sample_array[3]` would be the fourth item in an array called `sample_array`.  Why fourth?  We always start the array with [0] so the first time in the array would be `sample_array[0]`. 

Open up **obj_npc_tiger** and press the <kbd>Add Event</kbd> and select a **Create** event. Lets add an array to the npc's create event of various messages that would take more than one message box to display all of them.  They are also separate thoughts.

![add array of messages](images/addCreateMessage.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 9.`\|`SPCRK`| :small_orange_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Open the **obj_npc_tiger | Collision**  event and alter which message to pass.  We want to pass the entire array so we use the array name without the brackets so it sends the entire list to the function. Lets randomize the order.
![call message array with randomness](images/callArrrayMessages.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 10.`\|`SPCRK`| :large_blue_diamond:

Now you will see that it displays all the messages in random order before the message disappears.  Notice that the icon is an arrow when there is a message that is coming up.

https://user-images.githubusercontent.com/5504953/152687270-868137f7-623d-4378-83e1-a682aca6e028.mp4


<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 11.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: 

We have included a script that will return which message number is going displayed to allow the user to display a new message.  The script `scr_message_number()` returns which message number is being displayed.  Open the **obj_player | Create** event and add a message. 

The open up the **obj_player | Collision**  event and string the last two messages together using `scr_message_number()`.

![add salutation message to create](images/addSalutation.png)

![order two messages in a row](images/firstMessageCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>


##### `Step 12.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: 

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game.

https://user-images.githubusercontent.com/5504953/152710591-c3889d20-b70f-4883-a895-86337d10593e.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 13.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Now we will be asking a yes/no question.  This means we need to pass the message function an array of strings with the question in slot [0], the positive answer if the player selects yes in slot [1] and the no answer if the player selects no in slot [2].  

Open the **obj_npc_tiger | Create** event and add a question array with a question, a positive answer, and a negative answer.

![add question and answer to npc](images/addQuestions.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 14.`\|`SPCRK`| :large_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:  :small_blue_diamond: 

Change the condition on the multiple question from `>=` to `==`.

Add the method `draw_dialogue_question(x, y, text, id, player_id, space_above, typewriter_delay)()` that is the same as the above parameter minus the randomize, as this will only take one question. The text argument HAS to be an array and has to contain 3 strings.  Open up `obj_npc_tiger | Collision` and add a third question message.

![add draw question to collision event](images/askQuestionCollision.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 15.`\|`SPCRK`| :large_blue_diamond: :small_orange_diamond: 

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game.

The second message is a question that you can answer with Y or N by selecting the button with the arrow keys and pressing enter. There is a problem though you still move the player.



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

| [previous](../refactor-player/README.md#user-content-refactoring-player-step-events)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

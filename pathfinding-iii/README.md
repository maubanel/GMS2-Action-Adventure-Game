<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Pathfinding Zombie III

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Chapter introduction here.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

We want to find the nearest point on the path to return to.  We have provided a function called <tt><b>Helper | scr_return_to_path(path, interval)</b></tt>.  You pass it the path you would like to search for the closest point and how many intervals (a number between 0 and 1) you want to check for.  If you set the interval to .1 this would split the path into 10 parts and check it in 10 points evenly spaced.  This function returns an array with the closest (x, y) position on the path to return to as well as where along the path (a number between 0 and 1).  Lets initialize this array in the zombie create event:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

We need to end the path of the zombie chasing.  We change the state to <tt><b>RETURN</b></tt>. We call the function <tt><b>scr_return_to_path(path, interval)</b></tt> and pass it our initial patrolling enemy path <tt><b>path_enemy</b></tt> and check it 20 times along this long path (interval set to <tt><b>.05</b></tt>).  We get the return position for both x and y then set a new path and start it.  Open <tt><b>scr_enemy_chanse</b></tt> and add at the bottom:

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Then we need to open up the zombie step event and add at the bottom a check to see if we are close enough to the path to return to <tt><b>PATROL</b></tt> state.  If we are we end the previous path, start the original patrol path, update the position to the closest point that the player is at then change the <tt><b>state</b></tt> back to <tt><b>CONTROL</b></tt>.
			<h3><tt><b>obj_zombie: Step Event</b></tt></h3>

![alt_text](images/.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Run the game by pressing the <img style="vertical-align:middle" src="http://marcaubanel.com/gamemaker/GMS2-Images/Shared/Icon_RunProject.png" alt="play button icon"> <tt><b>Play Button</b></tt>. Run up to the zombie then run away from it. The zombie will give up and return to the closest patrol spot then go back to patrolling.

![alt_text](images/.png)

___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

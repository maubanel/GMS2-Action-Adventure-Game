<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

### Pathfinding Zombie III

<sub>[previous](../) • [home](../README.md#user-content-gms2-ue4-space-rocks) • [next](../)</sub>

<img src="https://via.placeholder.com/1000x4/45D7CA/45D7CA" alt="drawing" height="4px"/>

Returning zombie to path.

<br>

---


##### `Step 1.`\|`SPCRK`|:small_blue_diamond:

We want to find the nearest point on the path to return to.  We have provided a function called **Helper | scr_return_to_path(path, interval)**.  You pass it the path you would like to search for the closest point and how many intervals (a number between 0 and 1) you want to check for.  If you set the interval to .1 this would split the path into 10 parts and check it in 10 points evenly spaced.  This function returns an array with the closest (x, y) position on the path to return to as well as where along the path (a number between 0 and 1).  Lets initialize this array in the zombie create event:

![add variables for path returning](images/addPositionToPath.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 2.`\|`FHIU`|:small_blue_diamond: :small_blue_diamond: 

We need to end the path of the zombie chasing.  We change the state to `return_to_path`. We call the function `scr_return_to_path(path, interval)` and pass it our initial patrolling enemy path `path_enemy` and check it `20` times along this long path (interval set to `.05`).  We get the return position for both x and y then set a new path and start it.  Open `enemy_chase` and add at the bottom:

![add scr_return_to_path](images/returnToPath.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 3.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Now you can escape from the chasing player and they will return to the nearest point on their path.  The zombie will get stuck there as we need to switch back to patrol.

https://user-images.githubusercontent.com/5504953/154773631-adc64040-e78f-4dc8-ab3e-049f498a7f29.mp4

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 4.`\|`SPCRK`|:small_blue_diamond: :small_blue_diamond: :small_blue_diamond: :small_blue_diamond:

Then we need to open up the zombie step event and add at the bottom a check to see if we are close enough to the path to return to `patrol` state.  If we are we end the previous path, start the original patrol path, update the position to the closest point that the player is at.  Open up **obj_zombie: End Step** event and make the addition.

![return to path in zombie end step](images/returnToPathEndStep.png)

<img src="https://via.placeholder.com/500x2/45D7CA/45D7CA" alt="drawing" height="2px" alt = ""/>

##### `Step 5.`\|`SPCRK`| :small_orange_diamond:

Now *press* the <kbd>Play</kbd> button in the top menu bar to launch the game. Run up to the zombie then run away from it. The zombie will give up and return to the closest patrol spot then go back to patrolling. That is it for pathfinding a lot of work, but rewarding!


___


<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

<img src="https://via.placeholder.com/1000x100/45D7CA/000000/?text=Next Up - ADD NEXT PAGE">

<img src="https://via.placeholder.com/1000x4/dba81a/dba81a" alt="drawing" height="4px" alt = ""/>

| [previous](../)| [home](../README.md#user-content-gms2-ue4-space-rocks) | [next](../)|
|---|---|---|

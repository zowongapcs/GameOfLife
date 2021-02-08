![](Gospers_glider_gun.gif)   
Game of Life
==================

The Game of Life probably isn't what you think, it's a program that simulates how cells might grow or die based on a small set of rules. It was created by a British mathematician named John Conway and is sometimes called "Conway's Game of Life." This description and the image above are from [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life):

>Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:  
>
>1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.   
>2. Any live cell with two or three live neighbours lives on to the next generation.   
>3. Any live cell with more than three live neighbours dies, as if by overpopulation.   
>4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.   
>
>These rules, which compare the behavior of the automaton to real life, can be condensed into the following:  
>
>1. Any live cell with two or three live neighbours survives.   
>2. Any dead cell with three live neighbours becomes a live cell.   
>3. All other live cells die in the next generation. Similarly, all other dead cells stay dead.  

You can find examples and descriptions of the Game of Life at the following websites:   
[Play the Game of Life online](https://playgameoflife.com/)   
[What is the Game of Life?](http://www.math.com/students/wonders/life/life.html)   
[Conway's Game of Life on Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)   

Install the Guido GUI Library
--------------------------------
If you are running Processing on your PC or Mac, you will need to install the library. (You can skip this step if you are working online on [repl.it](https://repl.it/@MrSimonLowell/GameOfLifeBase)) To install it, start *Processing* and choose *Sketch | Import Library | Add Library*. Type *Guido* in the search box, the click on *Guido by Florian Jenett* and then click *Install*.

Program Requirements
--------------------
1. Your Game of Life will be a two dimensional array of buttons
2. If the user clicks on a button it should turn that cell on and off
3. Make sure all class member variables and methods are labeled appropriately as either `public` or `private`
4. The finished program should correctly implement the rules of the Game of Life

Suggested steps to completing this assignment:
----------------------------------------------
1. Fork and clone down this repository (or if you are working online, fork [this repl.it](https://repl.it/@MrSimonLowell/GameOfLifeBase)). 
2. Under the comment `//Declare and initialize constants NUM_ROWS and NUM_COLS = 20` create two integer constants `NUM_ROWS` and `NUM_COLS` and initialize them each with the value 20 (using constants will make things much easier if later you want to change the size of the grid).  
3. Under the comment `//your code to initialize buttons goes here` *use the constants* `NUM_ROWS` and `NUM_COLS` to initialize the 2d array `buttons` to have 20 rows and 20 columns
4. Just under that, use nested loops to create a `new Life` for each row column pair. Be sure to use the constants in your loop.
5. Uncomment the first two lines in the Life constructor `public Life (int row, int col)`
6. In `draw` under the comment `//use nested loops to draw the buttons here` write nested loops (again using the constants) to draw each button to the screen. 
7. Run the program, you should now see a random grid of buttons similar to the picture below. If you click on the button it should turn off and on.   
![](GameOfLife1.gif)   
8. Now that we have a grid of buttons, we'll start to implement the rules of the Game of life. Find the function `public boolean isValid(int r, int c)` and complete it *using the constants* so that it returns `true` if (r,c) is *valid*. In this case *valid* means it exists, it's a row colomn pair that is on the grid and not outside of the edges. If we have 20 rows and 20 columns, valid positions have row and column numbers from 0 to 19 inclusive. You may find first completing the codingbat problem [isValidOn5x5](https://codingbat.com/prob/p288919?parent=/home/simona1@sfusd.edu/minesweeper) to be helpful.
9. Next, find the function `public int countNeighbors(int row, int col)`. Complete it so that it returns the number of neighboring life cells that are alive or `true`. You may find first completing the codingbat problem [countNeighborTrues](https://codingbat.com/prob/p224820?parent=/home/simona1@sfusd.edu/minesweeper) to be helpful. While it is possible to write this function using nested loops, I find it much easier to code with 8 `if` statements, one for each possible neighbor. You will first have to make sure that neighbor is valid *before* you check to see if it is `true`, otherwise you may go out of bounds. As an example you could check if the neighbor above was true with code like `buttons[r-1][c].getLife()==true`.
10. We'll need a "buffer", a place to store the current state of the game. In `setup` use the constants initialize the variable `buffer` to be a new 2d array of type `boolean`
11. Write the functions `copyFromBufferToButtons()` and `copyFromButtonsToBuffer()`. They will use the constants and nested loops to copy all `true`s and `false`s from a 2d array of booleans to the `buttons` grid and vice versa.
12. You are just about done! Now go back to the nested loops you wrote on step 6. Inside the loops, just before you draw the button check:
  * If the `button` has exactly 3 neighbors, set the corresponding row and column in the buffer to `true`
  * If the `button` has two living neighbers and the `button` is alive, set the corresponding row and column in the buffer to `true`
  * In all other circumstances, set the corresponding row and column in the buffer to `false`

Samples of Student Work
-----------------------
*none yet!*

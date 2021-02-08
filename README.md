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
The Game of Life is well suited to using a two dimensional array of buttons. We'll be using a GUI library called Guido to create the buttons. To install it, start *Processing* and choose *Sketch | Import Library | Add Library*. Type *Guido* in the search box, the click on *Guido by Florian Jenett* and then click *Install*.

Program Requirements
--------------------
1. Your Game of Life will be a two dimensional array of buttons
2. If the user clicks on a button it should turn that cell on and off
3. Make sure all class member variables and methods are labeled appropriately as either `public` or `private`
4. The finished program should correctly implement the rules of the Game of Life

Suggested steps to completing this assignment:
----------------------------------------------
1. Fork and clone down this repository (or if you are working online, for [this repl.it](https://repl.it/@MrSimonLowell/GameOfLifeBase). As you work through the following steps, make sure that your program runs correctly before going to the next step.
2. Under the comment `//Declare and initialize constants NUM_ROWS and NUM_COLS = 20` create two integer constants `NUM_ROWS` and `NUM_COLS` and initialize them each with the value 20  
3. Under the comment `//your code to initialize buttons goes here` *use the constants* `NUM_ROWS` and `NUM_COLS` to initialize the 2d array `buttons` to have 20 rows and 20 columns
4. Just under that, use nested loops to create a `new Life` for each row column pair. Be sure to use the constants in your loop.
5. Uncomment the first two lines in the Life constructor `public Life (int row, int col)`
6. In `draw` under the comment `//use nested loops to draw the buttons here` write nested loops (again using your constants) to draw each button to the screen. 
7. Run the program, you should now see a grid of buttons. If you click on the button it should turn off and on.  
8. Use the constants initialize `buffer` to be a new 2d array of type `boolean`
9.  

More to come


Samples of Student Work
-----------------------
*none yet!*

import de.bezier.guido.*;
//Declare and initialize constants NUM_ROWS and NUM_COLS = 20
private LifeCell[][] buttons; //2d array of minesweeper buttons
private boolean[][] buffer; //2d array of booleans to store state of buttons array

void setup ()
{
    size(400, 400);
    textAlign(CENTER,CENTER);
    
    // make the manager
    Interactive.make( this );
    
    //your code to initialize buttons goes here
    
    //your code to initialize buffer goes here
    
}


public void draw ()
{
    background( 0 );
}
public boolean isValid(int r, int c)
{
    //your code here
    return false;
}
public int countNeighbors(int row, int col)
{
    int neighbors = 0;
    //your code here
    return neighbors;
}
public class LifeCell
{
    private int myRow, myCol;
    private float x,y, width, height;
    private boolean alive;
    
    public LifeCell ( int row, int col )
    {
        // width = 400/NUM_COLS;
        // height = 400/NUM_ROWS;
        myRow = row;
        myCol = col; 
        x = myCol*width;
        y = myRow*height;
        alive = false;
        Interactive.add( this ); // register it with the manager
    }

    // called by manager
    public void mousePressed () 
    {
        //your code here
    }
    public void draw () 
    {    
        if (alive != true)
            fill(0);
        else 
            fill( 100 );

        rect(x, y, width, height);
    }
    public boolean isAlive()
    {
        return alive;
    }
}

ArrayList<Shape> shapes = new ArrayList<Shape>(); // gets filled up with different shapes everytime the mouse button is clicked.
int counter;

void setup() 
{
    size(1024, 800);
    counter = 0; // counter decides what do display
}



void draw() 
{
    background(200);
  
    for (int i = shapes.size()-1; i >= 0; i--) 
    {
        shapes.get(i).move();
        shapes.get(i).display();
        
        if(shapes.get(i).isOffScreen())
        {
            shapes.remove(i);
        }
    }
}
void mousePressed()
{
    for(int i = 0; i < 100; i++)
    {
        shapes.add(new Shape(mouseX, mouseY));   
    }
    if (counter == 3)
    {
        counter = 0;
    }
    else counter++;
    
    print("counter: ", counter);
}

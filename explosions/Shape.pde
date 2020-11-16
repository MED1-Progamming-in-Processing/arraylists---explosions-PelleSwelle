class Shape 
{
    float x;
    float y;
    PVector position = new PVector(mouseX, mouseY);
    
    float gravity = 0.2;
    
    float xSpeed = random(-8, 8);
    float ySpeed = random(-8, 8);
    PVector speed = new PVector(xSpeed, ySpeed);
    
    
    int size = 20;
    int radius = size/2;
    PShape body;
    
    
    
    Shape(float _x, float _y)
    {
        this.position.x = _x;
        this.position.y = _y;
    }
 
    void move() 
    {
        position.add(speed);
        speed.y += gravity;
        //x += xSpeed;
        //y += ySpeed;    
    }

    void display() 
    {
        //shape(body);
        if (counter == 0)
        {
            ellipse(position.x, position.y, size, size);
        }
        else if (counter == 1)
        {
            rect(position.x, position.y, size, size);
        }
        else if (counter == 2)
        {
            ellipse(position.x, position.y, size*2, size*2);
        }
        else if (counter == 3)
        {
            triangle(position.x-size, position.y-size, position.x, position.y + size, position.x+size, position.y+size); 
        }
        
    }
  
    boolean isOffScreen()
    {
        return x < 0 || x > width || y < 0 || y > height;
    }
}

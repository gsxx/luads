
--rectangle 
r= {
    x0=0,
    y0=0,
    x1=16,
    y1=16,
    color=Color.new(31,31,31)
    --Color.new256(255,255,255)
}

canvas = Canvas.new()                               -- Create a new canvas

nb = 0                                                      -- This will count how many images have been loaded and displayed

while not Keys.held.Start do
	Controls.read()
    obj = screen.drawRect(
        SCREEN_UP,
        r.x0,
        r.y0,
        r.x1,
        r.y1,
        r.color
    )
    Canvas.add(canvas, obj)                                                                                             -- Add this object to the canvas
    nb = nb + 1
    
    Canvas.draw(SCREEN_UP, canvas, 0, 0)                                                                     -- Display the canvas
	screen.print(SCREEN_DOWN, 0, 0, "Frames Per Second: "..NB_FPS)
	screen.print(SCREEN_DOWN, 0, 8, "IMG: "..nb)
	screen.print(SCREEN_DOWN, 0, 50, "Press START to quit")
    
	render()
end

Canvas.destroy(canvas)                                                                                                  -- Destroy the canvas
canvas = nil
nb = nil

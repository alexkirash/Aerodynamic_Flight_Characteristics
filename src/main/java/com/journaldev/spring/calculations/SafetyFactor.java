package com.journaldev.spring.calculations;

import com.journaldev.spring.model.Plane;

public class SafetyFactor {
	
	int i = 0;
	private double weight;
	private double height;
	private double rangeOfFlight;
	private double dragForce;
	private double pitch;
	private double momentOfInertia;
	
	public void calculatinFormula(){

		 double temp = (double) (weight * height/(rangeOfFlight - dragForce) + pitch/2.0 + momentOfInertia * 10 + Math.sqrt(pitch));
	
	}
	/* 
	 
    private Polygon catenary = new Polygon();

    public Catenary(String title) {
        super(title);
        setSize(WIDTH, HEIGHT);
        for (double x = MIN_X; x <= MAX_X; x += 0.1) {
            double y = Math.cosh(x);
            int scaledX = (int) (x * WIDTH/(MAX_X - MIN_X) + WIDTH/2.0);
            int scaledY = (int) (y * HEIGHT/MAX_Y);
            // В компьютерной графике ось y направлена вниз, а не вверх
            // (как в Декартовых координатах), поэтому необходимо изменить знак
            scaledY = HEIGHT - scaledY;
            catenary.addPoint(scaledX, scaledY);
        }
    }

    public static void main(String[] args) {
        Frame f = new Catenary("Catenary");
        f.setVisible(true);
    }

    public void paint(Graphics g) {
        g.drawPolygon(catenary);
    }
}
*/


	@Override
	public String toString() {
		return " weight=" + weight + ", height=" + height + ", rangeOfFlight=" + rangeOfFlight  +  ", dragForce=" + dragForce + ", pitch=" + pitch + ", momentOfInertia=" + momentOfInertia;
	}
}
	

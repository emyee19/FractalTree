private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(600,680);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320, 580, 320, 480);  
	drawBranches(320, 480, 100, 3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke(255, 154, 14, 100);

	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;


	// branchLength = branchLength * fractionLength;


	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle1) + x);
	int endY2 = (int)(branchLength*Math.sin(angle1) + y);

	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);

	if(branchLength >= smallestBranch) {

	
	drawBranches(endX1, endY1, branchLength*fractionLength, angle1);
	drawBranches(endX2, endY2, branchLength*fractionLength, angle2);
	}
	

} 

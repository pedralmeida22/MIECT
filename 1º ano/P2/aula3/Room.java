class Room{
	private String roomType;
	private Point bottomLeft;
	private Point topRight;
	
	public Room(Point bottomLeft, Point topRight, String roomType){
		this.roomType = roomType;
		this.bottomLeft = bottomLeft;
		this.topRight = topRight;
	}
	public String roomType(){
		return roomType;
	}
	public Point bottomLeft(){
		return bottomLeft;
	}
	public Point topRight(){
		return topRight;
	}
	public Point geomCenter(){
		return bottomLeft.halfWayTo(topRight);
	}
	public double area(){
		double comp = topRight.y() - bottomLeft.y();
		double lar = topRight.x() - bottomLeft.x();
		
		return comp * lar;
	}
}

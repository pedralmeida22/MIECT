class House{
	private String homeType;
	private int nDivisions = 0;
	private int moreDivisions;
	private Room[] divisions;
	
	public House(String homeType){
		this.homeType = homeType;
		divisions = new Room[8];
		moreDivisions = 4;
	}
	public House(String homeType, int nDivisions, int moreDivisions){
		this.homeType = homeType;
		this.moreDivisions = moreDivisions;	
		this.divisions = new Room[nDivisions];	
	}
	public void addRoom(Room room){
		if(nDivisions == divisions.length){
			Room[] temp = new Room[divisions.length + moreDivisions];
			System.arraycopy(divisions, 0, temp, 0, divisions.length);
			divisions = temp;
		}
		divisions[nDivisions] = room;
		nDivisions++;
	}
	public int size(){
		return nDivisions;
	}
	public int maxSize(){
		return divisions.length;
	}
	public Room room(int i){
		return divisions[i];
	}
	public double area(){
		double areaTemp = 0;
		for(int i = 0; i < nDivisions; i++){
			areaTemp = areaTemp + divisions[i].area();
		}
		return areaTemp;
	}
	public double averageRoomDistance(){
		double distTemp = 0;
		for(int i = 0; i < nDivisions - 1; i++){
			for(int u = i + 1; u < nDivisions; u++){
				distTemp = distTemp + divisions[i].geomCenter().distTo(divisions[u].geomCenter());
			}
		}
		return distTemp;
	}
	public RoomTypeCount[] getRoomTypeCounts(){
		RoomTypeCount[] temp = new RoomTypeCount[nDivisions];
		int s = 0;
		
		for(int i = 0; i < nDivisions; i++){
			boolean alreadyExists = false;
			for(int x = 0; x < s; x++){
				if(temp[x].roomType.equals(divisions[i].roomType())){
					temp[x].count++;
					alreadyExists = true;
					break;
				}
			}
			if(!alreadyExists){
				temp[s] = new RoomTypeCount(divisions[i].roomType(), 1);
				s++;
			}
		}
		
		RoomTypeCount[] res = new RoomTypeCount[s];
		for(int i = 0; i < s; i++){
			res[i] = temp[i];
		}
		return res;
	}	
}


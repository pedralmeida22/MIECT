
import static java.lang.System.*;

public class House {

  public House(String houseType,int maxSize,int extensionSize) {
    this.houseType = houseType;
    this.extensionSize = extensionSize;
    rooms = new Room[maxSize];
    size = 0;
    doors = new Door[maxSize];
    numDoors = 0;
  }

  public House(String houseType) {
    this(houseType,8,4);
  } 

  public int size() {
    return size;
  }

  public int maxSize() {
    return rooms.length;
  }

  public Room room(int i) {
    return rooms[i];
  }

  public int addRoom(Room r) {
    if (size == rooms.length) extendHouse();
    rooms[size] = r;
    size++;
    
    return size-1;
  }

  private void extendHouse() {
    Room [] newRooms = new Room[rooms.length+extensionSize];
    arraycopy(rooms, 0, newRooms, 0, rooms.length);
    rooms = newRooms;
  } 

  private String houseType;
  private int extensionSize;
  private Room [] rooms;
  private int size;
  private Door [] doors;
  private int numDoors;

  public void addDoor(Door d) {
	  if(numDoors == doors.length){
		  Door[] newDoors = new Door[doors.length+extensionSize];
		  arraycopy(doors, 0, newDoors, 0, doors.length);
		  doors = newDoors;
	  } 
		doors[numDoors] = d;
		numDoors++;
  }

  public int numDoors() {
    return numDoors;
  }

  public int maxNumDoors() {
    return doors.length;
  }
	
	public int roomClosestToRoomType(String roomType){
		double minDist = 1000;
		double dist = 0;
		int indice = 0;
		for(int i = 0; i < size; i++){
			if(rooms[i].roomType().equals(roomType)){
				for(int j = 0; j < size; j++){
					if(i != j){
						dist = rooms[j].geomCenter().distTo(rooms[i].geomCenter());
						if(dist < minDist){
							indice = j;
							minDist = dist;
						}
					}
				}
			}
		}
		return indice;
	}
	public int maxDoorsInAnyRoom(){
		int [] countDoors = new int [size];
		
		for(int i = 0; i < size; i++){
			countDoors[doors[i].ri()]++;
			countDoors[doors[i].r2()]++;
		}
		int maxDoor = 0;
		int nDoors;
		for(int i = 0; i < size; i++){
			nDoors = countDoors[i];
			if(nDoors > maxDoor){
				maxDoor = nDoors;				
			}
		}
		return maxDoor;
	}

}


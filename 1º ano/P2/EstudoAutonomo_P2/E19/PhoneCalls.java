import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class PhoneCalls{
  static HashTable<String> names = new HashTable<String>(3000);
  static Queue<Call> calls = new Queue<Call>();
  
  public static void main(String[] args) throws IOException{
    assert args.length > 0 : "Sem arguentos!";
    
    for(int i = 0; i < args.length; i++){
      String arg = args[i];
      String[] sep = arg.split("\\.");


      if(sep.length > 1){
        String filetype = sep[sep.length-1];
        if(filetype.equals("cls")) readCLS(getValidFile(arg));
        else if(filetype.equals("nms")) readNMS(getValidFile(arg));
      }
      else{
        madeCalls(args[i]);
        receiveCalls(args[i]);        
      }
    }
  
  }

  public static File getValidFile(String filename) throws IOException{
    File f = new File(filename);

    if(!f.exists()){
      out.println("ERROR: file " + filename + "does not exists!");
      System.exit(1);
    }
    else if(!f.isFile()){
      out.println("ERROR: " + filename + "is not a file!");
      System.exit(2);
    }
    else if(!f.canRead()){
      out.println("ERROR: can not read " + filename + "!");
      System.exit(3);
    }

    return f;
  }

  public static void readCLS(File f) throws IOException{
    Scanner scf = new Scanner(f);

    while(scf.hasNextLine()){
      Call call =  new Call(scf.next(), scf.next(), scf.nextInt());
      printCalls(call);
      calls.in(call);
      scf.nextLine();
    }
  }

  public static void readNMS(File f) throws IOException{
    Scanner scf = new Scanner(f);

    while(scf.hasNextLine()){
      names.set(scf.next(), String.valueOf(scf.nextLine()));
    }
  }

  public static void printCalls(Call call){
    String og = call.origin();
    String dest = call.destination();

    if(names.contains(og)) og = names.get(og);
    else if(names.contains(dest)) dest = names.get(dest);

    out.println(og + " to " + dest + " (" + call.duration() + " seconds)");
  }

  public static void madeCalls(String num){
    String nume = "";
    if(names.contains(num)) nume = names.get(num);
    out.println("Calls made by: " + nume);

    for(int i = 0; i < calls.size(); i++){
      Call call = calls.peek();
      calls.out();
      calls.in(call);
      String dest = "phone " + call.destination();
      if(names.contains(call.destination())) dest = names.get(call.destination());
      if(call.origin().equals(num)){
        out.println("   - to " + dest + " (" + call.duration() + " seconds)");
      }
    }
  }
  public static void receiveCalls(String num){
    String nume = "";
    if(names.contains(num)) nume = names.get(num);
    out.println("Calls received by: " + nume);

    for(int i = 0; i < calls.size(); i++){
      Call call = calls.peek();
      calls.out();
      calls.in(call);
      String og = "phone " + call.origin();
      if(names.contains(call.origin())) og = names.get(call.origin());
      if(call.destination().equals(num)){
        out.println("   - from " + og + " (" + call.duration() + " seconds)");
      }
    }
  }

}


class Call{
  private String origin;
  private String destination;
  private int duration;

  public Call(String ori, String dest, int dur) {
    this.origin = ori;
    this.destination = dest;
    this.duration = dur;
  }
  
  public String origin(){ return origin; }
  public String destination() { return destination; }
  public int duration(){ return duration; }
  
}
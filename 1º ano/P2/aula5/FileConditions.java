//FILEHIDE
import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;

public class p52
{
  final static Scanner in = new Scanner(System.in);

  public static void main(String[] args)
  {
    if (args.length != 2)
    {
      err.println("Usage: java -ea p52 <source-file> <destination-file>");
      exit(1);
    }

    File fin = new File(args[0]);
    File fout = new File(args[1]);

    // Checking input file:

    if (!fin.exists())
    {
      err.println("ERROR: input file \""+args[0]+"\" does not exist!");
      exit(10);
    }

    if (fin.isDirectory())
    {
      err.println("ERROR: input file \""+args[0]+"\" is a directory!");
      exit(11);
    }

    if (!fin.canRead())
    {
      err.println("ERROR: cannot read from input file \""+args[0]+"\"!");
      exit(12);
    }

    // Checking output directory:

    String parentDir = fout.getParent();
    if (parentDir == null)
      parentDir = ".";
    File parent = new File(parentDir);

    if (!parent.exists())
    {
      err.println("ERROR: output directory \""+parentDir+"\" does not exist!");
      exit(20);
    }

    if (!parent.canWrite())
    {
      err.println("ERROR: cannot write to output directory \""+parentDir+"\"!");
      exit(21);
    }

    // checking output file:

    if (fout.exists())
    {
      if (fout.isDirectory())
      {
        err.println("ERROR: output file \""+args[1]+"\" is a directory!");
        exit(30);
      }
      if (!fout.canWrite())
      {
        err.println("ERROR: cannot write to output file \""+args[1]+"\"!");
        exit(31);
      }
      if (fout.equals(fin))
      {
        err.println("ERROR: input and output files are the same!");
        exit(32);
      }

      out.println("WARNING: output file \""+args[1]+"\" already exists!");
      String answer;
      do
      {
        out.print("Copy over existing file (y/n)? ");
        answer = in.nextLine();
      }
      while(!answer.equalsIgnoreCase("y") && !answer.equalsIgnoreCase("n"));

      if(answer.equalsIgnoreCase("n"))
        exit(2);
    }

    copyFile(fin, fout);
  }

  static void copyFile(File fin, File fout)
  {
    assert fin != null && fout != null;

    try
    {
      Scanner scf = new Scanner(fin);
      PrintWriter pwf = new PrintWriter(fout);
      while(scf.hasNextLine())
        pwf.println(scf.nextLine());
      pwf.close();
      scf.close();
    }
    catch(IOException e)
    {
      err.println("Error while copying file!");
      exit(2);
    }
  }
}

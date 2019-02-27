package pt.ua.prog2;
public class Contacto {
  private String nome;
  private String telefone;
  private String email;
  
  //Construtor 1
  public Contacto(String n, String tele){
	  nome = n;
	  telefone = tele;
  }
    //Construtor 2
  public Contacto(String n, String tele, String mail){
	  nome = n;
	  telefone = tele;
	  email = mail;
  }
  
  //getters
  public String eMail(){
	 return email; 
  }
  public String nome(){
	  return nome;
  }
  public String telefone(){
	  return telefone;
  }
}

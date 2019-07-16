package aula12.ex1;

import java.lang.reflect.*;
import java.util.*;

public class Reflection {
	
	static Scanner scan = new Scanner(System.in);	
	
	public static void main(String[] args) throws ClassNotFoundException {
		//System.out.print("Classe: ");
		//String input = scan.nextLine();
		//Class<?> sc = Class.forName("aula12.ex1." + input);
		Class<?> sc = Class.forName("aula12.ex1.Circulo");                 // apagar esta linha e descomentar em cima
																		  // para perguntar Class ao utilizador	
		int modifiers = sc.getModifiers();
		
		printModifiers(modifiers);
		printClass(sc);
		printFields(sc);
		printConstructors(sc);
		printMethods(sc);
		System.out.println("}");
		newInstance(sc);
	}

	@SuppressWarnings("rawtypes")
	private static void printClass(Class<?> sc) {
		System.out.print("class " + sc.getSimpleName());
		
		if(!(sc.getSuperclass().equals(null))) {
			System.out.print(" extends " + simpleName(sc.getSuperclass().getName()));
		}
		
		if(sc.getInterfaces().length != 0) {
			System.out.print(" implements ");
			Class[] interfaces = sc.getInterfaces();
			for(int i = 0; i < interfaces.length; i++) {
				if(i != 0)
					System.out.print(", ");
				System.out.print(simpleName(interfaces[i].getName()));
			}
		}
		System.out.println(" {");
	}

	private static void printModifiers(int modifiers) {
		if(Modifier.isPublic(modifiers)) {
			System.out.print("public ");
		}
		else if(Modifier.isPrivate(modifiers)) {
			System.out.print("private ");
		}
		else if(Modifier.isProtected(modifiers)) {
			System.out.print("protected ");
		}
		else if(Modifier.isAbstract(modifiers)) {
			System.out.print("abstract ");
		}
		else if(Modifier.isStatic(modifiers)) {
			System.out.print("static ");
		}
		else if(Modifier.isFinal(modifiers)) {
			System.out.print("final ");
		}
	}

	private static void printFields(Class<?> sc) {
		System.out.println("\n--------------------FIELDS-------------------");
		Field[] fields = sc.getDeclaredFields();
		for(Field f : fields) {
			int modifiers = f.getModifiers();
			printModifiers(modifiers);
			System.out.print(simpleName(f.getType().getName()) + " " + f.getName() + ";\n");
			
		}
	}

	@SuppressWarnings("rawtypes")
	private static void printMethods(Class<?> sc) {
		System.out.println("\n--------------------METHODS-------------------");
		Method[] methods = sc.getMethods();
		for(Method m : methods) {
			int modifiers = m.getModifiers();
			
			printModifiers(modifiers);
			
			System.out.print(simpleName(m.getReturnType().toString()) + " " + m.getName());
			
			Class[] parameters = m.getParameterTypes();
			
			System.out.print("(");
			for(int i = 0; i < parameters.length; i++) {
				if(i != 0) {
					System.out.print(", ");
				}
				System.out.print(simpleName(parameters[i].getName()));
			}
			System.out.println(") {...}\n");
		}
	}

	private static void printConstructors(Class<?> sc) {
		System.out.println("\n-------------------CONTRUCTORS-------------------");
			Constructor<?> constructors[] = sc.getConstructors();
			for(Constructor<?> c : constructors) {
				constructorToString(c);
				System.out.println("\n");
			}
	}
	
	@SuppressWarnings("rawtypes")
	private static void constructorToString(Constructor<?> c) {
		System.out.print(simpleName(c.getName()) + "(");
		
		Class[] constParameters = c.getParameterTypes();
		
		for(int i = 0; i < constParameters.length; i++) {
			if(i != 0)
				System.out.print(", ");
			System.out.print(simpleName(constParameters[i].getName()));
		}
		System.out.print(") {...}");
		
	}
	private static void newInstance(Class<?> sc) {
		Constructor<?> cs = null;
		Constructor<?> cs2 = null;
		try {
			cs = sc.getConstructor(new Class<?>[]{Double.TYPE});
			cs2 = sc.getConstructor(int.class, int.class, double.class);
		} catch (NoSuchMethodException | SecurityException e) {
			e.printStackTrace();
		}
		try {
			System.out.println("New object: " + cs.newInstance(new Object[]{20}));
			System.out.println("New object: " + cs2.newInstance(2,4,6));
		} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
				| InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	private static String simpleName(String s) {
		String[] split = s.split("\\.");
		if(split.length == 0) return s;
		return split[split.length-1];
	}
	

}

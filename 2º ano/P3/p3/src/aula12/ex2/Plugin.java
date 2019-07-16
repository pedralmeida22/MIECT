package aula12.ex2;

import java.io.File;
import java.util.*;

public class Plugin {

	public static void main(String[] args) {
		File proxyList = new File("reflection/plugins");
		ArrayList<IPlugin> plgs = new ArrayList<IPlugin>();
		for (String f: proxyList.list()) {
			try {
				plgs.add(PluginManager.load("reflection." + f.substring(0, f.lastIndexOf('.'))));
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		Iterator<IPlugin> it = plgs.iterator();
		while (it.hasNext()) {
			it.next().fazQualQuerCoisa();
		}
	}
}


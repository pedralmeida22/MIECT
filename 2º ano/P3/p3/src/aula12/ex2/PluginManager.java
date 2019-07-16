package aula12.ex2;

public abstract class PluginManager {
	@SuppressWarnings("deprecation")
	public static IPlugin load(String name) throws Exception {
		Class<?> c = Class.forName(name);
		return (IPlugin) c.newInstance();
	}
}
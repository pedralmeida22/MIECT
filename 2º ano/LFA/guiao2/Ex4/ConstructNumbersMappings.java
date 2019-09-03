import org.antlr.v4.runtime.tree.ParseTreeListener;
import java.util.*;

public class ConstructNumbersMappings extends NumbersBaseListener {

    protected Map<String, Integer> map = new HashMap<>();

    public boolean exists(String key) {
        assert key != null;
        return map.containsKey(key);
    }

    public int value(String key) {
        assert key != null;
        assert exists(key);
        return map.get(key);
    }

    @Override
    public void exitLine(NumbersParser.LineContext ctx) {
        String key = ctx.WORD().getText();
        int value = Integer.parseInt(ctx.NUM().getText());
        if (exists(key)) {
            System.err.println("ERROR: repeated key \"" + key + "\"");
        }
        map.put(key, value);
    }
}
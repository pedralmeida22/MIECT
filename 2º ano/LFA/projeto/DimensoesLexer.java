// Generated from Dimensoes.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class DimensoesLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, ID=3, NUM=4, ARRAY=5, WS=6, COMMENT=7, ERROR=8;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "ID", "NUM", "ARRAY", "WS", "COMMENT", "ERROR"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'='", "'->'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "ID", "NUM", "ARRAY", "WS", "COMMENT", "ERROR"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public DimensoesLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Dimensoes.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\n]\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\3\2\3\2\3\3\3\3"+
		"\3\3\3\4\3\4\7\4\33\n\4\f\4\16\4\36\13\4\3\4\5\4!\n\4\3\4\7\4$\n\4\f\4"+
		"\16\4\'\13\4\3\5\5\5*\n\5\3\5\6\5-\n\5\r\5\16\5.\3\5\5\5\62\n\5\3\5\6"+
		"\5\65\n\5\r\5\16\5\66\7\59\n\5\f\5\16\5<\13\5\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\3\6\3\6\3\6\3\7\6\7I\n\7\r\7\16\7J\3\7\3\7\3\b\3\b\3\b\3\b\7\bS\n"+
		"\b\f\b\16\bV\13\b\3\b\3\b\3\b\3\b\3\t\3\t\3T\2\n\3\3\5\4\7\5\t\6\13\7"+
		"\r\b\17\t\21\n\3\2\6\4\2C\\c|\4\2--//\3\2\62;\5\2\13\f\17\17\"\"\2f\2"+
		"\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2"+
		"\2\2\17\3\2\2\2\2\21\3\2\2\2\3\23\3\2\2\2\5\25\3\2\2\2\7\30\3\2\2\2\t"+
		")\3\2\2\2\13=\3\2\2\2\rH\3\2\2\2\17N\3\2\2\2\21[\3\2\2\2\23\24\7?\2\2"+
		"\24\4\3\2\2\2\25\26\7/\2\2\26\27\7@\2\2\27\6\3\2\2\2\30\34\t\2\2\2\31"+
		"\33\t\2\2\2\32\31\3\2\2\2\33\36\3\2\2\2\34\32\3\2\2\2\34\35\3\2\2\2\35"+
		"%\3\2\2\2\36\34\3\2\2\2\37!\7\61\2\2 \37\3\2\2\2 !\3\2\2\2!\"\3\2\2\2"+
		"\"$\t\2\2\2# \3\2\2\2$\'\3\2\2\2%#\3\2\2\2%&\3\2\2\2&\b\3\2\2\2\'%\3\2"+
		"\2\2(*\t\3\2\2)(\3\2\2\2)*\3\2\2\2*,\3\2\2\2+-\t\4\2\2,+\3\2\2\2-.\3\2"+
		"\2\2.,\3\2\2\2./\3\2\2\2/:\3\2\2\2\60\62\7\60\2\2\61\60\3\2\2\2\61\62"+
		"\3\2\2\2\62\64\3\2\2\2\63\65\t\4\2\2\64\63\3\2\2\2\65\66\3\2\2\2\66\64"+
		"\3\2\2\2\66\67\3\2\2\2\679\3\2\2\28\61\3\2\2\29<\3\2\2\2:8\3\2\2\2:;\3"+
		"\2\2\2;\n\3\2\2\2<:\3\2\2\2=>\7]\2\2>?\5\t\5\2?@\7.\2\2@A\5\t\5\2AB\7"+
		".\2\2BC\5\t\5\2CD\7.\2\2DE\5\t\5\2EF\7_\2\2F\f\3\2\2\2GI\t\5\2\2HG\3\2"+
		"\2\2IJ\3\2\2\2JH\3\2\2\2JK\3\2\2\2KL\3\2\2\2LM\b\7\2\2M\16\3\2\2\2NO\7"+
		"\61\2\2OP\7\61\2\2PT\3\2\2\2QS\13\2\2\2RQ\3\2\2\2SV\3\2\2\2TU\3\2\2\2"+
		"TR\3\2\2\2UW\3\2\2\2VT\3\2\2\2WX\7\f\2\2XY\3\2\2\2YZ\b\b\2\2Z\20\3\2\2"+
		"\2[\\\13\2\2\2\\\22\3\2\2\2\r\2\34 %).\61\66:JT\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
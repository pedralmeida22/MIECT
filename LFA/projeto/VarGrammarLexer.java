// Generated from VarGrammar.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class VarGrammarLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, COND_OPER=19, IDENTIFIER=20, INT=21, REAL=22, WHITESPACE=23, 
		COMMENT=24, ERROR=25;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
			"T__17", "COND_OPER", "IDENTIFIER", "INT", "REAL", "WHITESPACE", "COMMENT", 
			"ERROR"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'if'", "'('", "')'", "'{'", "'}'", "'else'", "'while'", "'='", 
			"'show'", "'++'", "'--'", "'*'", "'\\'", "'+'", "'-'", "'integer'", "'real'", 
			"'unidade'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, "COND_OPER", "IDENTIFIER", 
			"INT", "REAL", "WHITESPACE", "COMMENT", "ERROR"
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


	public VarGrammarLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "VarGrammar.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\33\u00a9\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\3\2\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3"+
		"\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\13\3"+
		"\13\3\13\3\f\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21\3\21\3"+
		"\21\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3"+
		"\23\3\23\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\5"+
		"\24\177\n\24\3\25\3\25\7\25\u0083\n\25\f\25\16\25\u0086\13\25\3\26\5\26"+
		"\u0089\n\26\3\26\6\26\u008c\n\26\r\26\16\26\u008d\3\27\3\27\3\27\3\27"+
		"\3\30\6\30\u0095\n\30\r\30\16\30\u0096\3\30\3\30\3\31\3\31\3\31\3\31\7"+
		"\31\u009f\n\31\f\31\16\31\u00a2\13\31\3\31\3\31\3\31\3\31\3\32\3\32\3"+
		"\u00a0\2\33\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33"+
		"\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63\33\3\2\b\4\2"+
		">>@@\4\2C\\c|\6\2\61;C\\aac|\4\2--//\3\2\62;\5\2\13\f\17\17\"\"\2\u00b1"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2"+
		"\2\2\61\3\2\2\2\2\63\3\2\2\2\3\65\3\2\2\2\58\3\2\2\2\7:\3\2\2\2\t<\3\2"+
		"\2\2\13>\3\2\2\2\r@\3\2\2\2\17E\3\2\2\2\21K\3\2\2\2\23M\3\2\2\2\25R\3"+
		"\2\2\2\27U\3\2\2\2\31X\3\2\2\2\33Z\3\2\2\2\35\\\3\2\2\2\37^\3\2\2\2!`"+
		"\3\2\2\2#h\3\2\2\2%m\3\2\2\2\'~\3\2\2\2)\u0080\3\2\2\2+\u0088\3\2\2\2"+
		"-\u008f\3\2\2\2/\u0094\3\2\2\2\61\u009a\3\2\2\2\63\u00a7\3\2\2\2\65\66"+
		"\7k\2\2\66\67\7h\2\2\67\4\3\2\2\289\7*\2\29\6\3\2\2\2:;\7+\2\2;\b\3\2"+
		"\2\2<=\7}\2\2=\n\3\2\2\2>?\7\177\2\2?\f\3\2\2\2@A\7g\2\2AB\7n\2\2BC\7"+
		"u\2\2CD\7g\2\2D\16\3\2\2\2EF\7y\2\2FG\7j\2\2GH\7k\2\2HI\7n\2\2IJ\7g\2"+
		"\2J\20\3\2\2\2KL\7?\2\2L\22\3\2\2\2MN\7u\2\2NO\7j\2\2OP\7q\2\2PQ\7y\2"+
		"\2Q\24\3\2\2\2RS\7-\2\2ST\7-\2\2T\26\3\2\2\2UV\7/\2\2VW\7/\2\2W\30\3\2"+
		"\2\2XY\7,\2\2Y\32\3\2\2\2Z[\7^\2\2[\34\3\2\2\2\\]\7-\2\2]\36\3\2\2\2^"+
		"_\7/\2\2_ \3\2\2\2`a\7k\2\2ab\7p\2\2bc\7v\2\2cd\7g\2\2de\7i\2\2ef\7g\2"+
		"\2fg\7t\2\2g\"\3\2\2\2hi\7t\2\2ij\7g\2\2jk\7c\2\2kl\7n\2\2l$\3\2\2\2m"+
		"n\7w\2\2no\7p\2\2op\7k\2\2pq\7f\2\2qr\7c\2\2rs\7f\2\2st\7g\2\2t&\3\2\2"+
		"\2u\177\t\2\2\2vw\7>\2\2w\177\7?\2\2xy\7@\2\2y\177\7?\2\2z{\7?\2\2{\177"+
		"\7?\2\2|}\7#\2\2}\177\7?\2\2~u\3\2\2\2~v\3\2\2\2~x\3\2\2\2~z\3\2\2\2~"+
		"|\3\2\2\2\177(\3\2\2\2\u0080\u0084\t\3\2\2\u0081\u0083\t\4\2\2\u0082\u0081"+
		"\3\2\2\2\u0083\u0086\3\2\2\2\u0084\u0082\3\2\2\2\u0084\u0085\3\2\2\2\u0085"+
		"*\3\2\2\2\u0086\u0084\3\2\2\2\u0087\u0089\t\5\2\2\u0088\u0087\3\2\2\2"+
		"\u0088\u0089\3\2\2\2\u0089\u008b\3\2\2\2\u008a\u008c\t\6\2\2\u008b\u008a"+
		"\3\2\2\2\u008c\u008d\3\2\2\2\u008d\u008b\3\2\2\2\u008d\u008e\3\2\2\2\u008e"+
		",\3\2\2\2\u008f\u0090\5+\26\2\u0090\u0091\7\60\2\2\u0091\u0092\5+\26\2"+
		"\u0092.\3\2\2\2\u0093\u0095\t\7\2\2\u0094\u0093\3\2\2\2\u0095\u0096\3"+
		"\2\2\2\u0096\u0094\3\2\2\2\u0096\u0097\3\2\2\2\u0097\u0098\3\2\2\2\u0098"+
		"\u0099\b\30\2\2\u0099\60\3\2\2\2\u009a\u009b\7\61\2\2\u009b\u009c\7\61"+
		"\2\2\u009c\u00a0\3\2\2\2\u009d\u009f\13\2\2\2\u009e\u009d\3\2\2\2\u009f"+
		"\u00a2\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a0\u009e\3\2\2\2\u00a1\u00a3\3\2"+
		"\2\2\u00a2\u00a0\3\2\2\2\u00a3\u00a4\7\f\2\2\u00a4\u00a5\3\2\2\2\u00a5"+
		"\u00a6\b\31\2\2\u00a6\62\3\2\2\2\u00a7\u00a8\13\2\2\2\u00a8\64\3\2\2\2"+
		"\t\2~\u0084\u0088\u008d\u0096\u00a0\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
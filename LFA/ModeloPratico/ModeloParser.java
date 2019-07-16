// Generated from Modelo.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ModeloParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, STRING=8, ID=9, 
		COMMENT=10, WS=11;
	public static final int
		RULE_program = 0, RULE_stat = 1, RULE_string = 2;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "stat", "string"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'print'", "':'", "'input('", "')'", "'+'", "'('", "'/'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, "STRING", "ID", "COMMENT", 
			"WS"
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

	@Override
	public String getGrammarFileName() { return "Modelo.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public ModeloParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(ModeloParser.EOF, 0); }
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(9);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0 || _la==ID) {
				{
				{
				setState(6);
				stat();
				}
				}
				setState(11);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(12);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatContext extends ParserRuleContext {
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
	 
		public StatContext() { }
		public void copyFrom(StatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class StrStatContext extends StatContext {
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public StrStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterStrStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitStrStat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitStrStat(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class IdStatContext extends StatContext {
		public TerminalNode ID() { return getToken(ModeloParser.ID, 0); }
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public IdStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterIdStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitIdStat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitIdStat(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_stat);
		try {
			setState(19);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				_localctx = new StrStatContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(14);
				match(T__0);
				setState(15);
				string(0);
				}
				break;
			case ID:
				_localctx = new IdStatContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(16);
				match(ID);
				setState(17);
				match(T__1);
				setState(18);
				string(0);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StringContext extends ParserRuleContext {
		public StringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_string; }
	 
		public StringContext() { }
		public void copyFrom(StringContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IdStrContext extends StringContext {
		public TerminalNode ID() { return getToken(ModeloParser.ID, 0); }
		public IdStrContext(StringContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterIdStr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitIdStr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitIdStr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class StrStrContext extends StringContext {
		public TerminalNode STRING() { return getToken(ModeloParser.STRING, 0); }
		public StrStrContext(StringContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterStrStr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitStrStr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitStrStr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class InputStrContext extends StringContext {
		public TerminalNode STRING() { return getToken(ModeloParser.STRING, 0); }
		public InputStrContext(StringContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterInputStr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitInputStr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitInputStr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ReplaceStrContext extends StringContext {
		public StringContext s1;
		public StringContext s2;
		public StringContext s3;
		public List<StringContext> string() {
			return getRuleContexts(StringContext.class);
		}
		public StringContext string(int i) {
			return getRuleContext(StringContext.class,i);
		}
		public ReplaceStrContext(StringContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterReplaceStr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitReplaceStr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitReplaceStr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ConcatStrContext extends StringContext {
		public StringContext s1;
		public StringContext s2;
		public List<StringContext> string() {
			return getRuleContexts(StringContext.class);
		}
		public StringContext string(int i) {
			return getRuleContext(StringContext.class,i);
		}
		public ConcatStrContext(StringContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).enterConcatStr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ModeloListener ) ((ModeloListener)listener).exitConcatStr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof ModeloVisitor ) return ((ModeloVisitor<? extends T>)visitor).visitConcatStr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StringContext string() throws RecognitionException {
		return string(0);
	}

	private StringContext string(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		StringContext _localctx = new StringContext(_ctx, _parentState);
		StringContext _prevctx = _localctx;
		int _startState = 4;
		enterRecursionRule(_localctx, 4, RULE_string, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(35);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case STRING:
				{
				_localctx = new StrStrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(22);
				match(STRING);
				}
				break;
			case ID:
				{
				_localctx = new IdStrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(23);
				match(ID);
				}
				break;
			case T__2:
				{
				_localctx = new InputStrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(24);
				match(T__2);
				setState(25);
				match(STRING);
				setState(26);
				match(T__3);
				}
				break;
			case T__5:
				{
				_localctx = new ReplaceStrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(27);
				match(T__5);
				setState(28);
				((ReplaceStrContext)_localctx).s1 = string(0);
				setState(29);
				match(T__6);
				setState(30);
				((ReplaceStrContext)_localctx).s2 = string(0);
				setState(31);
				match(T__6);
				setState(32);
				((ReplaceStrContext)_localctx).s3 = string(0);
				setState(33);
				match(T__3);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(42);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,3,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ConcatStrContext(new StringContext(_parentctx, _parentState));
					((ConcatStrContext)_localctx).s1 = _prevctx;
					pushNewRecursionContext(_localctx, _startState, RULE_string);
					setState(37);
					if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
					setState(38);
					match(T__4);
					setState(39);
					((ConcatStrContext)_localctx).s2 = string(3);
					}
					} 
				}
				setState(44);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,3,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 2:
			return string_sempred((StringContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean string_sempred(StringContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\r\60\4\2\t\2\4\3"+
		"\t\3\4\4\t\4\3\2\7\2\n\n\2\f\2\16\2\r\13\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3"+
		"\5\3\26\n\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\5"+
		"\4&\n\4\3\4\3\4\3\4\7\4+\n\4\f\4\16\4.\13\4\3\4\2\3\6\5\2\4\6\2\2\2\62"+
		"\2\13\3\2\2\2\4\25\3\2\2\2\6%\3\2\2\2\b\n\5\4\3\2\t\b\3\2\2\2\n\r\3\2"+
		"\2\2\13\t\3\2\2\2\13\f\3\2\2\2\f\16\3\2\2\2\r\13\3\2\2\2\16\17\7\2\2\3"+
		"\17\3\3\2\2\2\20\21\7\3\2\2\21\26\5\6\4\2\22\23\7\13\2\2\23\24\7\4\2\2"+
		"\24\26\5\6\4\2\25\20\3\2\2\2\25\22\3\2\2\2\26\5\3\2\2\2\27\30\b\4\1\2"+
		"\30&\7\n\2\2\31&\7\13\2\2\32\33\7\5\2\2\33\34\7\n\2\2\34&\7\6\2\2\35\36"+
		"\7\b\2\2\36\37\5\6\4\2\37 \7\t\2\2 !\5\6\4\2!\"\7\t\2\2\"#\5\6\4\2#$\7"+
		"\6\2\2$&\3\2\2\2%\27\3\2\2\2%\31\3\2\2\2%\32\3\2\2\2%\35\3\2\2\2&,\3\2"+
		"\2\2\'(\f\4\2\2()\7\7\2\2)+\5\6\4\5*\'\3\2\2\2+.\3\2\2\2,*\3\2\2\2,-\3"+
		"\2\2\2-\7\3\2\2\2.,\3\2\2\2\6\13\25%,";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
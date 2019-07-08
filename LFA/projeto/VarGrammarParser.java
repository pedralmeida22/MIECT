// Generated from VarGrammar.g4 by ANTLR 4.7.2

import java.util.*;

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class VarGrammarParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, COND_OPER=19, IDENTIFIER=20, INT=21, REAL=22, WHITESPACE=23, 
		COMMENT=24, ERROR=25;
	public static final int
		RULE_main = 0, RULE_entryList = 1, RULE_instList = 2, RULE_entry = 3, 
		RULE_instruction = 4, RULE_if_cond = 5, RULE_while_cond = 6, RULE_declaration = 7, 
		RULE_assigment = 8, RULE_show = 9, RULE_condition = 10, RULE_increment = 11, 
		RULE_expression = 12, RULE_type = 13;
	private static String[] makeRuleNames() {
		return new String[] {
			"main", "entryList", "instList", "entry", "instruction", "if_cond", "while_cond", 
			"declaration", "assigment", "show", "condition", "increment", "expression", 
			"type"
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

	@Override
	public String getGrammarFileName() { return "VarGrammar.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }


	    public static Map<String,Symbol> symbolTable = new HashMap<>();

	public VarGrammarParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class MainContext extends ParserRuleContext {
		public EntryListContext entryList() {
			return getRuleContext(EntryListContext.class,0);
		}
		public TerminalNode EOF() { return getToken(VarGrammarParser.EOF, 0); }
		public MainContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_main; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterMain(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitMain(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitMain(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MainContext main() throws RecognitionException {
		MainContext _localctx = new MainContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_main);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(28);
			entryList();
			setState(29);
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

	public static class EntryListContext extends ParserRuleContext {
		public List<EntryContext> entry() {
			return getRuleContexts(EntryContext.class);
		}
		public EntryContext entry(int i) {
			return getRuleContext(EntryContext.class,i);
		}
		public EntryListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_entryList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterEntryList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitEntryList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitEntryList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final EntryListContext entryList() throws RecognitionException {
		EntryListContext _localctx = new EntryListContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_entryList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(34);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__6) | (1L << T__8) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << IDENTIFIER))) != 0)) {
				{
				{
				setState(31);
				entry();
				}
				}
				setState(36);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
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

	public static class InstListContext extends ParserRuleContext {
		public List<InstructionContext> instruction() {
			return getRuleContexts(InstructionContext.class);
		}
		public InstructionContext instruction(int i) {
			return getRuleContext(InstructionContext.class,i);
		}
		public InstListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_instList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterInstList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitInstList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitInstList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InstListContext instList() throws RecognitionException {
		InstListContext _localctx = new InstListContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_instList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(40);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__8) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << IDENTIFIER))) != 0)) {
				{
				{
				setState(37);
				instruction();
				}
				}
				setState(42);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
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

	public static class EntryContext extends ParserRuleContext {
		public InstructionContext instruction() {
			return getRuleContext(InstructionContext.class,0);
		}
		public If_condContext if_cond() {
			return getRuleContext(If_condContext.class,0);
		}
		public While_condContext while_cond() {
			return getRuleContext(While_condContext.class,0);
		}
		public EntryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_entry; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterEntry(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitEntry(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitEntry(this);
			else return visitor.visitChildren(this);
		}
	}

	public final EntryContext entry() throws RecognitionException {
		EntryContext _localctx = new EntryContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_entry);
		try {
			setState(46);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
			case T__15:
			case T__16:
			case T__17:
			case IDENTIFIER:
				enterOuterAlt(_localctx, 1);
				{
				setState(43);
				instruction();
				}
				break;
			case T__0:
				enterOuterAlt(_localctx, 2);
				{
				setState(44);
				if_cond();
				}
				break;
			case T__6:
				enterOuterAlt(_localctx, 3);
				{
				setState(45);
				while_cond();
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

	public static class InstructionContext extends ParserRuleContext {
		public DeclarationContext declaration() {
			return getRuleContext(DeclarationContext.class,0);
		}
		public AssigmentContext assigment() {
			return getRuleContext(AssigmentContext.class,0);
		}
		public IncrementContext increment() {
			return getRuleContext(IncrementContext.class,0);
		}
		public ShowContext show() {
			return getRuleContext(ShowContext.class,0);
		}
		public InstructionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_instruction; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterInstruction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitInstruction(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitInstruction(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InstructionContext instruction() throws RecognitionException {
		InstructionContext _localctx = new InstructionContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_instruction);
		try {
			setState(52);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(48);
				declaration();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(49);
				assigment();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(50);
				increment();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(51);
				show();
				}
				break;
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

	public static class If_condContext extends ParserRuleContext {
		public InstListContext instIf;
		public InstListContext instElse;
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public List<InstListContext> instList() {
			return getRuleContexts(InstListContext.class);
		}
		public InstListContext instList(int i) {
			return getRuleContext(InstListContext.class,i);
		}
		public If_condContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_if_cond; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterIf_cond(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitIf_cond(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitIf_cond(this);
			else return visitor.visitChildren(this);
		}
	}

	public final If_condContext if_cond() throws RecognitionException {
		If_condContext _localctx = new If_condContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_if_cond);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(54);
			match(T__0);
			setState(55);
			match(T__1);
			setState(56);
			condition();
			setState(57);
			match(T__2);
			setState(58);
			match(T__3);
			setState(59);
			((If_condContext)_localctx).instIf = instList();
			setState(60);
			match(T__4);
			setState(66);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__5) {
				{
				setState(61);
				match(T__5);
				setState(62);
				match(T__3);
				setState(63);
				((If_condContext)_localctx).instElse = instList();
				setState(64);
				match(T__4);
				}
			}

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

	public static class While_condContext extends ParserRuleContext {
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public InstListContext instList() {
			return getRuleContext(InstListContext.class,0);
		}
		public While_condContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_while_cond; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterWhile_cond(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitWhile_cond(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitWhile_cond(this);
			else return visitor.visitChildren(this);
		}
	}

	public final While_condContext while_cond() throws RecognitionException {
		While_condContext _localctx = new While_condContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_while_cond);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(68);
			match(T__6);
			setState(69);
			match(T__1);
			setState(70);
			condition();
			setState(71);
			match(T__2);
			setState(72);
			match(T__3);
			setState(73);
			instList();
			setState(74);
			match(T__4);
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

	public static class DeclarationContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode IDENTIFIER() { return getToken(VarGrammarParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public DeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitDeclaration(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitDeclaration(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_declaration);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(76);
			type();
			setState(77);
			match(IDENTIFIER);
			setState(78);
			match(T__7);
			setState(79);
			expression(0);
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

	public static class AssigmentContext extends ParserRuleContext {
		public TerminalNode IDENTIFIER() { return getToken(VarGrammarParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AssigmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assigment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterAssigment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitAssigment(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitAssigment(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AssigmentContext assigment() throws RecognitionException {
		AssigmentContext _localctx = new AssigmentContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_assigment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(81);
			match(IDENTIFIER);
			setState(82);
			match(T__7);
			setState(83);
			expression(0);
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

	public static class ShowContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ShowContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_show; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterShow(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitShow(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitShow(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ShowContext show() throws RecognitionException {
		ShowContext _localctx = new ShowContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_show);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(85);
			match(T__8);
			setState(86);
			match(T__1);
			setState(87);
			expression(0);
			setState(88);
			match(T__2);
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

	public static class ConditionContext extends ParserRuleContext {
		public String varName1;
		public String varName2;
		public ExpressionContext e1;
		public ExpressionContext e2;
		public TerminalNode COND_OPER() { return getToken(VarGrammarParser.COND_OPER, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterCondition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitCondition(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitCondition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_condition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			((ConditionContext)_localctx).e1 = expression(0);
			setState(91);
			match(COND_OPER);
			setState(92);
			((ConditionContext)_localctx).e2 = expression(0);
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

	public static class IncrementContext extends ParserRuleContext {
		public Token incre;
		public TerminalNode IDENTIFIER() { return getToken(VarGrammarParser.IDENTIFIER, 0); }
		public IncrementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_increment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterIncrement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitIncrement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitIncrement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IncrementContext increment() throws RecognitionException {
		IncrementContext _localctx = new IncrementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_increment);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			match(IDENTIFIER);
			setState(95);
			((IncrementContext)_localctx).incre = _input.LT(1);
			_la = _input.LA(1);
			if ( !(_la==T__9 || _la==T__10) ) {
				((IncrementContext)_localctx).incre = (Token)_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
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

	public static class ExpressionContext extends ParserRuleContext {
		public Type tipo;
		public String varName;
		public String compiler;
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
			this.tipo = ctx.tipo;
			this.varName = ctx.varName;
			this.compiler = ctx.compiler;
		}
	}
	public static class ExpressDimensaoContext extends ExpressionContext {
		public Token num;
		public TerminalNode IDENTIFIER() { return getToken(VarGrammarParser.IDENTIFIER, 0); }
		public TerminalNode REAL() { return getToken(VarGrammarParser.REAL, 0); }
		public TerminalNode INT() { return getToken(VarGrammarParser.INT, 0); }
		public ExpressDimensaoContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressDimensao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressDimensao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressDimensao(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressIntContext extends ExpressionContext {
		public TerminalNode INT() { return getToken(VarGrammarParser.INT, 0); }
		public ExpressIntContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressInt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressInt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressParentContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressParentContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressParent(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressParent(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressParent(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressAddSubContext extends ExpressionContext {
		public ExpressionContext left;
		public Token op;
		public ExpressionContext right;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExpressAddSubContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressAddSub(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressAddSub(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressAddSub(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressMulDivContext extends ExpressionContext {
		public ExpressionContext left;
		public Token op;
		public ExpressionContext right;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExpressMulDivContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressMulDiv(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressMulDiv(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressMulDiv(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressRealContext extends ExpressionContext {
		public TerminalNode REAL() { return getToken(VarGrammarParser.REAL, 0); }
		public ExpressRealContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressReal(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpressIDContext extends ExpressionContext {
		public TerminalNode IDENTIFIER() { return getToken(VarGrammarParser.IDENTIFIER, 0); }
		public ExpressIDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterExpressID(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitExpressID(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitExpressID(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 24;
		enterRecursionRule(_localctx, 24, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(107);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				{
				_localctx = new ExpressParentContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(98);
				match(T__1);
				setState(99);
				expression(0);
				setState(100);
				match(T__2);
				}
				break;
			case 2:
				{
				_localctx = new ExpressDimensaoContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(102);
				((ExpressDimensaoContext)_localctx).num = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==INT || _la==REAL) ) {
					((ExpressDimensaoContext)_localctx).num = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(103);
				match(IDENTIFIER);
				}
				break;
			case 3:
				{
				_localctx = new ExpressRealContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(104);
				match(REAL);
				}
				break;
			case 4:
				{
				_localctx = new ExpressIntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(105);
				match(INT);
				}
				break;
			case 5:
				{
				_localctx = new ExpressIDContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(106);
				match(IDENTIFIER);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(117);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(115);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressMulDivContext(new ExpressionContext(_parentctx, _parentState));
						((ExpressMulDivContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(109);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(110);
						((ExpressMulDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__11 || _la==T__12) ) {
							((ExpressMulDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(111);
						((ExpressMulDivContext)_localctx).right = expression(7);
						}
						break;
					case 2:
						{
						_localctx = new ExpressAddSubContext(new ExpressionContext(_parentctx, _parentState));
						((ExpressAddSubContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(112);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(113);
						((ExpressAddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__13 || _la==T__14) ) {
							((ExpressAddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(114);
						((ExpressAddSubContext)_localctx).right = expression(6);
						}
						break;
					}
					} 
				}
				setState(119);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
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

	public static class TypeContext extends ParserRuleContext {
		public Type t_tipo;
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
			this.t_tipo = ctx.t_tipo;
		}
	}
	public static class TypeRealContext extends TypeContext {
		public TypeRealContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterTypeReal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitTypeReal(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitTypeReal(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class TypeUnitContext extends TypeContext {
		public TypeUnitContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterTypeUnit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitTypeUnit(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitTypeUnit(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class TypeIntContext extends TypeContext {
		public TypeIntContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).enterTypeInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof VarGrammarListener ) ((VarGrammarListener)listener).exitTypeInt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof VarGrammarVisitor ) return ((VarGrammarVisitor<? extends T>)visitor).visitTypeInt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_type);
		try {
			setState(123);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__15:
				_localctx = new TypeIntContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(120);
				match(T__15);
				}
				break;
			case T__16:
				_localctx = new TypeRealContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(121);
				match(T__16);
				}
				break;
			case T__17:
				_localctx = new TypeUnitContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(122);
				match(T__17);
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

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 12:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 6);
		case 1:
			return precpred(_ctx, 5);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\33\u0080\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\3\2\3\2\3\2\3\3\7\3#\n\3\f\3"+
		"\16\3&\13\3\3\4\7\4)\n\4\f\4\16\4,\13\4\3\5\3\5\3\5\5\5\61\n\5\3\6\3\6"+
		"\3\6\3\6\5\6\67\n\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\5"+
		"\7E\n\7\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3"+
		"\n\3\n\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\5\16n\n\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\7\16v\n\16\f\16\16\16y\13\16\3\17\3\17\3\17\5\17~\n\17\3\17"+
		"\2\3\32\20\2\4\6\b\n\f\16\20\22\24\26\30\32\34\2\6\3\2\f\r\3\2\27\30\3"+
		"\2\16\17\3\2\20\21\2\u0081\2\36\3\2\2\2\4$\3\2\2\2\6*\3\2\2\2\b\60\3\2"+
		"\2\2\n\66\3\2\2\2\f8\3\2\2\2\16F\3\2\2\2\20N\3\2\2\2\22S\3\2\2\2\24W\3"+
		"\2\2\2\26\\\3\2\2\2\30`\3\2\2\2\32m\3\2\2\2\34}\3\2\2\2\36\37\5\4\3\2"+
		"\37 \7\2\2\3 \3\3\2\2\2!#\5\b\5\2\"!\3\2\2\2#&\3\2\2\2$\"\3\2\2\2$%\3"+
		"\2\2\2%\5\3\2\2\2&$\3\2\2\2\')\5\n\6\2(\'\3\2\2\2),\3\2\2\2*(\3\2\2\2"+
		"*+\3\2\2\2+\7\3\2\2\2,*\3\2\2\2-\61\5\n\6\2.\61\5\f\7\2/\61\5\16\b\2\60"+
		"-\3\2\2\2\60.\3\2\2\2\60/\3\2\2\2\61\t\3\2\2\2\62\67\5\20\t\2\63\67\5"+
		"\22\n\2\64\67\5\30\r\2\65\67\5\24\13\2\66\62\3\2\2\2\66\63\3\2\2\2\66"+
		"\64\3\2\2\2\66\65\3\2\2\2\67\13\3\2\2\289\7\3\2\29:\7\4\2\2:;\5\26\f\2"+
		";<\7\5\2\2<=\7\6\2\2=>\5\6\4\2>D\7\7\2\2?@\7\b\2\2@A\7\6\2\2AB\5\6\4\2"+
		"BC\7\7\2\2CE\3\2\2\2D?\3\2\2\2DE\3\2\2\2E\r\3\2\2\2FG\7\t\2\2GH\7\4\2"+
		"\2HI\5\26\f\2IJ\7\5\2\2JK\7\6\2\2KL\5\6\4\2LM\7\7\2\2M\17\3\2\2\2NO\5"+
		"\34\17\2OP\7\26\2\2PQ\7\n\2\2QR\5\32\16\2R\21\3\2\2\2ST\7\26\2\2TU\7\n"+
		"\2\2UV\5\32\16\2V\23\3\2\2\2WX\7\13\2\2XY\7\4\2\2YZ\5\32\16\2Z[\7\5\2"+
		"\2[\25\3\2\2\2\\]\5\32\16\2]^\7\25\2\2^_\5\32\16\2_\27\3\2\2\2`a\7\26"+
		"\2\2ab\t\2\2\2b\31\3\2\2\2cd\b\16\1\2de\7\4\2\2ef\5\32\16\2fg\7\5\2\2"+
		"gn\3\2\2\2hi\t\3\2\2in\7\26\2\2jn\7\30\2\2kn\7\27\2\2ln\7\26\2\2mc\3\2"+
		"\2\2mh\3\2\2\2mj\3\2\2\2mk\3\2\2\2ml\3\2\2\2nw\3\2\2\2op\f\b\2\2pq\t\4"+
		"\2\2qv\5\32\16\trs\f\7\2\2st\t\5\2\2tv\5\32\16\buo\3\2\2\2ur\3\2\2\2v"+
		"y\3\2\2\2wu\3\2\2\2wx\3\2\2\2x\33\3\2\2\2yw\3\2\2\2z~\7\22\2\2{~\7\23"+
		"\2\2|~\7\24\2\2}z\3\2\2\2}{\3\2\2\2}|\3\2\2\2~\35\3\2\2\2\13$*\60\66D"+
		"muw}";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
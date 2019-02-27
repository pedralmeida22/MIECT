package aula8.ex3;
import java.awt.*;
import javax.swing.*;


@SuppressWarnings("unused")

public class GUI extends JFrame {
	private static final long serialVersionUID = 1L; //
	private JLabel image = new JLabel();
	private JLabel prize = new JLabel("0 euros");
	private JTextArea question;
	private JButton confirm;
	private JButton giveUp;
	private JButton helpFromAudience;
	private JButton help50;
	private JButton helpTele;
	private ButtonGroup buttonGroup = new ButtonGroup();
	private JRadioButton opA;
	private JRadioButton opB;
	private JRadioButton opC;
	private JRadioButton opD;	
	
	public GUI() {
		super("Quem Quer Ser Milionário");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(new BorderLayout());
		setSize(700, 500);
		
		JPanel panelSouth = new JPanel();
		panelSouth.setLayout(new FlowLayout());
		JPanel panelWest = new JPanel();
		panelWest.setLayout(new FlowLayout());
		JPanel panelNorth = new JPanel();
		panelNorth.setLayout(new FlowLayout());
		JPanel panelCenter = new JPanel();
		panelCenter.setLayout(new FlowLayout());
		
		panelSouth.add(confirm = new JButton("Confirm"));
		panelSouth.add(giveUp = new JButton("Give up"));
		panelWest.add(helpFromAudience = new JButton("Help from Audience"));
		panelWest.add(help50 = new JButton("50 - 50"));
		panelWest.add(helpTele = new JButton("Call someone"));
		panelWest.add(opA = new JRadioButton("Opção A"));
		panelWest.add(opB = new JRadioButton("Opção B"));
		panelWest.add(opC = new JRadioButton("Opção C"));
		panelWest.add(opD = new JRadioButton("Opção D"));
		buttonGroup.add(opA);
		buttonGroup.add(opB);
		buttonGroup.add(opC);
		buttonGroup.add(opD);
		
		panelNorth.add(prize);
		
		panelCenter.add(question = new JTextArea());
		question.setRows(5);
		question.setText("Perguntas aqui!");
		question.setBackground(Color.cyan);
		question.setEditable(false);
		panelCenter.add(image);
		panelCenter.setOpaque(true);
		
		add(panelSouth, BorderLayout.SOUTH);
		add(panelWest, BorderLayout.WEST);
		add(panelNorth, BorderLayout.NORTH);
		add(panelCenter, BorderLayout.CENTER);
		setVisible(true);
	}
}

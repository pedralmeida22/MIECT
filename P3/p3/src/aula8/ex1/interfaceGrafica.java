package aula8.ex1;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class interfaceGrafica implements ActionListener {
	private GameEngine game = new GameEngine();
	public static JToggleButton[] buttons = new JToggleButton[9];
	
	public interfaceGrafica() {
		JFrame frame = new JFrame("Jogo do galo");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(500, 500);
		
		JPanel panel  = new JPanel();
		panel.setLayout(new GridLayout(3, 3));		
		
		for(int i = 0; i < 9; i++) {
			buttons[i] = new JToggleButton();
			buttons[i].setFont(new Font("Impact", Font.BOLD, 35));
			buttons[i].addActionListener(this);
			panel.add(buttons[i]);
		}
		
		frame.setContentPane(panel);
		frame.setVisible(true);
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		//botao temporario
		JToggleButton b = (JToggleButton) event.getSource();
		
		if(b == buttons[0]) 
			game.move(1, 1);
		else if(b == buttons[1])
			game.move(2, 1);
		else if(b == buttons[2])
			game.move(3, 1);
		else if(b == buttons[3])
			game.move(1, 2);
		else if(b == buttons[4])
			game.move(2, 2);
		else if(b == buttons[5])
			game.move(3, 2);
		else if(b == buttons[6])
			game.move(1, 3);
		else if(b == buttons[7])
			game.move(2, 3);
		else if(b == buttons[8])
			game.move(3, 3);
		
		b.setText(String.valueOf(game.lastPlayer()));
		
		if(game.gameOver()) {
			if(game.winner()) 
				JOptionPane.showMessageDialog(null, "O jogador " + game.lastPlayer() + " ganhou!");
			else
				JOptionPane.showMessageDialog(null, "Empate!");
			
			System.exit(0);
		}
	}
}

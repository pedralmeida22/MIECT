import static java.lang.System.*;

public class GuessGame {
	private int min, max;
    private int secretNumber; // to hold the secret
    private boolean finished;
    private int numAttempts;
    private boolean attemptIsHigher;
    private boolean attemptIsLower;


  public GuessGame(int min, int max) {
	  assert min < max : "Intervalo invalido";
      this.min = min;
      this.max = max;
      this.secretNumber = (int)(Math.random() * (max-min) + min);
      this.finished = false;
      this.numAttempts = 0;
      this.attemptIsHigher = false;
      this.attemptIsLower = false;
  }

  public int min() {
    return min;
  }

  public int max() {
   return max;
  }

  public boolean validAttempt(int n) {
    if(n >= min && n <= max){
		return true;
	}
	return false;
  }

  public boolean finished() {
    return finished;
  }

  public boolean attemptIsHigher() {
    return attemptIsHigher;
  }

  public boolean attemptIsLower() {
    return attemptIsLower;
  }

  public void play(int n) {
	if(finished){
		System.out.println("O jogo ja acabou!");
	}else if(!validAttempt(n)){
		System.out.println("A tentativa nao e valida!");
	}else{
		numAttempts++;
		if(n < secretNumber){
			attemptIsLower = true;
			System.out.println("Tentativa baixa!");
		}else if( n > secretNumber){
			attemptIsHigher = true;
			System.out.println("Tentativa alta!");
		}else{
			attemptIsLower = false;
			attemptIsHigher = false;
			finished = true;
		}
	}
  }

  public int numAttempts() {
    return numAttempts;
  }

  /**
   * Simple tests of the GuessGame class.
   * This method tests the functionality of the GuessGame class.
   * It should be used by the programmer to test and debug the class.
   * It is not meant to be called in client programs.
   *
   * To run from the command line, use:
   *   java -ea GuessGame
   */
  public static void main(String[] args) {
    requireEA();
    out.println("Starting tests.");
    GuessGame game = new GuessGame(1, 10);
    // initial tests:
    assert !game.finished() : "game should not be finished yet";
    assert game.min() == 1;
    assert game.max() == 10;
    assert game.numAttempts() == 0 : "there should be no attempts yet";
    for(int i = -10; i <= 20; i++) {
      assert game.validAttempt(i) == (i >= 1 && i <= 10);
    }
    // trying all wrong answers:
    int nplay = 0; // how may times play was called
    for(int n = 1; n <= 10; n++) {
      if (n != game.secretNumber) {
        game.play(n); // make a wrong guess
        nplay++;
        assert game.numAttempts() == nplay;
        assert !game.finished() : "game should not be finished yet";
        assert (n < game.secretNumber) == game.attemptIsLower();
        assert (n > game.secretNumber) == game.attemptIsHigher();
      }
    }
    // make the right guess:
    game.play(game.secretNumber);
    nplay++;
    assert game.finished() : "game should be finished now";
    assert game.numAttempts() == nplay;
    out.println("No error detected!");
  }

  /** Check if program is being run with -ea, exit if not. */
  static void requireEA() {
    boolean ea = false;
    assert ea = true; // assert with a side-effect, on purpose!
    if (!ea) {
      err.println("This program must be run with -ea!");
      exit(1);
    }
  }

}


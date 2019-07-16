package aula7.Ex1;

public class Time implements Comparable<Time> {
	// by banana with (almost all of it)help from stack overflow
	// https://stackoverflow.com/questions/28292359/creating-a-time-class-in-java
	private int hour;
	private int minute;

	public Time() {
		hour = 0;
		minute = 0;
	}

	public Time(int h, int m) {
		setHour(h, m);
	}

	public Time(String time) {
		String[] parts = time.split(":");
		int h = Integer.parseInt(parts[0]);
		int m = Integer.parseInt(parts[1]);

		setHour(h, m);
	}
	
	public int hour() { return hour; }
	public int minute() { return minute; }
	
	public int totalMinutos() {
		return this.hour * 60 + this.minute;
	}
	

	private void setHour(int h, int m) {
		if (h >= 1 && h <= 23)
			this.hour = h;
		else
			this.hour = 0;
		if (m >= 0 && m <= 59)
			this.minute = m;
		else
			this.minute = 0;	
	}
	public Time addHora(Time time) {
		int m = 0;
		int h = 0;
		
		m = time.minute + this.minute;
		if(m > 59) {
			h++;
			m = m-60;
		}
		h = h + time.hour + this.hour;
		if(h > 23) {
			h = h-24;
		}
		return new Time(h, m);
	}
	
	public boolean horaZero() {
		return this.minute == 0 && this.hour() == 0;
	}
	
	
	public String toString() {
		String s = "";
		if (hour < 10 && minute < 10)
			s = "0" + hour + ":" + "0" + minute;
		else if (hour < 10 && minute > 10)
			s = "0" + hour + ":" + minute;
		else if (hour > 10 && minute < 10)
			s = hour + ":" + "0" + minute;
		else if (hour > 10 && minute > 10)
			s = hour + ":" + minute;
		else if (hour == 0)
			s = "0" + hour + ":" + minute;
		else if (minute == 0)
			s = hour + ":" + "0" + minute;

		return s;

	}

	public String convert() {
		String c = "";

		if (hour > 11) {
			if (hour == 12) {
				c = hour + ":" + minute + " PM";
			}
			if (hour > 12) {
				c = (hour - 12) + ":" + minute + " PM";
			}
		} else if (hour == 0) {
			c = (hour + 12) + ":" + minute + " AM";
		} else
			c = hour + ":" + minute + " AM";
		if (minute < 10) {
			c = c.substring(0, c.length() - 4) + "0" + minute + " " + c.substring(c.length() - 2, c.length());
		}
		return c;
	}

	public void increment() {
		if (hour == 23 && minute == 59) {
			hour = 0;
			minute = 0;
		} else {
			minute++;
			if (minute == 60) {
				hour++;
				minute = 0;
			} else if (hour == 24)
				hour = 0;
		}
	}

	@Override
	public int compareTo(Time time) {
		return this.totalMinutos() - time.totalMinutos(); 
	}
}

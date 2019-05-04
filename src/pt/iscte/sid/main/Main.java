/**
 * 
 */
package pt.iscte.sid.main;

import java.awt.EventQueue;

import pt.iscte.sid.frames.ServerWindow;

/**
 * @author jfnfs
 *
 */
public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					new ServerWindow();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});

	}

}

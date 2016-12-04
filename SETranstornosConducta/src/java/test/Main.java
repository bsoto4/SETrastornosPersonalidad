package test;

import javax.swing.JOptionPane;
import model.DiagnosticoTranstorno;

public class Main {

    public static void main(String[] args) {
        DiagnosticoTranstorno d = new DiagnosticoTranstorno();
        JOptionPane.showMessageDialog(null, d.diagnosticar(null));
    }
    
}

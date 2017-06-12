/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * Criado 04/06/2017 ás 13:24:21 por ThLewis
 */
public class FormasPagamento {
    public static List<String> formas(Double valor){
        List<String> formas = new ArrayList<String>();
        for (int i = 1; i < 13; i++) {
            if (i % 2 == 0 || i == 1) {
                    DecimalFormat df = new DecimalFormat("#.00");
                    
                    formas.add("Pagamento em " + i + "X, em parcelas de R$ " + df.format(valor/i));
            }
        }
        return formas;
    }
}

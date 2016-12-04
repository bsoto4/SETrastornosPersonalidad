package model;

import CLIPSJNI.Environment;
import CLIPSJNI.PrimitiveValue;
import java.util.ArrayList;

public class DiagnosticoTranstorno {

    private Environment clips;
    private String ruta = "clips.clp";

    public DiagnosticoTranstorno() {
        clips = new Environment();
        clips.load(ruta);
        clips.reset();
    }

    public String diagnosticar(ArrayList<String> sintomas) {
        String trastorno = "";
        try {
            cargarSintomas(sintomas);
            trastorno = evaluarSintomas();
        } catch (Exception e) {
            trastorno = "TRASTORNO NO IDENTIFICADO";
        }
        return trastorno;
    }

    private void cargarSintomas(ArrayList<String> sintomas) {

        clips.reset();

//        clips.eval("(assert (P1 " + "si" + "))");
//        clips.eval("(assert (P2 " + "si" + "))");
//        clips.eval("(assert (P3 " + "si" + "))");
//        clips.eval("(assert (P4 " + "si" + "))");
//        clips.eval("(assert (P5 " + "si" + "))");
//        clips.eval("(assert (P6 " + "si" + "))");
//        clips.eval("(assert (P7 " + "si" + "))");
//
//        clips.eval("(assert (8A " + "si" + "))");
//        
//        clips.eval("(assert (PAR12 " + 1 + "))");
//        clips.eval("(assert (PAR13 " + 1 + "))");
//        clips.eval("(assert (PAR14 " + 1 + "))");
//        clips.eval("(assert (PAR15 " + 1 + "))");
//        clips.eval("(assert (PAR16 " + 1 + "))");
//        clips.eval("(assert (PAR17 " + 1 + "))");
//        clips.eval("(assert (PAR18 " + 1 + "))");
//        clips.eval("(assert (PAR19 " + 1 + "))");
        
        
        clips.eval("(assert (P1 " + sintomas.get(0) + "))");
        clips.eval("(assert (P2 " + sintomas.get(1) + "))");
        clips.eval("(assert (P3 " + sintomas.get(2) + "))");
        clips.eval("(assert (P4 " + sintomas.get(3) + "))");
        clips.eval("(assert (P5 " + sintomas.get(4) + "))");
        clips.eval("(assert (P6 " + sintomas.get(5) + "))");
        clips.eval("(assert (P7 " + sintomas.get(6) + "))");

        clips.eval("(assert (8A " + sintomas.get(7) + "))");
        clips.eval("(assert (8B " + sintomas.get(8) + "))");
        clips.eval("(assert (8C " + sintomas.get(9) + "))");

        clips.eval("(assert (PAR12 " + sintomas.get(10) + "))");
        clips.eval("(assert (PAR13 " + sintomas.get(11) + "))");
        clips.eval("(assert (PAR14 " + sintomas.get(12) + "))");
        clips.eval("(assert (PAR15 " + sintomas.get(13) + "))");
        clips.eval("(assert (PAR16 " + sintomas.get(14) + "))");
        clips.eval("(assert (PAR17 " + sintomas.get(15) + "))");
        clips.eval("(assert (PAR18 " + sintomas.get(16) + "))");
        clips.eval("(assert (PAR19 " + sintomas.get(17) + "))");

        clips.eval("(assert (EZI20 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI21 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI22 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI23 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI24 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI25 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI26 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZI27 " + sintomas.get(17) + "))");

        clips.eval("(assert (EZT28 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT29 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT30 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT31 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT32 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT33 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT34 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT35 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT36 " + sintomas.get(17) + "))");
        clips.eval("(assert (EZT37 " + sintomas.get(17) + "))");

        clips.eval("(assert (ANT38 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT39 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT40 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT41 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT42 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT43 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT44 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT45 " + sintomas.get(17) + "))");
        clips.eval("(assert (ANT46 " + sintomas.get(17) + "))");

        clips.eval("(assert (LIM47 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM48 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM49 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM50 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM51 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM52 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM53 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM54 " + sintomas.get(17) + "))");
        clips.eval("(assert (LIM55 " + sintomas.get(17) + "))");

        clips.eval("(assert (HIS56 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS57 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS58 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS59 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS60 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS61 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS62 " + sintomas.get(17) + "))");
        clips.eval("(assert (HIS63 " + sintomas.get(17) + "))");

        clips.eval("(assert (NAR64 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR65 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR66 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR67 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR68 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR69 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR70 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR71 " + sintomas.get(17) + "))");
        clips.eval("(assert (NAR72 " + sintomas.get(17) + "))");

        clips.eval("(assert (EVI73 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI74 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI75 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI76 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI77 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI78 " + sintomas.get(17) + "))");
        clips.eval("(assert (EVI79 " + sintomas.get(17) + "))");

        clips.eval("(assert (DEP80 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP81 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP82 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP83 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP84 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP85 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP86 " + sintomas.get(17) + "))");
        clips.eval("(assert (DEP87 " + sintomas.get(17) + "))");

        clips.eval("(assert (OBC88 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC89 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC90 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC91 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC92 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC93 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC94 " + sintomas.get(17) + "))");
        clips.eval("(assert (OBC95 " + sintomas.get(17) + "))");        

        clips.run();

    }

    private String evaluarSintomas() {
        try {
            String evaluar = "(find-all-facts ((?v trastorno-personalidad)) TRUE)";
            PrimitiveValue value = clips.eval(evaluar);
            return value.get(0).getFactSlot("trastorno").toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "TRASTORNO NO IDENTIFICADO";
        }
    }
}
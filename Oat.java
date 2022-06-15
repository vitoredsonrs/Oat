package oat;
public class Oat {
    public static void main(String[] args) {
        Lutador l[]=new Lutador[6];
        //Instanciando
        l[0]=new Lutador("Pierre", "França", 31, 1.75f, 68.9f, 11, 2, 1);
        l[1]=new Lutador("Jhonatan", "Brasil", 29, 1.68f, 58.8f, 14, 2, 3);
        l[2]=new Lutador("Andrew", "EUA", 35, 1.65f, 80.9f, 12, 2, 1);
        l[3]=new Lutador("Noah", "Austrália", 28, 1.93f, 81.6f, 13, 0, 2);
        l[4]=new Lutador("Heitor", "Brasil", 37, 1.70f, 119.3f, 5, 4, 3);
        l[5]=new Lutador("Bruce", "EUA", 30, 1.81f, 105.7f, 12, 2, 4);
        //Chamando Métodos----------------------------------------------------------------
        Luta UEC01 = new Luta();
        UEC01.marcarLuta(l[0], l[1]);
        UEC01.lutar();
        l[0].status();
        l[1].status();
        
    }
}

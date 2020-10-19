public class TovarnaNaJidlo {
    public static Jidlo vyrobJidlo(String jmenoJidla) {
        if (jmenoJidla.equals("dort")) {
            return new DortPejskaAKocicky();
        } else if (jmenoJidla.equals("caj")) {
            return new CajicekTvojiMamy();
        } else if (jmenoJidla.equals("svickova")) {
            return new SvickovaOdBabicky();
        } else {
            throw new IllegalArgumentException("Nezname jidlo.");
        }
    }
}
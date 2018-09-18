
/**
 * Write a description of class Pion here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Pion
{
    // instance variables - replace the example below with your own
    private int xPositie;
    private int yPositie;
    private String kleur;
    
    public int getXPositie() {
        return this.xPositie;
    }
    
    public void setXPositie(int xPositie) {
        this.xPositie = xPositie;
    }
    
    public int getYPositie() {
        return this.yPositie;
    }
    
    public void setYPositie(int yPositie) {
        this.yPositie = yPositie;
    }
    
    public String getKleur() {
        return this.kleur;
    }
    
    public void setKleur(String kleur) {
        this.kleur = kleur;
    } 

    /**
     * Constructor for objects of class Pion
     */
    public Pion()
    {
        // initialise instance variables
    }
    
    public boolean beweegNaar(int nieuweXPositie, int nieuweYPositie) {
        if(isGeldigeZet(nieuweXPositie, nieuweYPositie)) {
            setXPositie(nieuweXPositie);
            setYPositie(nieuweYPositie);
            return true;
        }
        return false;        
    }
    
    private boolean isGeldigeZet(int nieuweXPositie, int nieuweYPositie) {
        return true;
    }
}

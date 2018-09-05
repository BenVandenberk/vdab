using System;
using System.Collections;
using System.Collections.Generic;

public class Verkiezing {
public int AantalGeldigeBiljetten {get;set;}
public int AantalBlancoEnOngeldigeBiljetten {get;set;}
public int TotaalAantalBiljetten => AantalGeldigeBiljetten + AantalBlancoEnOngeldigeBiljetten;

public List<Lijst> Lijsten {get;set;}

public Verkiezing(IEnumerable<Lijst> lijsten) {
this.Lijsten = new List<Lijst>(lijsten);
}
}
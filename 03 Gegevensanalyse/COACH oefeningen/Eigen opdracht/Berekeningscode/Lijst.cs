using System;
using System.Collections;
using System.Collections.Generic;

public class Lijst {

public string Naam {get;set;}
public int Nummer {get;set;}
public int Verkiesbaarheidscijfer {get;set;}
public int AantalZetels {get;set;}
public int AantalCat1Biljetten {get;set;}
public int AantalCat2Biljetten {get;set;}
public int AantalOverTeDragenStemmen {get;set;}
public int Stemcijfer {get;set;}

public List<Kandidaat> Kandidaten {get;set;}

public Lijst(string naam, int nummer, IEnumerable<Kandidaat> kandidaten) {
this.Naam = naam;
this.Nummer = nummer;
this.Kandidaten = new List<Kandidaat>(kandidaten);
}
}
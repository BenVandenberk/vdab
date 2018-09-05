using System;
using System.Collections;
using System.Collections.Generic;

public class Kandidaat {
public int KandidaatPositie {get;set;}
public string Naam {get;set;}
public string Voornaam {get;set;}
public int NaamStemmen {get;set;}
public int OvergedragenStemmen {get;set;}
public int TotaalStemmen => NaamStemmen + OvergedragenStemmen
}
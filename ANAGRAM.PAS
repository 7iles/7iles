{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2023
  @website(https://www.gladir.com/7iles)
  @abstract(Target: Turbo Pascal, Free Pascal)
}

Program Anagram;

Const
 AnagramList:Array[0..73,0..4]of String[20]=(
  ('Alimenter','Terminale','','',''),
  ('Ami','Mai','','',''),
  ('Ange','Nage','','',''),
  ('Anticiper','Praticien','','',''),
  ('Arbre','Barre','','',''),
  ('Argent','G�rant','Garent','Ganter','Gerant'),
  ('Art','Rat','','',''),
  ('Aspirine','Parisien','','',''),
  ('Avec','Cave','','',''),
  ('Cas','Sac','','',''),
  ('Certain','Crainte','Criante','',''),
  ('Chien','Chine','Niche','',''),
  ('Cigare','Cirage','','',''),
  ('Client�le','�tincelle','','',''),
  ('Combien','Combine','','',''),
  ('Connaitre','Actionner','','',''),
  ('Contre','Conter','','',''),
  ('Cr�ation','Canotier','','',''),
  ('Destiner','Dentiers','','',''),
  ('Enfant','Fanent','','',''),
  ('Entier','Inerte','','',''),
  ('Entre','Rente','','',''),
  ('Esprit','Pister','Pitres','',''),
  ('Est','Tes','','',''),
  ('Fois','Soif','','',''),
  ('Garde','Grade','','',''),
  ('Garder','Regard','','',''),
  ('Guide','Digue','','',''),
  ('Lequel','Quelle','','',''),
  ('Ligne','Linge','','',''),
  ('Maison','Aimons','','',''),
  ('Marche','Charme','M�cher','Macher',''),
  ('Mien','Mine','','',''),
  ('Mienne','Ennemi','','',''),
  ('Ministre','Int�rims','','',''),
  ('Minute','Mutine','','',''),
  ('Nom','Mon','','',''),
  ('Obtenir','Robinet','','',''),
  ('Parmi','Prima','','',''),
  ('Partie','Pirate','','',''),
  ('P�dalier','D�plaire','','',''),
  ('Peur','Pure','','',''),
  ('Pirate','Partie','','',''),
  ('Point','Piton','','',''),
  ('Pointure','�ruption','�ruption','eruption',''),
  ('Porte','Opter','','',''),
  ('Pouce','Coupe','','',''),
  ('Poule','Loupe','','',''),
  ('Praticien','Anticiper','','',''),
  ('Premier','Empire','P�rimer','Perimer',''),
  ('Prendre','Reprend','','',''),
  ('Pr�sent','Serpent','','',''),
  ('Pr�senter','Serpenter','','',''),
  ('Pr�sident','Pr�disent','Predisent','',''),
  ('Pure','Peur','','',''),
  ('Rame','Mare','','',''),
  ('R�alit�','Atelier','','',''),
  ('R�sultat','Lutteras','','',''),
  ('Regard','Garder','','',''),
  ('Robinet','Obtenir','','',''),
  ('Rose','Oser','','',''),
  ('Samedi','Admise','','',''),
  ('Service','Viscere','Visc�re','',''),
  ('Semaine','Animes','','',''),
  ('Signe','Singe','','',''),
  ('Sombre','Ombres','','',''),
  ('Sorte','Store','','',''),
  ('Stade','Dates','','',''),
  ('Sure','Ruse','','',''),
  ('Terminale','Alimenter','','',''),
  ('Tir','Tri','','',''),
  ('Train','Riant','','',''),
  ('Une','Nue','','',''),
  ('Votre','Voter','','','')
 );

Var
 NombreDeBonneReponse,NombreDeMauvaiseReponse:Integer;
 I,J:Integer;
 Find:Boolean;
 Reponse:String;

Function StrToUpper(S:String):String;
Var
 I:Byte;
Begin
 For I:=1 to Length(S)do Begin
  If S[I] in['a'..'z']Then S[I]:=Chr(Ord(S[I])-32);
 End;
 StrToUpper:=S;
End;

BEGIN
 WriteLn('JEU - ANAGRAM');
 WriteLn;
 WriteLn('Le but du jeu est trouv� un mot connu ayant le m�me que le ');
 WriteLn('mot indiqu�. Ainsi, il faut d�placer les lettres d''un mot ');
 WriteLn('afin de trouv� un autre mot.');
 WriteLn;
 NombreDeBonneReponse:=0;
 NombreDeMauvaiseReponse:=0;
 For I:=0 to High(AnagramList)do Begin
  WriteLn('Trouver un anagramme du mot �',AnagramList[I,0],'� (Tapez QUIT pour terminer le jeu) ?');
  ReadLn(Reponse);
  If StrToUpper(Reponse)='QUIT'Then Break;
  Find:=False;
  For J:=1 to 4 do If StrToUpper(Reponse)=StrToUpper(AnagramList[I,J])Then Begin
   Find:=True;
   Break;
  End;
  If(Find)Then Begin
   Inc(NombreDeBonneReponse);
   WriteLn('Bonne r�ponse !');
  End
   Else
  Begin
   Inc(NombreDeMauvaiseReponse);
   WriteLn('Mauvaise r�ponse !');
  End;
 End;
 WriteLn('Vous avez ',NombreDeBonneReponse,' bonne r�ponse !');
 WriteLn('Vous avez ',NombreDeMauvaiseReponse,' mauvaise r�ponse !');
END.
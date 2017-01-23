{ALGORITHME Triangle
//BUT : Afficher un triangle croissant de caractère et un triangle décroissant d'entier
//ENTREE : Une constante MAX 
//SORTIE : Deux triangles 
CONST 
	MAX = 10 
TYPE 
	Tableau2char = Tableau [1..MAX,1..MAX] de caractère
	Tableau2int = Tableau [1..MAX,1..MAX] d'entier
PROCEDURE Tchar (VAR T1:Tableau2char)
VAR 
	i,j:entier
DEBUT 
	POUR i<-1 A MAX FAIRE
		DEBUT 
			POUR j<-1 A MAX FAIRE 
				DEBUT 
					SI i>=j ALORS 
						DEBUT 
							T1[i,j]<-"O"
						FINSI 
					SI i=j OU i=MAX OU J=1 ALORS 
						DEBUT 
							T1[i,j]<-"X" 
						FINSI
					ECRIRE(T1[i,j])
				FINPOUR 
		FINPOUR 
FINPROCEDURE 

PROCEDURE Tint (VAR T3:Tableau2int, VAR compteur:entier)
VAR 
	i,j:entier 
DEBUT 
	compteur<-0 
	POUR i<-MAX A 1 FAIRE 
		DEBUT  
			POUR j<-1 A MAX FAIRE 
				DEBUT 
					SI i>=j ALORS 
						DEBUT 
							T3[i,j]<-compteur 
							Write(T3[i,j])
						FINSI 
				FINPOUR 
			compteur<-compteur+1
		FINPOUR 
FINPROCEDURE

VAR 
		T2:Tableau[1..MAX,1..MAX] de caractère 
		T4:Tableau[1..MAX,1..MAX] d'entier 
		i,j,compteur:entier 
DEBUT 
	TChar(T2) 
	Tint(T4,compteur)
FIN. }




Program Triangle;
uses crt;
CONST
	MAX=10;
Type
	Tableau2char = Array [1..MAX,1..MAX] of Char;	// Tableau de caractère
	Tableau2int = Array [1..MAX,1..MAX] of integer;	// Tableau d'entier
// ---------- PROCEDURE D'INITIALISATION DU TABLEAU DE CARACTERE ----------	
Procedure TChar(VAR T1:Tableau2char);			
VAR
	i,j:integer;
BEGIN
	For i:=1 to MAX do
		Begin
			For j:=1 to MAX do
				Begin
					If i>=j then
						Begin	
							T1[i,j]:='O';			// Le tableau se rempli d'abbord de 'O'		
						End;
					If (i=j) OR (i=MAX) OR (J=1) then
						Begin
							T1[i,j]:='X';			// Puis les contours prennent le caractère 'X'
						End;
					Write(T1[i,j]);
				End;
			Writeln;
		End;
END;
// --------- PROCEDURE D'INITIALISATION DU TABLEAU D'ENTIER ----------
Procedure Tint(VAR T3:Tableau2int; VAR compteur:integer);
VAR
	i,j:integer;
BEGIN
	compteur:=0;
	For i:=MAX downto 1 do
		Begin
			For j:=1 to MAX do
				Begin
					If i>=j then
						Begin
							T3[i,j]:=compteur;		// Le compteur sert a changer les entiers a chaque ligne
							Write(T3[i,j]);			// Le tableau sest afficher dans le if pour n'afficher que lorsque i>=j (pour faire un triangle)
						End;
				End;
			compteur:=compteur+1;
			Writeln;
		End;
END;


Var
	T2:Array[1..MAX,1..MAX] of Char;
	T4:Array[1..MAX,1..MAX] of integer;
	i,j,compteur:integer;
BEGIN
	clrscr;
	TChar(T2);										// Appel de la première procedure
	writeln;	
	Tint(T4,compteur);								// Appel de la seconde procedure 
	Readln;
END.

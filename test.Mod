MODULE test;

IMPORT Files, Texts, Out := Console, Platform;

CONST path="Beautifier.Mod";

VAR
  T: Texts.Text;
  R: Texts.Reader;
  ch: CHAR;
  i, j, k : LONGINT;
BEGIN
NEW(T);
IF Files.Old(path) # NIL THEN
        Texts.Open(T, path);
        Texts.OpenReader(R, T, 0); Texts.Read(R, ch);
        WHILE ~R.eot DO
          Texts.Read(R, ch);
		  i := Texts.Pos(R);
		  Out.String("pos="); Out.Int(i,0); Out.String(" char="); Out.Char(ch); Out.Ln;
		  IF i = 21906 THEN
		    Out.String("21906"); Out.Ln;
			(*Platform.Delay(10000);*)
		  END;
        END;
END
END test.

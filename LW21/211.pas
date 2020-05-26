PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
  CodeArr = [' ', 'A' .. 'Z'];
TYPE
  Str = ARRAY [1 .. Len] OF ' ' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I, Count: INTEGER;
 
PROCEDURE Initialize(VAR Code: Chiper);
BEGIN 
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := '#';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'I';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := '!';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := '2';
  Code['P'] := 'K';
  Code['Q'] := '$';
  Code['R'] := 'D';
  Code['S'] := 'H';
  Code['T'] := '*';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'T';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A';
  Code[' '] := '%';
END;
 
PROCEDURE Encode(VAR S: Str; Count: INTEGER);
VAR
  Index: 1 .. Len;
BEGIN           
  FOR Index := 1 TO Count
  DO
    IF S[Index] IN CodeArr
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  
 
BEGIN 
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      I := 1;
      Count := 0;
      WHILE (NOT EOLN) AND (I <= Len)  
      DO
        BEGIN
          READ(Msg[I]);
          WRITE(Msg[I]);
          I := I + 1;
          Count := Count + 1
        END;
      READLN; 
      WRITELN;
      Encode(Msg, Count)   
    END
END.  

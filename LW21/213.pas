PROGRAM Decryption(INPUT, OUTPUT);
CONST
  Len = 20;
  Valid = [' ' .. 'Z'];
  CodeArr = [' ', 'A' .. 'Z'];
TYPE
  Str = ARRAY [1 .. Len] OF ' ' .. 'Z';
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I, CountCh: INTEGER;
  CodeFile: TEXT;
  FileError: BOOLEAN;
PROCEDURE ReadInitialize(VAR CodeFile: TEXT; VAR Code: Chiper; VAR FileError: BOOLEAN);
VAR
  Ch, ChCode: CHAR;
BEGIN 
  FileError := FALSE;
  WHILE (NOT EOF(CodeFile)) AND (NOT FileError)
  DO
    BEGIN
      READ(CodeFile, Ch);
      IF (Ch IN CodeArr) AND (NOT EOLN(CodeFile))
      THEN
        BEGIN
          READ(CodeFile, ChCode);
          IF ChCode IN Valid
          THEN 
            Code[ChCode] := Ch
          ELSE
            FileError := TRUE           
        END
      ELSE
        FileError := TRUE;     
      READLN(CodeFile)
    END        
END;  
PROCEDURE Encode(VAR S: Str; Code: Chiper; CountCh: INTEGER);
VAR
  Index: 1 .. Len;
BEGIN  
  FOR Index := 1 TO CountCh 
  DO
    IF S[Index] IN CodeArr
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  
BEGIN 
  ASSIGN(CodeFile, 'Code.txt');
  RESET(CodeFile);
  ReadInitialize(CodeFile, Code, FileError);
  CLOSE(CodeFile);
  IF NOT FileError
  THEN
    BEGIN 
      WHILE NOT EOF
      DO
        BEGIN
          I := 1;
          CountCh := 0;
          WHILE (NOT EOLN) AND (I <= Len)
          DO
            BEGIN
              READ(Msg[I]);
              WRITE(Msg[I]);
              I := I + 1;
              CountCh := CountCh + 1
            END;
          READLN;
          WRITELN; 
          Encode(Msg, Code, CountCh)
        END
    END      
  ELSE
    WRITELN('FILE ERROR')  
END.  

PROGRAM RunPaulRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Pos_name: BYTE;
  Str_name: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  Pos_name := POS('name', GetEnv('QUERY_STRING'));
  IF Pos_name  <> 0
  THEN
    BEGIN
      Str_name := COPY(GetEnv('QUERY_STRING'), LENGTH('name=') + 1, LENGTH(GetEnv('QUERY_STRING')) - LENGTH('name'));
      IF LENGTH(Str_name) <> 0
      THEN
        WRITELN('Hello, ', Str_name, '!')
      ELSE
        WRITELN('Hello, Anonymous!')
    END
 ELSE
   WRITELN('Hello, Anonymous!')
END.


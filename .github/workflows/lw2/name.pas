PROGRAM RunPaulRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') <> ''
  THEN
    WRITELN('HELLO DEAR, ', Name)
  ELSE
    WRITELN('HELLO DEAR, ANONYMOUS')
END.


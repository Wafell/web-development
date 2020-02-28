PROGRAM RunPaulRevere(INPUT, OUTPUT);
USES
  DOS;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') <> ''
  THEN
    WRITELN('HELLO DEAR, ', GetEnv('QUERY_STRING'))
  ELSE
    WRITELN('HELLO DEAR, ANONYMOUS')
END.


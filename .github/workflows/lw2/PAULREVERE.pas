PROGRAM RunPaulRevere(INPUT, OUTPUT);
USES
  DOS;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('The British are coming by sea.')
  ELSE
    IF GetEnv('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      WRITELN('The North Church shows only ''', GETENV('QUERY_STRING'), '''.')
END.


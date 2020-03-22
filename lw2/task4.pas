PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  PStart, PLenght, PEnd: BYTE;
BEGIN
  PStart :=  POS(Key, GetEnv('QUERY_STRING')) + LENGTH(Key) + LENGTH('=');
  IF PStart <> 0
  THEN
    BEGIN
      IF COPY(GetEnv('QUERY_STRING'), PStart, 1) <> '='
      THEN
        BEGIN
          PEnd := PStart;
          WHILE (PEnd <> LENGTH(GetEnv('QUERY_STRING'))) AND (COPY(GetEnv('QUERY_STRING'), PEnd, 1) <> '&')
          DO
            PEnd := PEnd + 1;
          IF COPY(GetEnv('QUERY_STRING'), PEnd, 1) = '&'
          THEN
            PLenght := PEnd - PStart
          ELSE
            PLenght := PEnd - PStart + 1;
          GetQueryStringParameter := COPY(GetEnv('QUERY_STRING'), PStart, PLenght)
        END
    END
END;
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}


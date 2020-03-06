PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
BEGIN
  IF GetEnv('QUERY_STRING') = First Name
  THEN
    WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  ELSE
    IF GetEnv('QUERY_STRING') = Last Name 
    THEN
      WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
    ELSE
      IF GetEnv('QUERY_STRING') = Age
      THEN
        WRITELN('Age: ', GetQueryStringParameter('age')); 
END;
BEGIN {WorkWithQueryString}
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}


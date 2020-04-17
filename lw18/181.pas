PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  InputError: CHAR;
BEGIN {AverageScore}
  InputError := '1';
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  WHILE (Student <= ClassSize) AND (InputError = '1')
  DO 
    BEGIN
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 1;
      WHILE (WhichScore <= NumberOfScores) AND (InputError = '1')
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(NextScore);
              TotalScore := TotalScore + NextScore;
              WhichScore := WhichScore + 1
            END
          ELSE
            InputError := '2'    
        END;
      IF InputError = '2'
      THEN
        WRITELN('ОШИБКА ВВОДА ДАННЫХ');  
      READLN;    
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD 10 >= 5
      THEN
        WRITELN(Ave DIV 10 + 1)
      ELSE
        WRITELN(Ave DIV 10);
      ClassTotal := ClassTotal + TotalScore
    END;
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}

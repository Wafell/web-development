PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  Error, InputError, Ch: CHAR;
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  Error := '1';
  InputError := '1';
  WHILE (Student <= ClassSize) AND (Error = '1') AND (InputError = '1') 
  DO 
    BEGIN
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 1;
      Ch := '1';
      IF EOLN
      THEN
        InputError := '2';
      WHILE (Ch <> ' ') AND (InputError = '1')
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(Ch);
              WRITE(Ch)
            END 
        END;
      WHILE (WhichScore <= NumberOfScores) AND (Error = '1') AND (InputError = '1')  
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(NextScore);
              IF (NextScore >= 0) AND (NextScore <= 100)  
              THEN
                BEGIN
                  TotalScore := TotalScore + NextScore;
                  WhichScore := WhichScore + 1
                END
              ELSE
                BEGIN
                  Error := '2'  
                END  
            END 
          ELSE
            InputError := '2'   
        END;
      IF InputError = '2' 
      THEN 
        WRITELN('ERROR'); 
      IF Error = '2'
      THEN
        WRITELN('Data entry error');
      IF Error = '1' 
      THEN
        BEGIN      
          READLN;    
          TotalScore := TotalScore * 10;
          Ave := TotalScore DIV NumberOfScores;
          IF Ave MOD 10 >= 5
          THEN
            WRITELN(Ave DIV 10 + 1)
          ELSE
            WRITELN(Ave DIV 10);
          ClassTotal := ClassTotal + TotalScore
        END
    END;
  IF Error = '1'
  THEN
    BEGIN   
      WRITELN;
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
      WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
    END
END.  {AverageScore}

CREATE FUNCTION ReplaceInvChar
  (
  str varchar(5000)
  )
  RETURNS varchar(5000)
  BEGIN
    SELECT 
      replace(str, char(invisible_char), '') INTO str
    FROM (
      SELECT 1 AS invisible_char
        UNION
      SELECT 9
        UNION
      SELECT 10
        UNION
      SELECT 11
        UNION
      SELECT 12
        UNION
      SELECT 13
        UNION
      SELECT 14
        UNION
      SELECT 28
        UNION
      SELECT 31
        UNION
      SELECT 129
        UNION
      SELECT 141
        UNION
      SELECT 143
        UNION
      SELECT 144
        UNION
      SELECT 157
        UNION
      SELECT 160
    ) AS A;

    RETURN str;
  END
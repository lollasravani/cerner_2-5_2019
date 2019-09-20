(* cerner_2^5_2019 *)
(* Convert  Celsius temperature to Fahrenheit *)
PROGRAM Convert;
  VAR
  Celsius,  Fahrenheit: REAL;
  BEGIN
  Write('Enter  Degrees C: ');
  Read(Celsius);
  Fahrenheit :=  (9.0 / 5.0) * Celsius + 32.0;
  Write('Fahrenheit  is ');
  Write(ROUND(Fahrenheit));
  END.
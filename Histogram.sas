/* Script to generate an histogram */

%let interval = BodyTem HeartRate;

proc univariate data = stat1.normtemp noprint;
 
  var &interval;
  histogram &interval / normal kernel;
  inset n mean std / position = ne;
  title "distributions";
  run;

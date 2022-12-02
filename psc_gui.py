* importing the data;
proc import datafile = '/home/u62322946/EDA/diabetes.csv'
 out = work.mydata
 dbms = CSV;
run;

*printing;
proc print 
	data=work.mydata;
run;

proc means data=work.mydata 
mean median mode std var min max;

proc means data=work.mydata nmiss;

data cleanData;
 set mydata; 
 if Age = . or Glucose = . then delete;
run;

proc means data=cleanData nmiss;

proc sql;
select count(distinct 'Pregnancies'n) as 'Pregnancies'n,
       count(distinct Age) as Age,
       count(distinct Outcome) as Outcome,
       count(distinct BMI) as BMI
  from cleanData;
  
proc stdize data=cleanData out=normalized_data;
   var _numeric_;
run;

ods graphics / reset width=6.4in height=4.8in imagemap;
proc sgplot data=cleanData;
	histogram 'BMI'n /;
	
ods graphics / reset width=6.4in height=4.8in imagemap;
proc sgplot data=normalized_data;
	histogram 'BMI'n /;
	
	
ods graphics on;
proc Univariate data=cleanData;
var Glucose;
run;
quit;

proc freq data=cleanData;
table Age*Outcome;
run;

ods graphics on;
proc gplot data=cleanData;
plot Age*BMI;
run;
quit;

PROC MEANS DATA=cleanData;
  CLASS Outcome;
  VAR Glucose Age BMI BloodPressure;
RUN;

PROC SGPLOT DATA=cleanData;
  VBOX Age / CATEGORY=Outcome;
RUN;

PROC SGPLOT DATA=cleanData;
  VBOX Glucose / CATEGORY=Outcome;
RUN;

PROC SGPLOT DATA=cleanData;
  VBOX BloodPressure / CATEGORY=Outcome;
RUN;

ods graphics / reset width=6.4in height=4.8in imagemap;
proc sgplot data=cleanData;
	scatter x='Glucose'n y='DiabetesPedigreeFunction'n /;
	xaxis grid;
	yaxis grid;
	
ods graphics / reset;


ods noproctitle;
ods graphics / imagemap=on;
proc corr data=cleanData pearson nosimple noprob plots=none;
	var 'Glucose'n 'Age'n 'BMI'n 'Insulin'n 'BloodPressure'n 'SkinThickness'n;
run;

ods graphics / reset width=6.4in height=4.8in imagemap;
proc sgplot data=cleanData;
	vbox 'Age'n  / category='Pregnancies'n;
	yaxis grid;
run;
ods graphics / reset;

ods graphics / reset width=6.4in height=4.8in imagemap;
proc sgplot data=cleanData;
	vbox 'Age'n  / category='Outcome'n;
	yaxis grid;
run;
ods graphics / reset;

proc sgplot data=cleanData;
  vbar Pregnancies / response=Glucose stat=sum group=Outcome nostatlabel
         groupdisplay=cluster;
  xaxis display=(nolabel);
  yaxis grid;
  run;




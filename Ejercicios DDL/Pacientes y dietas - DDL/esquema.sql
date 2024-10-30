--------------------------------------------------------
--  File created - martes-mayo-04-2010   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DIETA_TIPO
--------------------------------------------------------

  CREATE TABLE "DIETA_TIPO" 
   (	"ID_DIETA" NUMBER(9,0), 
	"OBJETIVO" VARCHAR2(100), 
	"FECHA_ALTA" DATE, 
	"RESULTADOS" VARCHAR2(100), 
	"PACIENTE_EXPERIMENTO" VARCHAR2(9)
   ) ;
--------------------------------------------------------
--  DDL for Table PACIENTES
--------------------------------------------------------

  CREATE TABLE "PACIENTES" 
   (	"DNI" VARCHAR2(9), 
	"SEGURIDAD_SOCIAL" VARCHAR2(25), 
	"NOMBRE_COMPLETO" VARCHAR2(200), 
	"FECHA_NACIMIENTO" DATE, 
	"PESO" NUMBER(4,2), 
	"ALTURA" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PACIENTES_RIESGO
--------------------------------------------------------

  CREATE TABLE "PACIENTES_RIESGO" 
   (	"HISTORIAL_ENFERMEDADES" VARCHAR2(400), 
	"NOMBRE_MEDICO" VARCHAR2(100), 
	"CIUDAD" VARCHAR2(100), 
	"SEGURIDAD_SOCIAL" VARCHAR2(25), 
	"NOMBRE_COMPLETO" VARCHAR2(200), 
	"FECHA_NACIMIENTO" DATE, 
	"PESO" NUMBER(4,2), 
	"ALTURA" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table RECETAS
--------------------------------------------------------

  CREATE TABLE "RECETAS" 
   (	"NOMBRE" VARCHAR2(100), 
	"CALORIAS" NUMBER(4,1), 
	"WEB" VARCHAR2(100), 
	"PREPARACION" VARCHAR2(1000), 
	"INGREDIENTES" VARCHAR2(1000)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE DIETA_TIPO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DIETA_TIPO

---------------------------------------------------
--   END DATA FOR TABLE DIETA_TIPO
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE RECETAS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RECETAS
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Ensalada Maiz Manzana',220,'http://www.adelgazar.net/cocina/recetasEnsaladas04.htm','Pelar la manzana y cortarla en cuadraditos. Cortar los tomates por la mitad. Mezclar en una fuente estos dos ingredientes con el ma�z, los esp�rragos y el at�n desmigado.','1 Bote peque�o de ma�z
10 Tomates cherry
1 Lata de at�n en aceite
1 Bote de puntas de esp�rragos
1 Manzana
1 cucharada de aceite de oliva
1/2 cucharadita de mostaza
Un chorrito de vinagre
');
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Tortilla de Calabacines',250,'http://www.adelgazar.net/cocina/recetasHuevos02.htm','Lavar bien y cortar el calabac�n, sin pelar, en cuadraditos peque�os; picar el ajo y el perejil. Echar las tres cosas en una sart�n antiadherente, con la cucharada de aceite, y hacer unos 15 o 20 minutos hasta que el calabac�n est� blando.
Batir los huevos y a�adirles el calabac�n previamente escurrido (dejando en la sart�n el aceite sobrante). A�adir una pizca de sal y pimienta, dejando despu�s que repose la mezcla 5 minutos. 
Poner otra vez al fuego la misma sart�n, sin a�adir m�s aceite, y cuando est� caliente echar la mezcla de huevo y calabac�n. Pasado un par de minutos, doblamos la tortilla por la mitad, como una empanadilla, y hacemos por ambas caras hasta el punto deseado.','1/2 Calabac�n mediano (o 1 peque�o)
2 huevos
1 cucharada de aceite de oliva
1 diente de ajo
Perejil, sal y pimienta');
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Merluza con guisantes',210,'http://www.adelgazar.net/cocina/recetasPescados05.htm','Picar finamente el ajo y la cebolla y echarlos a una sart�n grande antiadherente con la cucharada de aceite. Sofre�r hasta que la cebolla est� blanda.

Salar un poco las rodajas de merluza, rebozarlas con pan rayado por sus dos caras y echarlas a la sart�n. Hacer 5 minutos por cada cara.

Incorporar los guisantes con su caldo y el azafr�n, removiendo con cuidado para no romper las rodalas. Espolvorear por encima el perejil y servir.','1/2 kilo de merluza en 2 rodajas
100 gr de guisantes en conserva
1 cebolla
1 diente de ajo
1 cucharada de aceite de oliva
2 cucharaditas de perejil picado
Un poco de pan rallado
Unas hebras de azafr�n (o, en su      defecto, colorante alimentario');

---------------------------------------------------
--   END DATA FOR TABLE RECETAS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PACIENTES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PACIENTES

---------------------------------------------------
--   END DATA FOR TABLE PACIENTES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PACIENTES_RIESGO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PACIENTES_RIESGO

---------------------------------------------------
--   END DATA FOR TABLE PACIENTES_RIESGO
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table DIETA_TIPO
--------------------------------------------------------

  ALTER TABLE "DIETA_TIPO" ADD PRIMARY KEY ("ID_DIETA") ENABLE;
--------------------------------------------------------
--  Constraints for Table PACIENTES
--------------------------------------------------------

  ALTER TABLE "PACIENTES" MODIFY ("SEGURIDAD_SOCIAL" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES" MODIFY ("NOMBRE_COMPLETO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES" MODIFY ("PESO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES" MODIFY ("ALTURA" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES" ADD PRIMARY KEY ("DNI") ENABLE;
 
  ALTER TABLE "PACIENTES" ADD UNIQUE ("SEGURIDAD_SOCIAL") ENABLE;
--------------------------------------------------------
--  Constraints for Table PACIENTES_RIESGO
--------------------------------------------------------

  ALTER TABLE "PACIENTES_RIESGO" MODIFY ("SEGURIDAD_SOCIAL" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES_RIESGO" MODIFY ("NOMBRE_COMPLETO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES_RIESGO" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES_RIESGO" MODIFY ("PESO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES_RIESGO" MODIFY ("ALTURA" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTES_RIESGO" ADD UNIQUE ("SEGURIDAD_SOCIAL") ENABLE;
--------------------------------------------------------
--  Constraints for Table RECETAS
--------------------------------------------------------

  ALTER TABLE "RECETAS" ADD PRIMARY KEY ("NOMBRE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIETA_TIPO
--------------------------------------------------------

  ALTER TABLE "DIETA_TIPO" ADD FOREIGN KEY ("PACIENTE_EXPERIMENTO")
	  REFERENCES "PACIENTES" ("DNI") ENABLE;




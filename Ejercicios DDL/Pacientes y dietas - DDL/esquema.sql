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
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Ensalada Maiz Manzana',220,'http://www.adelgazar.net/cocina/recetasEnsaladas04.htm','Pelar la manzana y cortarla en cuadraditos. Cortar los tomates por la mitad. Mezclar en una fuente estos dos ingredientes con el maíz, los espárragos y el atún desmigado.','1 Bote pequeño de maíz
10 Tomates cherry
1 Lata de atún en aceite
1 Bote de puntas de espárragos
1 Manzana
1 cucharada de aceite de oliva
1/2 cucharadita de mostaza
Un chorrito de vinagre
');
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Tortilla de Calabacines',250,'http://www.adelgazar.net/cocina/recetasHuevos02.htm','Lavar bien y cortar el calabacín, sin pelar, en cuadraditos pequeños; picar el ajo y el perejil. Echar las tres cosas en una sartén antiadherente, con la cucharada de aceite, y hacer unos 15 o 20 minutos hasta que el calabacín esté blando.
Batir los huevos y añadirles el calabacín previamente escurrido (dejando en la sartén el aceite sobrante). Añadir una pizca de sal y pimienta, dejando después que repose la mezcla 5 minutos. 
Poner otra vez al fuego la misma sartén, sin añadir más aceite, y cuando esté caliente echar la mezcla de huevo y calabacín. Pasado un par de minutos, doblamos la tortilla por la mitad, como una empanadilla, y hacemos por ambas caras hasta el punto deseado.','1/2 Calabacín mediano (o 1 pequeño)
2 huevos
1 cucharada de aceite de oliva
1 diente de ajo
Perejil, sal y pimienta');
Insert into RECETAS (NOMBRE,CALORIAS,WEB,PREPARACION,INGREDIENTES) values ('Merluza con guisantes',210,'http://www.adelgazar.net/cocina/recetasPescados05.htm','Picar finamente el ajo y la cebolla y echarlos a una sartén grande antiadherente con la cucharada de aceite. Sofreír hasta que la cebolla esté blanda.

Salar un poco las rodajas de merluza, rebozarlas con pan rayado por sus dos caras y echarlas a la sartén. Hacer 5 minutos por cada cara.

Incorporar los guisantes con su caldo y el azafrán, removiendo con cuidado para no romper las rodalas. Espolvorear por encima el perejil y servir.','1/2 kilo de merluza en 2 rodajas
100 gr de guisantes en conserva
1 cebolla
1 diente de ajo
1 cucharada de aceite de oliva
2 cucharaditas de perejil picado
Un poco de pan rallado
Unas hebras de azafrán (o, en su      defecto, colorante alimentario');

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




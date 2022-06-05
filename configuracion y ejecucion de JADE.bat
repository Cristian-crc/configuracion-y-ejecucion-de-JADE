@echo off
setlocal enabledelayedexpansion
color 0a
title TAREA Nº 5 IA
echo Ingrese password:
echo El password es: crc
set/p "pass=>"
if NOT %pass%== crc goto :echo ERROR DE DATOS FAIL
:menu
set /a cont=1
set ast=
cls
echo ===========================================================================
echo ====                  TAREA:5 :ALEX CRISTIAN            UNS"XX"         ===
echo ====                           RAMOS COLQUE                             ===
echo ====          		                                                ===
echo ====.                                                                   ===
echo ====          OPCIONES                                                  ===
echo ====          0 : CONFIGURACION AUTOMÁTICA DE VARIABLE DE ENTORNO       ===
echo ====          1 : CONFIGURACION DE ARCHIVOS JADE-all-4.5.0 complet...   ===
echo ====          2 : ELIMINAR ARCHIVOS INNECESARIOS complet....		===
echo ====          3 : INICIAR JADE						===
echo ====          4 : NUEVO AGENTE						===
echo ====          5 : SALIR                                                 ===
echo ====								    	===
echo ====	    			 ..###'                   '###,.        ===
echo ====	    			'####;       .ooooo.       ;####'       ===
echo ==== 	       			   '##,   .o8P"""""Y8o.   ,##'          ===
echo ====		 		    '##, 88'         '88 ,##'		===
echo ==== 		  		     '##8'             '8##'		===
echo ====	  			      '#8   ,o.   .o,   8#'		===
echo ====	    			        8 8 888; :888 8 8		===
echo ====	    				8Y '88'   '88' Y8		===
echo ====	    				P       8      'Y		===
echo ====	    				b      888      d		===
echo ====	     				 `8b         d8`		===
echo ====	      				  88'"88888"'88			===
echo ====	      				  8 `"""""""` 8			===
echo ====	       				   `8ooooooo8`			===
echo ====	      				 ,##'       '##,		===
echo ====	        		        ,##'         '##,		===
echo ====	     			       ,##'           '##,		===
echo ====       			   .#####,              ,#####.		===
echo ====	 			      `##' 		'##`		===
echo ====								    	===
echo ===========================================================================
echo.
set /p ver= QUE OPCION DESEA EJECUTAR   :
if %ver%== 0 goto Paso1
if %ver%== 1 goto Paso2
if %ver%== 2 goto reinicio
if %ver%== 3 goto Primero	
if %ver%== 4 goto Segundo
if %ver%== 5 goto salir

:Paso1
cls 
color 0c
Echo Paso 1 realizado con exito !!!
Echo ......
set /p iniciar la configuracion de la variable de entorno :
setx CLASSPATH "%%CLASSPATH%%;.;C:\jade\lib\jade.jar;C:\jade\lib\commons-codec\commons-codec-1.3.jar;C:\jade\src"
Echo Precione una tecla para volver al menu
Pause>Nul
goto menu


:Paso2
cls 
color 0c
Echo Paso 2 realizado con exito !!!
Echo ......
set /p Configurando sus archivos espere....:
COPY "D:\JADE-all-4.5.0.zip" "C:\"
"C:\Archivos de programa\WinRAR\Winrar.exe" x C:\JADE-all-4.5.0.zip C:\
"C:\Archivos de programa\WinRAR\WinRAR.exe" x C:\*.zip C:\
Echo Precione una tecla para volver al menu
Pause>Nul
goto menu

:reinicio
cls 
color 08
Echo Reinicio con exito !!!
Echo ......
set /p Eliminamos los archivos zip ya no serviran:
DEL /A /F C:\*.zip
net start cmd.exe
Echo Precione una tecla para volver al menu
Pause>Nul
goto menu

:Primero
cls 
color 0c
Echo Inicio de JADE
Echo ......
set /p iniciar JADE:
java jade.Boot -gui
Echo Precione una tecla para volver al menu
Pause>Nul
goto menu


:Segundo
cls 
color 0e
Echo Crear Agente NUevo
set /p Agente=Ingrese nombre del Agente =
set /p Archivo=Ingrese nombre del archivo(class) =
javac holaJade.java
start java jade.Boot -gui %Agente%:%Archivo%
Echo Precione una tecla para volver al menu
Pause>Nul
goto menu


:salir
color 0a
cls
echo =================================================================
echo ===                                                           ===
echo ===                                                           ===
echo ===	   FELICIDADES !!! YA ESTA CONFIGURADO JADE        ===
echo ===                                                           ===
echo ===                POWERED BY ALEX CRC                        ===
echo ===                                                           ===
echo ===                                                           ===
echo =================================================================
echo Credit.
echo 				gerges_2017
pause
exit
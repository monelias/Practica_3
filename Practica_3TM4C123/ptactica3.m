clc; 
clear; 
close all;
txt = "Mon";
instrresets = serial('COM7','BaudRate',115200);
s.Terminator = 0;
 fopen(s);
while txt ~= "salir"
	prompt = "Introduzca mensaje: ";
	txt = input(prompt,"s");
	fprintf(s,txt);
	C = fscanf(s,"%s");
	fprintf("Mensaje de la tiva %s \n",C);
end
fclose(s);
instrreset
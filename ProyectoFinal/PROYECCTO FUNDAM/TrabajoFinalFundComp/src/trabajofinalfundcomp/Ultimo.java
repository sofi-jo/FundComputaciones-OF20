
package trabajofinalfundcomp;

import java.util.Scanner;

public class Ultimo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String equipo;
        int numEquipos;
        int ganado = 0, perdido = 0, empatado = 0, puntosGanados = 0, puntosEmpatados = 0, fechas = 0;

        System.out.println("Ingrese el numero de equipos");
        numEquipos = sc.nextInt();
        String[] equipos = new String[numEquipos];
        String tablap[][] = new String[numEquipos][5];
        for (int i = 0; i < numEquipos; i++) {
            System.out.println("ingrese Equipo: ");
            equipo = sc.next();
            equipos[i] = equipo;
        }
        System.out.println("Ingrese fechas jugadas:");
        fechas = sc.nextInt();
        for (int i = 0; i < numEquipos; i++) {
            for (int j = 0; j < fechas; j++) {
                System.out.println("EQUIPO " + equipos[i]);
                System.out.println("FECHA " + (j + 1));
                System.out.println("Escriba resultado (1 Ganado, 2 perdido, 3 empate)");
                int resultado = sc.nextInt();

                switch (resultado) {
                    case 1:
                        ganado = ganado + 1;
                        puntosGanados = puntosGanados + 3;
                        break;
                    case 2:
                        perdido = perdido + 1;
                        break;
                    case 3:
                        empatado = empatado + 1;
                        puntosEmpatados = puntosEmpatados + 1;
                        break;
                }
            }

            tablap[i][0] = equipos[i];
            tablap[i][1] = Integer.toString(ganado);
            tablap[i][2] = Integer.toString(perdido);
            tablap[i][3] = Integer.toString(empatado);
            tablap[i][4] = Integer.toString(puntosGanados + puntosEmpatados);
            ganado = 0;
            perdido = 0;
            empatado = 0;
            puntosGanados = 0;
            puntosEmpatados = 0;
        }

        for (int i = 0; i < numEquipos; i++) {
            for (int j = 0; j < 5; j++) {
                for (int k = 0; k < numEquipos; k++) {
                    for (int l = 0; l < numEquipos; l++) {
                        if (Integer.parseInt(tablap[i][4]) > Integer.parseInt(tablap[k][4])) {
                            String aux = tablap[i][0];
                            tablap[i][0] = tablap[k][0];
                            tablap[k][0] = aux;
                            aux = tablap[i][1];
                            tablap[i][1] = tablap[k][1];
                            tablap[k][1] = aux;
                            aux = tablap[i][2];
                            tablap[i][2] = tablap[k][2];
                            tablap[k][2] = aux;
                            aux = tablap[i][3];
                            tablap[i][3] = tablap[k][3];
                            tablap[k][3] = aux;
                            aux = tablap[i][4];
                            tablap[i][4] = tablap[k][4];
                            tablap[k][4] = aux;
                        }
                    }
                }
            }
        }

        System.out.println("Ingrese opcion a presentar");
        System.out.println("1. Presentar el historial de un equipo determinado");
        System.out.println("2 . Presentar la tabla de posiciones.");
        System.out.println("Elija una opcion para continuar.");
        int op = sc.nextInt();
        switch (op) {
            case 1:
                System.out.println("Ingrese el equipo");
                String equipoPresent = sc.next();
                for (int i = 0; i < numEquipos; i++) {
                    for (int j = 0; j < 5; j++) {
                        if (equipoPresent.equals(equipos[i])) {
                            System.out.printf("EQ\tG\tP\tE\tTP");
                            System.out.printf("%s\t", tablap[i][j]);
                        }
                    }
                }

                break;
            case 2:
                System.out.printf("EQ\tG\tP\tE\tTP\n");
                for (int i = 0; i < numEquipos; i++) {
                    for (int j = 0; j < 5; j++) {
                        System.out.printf("%s\t", tablap[i][j]);
                    }
                    System.out.printf("\n");
                }
                break;
        }
    }
}

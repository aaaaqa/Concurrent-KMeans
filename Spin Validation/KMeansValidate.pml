#define wait(S) atomic{S>0 -> S--}
#define signal(S) S++

#define nClusters 5
#define nIters 5
#define nPoints 30

// En promela no no existen arreglos multidimensionales nativamente
// De este modo definiremos los puntos en dos arreglos
// Un arreglo para la dimension X y otro para la Y

// definiendo centroides (cluster) en puntos aleatorios
int centroidX[nClusters] = { 16, 26,  7, 27, 29 }
int centroidY[nClusters] = {  4, 16,  5,  6, 16 }
// contador de puntos por cluster
int clusterPoints[nClusters]
// label de cluster por punto del conjunto de datos
int labels[nPoints]
// definiendo un conjunto de datos aleatorio
int dataX[nPoints] = { 29,  9, 17, 28, 23, 21, 25, 13, 15, 15, 25,  7, 22,  6, 21, 15, 17, 21, 13, 27,  9,  4, 23, 23,  5,  9, 18, 22, 13, 11 }
int dataY[nPoints] = { 22, 13, 14, 27, 23, 17,  9, 25, 25, 27, 26, 14, 23,  0, 16, 11, 28, 16, 27, 27,  1,  6,  5, 20,  8,  6,  7, 29,  4,  7 }
// contador de puntos procesados para esperar
int count = nPoints
// semaforo
byte mutex = 1

// valor de validacion
byte cc = 0

proctype UpdateLabel(int i) {
    //NCS
    int minDist = nPoints
    int minIdx = 0

    //CS
    wait(mutex)
    cc++
    int j
    for (j : 0 .. nClusters - 1) {
        // Distancia Manhattan
        // No usamos Euclidiana por falta de puntos flotantes
        // Y funcion para raiz cuadrada en Promela
        int dist = 0

        // Calculando |X1i - X2i|
        int distX
        if
        :: centroidX[j] > dataX[i] ->
            distX = centroidX[j] - dataX[i]
        :: else ->
            distX = dataX[i] - centroidX[j]
        fi

        // Calculando |Y1i - Y2i|
        int distY
        if
        :: centroidY[j] > dataY[i] ->
            distY = centroidY[j] - dataY[i]
        :: else ->
            distY = dataY[i] - centroidY[j]
        fi

        dist = distX + distY

        if
        :: dist < minDist ->
            minDist = dist
            minIdx = j
        :: else ->
        fi
    }
    labels[i] = minIdx
    count--
    cc--
    signal(mutex)
}

active proctype main() {
    printf("Clusters iniciales\n")
    int i
    for (i : 0 .. nClusters - 1) {
        printf("%d, %d\n", centroidX[i], centroidY[i])
    }

    int iter
    for (iter : 0 .. nIters - 1) {
        printf("Iteracion %d comenzada.\n", iter + 1)
        //int i
        for (i : 0 .. nPoints - 1) {
            // Generando las funciones concurrentes
            run UpdateLabel(i)
        }
        // Waitgroup
        atomic { count < 1 -> count = nPoints }

        // Actualizar los centroides, inicializar en 0
        for (i : 0 .. nClusters - 1) {
            centroidX[i] = 0
            centroidY[i] = 0
            clusterPoints[i] = 0
        }
        // Recorrer los puntos y sumar los valores
        for (i : 0 .. nPoints - 1) {
            int a = labels[i]
            clusterPoints[a]++
            centroidX[a] = centroidX[a] + dataX[i]
            centroidY[a] = centroidY[a] + dataY[i]
        }
        //Actualizar centroides en el punto promedio
        for (i : 0 .. nClusters - 1) {
            centroidX[i] = centroidX[i] / clusterPoints[i]
            centroidY[i] = centroidY[i] / clusterPoints[i]
        }

        for (i : 0 .. nClusters - 1) {
            printf("%d, %d\n", centroidX[i], centroidY[i])
        }
        //printf("Iteracion %d terminada.\n", iter + 1)
    }
    printf("\nEntrenamiento terminado.\n")
    //int i
    for (i : 0 .. nClusters - 1) {
        printf("%d, %d\n", centroidX[i], centroidY[i])
    }
}
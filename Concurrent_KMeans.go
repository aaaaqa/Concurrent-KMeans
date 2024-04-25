package main

import (
	"fmt"
	"math"
	"math/rand"
	"time"
	"sync"
)

type KMeans struct {
	nClusters 	int
	maxIters  	int
	centroids 	[][]float64
	labels	  	[1000000]int
	wait_group	sync.WaitGroup
	mutex		sync.Mutex
}

func NewKMeans(nClusters, maxIters int) *KMeans {
	return &KMeans{
		nClusters: nClusters,
		maxIters:  maxIters,
	}
}

func (kMeans *KMeans) assignLabels(X [][]float64) {

	kMeans.wait_group.Add(len(X))

	for i := 0; i < len(X); i++ {
		go func(i int, x [][]float64) {
			defer kMeans.wait_group.Done()

			minDist := math.MaxFloat64
			var minIdx int

			for j, c := range kMeans.centroids {
				dist := euclideanDistance(X[i], c)
				if dist < minDist {
					minDist = dist
					minIdx = j
				}
			}
			kMeans.labels[i] = minIdx
		}(i, X)
	}
	kMeans.wait_group.Wait()
}

func (kMeans *KMeans) updateCentroids(X [][]float64) bool {
	newCentroids := make([][]float64, kMeans.nClusters)
	
	for i := range newCentroids {
		newCentroids[i] = make([]float64, 2)
	}
	counts := make([]int, kMeans.nClusters)
	
	for i := range X {
		for j:= range X[i] {
			newCentroids[kMeans.labels[i]][j] += X[i][j]
		}
		counts[kMeans.labels[i]]++
	}

	for i := range newCentroids {
		for j := range newCentroids[i] {
			newCentroids[i][j] /= float64(counts[i])
		}
	}

	if kMeans.checkConvergence(newCentroids) {
		return true
	}

	kMeans.centroids = newCentroids

	return false
}

func (kMeans *KMeans) checkConvergence(a [][]float64) bool {
	for i, c := range kMeans.centroids {
		var count int
		for j, v := range c {
			if math.Abs(v-a[i][j]) > 1e-2  {
				count++
			}
		}
		if count == len(kMeans.centroids[0]) {
			return false
		}
	}
	return true
}

func euclideanDistance(a, b []float64) float64 {
	var sum float64
	for i := range a {
		temp := a[i] - b[i]
		sum += temp * temp
	}
	return sum
}

func (kMeans *KMeans) Fit(X [][]float64) {
	kMeans.centroids = make([][]float64, kMeans.nClusters)
	
	for i := range kMeans.centroids {
		kMeans.centroids[i] = make([]float64, len(X[i]))
		for j := range kMeans.centroids[i] {
			kMeans.centroids[i][j] = X[rand.Intn(len(X))][j]
		}
	}

	kMeans.assignLabels(X)

	for iter := 0; iter < kMeans.maxIters; iter++ {
		
		fmt.Println("Iterations: ", iter)
		if kMeans.updateCentroids(X) {
			fmt.Println("Ha llegado a convergencia.")
			break
		}
		kMeans.assignLabels(X)

		
	}
}

func createArrayValues(min, max float64) [][]float64 {
	X := make([][]float64, 1000000)
	
	for i := range X {
		X[i] = make([]float64, 2)
		for j := range X[i] {
			X[i][j] = min + rand.Float64() * (max - min)
		}
	}

	return X
}

func main() {
	//rand.Seed(time.Now().UnixNano())
	rand.Seed(42)
	start := time.Now()
	X := createArrayValues(0.0, 1000.0)
	kmeans := NewKMeans(10, 100)
	kmeans.Fit(X)

	fmt.Println("Final Centroids:", kmeans.centroids)
	fmt.Println("Execution Time: ", time.Since(start))
}
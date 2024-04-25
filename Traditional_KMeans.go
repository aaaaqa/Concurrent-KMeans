package main

import (
	"fmt"
	"math"
	"math/rand"
	"time"
)

type KMeans struct {
	nClusters int
	maxIters  int
	centroids [][]float64
	labels	  []int
}

func NewKMeans(nClusters, maxIters int) *KMeans {
	return &KMeans{
		nClusters: nClusters,
		maxIters:  maxIters,
	}
}

func (kMeans *KMeans) assignLabels(X [][]float64) {

	for i := 0; i < len(X); i++ {
		minDist := math.MaxFloat64
		var minIdx int
		for j, c := range kMeans.centroids {
			dist := euclideanDistance(X[i], c)
			if dist < minDist {
				minDist = dist
				minIdx = j
			}
		}
		kMeans.labels = append(kMeans.labels, minIdx)
	}
}

func (kMeans *KMeans) updateCentroids(X [][]float64, labels []int) {
	newCentroids := make([][]float64, kMeans.nClusters)
	for i := range newCentroids {
		newCentroids[i] = make([]float64, len(X[0]))
	}
	counts := make([]int, kMeans.nClusters)
	for i, x := range X {
		label := labels[i]
		for j, v := range x {
			newCentroids[label][j] += v
		}
		counts[label]++
	}
	for i := range newCentroids {
		for j := range newCentroids[i] {
			newCentroids[i][j] /= float64(counts[i])
		}
	}
	kMeans.centroids = newCentroids
}

func (kMeans *KMeans) checkConvergence(X [][]float64, labels []int) bool {
	for i, c := range kMeans.centroids {
		for j, v := range c {
			if math.Abs(v-X[labels[i]][j]) > 1e-6 {
				return false
			}
		}
	}
	return true
}

func euclideanDistance(a, b []float64) float64 {
	var sum float64
	for i := range a {
		sum += (a[i] - b[i]) * (a[i] - b[i])
	}
	return sum
}

func (kMeans *KMeans) Fit(X [][]float64) {
	rand.Seed(time.Now().UnixNano())
	kMeans.centroids = make([][]float64, kMeans.nClusters)
	for i := range kMeans.centroids {
		kMeans.centroids[i] = make([]float64, len(X[0]))
		for j := range kMeans.centroids[i] {
			kMeans.centroids[i][j] = X[rand.Intn(len(X))][j]
		}
	}

	for iter := 0; iter < kMeans.maxIters; iter++ {
		kMeans.assignLabels(X)

		kMeans.updateCentroids(X, kMeans.labels)

		if kMeans.checkConvergence(X, kMeans.labels) {
			break
		}
	}
}

func createArrayValues(min, max float64) [][]float64 {
	temporalArray := make([][]float64, 1000000)
	
	for i := range temporalArray {
		temporalArray[i] = make([]float64, 2)
		for j := range temporalArray[i] {
			temporalArray[i][j] = min + rand.Float64() * (max - min)
		}
	}

	return temporalArray
}

func main() {
	start := time.Now()
	X := createArrayValues(0.0, 1000.0)
	kmeans := NewKMeans(10, 100)
	kmeans.Fit(X)

	//labels := kmeans.assignLabels(X)
	//fmt.Println("Cluster Assignments:", labels)
	fmt.Println("Final Centroids:", kmeans.centroids)
	fmt.Println("Execution Time: ", time.Since(start))
}
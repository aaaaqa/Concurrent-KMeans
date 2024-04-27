package main

import (
	"fmt"
	"math"
	"math/rand"
	"sync"
	"time"
)

type KMeans struct {
	nClusters  int
	maxIters   int
	centroids  [][]float64
	labels     [1000000]int
	wait_group sync.WaitGroup
	mutex      sync.Mutex
	data       [][]float64
}

func NewKMeans(nClusters, maxIters int, X [][]float64) *KMeans {
	return &KMeans{
		nClusters: nClusters,
		maxIters:  maxIters,
		data:      X,
	}
}

func (kMeans *KMeans) assignLabels() {

	kMeans.wait_group.Add(len(kMeans.data))

	for i := 0; i < len(kMeans.data); i++ {
		go func(i int, x [][]float64) {
			defer kMeans.wait_group.Done()

			minDist := math.MaxFloat64
			var minIdx int

			kMeans.mutex.Lock()
			defer kMeans.mutex.Unlock()

			for j, c := range kMeans.centroids {
				dist := euclideanDistance(x[i], c)
				if dist < minDist {
					minDist = dist
					minIdx = j
				}
			}
			kMeans.labels[i] = minIdx
		}(i, kMeans.data)
	}
	kMeans.wait_group.Wait()
}

func (kMeans *KMeans) updateCentroids() bool {
	newCentroids := make([][]float64, kMeans.nClusters)

	for i := range newCentroids {
		newCentroids[i] = make([]float64, 2)
	}
	counts := make([]int, kMeans.nClusters)

	for i := range kMeans.data {
		for j := range kMeans.data[i] {
			newCentroids[kMeans.labels[i]][j] += kMeans.data[i][j]
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
			if math.Abs(v-a[i][j]) > 1e-2 {
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

func (kMeans *KMeans) Fit() {
	kMeans.centroids = make([][]float64, kMeans.nClusters)

	for i := range kMeans.centroids {
		kMeans.centroids[i] = make([]float64, len(kMeans.data[i]))
		for j := range kMeans.centroids[i] {
			kMeans.centroids[i][j] = kMeans.data[rand.Intn(len(kMeans.data))][j]
		}
	}

	kMeans.assignLabels()

	for iter := 0; iter < kMeans.maxIters; iter++ {
		if kMeans.updateCentroids() {
			fmt.Println("Ha llegado a convergencia.")
			break
		}
		kMeans.assignLabels()

	}
}

func createArrayValues(min, max float64) [][]float64 {
	X := make([][]float64, 1000000)

	for i := range X {
		X[i] = make([]float64, 2)
		for j := range X[i] {
			X[i][j] = min + rand.Float64()*(max-min)
		}
	}

	return X
}

func main() {
	rand.Seed(time.Now().UnixNano())
	var sum time.Duration
	total_duration := make([]time.Duration, 1000)

	for i := 0; i < 1000; i++ {
		start := time.Now()
		X := createArrayValues(0.0, 1000.0)
		kmeans := NewKMeans(10, 100, X)
		kmeans.Fit()

		fmt.Println("Final Centroids:", kmeans.centroids)
		fmt.Println("Execution Time: ", time.Since(start))
		total_duration = append(total_duration, time.Since(start))
	}

	total_duration = total_duration[50 : len(total_duration)-51]
	for i := 0; i < len(total_duration); i++ {
		sum += total_duration[i]
	}

	fmt.Println("\nAverage time: ", float64(sum)/float64(len(total_duration)))
}

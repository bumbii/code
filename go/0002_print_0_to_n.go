package main

import "fmt"

func main() {
	var n int

	fmt.Print("Please enter a number: ")
	fmt.Scan(&n)

	for i := 0; i <= n; i++ {
		fmt.Printf("%d,", i)
	}
}

package main

import (
	"fmt"
)

func main() {
	var name string
	fmt.Print("Enter your name: ")
	fmt.Scan(&name)

	var age int
	fmt.Print("Enter your year of birth: ")
	fmt.Scan(&age)

	fmt.Printf("Hello %s. You are %d years old!", name, age)
}

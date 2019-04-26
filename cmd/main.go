package main

import "github.com/cluark/circletestprivate/lib"

func main() {
	println("secret number: %v", lib.GetSecretNumber())
}

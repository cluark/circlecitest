package main

import (
  "github.com/cluark/circlecitestprivate/lib"
)

func main() {
	println("secret number: %v", lib.GetSecretNumber())
}

package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
)

type Response struct {
	Message string `json:"message"`
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	response := Response{Message: "Hello, World!"}
	json.NewEncoder(w).Encode(response)
}

func main() {
	http.HandleFunc("/hello", helloHandler)
	fmt.Println("Starting server on port 8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}

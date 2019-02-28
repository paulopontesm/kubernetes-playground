package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(httpWriter http.ResponseWriter, request *http.Request) {
		fmt.Printf("%+v\n", request)
		fmt.Fprintf(httpWriter, "Hello, you've requested: %s\n", request.URL.Path)
	})

	fmt.Println("Listening on http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}

package main

import (
    "fmt"
    "log"
    "net/http"
)

func main() {
    fmt.Printf("Starting server at port 3000!\n")
    if err := http.ListenAndServe(":3000", nil); err != nil {
        log.Fatal(err)
    }
}
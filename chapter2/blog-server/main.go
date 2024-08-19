package main

import (
	"go-tour/chapter2/blog-server/internal/routers"
	"net/http"
	"time"
)

func main() {
	router := routers.NewRouter()

	s := &http.Server{
		Addr:           ":8080",
		Handler:        router,
		ReadTimeout:    5 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}
	_ = s.ListenAndServe()
}

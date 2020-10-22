package main

import (
	"flag"
	"fmt"
	"net/http"

	"server/internal"
)



func main(){
	var port = flag.String("PORT", "3000", "The port the service listens to")

	flag.Parse() 

	var address = fmt.Sprintf(":%s", *port)


	http.HandleFunc("/ping", internal.Ping)

	fmt.Printf("The app listens on port %s\n", *port)
	http.ListenAndServe(address, nil)
}
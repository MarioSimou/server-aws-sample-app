package internal

import (
	"net/http/httptest"
	"testing"
)

func TestPing(t *testing.T){
	var w = httptest.NewRecorder()
	var r = httptest.NewRequest("GET", "/ping", nil)

	Ping(w,r)
	var response = w.Result()

	if response.StatusCode != 200 {
		t.Errorf("Expected a status code of '200' rather than '%d'", response.StatusCode)
	}

	var body = make([]byte, 4)
	if _, e := response.Body.Read(body); e != nil {
		t.Errorf("Error: %v\n", e)
	}

	if s := string(body); s != "PONG" {
		t.Errorf("Expected string 'PONG' rather than '%s'", s)
	}
}
//cener_2^5_2019
//This program prints the given text in SHA1 Hash format
package main
import (
    "crypto/sha1"
    "fmt"
)
func main() {
    s := "cerner_2^5_2019"
    h := sha1.New()
    h.Write([]byte(s))
    bs := h.Sum(nil)
    fmt.Println(s)
    fmt.Printf("%x\n", bs)
}
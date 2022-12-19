package main

import (
	"os"

	"github.com/cosmos/cosmos-sdk/server"
	servercmd "github.com/cosmos/cosmos-sdk/server/cmd"

	boli "github.com/eutropiadevs/boli/app"
)

func main() {
	boli.SetAccountAddressPrefixes()

	root, _ := NewRootCmd()
	if err := servercmd.Execute(root, boli.DefaultNodeHome); err != nil {
		switch e := err.(type) {
		case server.ErrorCode:
			os.Exit(e.Code)
		default:
			os.Exit(1)
		}
	}
}

#!/bin/bash
# Script to install chaincode onto a peer node
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_ID=cli
export CORE_PEER_ADDRESS=peer2.org1.example.com:7051
export CORE_PEER_TLS_ROOTCERT_FILE=/vars/keyfiles/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/ca.crt
export CORE_PEER_LOCALMSPID=org1-example-com
export CORE_PEER_MSPCONFIGPATH=/vars/keyfiles/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
cd /go/src/github.com/chaincode/receipt

  go env -w GOPROXY=https://goproxy.cn,direct

if [ ! -f "receipt_go_1.0.tar.gz" ]; then
  cd go
  GO111MODULE=on
  go mod vendor
  cd -
  peer lifecycle chaincode package receipt_go_1.0.tar.gz \
    -p /go/src/github.com/chaincode/receipt/go/ \
    --lang golang --label receipt_1.0
fi

peer lifecycle chaincode install receipt_go_1.0.tar.gz

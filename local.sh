#!/bin/bash
set -e -o pipefail
trap '[ "$?" -eq 0 ] || echo "Error Line:<$LINENO> Error Function:<${FUNCNAME}>"' EXIT
cd `dirname $0`
CURRENT=`pwd`

function test
{
   go test -v $(go list ./... | grep -v vendor | grep -v test) --count 1
}

function bench
{
  go test -v $(go list ./... | grep -v vendor) -run none -bench . -benchtime 5s -benchmem
}

CMD=$1
shift
$CMD $*

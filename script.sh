#!/bin/sh -x
die() { echo "$@" 1>&2 ; exit 1; }
PROTO_ZONE=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/zone" -H "Metadata-Flavor: Google") || die "unable to get zone"
ZONE=$(echo $PROTO_ZONE | rev | cut -d/ -f1 | rev)
/go/bin/main -H "X-Origin-Region: $ZONE" $@



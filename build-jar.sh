#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# If JAVA_HOME is set, prefix to the specific binary paths.
# Otherwise, assumes the utilities are available via PATH.
__javac="${JAVA_HOME:+$JAVA_HOME/bin/}javac"
__jar="${JAVA_HOME:+$JAVA_HOME/bin/}jar"

cd "${__dir}"

mkdir -p build/classes

"${__javac}" \
    -source 8 \
    -target 8 \
    -g:none \
    -d build/classes \
    src/main/java/LookupProperty.java

"${__jar}" cvfM \
    src/main/python/java_utilities/_jars/utilities.jar \
    -C build/classes \
    .

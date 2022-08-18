import sys
from . import java_home as _java_home, lookup_property as _lookup_property


def java_home():
    if len(sys.argv) != 1:
        print(f"Usage: {sys.argv[0]}", file=sys.stderr, flush=True)
        return 1
    print(_java_home(), end="", flush=True)
    return 0


def java_property():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <property.name>", file=sys.stderr, flush=True)
        return 1
    property = _lookup_property(sys.argv[1])
    if not property:
        print("Not found", file=sys.stderr, flush=True)
        return 2
    print(property, end="", flush=True)
    return 0

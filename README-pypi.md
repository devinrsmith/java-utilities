# java-utilities

`java-utilities` is a helper package to run and introspect a `java` binary.
It can be used as a library, or with the provided standalone scripts.

## Quickstart

A [virtual environment](https://docs.python.org/3/tutorial/venv.html) is recommended.

To use from the command line:

```shell
pip install java-utilities

java-home

java-property java.specification.version
```

To use from python:

```python
from java_utilities import java_home, lookup_property

print(f"Java home is '{java_home()}'")

property_name = "java.specification.version"
print(f"Java specification version is '{lookup_property(property_name)}'")
```

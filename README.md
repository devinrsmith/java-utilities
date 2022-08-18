# java-utilities

`java-utilities` is a very small `utility.jar` (<1KiB) that provides simple Java programs.

It has zero dependencies.

Simple stdout for easy integration with other tools / languages.

Works with Java 8+.

## Programs

### Lookup Property

The lookup property program allows the caller to lookup a single property name.

```shell
java -cp utilities.jar LookupProperty <property.name>
```

This allows a more robust way to determine `java.home` as compared to following symlinks from `/usr/bin/java`, or the more more fragile approach:

```shell
java -XshowSettings:properties -version 2>&1 \
    | grep "java.home" \
    | awk -F " = " '{print $2}'
```

## Python Integration

The [java-utilities PyPi package](https://pypi.org/project/java-utilities/) provides `java-utilities` as a Python library.

See [README-pypi.md](README-pypi.md) for more information.

## JAR

The [utilities.jar](src/main/python/java_utilities/_jars/utilities.jar) is checked into the repository (as opposed to uploaded to Maven Central) as it is unlikely to be depended on as a Java library.

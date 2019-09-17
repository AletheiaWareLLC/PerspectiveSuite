# PerspectiveSuite

Clone using --recursive:
```
$ git clone --resursive ....
```

If you have cloned without --recursive then:
```
$ git submodule update --init --recursive
```

Builds Joy, Perspective, AletheiaWareCommonJava, JoyJava and PerspectiveJava

## Prerequisites

protoc --version >= 3.9.1
go version >= go1.13
javac -version >= 1.8.0_222


## Build

Build everything

```
$ ./build.sh
```

## Clean

This only cleans the gradle based builds as other
builds are currently always unconditionally built.

```
$ ./clean.sh
```

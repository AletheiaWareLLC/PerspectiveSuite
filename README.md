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

The following executables are expected to be installed:

* protoc --version >= 3.9.1
* go version >= go1.13
* javac -version >= 1.8.0_222

The gradle daemon needs more memory than the default allows.
These gradle.properties worked:
```
$ cat ~/.gradle/gradle.properties
org.gradle.daemon=true
org.gradle.parallel=true
org.gradle.configureondemand=true
org.gradle.jvmargs=-Xmx3g -XX:MaxPermSize=2048m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8
```

## Build

Build everything

```
$ ./build.sh
```

## Clean

This only cleans the gradle based builds as other
builds are currently unconditionally built.

```
$ ./clean.sh
```

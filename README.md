# PerspectiveSuite

Clone using --recursive:
```
$ git clone --resursive ....
```

If you have cloned without --recursive then:
```
$ git submodule update --init --recursive
```

Builds PerspectiveAndroid

## Prerequisites

protoc --version >= 3.9.1
go version >= go1.13
javac -version >= 1.8.0_222
junit


## Build

```
$ ./build.sh
```

Currently failing on my system:
```
$ ./build.sh
+ protoc joy.proto --go_out=../Go/src/ --java_out=lite:../JoyJava/source/
+ protoc --proto_path=../Joy --proto_path=. perspective.proto --go_out=../Go/src/ --java_out=lite:../PerspectiveJava/source/
+ '[' -d out ']'
+ rm -r out
+ mkdir -p out/code
+ mkdir -p out/test
+ SOURCES=(source/com/aletheiaware/common/utils/CommonUtils.java)
+ PROTO_SOURCES=()
+ javac -cp libs/protobuf-lite-3.0.1.jar source/com/aletheiaware/common/utils/CommonUtils.java -d out/code
+ jar cvf out/AletheiaWareCommonJava.jar -C out/code .
added manifest
adding: com/(in = 0) (out= 0)(stored 0%)
adding: com/aletheiaware/(in = 0) (out= 0)(stored 0%)
adding: com/aletheiaware/common/(in = 0) (out= 0)(stored 0%)
adding: com/aletheiaware/common/utils/(in = 0) (out= 0)(stored 0%)
adding: com/aletheiaware/common/utils/CommonUtils.class(in = 4864) (out= 2374)(deflated 51%)
adding: com/aletheiaware/common/utils/CommonUtils$Pair.class(in = 576) (out= 336)(deflated 41%)
+ TEST_SOURCES=(test/source/com/aletheiaware/common/AllTests.java test/source/com/aletheiaware/common/utils/CommonUtilsTest.java)
+ javac -cp libs/protobuf-lite-3.0.1.jar:libs/junit-4.12.jar:libs/hamcrest-core-1.3.jar:libs/mockito-all-1.10.19.jar:out/AletheiaWareCommonJava.jar test/source/com/aletheiaware/common/AllTests.java test/source/com/aletheiaware/common/utils/CommonUtilsTest.java -d out/test
test/source/com/aletheiaware/common/AllTests.java:19: error: package org.junit.runner does not exist
import org.junit.runner.RunWith;
                       ^
```

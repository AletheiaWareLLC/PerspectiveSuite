# Protobuf
mkdir -p Go/src
(cd Joy && ./build.sh --go_out=../Go/src/ --java_out=lite:../JoyJava/source/)
(cd Perspective && ./build.sh --go_out=../Go/src/ --java_out=lite:../PerspectiveJava/source/)

# Java
(cd AletheiaWareCommonJava && ./build.sh)
(cd JoyJava && ./build.sh)
(cd PerspectiveJava && ./build.sh)

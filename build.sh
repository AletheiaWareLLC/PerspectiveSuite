# Protobuf
mkdir -p Go/src
echo "*** Build Joy"
(cd Joy && ./build.sh --go_out=../Go/src/ --java_out=lite:../JoyJava/source/)
echo "*** Build build Perspective"
(cd Perspective && ./build.sh --go_out=../Go/src/ --java_out=lite:../PerspectiveJava/source/)

# Java
echo "*** Build AletheiaWareCommonJava"
(cd AletheiaWareCommonJava && ./build.sh)
echo "*** Build JoyJava"
(cd JoyJava && ./build.sh)
echo "*** Build PerspectiveJava"
(cd PerspectiveJava && ./build.sh)

# Gradle based builds
echo "*** Build AletheiaWareCommonAndroid"
(cd AletheiaWareCommonAndroid && ./gradlew build)
echo "*** Build JoyAndroid"
(cd JoyAndroid && ./gradlew build)
echo "*** Build PerspectiveAndroid"
(cd PerspectiveAndroid && ./gradlew build)

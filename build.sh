#!/bin/bash
#
# Copyright 2019 Aletheia Ware LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
#set -x

# Protobuf
echo "*** Build Joy"
(cd Joy && ./build.sh --java_out=lite:../JoyJava/source/)
echo "*** Build Perspective"
(cd Perspective && ./build.sh --java_out=lite:../PerspectiveJava/source/)

# Java
echo "*** Build AletheiaWareCommonJava"
(cd AletheiaWareCommonJava && ./build.sh)
echo "*** Build JoyJava"
(cd JoyJava && ./build.sh)
echo "*** Build PerspectiveJava"
(cd PerspectiveJava && ./build.sh)

# Gradle-based builds
echo "*** Build AletheiaWareCommonAndroid"
(cd AletheiaWareCommonAndroid && ./gradlew build)
echo "*** Build JoyAndroid"
(cd JoyAndroid && ./gradlew build)
echo "*** Build PerspectiveAndroid"
(cd PerspectiveAndroid && ./gradlew build)

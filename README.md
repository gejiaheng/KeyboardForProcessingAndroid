# Keyboard for Processing Android
[Processing](https://processing.org/) is a flexible software sketchbook and a language for learning how to code within the context of the visual arts. 

Processing supports multiple platforms including Android. This project demostrates how to draw a simple keyboard for Processing Android.

## Attention
As this demo for Processing Android, the default mouse click callbacks don't work very well with touch gestures. So we handle the click with the following callbacks specifically for Processing Android in a tricky way:
```java
// Multitouch
touchEnded()
touchMoved()
touchStarted()
```
See [Processing for Android](https://android.processing.org/reference/index.html) in details.

## Run
You need to do two things before running it on an Android device:
- Switch to Anroid Mode.
- Download Android SDK or use a local one.

See [Getting Started](https://android.processing.org/tutorials/getting_started/index.html) in details.

## License
    Copyright 2019 Jiaheng Ge (gejiaheng@gmail.com)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.




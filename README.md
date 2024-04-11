# Havoc C2 - Automation Scripts
An implementation of the @Cracked5pider's [Havoc C2 project](https://github.com/HavocFramework/Havoc) focused on creating Metasploit like modules for operators using the Client Scripts feature

## TODO 

I'm currently on test phase for the Dockerfile, need to fix the qt5 dependency in client

```bash 
  CMake Error at /usr/lib/x86_64-linux-gnu/cmake/Qt5/Qt5Config.cmake:28 (find_package):
    Could not find a package configuration file provided by "Qt5WebSockets"
    with any of the following names:

      Qt5WebSocketsConfig.cmake
      qt5websockets-config.cmake

    Add the installation prefix of "Qt5WebSockets" to CMAKE_PREFIX_PATH or set
    "Qt5WebSockets_DIR" to a directory containing one of the above files.  If
    "Qt5WebSockets" provides a separate development package or SDK, be sure it
    has been installed.
  Call Stack (most recent call first):
    CMakeLists.txt:38 (find_package)
```
## OpenCV: Open Source Computer Vision Library

### For Java build

- `OpenJDK` must be installed
- `JAVA_HOME` must be in the environment
  - For macOS add `export JAVA_HOME=$(/usr/libexec/java_home)` to `~/.profile` or shell config file
- Make sure `DBUILD_opencv_java` flag in the `build.sh` is `ON`
- Follow the [build instructions](#how-to-build)

### For Python build

- Python must be installed
- Make sure python is in `PATH`
- Make sure `DBUILD_opencv_python2` or `DBUILD_opencv_python3` flag in the `build.sh` is `ON`
- Make sure `DPYTHON3_EXECUTABLE` param in the `build.sh` is pointing to `python3` executable is `DBUILD_opencv_python3` is `ON`
- Follow the [build instructions](#how-to-build)

### How to build

- Run `install-deps-mac` or `install-deps-ubuntu` depending on your platform.
- run `./build.sh` in root.

### Resources

- Homepage: <https://opencv.org>
  - Courses: <https://opencv.org/courses>
- Docs: <https://docs.opencv.org/4.x/>
- Q&A forum: <https://forum.opencv.org>
  - previous forum (read only): <http://answers.opencv.org>
- Issue tracking: <https://github.com/opencv/opencv/issues>
- Additional OpenCV functionality: <https://github.com/opencv/opencv_contrib>

### Contributing

Please read the [contribution guidelines](https://github.com/opencv/opencv/wiki/How_to_contribute) before starting work on a pull request.

#### Summary of the guidelines:

- One pull request per issue;
- Choose the right base branch;
- Include tests and documentation;
- Clean up "oops" commits before submitting;
- Follow the [coding style guide](https://github.com/opencv/opencv/wiki/Coding_Style_Guide).

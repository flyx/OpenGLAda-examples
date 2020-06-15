# OpenGLAda Examples

This repository contains examples for [OpenGLAda][1].
These examples have mostly been translated from C examples from OpenGL textbooks.

Contributions of examples are always welcome.

## Building

OpenGLAda must be present on your machine to be able to build these examples.
You may either install it or have its source available via the environment variable `GPR_PROJECT_PATH`.

All examples use the GLFW library which must be available on your system.

Each example has a separate `.gpr` file with which it can be built.
The aggregate project `openglada_examples.gpr` builds all examples.
If you did not install OpenGLAda, you will need to supply the scenario parameters described in the OpenGLAda Readme.

Depending on the OpenGL version of your platform, the shader programs may need modifications to run.

## Listing

### durian

Author: Roger Mc Murtrie

These examples are based on the tutorials available at http://duriansoftware.com/joe/An-intro-to-modern-OpenGL.-Table-of-Contents.html .

### ogl_tutorials

Author: Roger Mc Murtrie

These examples are based on the tutorials available at http://www.opengl-tutorial.org .

### open_gl

Author: Roger Mc Murtrie

These examples are based on the tutorials available at https://open.gl/introduction .

### redbook

Author: Roger Mc Murtrie

These examples are based on OpenGL Programming Guide, eighth edition,
by D Shreiner, G. Sellers, J. Kessinich, and B. Licea-Kane, Addison Wesley, 2013 and the associated
computer code at https://github.com/openglredbook/examples .

### superbible

Author: Roger Mc Murtrie

These examples are based on the listings in OpenGL SuperBible, seventh edition,
by G. Sellers, R. S. Wright, Jr and N. Haemel, Addison Wesley, 2016 and the associated
computer code at http://www.openglsuperbible.com/ .

 [1]: https://github.com/flyx/OpenGLAda 
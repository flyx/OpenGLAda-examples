# OpenGLAda Examples

This repository contains examples for [OpenGLAda][1].
These examples have mostly been translated from C examples from OpenGL textbooks.

Contributions of examples are always welcome.

## Building

The examples are set up to be built with [Alire](https://alire.ada.dev):

    alr update
    alr build

On Windows, Debian/Ubuntu and arch, the required C libraries (GLFW, FreeType) will be requested from your system package manager.
On macOS, you need to fetch them manually, for example with [Homebrew](https://brew.sh).

If you do not want to use Alire, you can also build the example via their project files.
In that case, you have to ensure that OpenGLAda and [GID](https://gen-img-dec.sourceforge.io) are available in your `GPR_PROJECT_PATH`.

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
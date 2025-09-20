# How to Prompt Gemini for 3D LaTeX Drawings

Here is a template for a good prompt to ask Gemini to generate a LaTeX file for a 3D drawing, especially using TikZ.

## The Prompt Template

```
Hello Gemini,

I need your help to create a 3D drawing in LaTeX. Here are the details:

**Task:** Please generate the LaTeX code for a 3D drawing of [describe the object, e.g., a house, a geometric shape].

**Package:** Please use the `tikz-3dplot` package for this task.

**Input/Reference:**
- I am providing an image of the object here: [mention the image file, e.g., `image.png`]
- Here are the known coordinates of the vertices: [list the coordinates, e.g., O(0,0,0), A(6,0,0), C(0,20,0), E(0,0,5), M(3,0,8)]
- Here is a description of the object's geometry: [describe the object, e.g., 'The base is a rectangle OABC in the xy-plane. The roof has a ridge MN...']

**Style and Perspective:**
- The viewing angle should be [describe the desired view, e.g., 'from the front-right, showing the Ox and Oz axes clearly'].
- The coordinate system should be [e.g., 'left-handed'].
- Please make the code well-commented so I can understand it.

**Output:**
- I expect a complete and compilable `.tex` file as the output.
```

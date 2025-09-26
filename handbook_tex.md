# Your Personal LaTeX Handbook

## Table of Contents
- [1. Text Formatting](#1-text-formatting)
  - [1.1. Text Style and Basic Color](#11-text-style-and-basic-color)
  - [1.2. Text Size](#12-text-size)
  - [1.3. Defining Custom Colors](#13-defining-custom-colors)
- [2. Creating Boxes and Containers](#2-creating-boxes-and-containers)
- [3. Mathematical Equations](#3-mathematical-equations)
- [4. Page Numbering and Headers](#4-page-numbering-and-headers)
- [5. Drawing with TikZ](#5-drawing-with-tikz)
- [6. Practical Templates](#6-practical-templates)
- [7. Essential LaTeX Command Reference](#7-essential-latex-command-reference)

---

## 1. Text Formatting

### 1.1. Text Style and Basic Color

To use colors, you must first add `\usepackage{xcolor}` to your preamble.

**LaTeX Code:**
```latex
This is \textbf{bold text}.
This is \textit{italic text}.
This is \textcolor{red}{red text}.
```

**Output Preview:**

This is **bold text**.
This is *italic text*.
This is <span style="color:red;">red text</span>.

### 1.2. Text Size

**LaTeX Code:**
```latex
{\tiny tiny} {\small small} \normalsize normal {\large large} {\Huge HUGE!}
```

**Output Preview:**

<span style="font-size: 0.7em;">tiny</span> <span style="font-size: 0.9em;">small</span> normal <span style="font-size: 1.2em;">large</span> <span style="font-size: 2em;">HUGE!</span>

### 1.3. Defining Custom Colors

The `xcolor` package allows you to define your own colors using different models. Once defined, you can use your color's name anywhere you would use a standard one.

#### Using the RGB Model (0-255)

**LaTeX Code:**
```latex
% In your Preamble
\definecolor{MyOrange}{RGB}{255, 165, 0}

% In your Document
\textcolor{MyOrange}{This is a custom orange color.}
```

#### Using the HTML Model (Hex Codes)

**LaTeX Code:**
```latex
% In your Preamble
\definecolor{MyTeal}{HTML}{008080}

% In your Document
\textcolor{MyTeal}{This is a lovely teal color defined with a hex code.}
```

---

## 2. Creating Boxes and Containers

### 2.1. Simple Boxes with `\fbox`

**LaTeX Code:**
```latex
\fbox{This is a simple framed box.}
```

### 2.2. Advanced Boxes with `tcolorbox`

For full control, add `\usepackage{tcolorbox}` to your preamble.

**LaTeX Code:**
```latex
\begin{tcolorbox}[
    colback=blue!5!white,  % Background color
    colframe=blue!75!black, % Frame color
    title=My Titled Box]
    This box has a title and custom colors.
\end{tcolorbox}
```

---

## 3. Mathematical Equations

> **Best Practice: Avoid `$$...$$`**
> Always use `\[ ... \]` or the `equation` environment instead of `$$...$$`.

**LaTeX Code:**
```latex
\begin{equation}
    x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
    \label{eq:quadratic}
\end{equation}
```

---

## 4. Page Numbering and Headers

To customize page numbering, use the `fancyhdr` package.

**LaTeX Code:**
```latex
\pagestyle{fancy}
\fancyhf{} % Clear all header and footer fields
\rhead{Linear Algebra Exam}
\lhead{Your Name}
\cfoot{\thepage} % Puts the page number in the center of the footer
```

---

## 5. Drawing with TikZ

TikZ allows you to create vector graphics directly with code.

**LaTeX Code:**
```latex
\begin{tikzpicture}
    \draw[blue, thick] (0,0) circle (1.5cm);
    \fill[red] (0,0) rectangle (1,1);
    \node at (0, -2) {A circle and a square};
\end{tikzpicture}
```

---

## 6. Practical Templates

(Templates as previously defined)

---

## 7. Essential LaTeX Command Reference

This section provides a quick reference for many of the most common LaTeX commands and their options.

### Document Structure

- `\documentclass[options]{class}`: Starts the document and sets its type.
  - **`class`**: `article`, `report`, `book`, `beamer`, etc.
  - **`options`**: `12pt` (font size), `a4paper` (paper size), `twocolumn` (use two columns).
- `\usepackage[options]{package}`: Loads a package to add new features.
  - **`package`**: `amsmath`, `graphicx`, `xcolor`, `geometry`, etc.
- `\begin{environment}` and `\end{environment}`: A block that formats content in a specific way.
  - **`environment`**: `document`, `figure`, `itemize`, `tcolorbox`, etc.
- `\section{title}`, `\subsection{title}`, `\subsubsection{title}`: Organizes the document into sections.
- `\label{marker}`: Places an invisible marker for cross-referencing.
- `\ref{marker}`: Prints the number of the labeled item (e.g., "Figure 3").
- `\pageref{marker}`: Prints the page number where the label is.

### Text Formatting

- `\textbf{text}`: **Bold** text.
- `\textit{text}`: *Italic* text.
- `\underline{text}`: Underlined text.
- `\texttt{text}`: `Monospaced` (typewriter) font.
- `\textcolor{color}{text}`: Applies color to text. Requires `xcolor` package.
- `\definecolor{name}{model}{spec}`: Defines a new color.
  - **`model`**: `RGB` (0-255), `HTML` (hex), `cmyk` (print), `rgb` (0-1).

### Math & Equations (requires `amsmath`)

- `$ ... $`: Inline math mode.
- `\[ ... \]`: Displayed math mode (unnumbered).
- `\begin{equation} ... \end{equation}`: Displayed math mode (numbered).
- `\frac{numerator}{denominator}`: Creates a fraction.
- `\sqrt[root]{content}`: Creates a square root. The `[root]` is optional (e.g., for a cube root).
- `\sum_{below}^{above}`: Summation symbol.
- `\int_{from}^{to}`: Integral symbol.
- `\begin{align} ... \end{align}`: Aligns multiple equations at the `&` character.

### Tables

- `\begin{tabular}{cols}` and `\end{tabular}`: The basic table environment.
  - **`cols`**: Defines the columns. `l` for left-aligned, `c` for center, `r` for right, `|` for a vertical line.
- `&`: Separates columns within a row.
- `\\`: Ends a row.
- `\hline`: Inserts a horizontal line spanning the table width.
- `\begin{table}` and `\end{table}`: A "floating" container for tables.
- `\caption{text}`: Adds a caption to a floating table or figure.

### Figures (requires `graphicx`)

- `\includegraphics[options]{filename}`: Inserts an image.
  - **`filename`**: Path to the image file (e.g., `figures/my_plot.png`).
  - **`options`**: 
    - `width=...`: `width=5cm`, `width=0.8\textwidth`.
    - `height=...`: `height=3cm`.
    - `scale=...`: `scale=0.5` (resizes to 50%).
    - `angle=...`: `angle=90` (rotates 90 degrees counter-clockwise).
- `\begin{figure}` and `\end{figure}`: A "floating" container for figures.
- `\centering`: Centers the content within the figure or table environment.

### Basic TikZ Drawing (requires `tikz`)

- `\begin{tikzpicture}` and `\end{tikzpicture}`: The environment for all TikZ drawings.
- `\draw[options] (x1,y1) -- (x2,y2);`: Draws a line from one coordinate to another.
- `\draw[options] (x,y) circle (radius);`: Draws a circle.
- `\draw[options] (x1,y1) rectangle (x2,y2);`: Draws a rectangle.
- `\fill[options] ...;`: Same as `\draw`, but fills the shape with color.
- `\node[options] at (x,y) {text};`: Places text at a specific coordinate.
- **Common `[options]`**: `red` (color), `thick` (line width), `dashed` (line style), `->` (add arrow tip).

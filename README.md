# CV Template for LaTeX

<img src="https://github.com/hermannsblum/Clean-CV/blob/master/example2.png" width="500">

## Installation

[Download](https://raw.githubusercontent.com/hermannsblum/Clean-CV/master/cleancv.sty) the `cleancv.sty` and include it to your document:

    \usepackage{cleancv}

This class is only tested against the following document settings:

    \documentclass[utf8, a4paper, 11pt, helvetica]{article}

## Basic Usage

### CV Items 
Items in the CV always have content on the left and right side of the black line:

    \cvitem{left}{right}

Items are always grouped together in `cvgroups`:

    \begin{cvgroup}
        \cvitem{one}{first}
        \cvitem{two}{second}
    \end{cvgroup}

A basic CV document should have a title and section names:

    \begin{document}

    \cvtitle{Curriculum Vitae}

    \cvimage{example_fixtures/businesswoman-avatar-silhouette-by-Vexels.eps}

    \section{Personal}
    \begin{cvgroup}
        \cvitem{Name}{Hermann Blum}
        \cvitem{Date of Birth}{January 1, 2000}
        \cvitem{Location of Birth}{north pole}
    \end{cvgroup}


### Picture and Personal Information

You have the option to add personal information and a picture in the right side of the CV page. This feature is called `cvinfo`.

    \begin{cvinfo}
        \cvpicture{path_tp_image.jpg}
        \cvinfoitem{\textbf{Hermann Blum}}
        \cvinfoitem[email]{itsme@mail.com}
    \end{cvinfo}

The picture will be sized to the standard for CVs, which is a width of 3.5 cm.

You may encounter difficulties with the wrapping around this image. This is due to the implementation of `wrapfigure`, which is used by this template. Please use the optional argument to the info-group to specify the number of lines / `cvgroup`s that should wrap around this info bar:

    \begin{cvinfo}[<some number>]

## Advanced Usage

### Short Descriptions

You can add a short bold description to every item by providing it as an optional argument to `cvitem`:

    \cvitem[Master]{1970 - 1977}{Advanced Studies\par\indent Creation of Latex CVs}

### Design Parameters

You can move the vertical black line of the `cvgroup` more to the left or to the right by specifying its position on the page. `pos` has to be a number between 0 (left) and 1 (right), it defaults to `0.2`.

    \begin{cvgroup}[<pos>]

### Author Name

If you specify the author of the document, it will be added to the header (see example)

    \author{Hermann Blum}


# Credit

credit for the nice portrait drawing goes to [Businesswoman avatar silhouette](https://www.vexels.com/vectors/png-svg/129677/businesswoman-avatar-silhouette) | Designed by Vexels.com

credit for the signature example goes to [SilkySignature](https://github.com/ww6015132/SilkySignature)

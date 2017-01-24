# CV Template for LaTeX

## Installation

Download the `cleancv.sty` and include it to your document

    \usepackage{cleancv}

This class is only tested against the following document settings:

    \documentclass[utf8, a4paper, 11pt, helvetica]{article}

## Basic Usage

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

## Advanced Usage

You can add a short bold description to every item by providing it as an optional arugment to `cvitem`:

    \cvitem[Master]{1970 - 1977}{Advanced Studies\par\indent Creation of Latex CVs}

If you specify the author of the document, it will be added to the header (see example)

    \author{Hermann Blum}


This feature is still a bit experimental, but you can add a portrait picture easily liek this:

    \cvimage{example_fixtures/businesswoman-avatar-silhouette-by-Vexels.eps}

The picture will be sized to the standard for CVs, which is a width of 3.5 cm.

# Credit

credit for the nice portrait drawing goes to [Businesswoman avatar silhouette](https://www.vexels.com/vectors/png-svg/129677/businesswoman-avatar-silhouette '> Businesswoman avatar silhouette) | Designed by Vexels.com

credit for the signature example goes to [SilkySignature](https://github.com/ww6015132/SilkySignature)

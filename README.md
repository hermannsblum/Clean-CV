# CV Template for LaTeX

<table>
    <tbody align="top">
        <tr><td>cleancv-top</td><td>cleancv-right</td><td>[experimental] cleancv-us</td></tr>
        <tr><td><img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_top.png" width="300"></td>
            <td><img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_right.png" width="300"></td>
            <td><img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_us.png" width="300"></td>
        </tr>
    </tbody>
</table>

## Installation

### Linux & MacOS

Some TeX Editors allow to add additional resources directly.
Otherwise, probably the easiest way is to just add clean-cv to the local texmf tree.

```bash
# Create local texmf tree, be careful to get the subdirectories right
## Linux
mkdir -p ~/texmf/tex/latex/
## MacOS
mkdir -p ~/Library/texmf/tex/latex/

# Clone amivtex and create symlink
git clone https://github.com/hermannsblum/Clean-CV.git cleancv

```

No further steps necessary, it should be detected automatically.
[More info here.](https://wiki.archlinux.org/index.php/TeX_Live#Install_.sty_files)

### Windows

MikTex has several options to add `.sty` files,
e.g. a simple command line option `--include-directory=<your_cleancv_dir>`,
which can be added in your Tex Editor.
[More Info.](http://docs.miktex.org/manual/localadditions.html)



This class is only tested against the following document settings:

    \documentclass[utf8, a4paper, 11pt, helvetica]{article}

## Basic Usage

To use one of the designs shown above, install the repository and set your documentclass to `cleancv-top` or `cleancv-right`.

### CV Items 
Items in the CV always have content on the left and right side of the black line:

    \cvitem{left}{right}

Items are always grouped together in `cvgroups`:

    \begin{cvgroup}
        \cvitem{one}{first}
        \cvitem{two}{second}
    \end{cvgroup}

A basic CV document should have a title and section names:

```
\begin{document}

\begin{cvtitle}[yourpicture.jpg]
    \cvinfoitem{\faGithub}{hermannsblum}\vskip3pt
    \cvinfoitem{\faLinkedinSquare}{your-linkedin}
\end{cvtitle}

\section{Education}
\begin{cvgroup}
    \cvitem{1970 - 1977}{Advanced Studies}
\end{cvgroup}
```


### Title and Author Name

Please specify both title and author, e.g.

```
\author{Hermann Blum}
\title{CV}
```

These information will be used in the `cvtitle` environment and in the header of subsequent pages.

### Picture and Personal Information

Especially if you want to add a picture to your CV, it is recommended to create a 'header' using the `cvtitle` environment.

```
\begin{cvtitle}[yourpicture.jpg]
    \cvinfoitem{\faGithub}{hermannsblum}\vskip3pt
    \cvinfoitem{\faLinkedinSquare}{your-linkedin}
\end{cvtitle}
```

The picture will be sized to the standard for CVs, which is a width of 3.5 cm.

Dependent on the document-class, cvtitle takes different arguments:

- `cleancv-top`: The environment has one optional argument for the path to the picture
- `cleancv-right`: The environment takes 2 arguments: `\begin{cvtitle}[<picture>]{<num par>}`; `<num par>` is here the number of paragraphs that should float around the info bar on the right side. As latex is not able to find the correct number automatically, you will have to experiment with this number.

Any text inside the environment is places into the corresponding spaces on top or the right.  
For personal information, the `cvinfoitem` command can help place text and icons (e.g. from the `fontawesome` package in a coherent way), such that the distance between the first letter of the information and the center of the icon is always the same. Dependent on the documentclass, the icon will be placed in the left or right side of the description text automatically.

    \cvinfoitem{\faEnvelopeO}{some@mail.com}
    
### Skill Indicators
Many CVs, especially in the IT sector, require a skill-matrix. This template offers a comfortable function `skillbar` to produce an indicator for the skill level in the form of bullet points (see the previews for an example).  
The basic usage is simply `\skillbar{2}` for a level 2 out of 3. If the level should be more detailed, the maximum skill level can be set as optional argument: `\skillbar[5]{4}` is a level 4 out of 5.

## Advanced Usage

### Short Descriptions

You can add a short bold description to every item by providing it as an optional argument to `cvitem`:

    \cvitem[Master]{1970 - 1977}{Advanced Studies\par\indent Creation of Latex CVs}

### Design Parameters

You can move the vertical black line of the `cvgroup` more to the left or to the right by specifying its position on the page. `\cvbarpos` has to be a number between 0 (left) and 1 (right), it defaults to `0.2` and is a global setting for the document.

    \renewcommand{\cvbarpos}{0.3}


# Credit

credit for the nice portrait drawing goes to [Businesswoman avatar silhouette](https://www.vexels.com/vectors/png-svg/129677/businesswoman-avatar-silhouette) | Designed by Vexels.com

credit for the signature example goes to [SilkySignature](https://github.com/ww6015132/SilkySignature)

# Previews

<img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_top.png" width="500">

<img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_right.png" width="500">

<img src="https://github.com/hermannsblum/Clean-CV/blob/master/examples/info_us.png" width="500">

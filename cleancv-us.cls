\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{cleancv-us}[2017/10/12 version]

% --- Class structure: declaration of options part
% ---
% This class extends the article class
% Read all the documentclass options; pass them to article,
% unless the file "<currentoption>.min" exists, then it is loaded
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{
%
\PassOptionsToClass{\CurrentOption}{article}}}
% --- Class structure: execution of options part
% ---
\ProcessOptions \relax
% --- Class structure: declaration of options part
% ---
\LoadClass{article}

\RequirePackage{cleancv}

% cv info + picture
\RequirePackage{tikz}
\RequirePackage{color}

\newlength{\cvrightmargin}
\newlength{\cvleftmargin}
\newlength{\cvtopmargin}
\newlength{\cvpicturediff}
\newlength{\cvrightbarwidth}
\setlength{\cvrightbarwidth}{5cm}

\newenvironment{cvtitle}[1][]{%
    \setlength{\cvrightmargin}{\paperwidth - \textwidth - \hoffset - 1in - \oddsidemargin}
    \setlength{\cvpicturediff}{\cvrightbarwidth - 3.5cm}
    \setlength{\cvtopmargin}{1in + \voffset + \topmargin + \headheight + \headsep}

    \thispagestyle{firststyle}
    \noindent\begin{tikzpicture}[remember picture,overlay]
    \fill[black!60!white] (current page.north east) rectangle ([xshift=-2\cvrightmargin - \cvrightbarwidth]current page.south east);
    \node [anchor=north west, inner sep=0pt] at (0,0)
        {\fontfamily{ppl}\selectfont \LARGE \textbf{\textsc{\@author}}};
    \ifthenelse{\isempty{#1}}{}
        {\node [anchor=north east, inner sep=0pt, outer sep=0pt] at ([xshift=\textwidth - 0.5\cvpicturediff]0,0)
            {\includegraphics[width=3.5cm]{#1}};}
    \newcommand{\cvinfoitem}[2]{%
        \noindent%
        \RaggedLeft##2\ \makebox[\baselineskip][c]{##1}%
    }
    %
    % gets defined later, we need this macro here to put everything inside the environment in the one content note of the header graphic.
    \startcvinfo%
}{%
    \end{tikzpicture}%
}%
% Anything in the cvtitle environment will be put into this content node. The node draws a minipage
\def\startcvinfo#1\end{\node [anchor=north east, inner sep=0pt] at ([xshift=\textwidth]0,-5)%
    {\begin{minipage}{\textwidth-4cm-\parindent}\color{white}\RaggedLeft#1\end{minipage}};\end}%å

\newenvironment{cvcontent}{%
    \setlength{\cvrightmargin}{\paperwidth - \textwidth - \hoffset - 1in - \oddsidemargin}
    \setlength{\cvleftmargin}{\paperwidth - \textwidth - \cvrightmargin}
    \setlength{\cvtopmargin}{1in + \voffset + \topmargin + \headheight + \headsep}

    \noindent\begin{tikzpicture}[remember picture,overlay]
    \startcvcontent%
}{%
    \end{tikzpicture}%
}%
% Anything in the cvtitle environment will be put into this content node. The node draws a minipage
\def\startcvcontent#1\end{\node [anchor=north west, inner sep=0pt] at ([xshift=\cvleftmargin, yshift=-\cvtopmargin - 1.5cm]current page.north west)%
    {\begin{minipage}{\paperwidth-2\cvrightmargin-2\cvleftmargin-\cvrightbarwidth}#1\end{minipage}};\end}%

\endinput

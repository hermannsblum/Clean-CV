\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{cleancv-top}[2017/10/12 version]

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
\newenvironment{cvtitle}[1][]{%
    \thispagestyle{firststyle}
    \noindent\begin{tikzpicture}{remember picture,overlay}
    \node [anchor=north west, inner sep=0pt] at (current page.north west)
        {\fontfamily{ppl}\selectfont \LARGE \textbf{\textsc{\@author}}};
    \ifthenelse{\isempty{#1}}{}
        {\node [anchor=north east, inner sep=0pt, outer sep=0pt] at ([xshift=\textwidth]current page.north west)
            {\includegraphics[width=3.5cm]{#1}};}
    \newcommand{\cvinfoitem}[2]{\makebox[\baselineskip][c]{##1}\ ##2}
    %
    % gets defined later, we need this macro here to put everything inside the environment in the one content note of the header graphic.
    \startcvinfo%
}{%
    \end{tikzpicture}%
}%
% Anything in the cvtitle environment will be put into this content node. The node draws a minipage
\def\startcvinfo#1\end{\node [anchor=north west, inner sep=0pt] at ([xshift=\parindent, yshift=-1cm]current page.north west)%
    {\begin{minipage}{\textwidth-4cm-\parindent}#1\end{minipage}};\end}%

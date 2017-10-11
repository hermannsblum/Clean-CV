\ProvidesClass{cleancv-right}[2017 version]
\NeedsTeXFormat{LaTeX2e}[1994/06/01]

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
\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage[showboxes]{textpos}
\newenvironment{cvtitle}[2][]{%
    \thispagestyle{plain}
    \ifx\@title\@empty
    \else{\noindent{\fontfamily{ppl}\selectfont \LARGE \textbf{\textsc{\@title}}
        % We do not want the title to fill the whole first line, therefore move the picture up again
        \\\vspace{-\f@size  pt}}
    }%
    \fi
    \wrapfigure[#2]{r}{3.5cm + \parindent}%
    %\begin{minipage}{3.5cm + \parindent}
    \RaggedLeft
    \ifthenelse{\isempty{#1}}{}
        {\includegraphics[width=3.5cm]{#1}\\}
    \textbf{\@author}\\
    \newcommand{\cvinfoitem}[2]{%
        \noindent%
        \RaggedLeft##2\ \makebox[\baselineskip][c]{##1}%
    }
}{%
    %\end{minipage}
    \endwrapfigure%
}%

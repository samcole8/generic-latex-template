% generic.cls - A minimal document class

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{generic}[2025/12/12 v0.0.0 Generic LaTeX Template]

% Load pgfkeys
\RequirePackage{pgfkeys}
\RequirePackage{pgfopts}
\pgfkeys{
    /generic/.is family, /generic,
    title/.estore in = \@genericTitle,
    author/.estore in = \@genericAuthor,
    date/.estore in = \@genericDate,
    type/.estore in = \@genericType,
    bibstyle/.estore in = \@genericBibStyle,
    logo/.estore in = \@genericLogo
}
\pgfkeys{
    /generic,
    title={Title},
    author={Author},
    date={\noexpand\today},
    type={article},
    bibstyle={ieee},
    logo={}
}
\ProcessPgfOptions{/generic}

\makeatletter
% Base class
\LoadClass[a4paper, 10pt]{\@genericType}

% Predictable Margins
\RequirePackage{geometry}
\geometry{a4paper, margin=2.5cm}

% Clean fonts
\RequirePackage{lmodern} % for a clean font
\RequirePackage[T1]{fontenc}

% Use listings
\RequirePackage{listings}
\lstset{basicstyle=\ttfamily,captionpos=b, breaklines=true}
\renewcommand{\lstlistlistingname}{List of Listings}

\RequirePackage{graphicx} % Import images
\RequirePackage{booktabs} % Better tables
\RequirePackage{url}
\RequirePackage{ifthen}

%  % Links and PDF Metadata
\RequirePackage[colorlinks=true,linkcolor=blue,citecolor=blue,urlcolor=blue]{hyperref}
\hypersetup{
    pdftitle={\@genericTitle},
    pdfauthor={\@genericAuthor}
}

% Bibliographies
\usepackage[backend=biber, style=\@genericBibStyle]{biblatex}
\addbibresource{references.bib} % Set default bibliography file

\setcounter{tocdepth}{1} % Table of contents depth
\pagestyle{plain}

% Title page macro
\def\maketitle{%
    \newpage
    \thispagestyle{empty}

    \begin{center}
        % Include logo if defined
        \ifx\@genericLogo\@empty
        \else
            \includegraphics[width=0.35\textwidth]{\@genericLogo}\par
        \fi

        \vspace*{\fill}

        {\LARGE\bfseries \@genericTitle \par}
        \vspace{1em}
        {\large \@genericAuthor \par}
        \vspace{2em}
        {\large \@genericDate \par}
    \end{center}

    \vspace*{\fill}

    \newpage
}

% Ignore chapter if provided in article
\providecommand{\chapter}[1]{%
    \ClassWarning{generic}{\string\chapter\space is not supported for type `article'; ignored}%
    {}
}

% Define front, main, and back matter macros in articles for consistency
\providecommand{\frontmatter}{%
    \cleardoublepage\pagenumbering{roman}%
}
\providecommand{\mainmatter}{%
    \cleardoublepage\pagenumbering{arabic}%
}
\providecommand{\backmatter}{
    \cleardoublepage\setcounter{secnumdepth}{0}%
}

\makeatother
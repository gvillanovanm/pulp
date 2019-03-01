\LoadClass[12pt]{article}          % Classe tipo report

%\RequirePackage[portuguese]{babel}
\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{indentfirst}
\RequirePackage{float}
\RequirePackage{setspace} 
\RequirePackage{afterpage}
\RequirePackage{tabularx}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage[labelfont=bf,textfont=bf]{caption}
\RequirePackage{listings}
\RequirePackage{enumitem}


\RequirePackage{color}
% \RequirePackage{stackengine}
\RequirePackage[table,xcdraw]{xcolor}
\RequirePackage{amsmath}
\RequirePackage{textcomp}
\RequirePackage{pdfpages}
\RequirePackage{datetime}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage[toc,page]{appendix}
\RequirePackage{lastpage}
% \RequirePackage[noend]{algpseudocode}
\RequirePackage{algorithm}
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{booktabs}
\RequirePackage{tocloft}
\RequirePackage{array,multirow}
\RequirePackage{marvosym} % Emoji


\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Define local de figuras
%\graphicspath{{figuras/}}

% Define paginas em branco
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage}

% Define a tabulação
\newcommand\tab[1][1cm]{\hspace*{#1}}

% Define as margens
\RequirePackage[a4paper, left = 1.18in, right = 0.79in, top = 1.18in, bottom = 0.79in]{geometry}

% Define configuração dos links
\hypersetup{
    colorlinks = false,
    citecolor = blue
    urlcolor = blue,
    linkbordercolor = {white}
}

\newcommand{\executeiffilenewer}[3]{
  \ifnum\pdfstrcmp{\pdffilemoddate{#1}}
  {\pdffilemoddate{#2}}>0
  {\immediate\write13{#3}}\fi
}

\newcommand{\includesvg}[1]{
  \executeiffilenewer{#1.svg}{#1.pdf}
  {inkscape -z -D --file=#1.svg
  --export-pdf=#1.pdf --export-latex}
  \input{#1.pdf_tex}
}

\newcommand{\MONTH}{%
  \ifcase\the\month
  \or Janeiro   % 1
  \or Fevereiro % 2
  \or Março     % 3
  \or Abril     % 4
  \or Maio      % 5
  \or Junho     % 6
  \or Julho     % 7
  \or Agosto    % 8
  \or Setembro  % 9
  \or Outubro   % 10
  \or Novembro  % 11
  \or Dezembro  % 12
  \fi}

% Estilo da pagina
%\pagestyle{fancy}
%\fancyhf{}
%\rhead{Share\LaTeX}
%\lhead{Guides and tutorials}
%\rfoot{Page \thepage}

\pagestyle{fancy}

%\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\lhead{\firstxmark}
\renewcommand{\rightmark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}

\fancyfoot[C] {\footnotesize \thepage}

\renewcommand{\headrulewidth}{.1pt}
\renewcommand{\footrulewidth}{.1pt}

% Definições para o MatLAB
%\definecolor{mygreen}{RGB}{28,172,0} % color values Red, Green, Blue
%\definecolor{mylilas}{RGB}{170,55,241}

%\lstset{language=Matlab,%
  %basicstyle=\color{red},
  % breaklines=true,%
  %morekeywords={matlab2tikz},
  %keywordstyle=\color{blue},%
  %morekeywords=[2]{1}, keywordstyle=[2]{\color{black}},
  %identifierstyle=\color{black},%
  %stringstyle=\color{mylilas},
  %commentstyle=\color{mygreen},%
  %showstringspaces=false,%without this there will be a symbol in the places where there is a space
  %numbers=left,%
  %numberstyle={\tiny \color{black}},% size of the numbers
  %numbersep=9pt, % this defines how far the numbers are from the text
  %emph=[1]{for,end,break},emphstyle=[1]\color{red}, %some words to emphasise
  %emph=[2]{word1,word2}, emphstyle=[2]{style},
%}

% Definições para C
\lstdefinestyle{customc}{
  numbersep=4pt, % this defines how far the numbers are from the text
  %belowcaptionskip=\baselineskip,
  %breaklines=true,
  %frame=tb,
  %xleftmargin=\parindent,
  language=C,
  %showstringspaces=false,
  basicstyle=\footnotesize, %or \tiny or \small or \footnotesize etc.
  %basicstyle=\footnotesize\ttfamily\small,
  keywordstyle=\bfseries\color{green!40!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{blue},
  stringstyle=\color{orange},  
  %language=C++,
  %basicstyle=\ttfamily\small,
  %keywordstyle=\color{blue},
  %stringstyle=\color{verde},
  %commentstyle=\color{red},
  extendedchars=true,
  showspaces=false,
  showstringspaces=false,
  %numbers=left,
  %numberstyle=\footnotesize,
  breaklines=false,
  %backgroundcolor=\color{gray!10},
  breakautoindent=true,
  captionpos=b,
  xleftmargin=4pt,
}
% ex para usar codificacao em C:
% \\ 
% \begin{lstlisting}
%
% code here. 
%
% }
% \end{lstlisting}
% \lstinputlisting[caption=Scheduler, style=customc]

% Definições para Assembler
\lstdefinestyle{customasm}{
  belowcaptionskip=1\baselineskip,
  frame=L,
  xleftmargin=\parindent,
  language=[x86masm]Assembler,
  basicstyle=\footnotesize\ttfamily,
  commentstyle=\itshape\color{purple!40!black},
}
\lstset{escapechar=@,style=customc}


%Formata parágrafo%
\parindent=0.49in
\parskip=6pt
\onehalfspacing

%Configura sections e variantes%
\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {12\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\large\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {8\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {8\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                       {-12\p@ \@plus -4\p@ \@minus -4\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\normalfont\normalsize\itshape}}

\def\delequal{\mathrel{\ensurestackMath{\stackon[1pt]{=}{\scriptstyle\Delta}}}}

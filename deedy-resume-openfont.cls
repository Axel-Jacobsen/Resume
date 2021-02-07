% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1.0cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec}
\usepackage{graphbox,wrapfig, mwe}
\usepackage[T1]{fontenc}
\usepackage{multirow}
\usepackage{changepage}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Ligatures=TeX}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Ligatures=TeX,Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}
\newcommand{\customit}[1]{\fontspec[Path = fonts/lato/]{Lato-LigIta}\selectfont #1 \normalfont}


% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{25pt}{25pt}\selectfont #1 
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	} \\
	\vspace{8pt}
	\centering{ \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
}

% Coop header
\newcommand{\headersection}[2]{
	\centering{
		\begin{tabular}{cc}
			{\sffamily
			\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{23pt}{23pt}
			 {\selectfont #1} } & \multirow{-2.2}{*}{{\includegraphics[align=b,scale=.70]{#2}}} \\
			 {{\href{mailto:axelnjacobsen@gmail.com}{axelnjacobsen@gmail.com} | 778.789.4810}}
			 \vspace{10pt}
			\end{tabular}
	}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
}

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{subheadings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{14pt}{14pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{headings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Regular}\fontsize{11pt}{11pt}\selectfont {#1 \\} \normalfont\vspace{5pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep2pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

\pagestyle{empty}

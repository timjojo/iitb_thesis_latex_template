\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iitbthesis_2022}[2022/07/22 IIT Bombay Thesis Format by Tim John Joseph]
\typeout{Document Class `iitbthesis_2022' v2 <02 July 22>}



%====================================== OPTIONS ==================================
\newif\iftwosideA

\DeclareOption{twocolumn}{\OptionNotUsed}
% \DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{twosideA}{
\twosideAtrue
\PassOptionsToClass{twoside}{report}
}
\DeclareOption{twosideB}{\PassOptionsToClass{twoside}{report}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}			% Pass all other options to report class
\ProcessOptions\relax
\PassOptionsToClass{12pt,a4paper}{report}								% Set report class options: 12pt size and A4 paper
\LoadClass{report}


% Set default margins. Default: Equal margins for electronic version
\RequirePackage[inner=25mm,outer=25mm,top=15mm,bottom=22mm, headheight=3mm, headsep=12mm, footnotesep=10mm, textwidth=160mm, textheight=245mm]{geometry} % geometry must follow \LoadClass


% Change margins if 'twoside' option passed
\iftwosideA 
	\newgeometry{inner=20mm,outer=30mm,top=15mm,bottom=22mm, headheight=3mm, headsep=12mm, footnotesep=10mm}
	\else
	\fi

\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{xcolor}

% Set line spacing to 1.5
\linespread{1.5}


\renewenvironment{abstract}{
  \null\vfil
  \begin{center}%
    \bfseries \abstractname
  \end{center}}%
 {\par\vfil\null\clearpage}


% Conditional to swtich on/off bib processing of individual files when included in a main (multi-part) file 
\newif\ifprocbib
\procbibtrue


\newcommand{\colR}[1]{\colorlet{saved0}{.}\color{red} #1 \color{saved0}}
\newcommand{\fig}{\colorlet{saved0}{.}\color{red} FIG \color{saved0}}
\newcommand{\rf}{\colorlet{saved0}{.}\color{red}[ref]\color{saved0}}











% Define a new conditional for 'hardcopy' option
% \newif\ifhardcopy



%============= PAGE MARGINS =============================
% Double sided version margins 
% \RequirePackage[inner=20mm,outer=30mm,top=15mm,bottom=22mm, headheight=3mm, headsep=12mm, footnotesep=10mm]{geometry}

% Equal margins for electronic version
% \RequirePackage[inner=25mm,outer=25mm,top=topm,bottom=22mm, headheight=3mm, headsep=12mm, footnotesep=10mm]{geometry}



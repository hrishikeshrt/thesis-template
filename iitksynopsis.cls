% iitksynopsis.cls
% LaTeX Style file for the Indian Institute of Kanpur Synopsis Format
%   by Hrishikesh Terdalkar 2023/06/14
%
% Child of iitkthesis.cls
%
% =========================================================================== %
% Licensed under the Perl Artistic License.
% see: http://www.ctan.org/tex-archive/help/Catalogue/licenses.artistic.html
% for more info...
% =========================================================================== %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iitksynopsis}[2023/06/14 IIT Kanpur Synopsis Format]
\typeout{Document Class `iitksynopsis' v0.1 <14 Jun 2023>}


% =========================================================================== %
% Pass the options to report class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% Defaults ...
\ProcessOptions

% =========================================================================== %
% a4paper: synopsis must be printed on a4 size paper.
% 12pt:    font size must be 12 pt
%
% As iitksynopsis class is a simple extension of article class, we simply
% pass default options to article class.
% =============================================================================
\PassOptionsToClass{12pt,a4paper}{article}
\LoadClass{article}

% Advisor
\def\@advisorname{None}
\newcommand{\setguide}[1]{\def\@advisorname{#1}}
\newcommand{\setguidedept}[1]{\def\@advisordept{#1}}
\newcommand{\setguideinst}[1]{\def\@advisorinst{#1}}

% and coadvisor? (initialized to empty)
\global\let\@coadvisorname\@empty
\newcommand{\setcoguide}[1]{\def\@coadvisorname{#1}}
\newcommand{\setcoguidedept}[1]{\def\@coadvisorname{#1}}
\newcommand{\setcoguideinst}[1]{\def\@coadvisorinst{#1}}
\let\coguide\setcoguide %
\newcommand{\show@coguide}{\@coadvisorname}

% and exadvisor? (initialized to empty)
\global\let\@exadvisorname\@empty
\newcommand{\setexguide}[1]{\def\@exadvisorname{#1}}
\newcommand{\setexguidedept}[1]{\def\@exadvisorname{#1}}
\newcommand{\setexguideinst}[1]{\def\@exadvisorinst{#1}}
\let\exguide\setexguide %
\newcommand{\show@exguide}{\@exadvisorname}

% =========================================================================== %
% TITLE
%   - define \title{} \author{} \date{}
%   - The default degree is ``Unknown Degree''
%     Degree can be changed using the command \iitkdegree{}
%   - The default department is ``Unknown Department''
%     The department can be changed using the command \department{}
%   - The default document type is ``A preliminary report''
%     The document type can be changed using the command \reporttype{}
%     There are some short-cuts for \reporttype{}:
%      * for a PhD thesis, specify \thesis
%      * for a M.Tech./M.Phil./M.Des./M.S. dissertation, specify \dissertation
%      * for a DIIT/B.Tech./M.Sc.project report, specify \project
%      * for a preliminary report, specify \prelim
%   - once the above are defined, use \maketitle to generate the titlepage
% =========================================================================== %
\newcommand\@thesistitlesmskip{0.15in}
\newcommand\@thesistitlemedskip{0.25in}
\newcommand\@thesistitlebigskip{0.6in}
\newcommand{\rollnum}[1]{\gdef\@rollnum{#1}}
\newcommand{\iitkdegree}[1]{\gdef\@iitkdegree{#1}}
\newcommand{\iitkprogramme}[1]{\gdef\@iitkprogramme{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\reporttype}[1]{\gdef\@doctype{#1}}
\newcommand{\certificatetype}[1]{\gdef\@certificatetype{#1}}

\newcommand{\thesis}{\reporttype{thesis}\certificatetype{Thesis}}
\newcommand{\dissertation}{\reporttype{dissertation}\certificatetype{Dissertation}}
\newcommand{\project}{\reporttype{project report}\certificatetype{Report}}
\newcommand{\prelim}{\reporttype{preliminary report}\certificatetype{Report}}

\gdef\@rollnum{Unknown 00000000}    % Default is Unknown 00000000
\gdef\@iitkdegree{Unknown Degree}    % Default is Unknown Degree
\gdef\@iitkprogramme{Unknown Programme} % Default is Unknown Programme
\gdef\@doctype{preliminary report}  % Default is a preliminary report
\gdef\@department{(Unknown Department)} % Default is Unknown

% =========================================================================== %

\newcommand\@thesiscertificatemedskip{0.2in}
\newcommand\@thesiscertificatebigskip{0.5in}

\renewcommand{\maketitle}{%
  \begin{center}
    {\large \bf SYNOPSIS}\\[\@thesiscertificatebigskip]
    Name of Student: \textbf{\@author}\hspace{1 cm}Roll No.: \textbf{\@rollnum} \\
    Degree for which submitted: \textbf{\@iitkdegree} \\
    Department: \textbf{\@department} \\
    Thesis Title: \textbf{\@title} \\
  \end{center}
  \begin{singlespace}
    Name of Thesis Supervisor: \textbf{\@advisorname}
  \end{singlespace}
  Month and Year of Thesis Submission: \textbf{\@date} \\
  \setcounter{footnote}{0}
}

% =========================================================================== %
% Finally set margins per the IITK format
% =========================================================================== %

\usepackage[top=20mm, outer=25mm, bottom=30mm, inner=35mm]{geometry}

% Header/spacing options
\usepackage{fancyhdr}
\usepackage{setspace}
\doublespacing

% \fancyhf{}
% \renewcommand{\headrulewidth}{0pt} % remove the header rule
% \rhead{\thepage}

% \pagestyle{fancy}

% =========================================================================== %
% END FILE
% =========================================================================== %

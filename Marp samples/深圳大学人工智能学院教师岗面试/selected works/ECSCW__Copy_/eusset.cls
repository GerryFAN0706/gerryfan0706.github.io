%% LaTeX document class for EUSSET conference contributions
%
% Version: 0.1
%
% Created by Julian Fietkau <https://fietkau.me> (2025)
% Loosely based on ecscw2007.cls by S. Luz <luzs@acm.org> (2007)
%
% Website: <https://www.eusset.eu/>
% Source repository: <https://codeberg.org/jfietkau/eusset-latex>
%
% This template is provided by EUSSET <https://www.eusset.eu/> for use by
% submissions to academic conferences under its purview from 2026 onwards.
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Julian Fietkau.
%
% This work consists of the files eusset.cls, EUSSET_template.tex,
% and EUSSET_template.bib, of which the latter two serve as a usage
% example. It is typically distributed with two files named teaser.jpg
% (public domain via CC Zero 1.0) and example_diagram.pdf (a generated
% file with no copyright asserted), both created by Julian Fietkau for
% the purpose of serving as sample images alongside the template.
%
% Please note that this file may have been redistributed as part of a
% EUSSET submission using it as a template, in which case the files
% accompanying this one are likely under separate copyright restrictions.
% You can always find a "clean" version of this project on its website.
%
\ifx\IfFormatAtLeastTF\undefined
  \ClassError{eusset}{This class requires a LaTeX version no older than 2022-06-01}{Please upgrade your LaTeX installation to a newer version. There are no supported workarounds.}%
  % Compilation hard stop (mainly for Overleaf users)
  \batchmode\read-1 to \dummy
\fi
\IfFormatAtLeastTF{2022/06/01}{}{
  \ClassError{eusset}{This class requires a LaTeX version no older than 2022-06-01}{Please upgrade your LaTeX installation to a newer version. There are no supported workarounds.}%
  % Compilation hard stop (mainly for Overleaf users)
  \batchmode\read-1 to \dummy
}
\NeedsTeXFormat{LaTeX2e}[2022/06/01]
\ProvidesClass{eusset}[2025/07/19 v0.1 - LaTeX class for EUSSET conferences, Julian Fietkau (fietkau.me)]
\def\@eussetPaperSize{a4paper} % default
\def\@eussetPaperLandscapeOption{false} % default
\DeclareOption{anonymous}{\def\@eussetAnonymized{true}}
\DeclareOption{noneusset}{\def\@eussetNonEusset{true}}
\DeclareOption{noicons}{\def\@eussetNoIcons{true}}
\DeclareOption{a4paper}{} % default, no action needed
\DeclareOption{a5paper}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `a5paper' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperSize{a5paper}%
  \fi%
}
\DeclareOption{b5paper}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `b5paper' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperSize{b5paper}%
  \fi%
}
\DeclareOption{letterpaper}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `letterpaper' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperSize{letterpaper}%
  \fi%
}
\DeclareOption{legalpaper}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `legalpaper' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperSize{legalpaper}%
  \fi%
}
\DeclareOption{executivepaper}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `executivepaper' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperSize{executivepaper}%
  \fi%
}
\DeclareOption{landscape}{%
  \ifx\@eussetNonEusset\undefined%
    \ClassError{eusset}{Option `landscape' not supported without `noneusset'}{}%
  \else%
    \def\@eussetPaperLandscapeOption{true}%
  \fi%
}
\DeclareOption{twocolumn}{\ClassError{eusset}{Option `twocolumn' not supported}{}}
\DeclareOption{titlepage}{\ClassError{eusset}{Option `titlepage' not supported}{}}
\DeclareKeys[eusset]{
  authorstyle .choice:,
  authorstyle / compact .code:n = {\def\@eussetAuthorStyle{compact}},
  authorstyle / classic .code:n = {\def\@eussetAuthorStyle{classic}},
  authorstyle .initial:n = compact,
  noalt .choice:,
  noalt / warn .code:n = {\def\@eussetNoAlt{warn}},
  noalt / error .code:n = {\def\@eussetNoAlt{error}},
  noalt / ignore .code:n = {\def\@eussetNoAlt{ignore}},
  noalt .initial:n = warn,
  workshopproceedingsbanner .choice:,
  workshopproceedingsbanner / always .code:n = {\def\@eussetWorkshopProceedings{always}},
  workshopproceedingsbanner / ifworkshop .code:n = {\def\@eussetWorkshopProceedings{ifworkshop}},
  workshopproceedingsbanner / never .code:n = {\def\@eussetWorkshopProceedings{never}},
  workshopproceedingsbanner .initial:n = ifworkshop,
}
%\DeclareOption*{\ClassWarning{eusset}{Unknown class option: `\CurrentOption'}}
\ProcessKeyOptions[eusset]
\ProcessOptions
\PassOptionsToClass{\@eussetPaperSize,12pt}{article}
\def\@unusedoptionlist{} % Hopefully temporary: https://github.com/latex3/latex2e/issues/938
\LoadClass{article}
\RequirePackage{expl3}
\RequirePackage{ifthen}
\RequirePackage{silence}
\RequirePackage{geometry}
\RequirePackage{environ}
\RequirePackage[authoryear,round,sort&compress]{natbib}
\RequirePackage[dvipsnames,svgnames,x11names]{xcolor}
\RequirePackage{graphicx}
\@ifpackagelater{graphicx}{2021/09/16}{}{%
  \ClassError{eusset}{This class requires at least version 1.2 of the graphix package.}{Please upgrade your installation of the `graphicx'' package to a newer version. There are no supported workarounds.}%
  % Compilation hard stop (mainly for Overleaf users)
  \batchmode\read-1 to \dummy
}
\RequirePackage[bitstream-charter]{mathdesign}
\RequirePackage[lining]{FiraSans}
\RequirePackage[lining,scaled=0.9]{FiraMono}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{url}
\ifx\@eussetNoIcons\undefined%
  \RequirePackage{tikz}
  \usetikzlibrary{svg.path}
\fi
\definecolor{eussetUrl}{RGB}{0,60,230}
\RequirePackage[
  colorlinks=true,
  linkcolor=black,
  anchorcolor=black,
  citecolor=black,
  menucolor=black,
  filecolor=black,
  urlcolor=eussetUrl,
]{hyperref}
\RequirePackage{hyperxmp}
\RequirePackage{hypcap}

\catcode`\Q=3
\newcommand\@strip[1]{\romannumeral-`\q\strip@strip@\noexpand#1Q Q}
\long\def\strip@strip@#1 Q{\strip@strip@@#1Q}
\long\def\strip@strip@@#1Q#2{#1}
\catcode`\Q=11

\ExplSyntaxOn

% Store some tokens for use by the template. Contains a unified way to do
% integrity checks.
% Parameters: flags, name, value
\NewDocumentCommand{\@eussetStoreData}{ o m m }{
  \tl_clear_new:N \l_template_input_tl
  \tl_set:Nn \l_template_input_tl {#3}
  \clist_clear_new:N \l_template_input_flags_clist
  \clist_set:Nn \l_template_input_flags_clist {#1}
  \bool_if_exist:NTF \l_template_do_store_bool {} {\bool_new:N \l_template_do_store_bool}
  \bool_set_true:N \l_template_do_store_bool
  \clist_if_in:NnTF \l_template_input_flags_clist { beforetitle } {
    \ifx \@eussetAfterTitle \undefined \else
      \bool_set_false:N \l_template_do_store_bool
      \ClassError{eusset}{#2~must~be~set~before~the~start~of~the~document}{The~content~of~#2~can~only~be~set~before~\@backslashchar begin{document}}
    \fi
  } {}
  \clist_if_in:NnTF \l_template_input_flags_clist { trim } {
    \tl_trim_spaces:N \l_template_input_tl
  } {}
  \clist_if_in:NnTF \l_template_input_flags_clist { nonempty } {
    \tl_if_empty:NTF \l_template_input_tl {
      \bool_set_false:N \l_template_do_store_bool
      % No error if data is empty - we simply ignore it.
    } {}
  } {}
  \bool_if:NTF \l_template_do_store_bool {
    \clist_if_in:NnTF \l_template_input_flags_clist { verbatim } {
      \expandafter\edef\csname @eusset#2\endcsname{\tl_to_str:N \l_template_input_tl}
    } {
      \expandafter\edef\csname @eusset#2\endcsname{\tl_use:N \l_template_input_tl}
    }
  } {}
}

\NewDocumentCommand{\conferenceName}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{ConferenceName}{#1}}
\NewDocumentCommand{\conferenceShort}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{ConferenceShort}{#1}}
\NewDocumentCommand{\conferenceYear}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{ConferenceYear}{#1}}
\NewDocumentCommand{\submissionType}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{SubmissionType}{#1}}
\NewDocumentCommand{\workshopName}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{WorkshopName}{#1}}
\NewDocumentCommand{\workshopCredit}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{WorkshopCredit}{#1}}
\NewDocumentCommand{\workshopURL}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{WorkshopUrl}{#1}}
\NewDocumentCommand{\journalName}{m}{\@eussetStoreData[trim,nonempty,beforetitle]{JournalName}{#1}}
\NewDocumentCommand{\issn}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{Issn}{#1}}
\NewDocumentCommand{\doi}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{Doi}{#1}}
\NewDocumentCommand{\eussetDownloadURL}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{CustomDownloadUrl}{#1}}

\NewDocumentCommand{\keywords}{m}{%
  % In the following we do some magic for "smart" keyword lists: First, try
  % splitting the raw keywords string by comma and by semicolon, count both,
  % and keep the one with more segments - this allows us to flexibly accept keyword
  % lists separated by either character. Next, trim whitespace for each keyword, drop
  % empty keywords, then recombine into a clean comma-separated list. Note: we do
  % not (currently) check for duplicates or do any sorting.
  \seq_new:N \l_eusset_keywords_seq
  \seq_set_split:Nnn \l_eusset_keywords_seq {,} {#1}
  \seq_new:N \l_eusset_keywords_semicolon_seq
  \seq_set_split:Nnn \l_eusset_keywords_semicolon_seq {;} {#1}
  \int_compare:nNnTF {\seq_count:N \l_eusset_keywords_semicolon_seq} > {\seq_count:N \l_eusset_keywords_seq} {\seq_set_eq:NN \l_eusset_keywords_seq \l_eusset_keywords_semicolon_seq} {}
  \seq_remove_all:Nn \l_eusset_keywords_seq {}
  \seq_if_empty:NTF \l_eusset_keywords_seq {} {
    \@eussetStoreData[beforetitle]{Keywords}{\seq_use:Nn \l_eusset_keywords_seq {,~}}
  }
}

\ExplSyntaxOff

\def\@eussetCopyrightNotice{\textbf{\color{red}Authors: remember to pick your copyright/license choice.}}
\NewCommandCopy{\@eussetCopyrightDefaultNotice}{\@eussetCopyrightNotice}
\RenewDocumentCommand{\copyright}{m}{%
  \@eussetStoreData[trim,nonempty,beforetitle]{Copyright}{#1}%
  \ifthenelse{\equal{\@strip{#1}}{reserved}}{
    \def\@eussetCopyrightNotice{This article is copyrighted by the author\ifthenelse{\value{@eussetAuthorCount}=1}{}{s}. All rights reserved.}
  }{}
  \ifthenelse{\equal{\@strip{#1}}{licensed}}{
    \def\@eussetCopyrightNotice{This article is copyrighted by the author\ifthenelse{\value{@eussetAuthorCount}=1}{}{s}. Publication rights have been licensed to \ifx\@eussetNonEusset\undefined EUSSET\else the publisher\fi.}
  }{}
  \ifthenelse{\equal{\@strip{#1}}{CC-BY-4.0}}{
    \def\@eussetCopyrightLicenseName{Creative Commons Attribution~4.0}
    \def\@eussetCopyrightLicenseUrl{https://creativecommons.org/licenses/by/4.0/}
    \def\@eussetCopyrightLicenseExplanation{You are free to share and adapt this work as long as the attribution to the author\ifthenelse{\value{@eussetAuthorCount}=1}{}{s} is preserved.}
    \def\@eussetCopyrightLicenseBadge{doclicense-CC-by-88x31}
  }{}
  \ifthenelse{\equal{\@strip{#1}}{CC-BY-SA-4.0}}{
    \def\@eussetCopyrightLicenseName{Creative Commons Attribution-ShareAlike~4.0}
    \def\@eussetCopyrightLicenseUrl{https://creativecommons.org/licenses/by-sa/4.0/}
    \def\@eussetCopyrightLicenseExplanation{You are free to share and adapt this work as long as the attribution to the author\ifthenelse{\value{@eussetAuthorCount}=1}{}{s} is preserved and any works substantially incorporating this one are released under the same license.}
    \def\@eussetCopyrightLicenseBadge{doclicense-CC-by-sa-88x31}
  }{}
  \ifthenelse{\equal{\@strip{#1}}{CC-BY-NC-SA-4.0}}{
    \def\@eussetCopyrightLicenseName{Creative Commons Attribution-NonCommercial-ShareAlike~4.0}
    \def\@eussetCopyrightLicenseUrl{https://creativecommons.org/licenses/by-nc-sa/4.0/}
    \def\@eussetCopyrightLicenseExplanation{You are free to share and adapt this work as long as the attribution to the author\ifthenelse{\value{@eussetAuthorCount}=1}{}{s} is preserved and any works substantially incorporating this one are released under the same license and without commercial purpose.}
    \def\@eussetCopyrightLicenseBadge{doclicense-CC-by-nc-sa-88x31}
  }{}
  \ifthenelse{\equal{\@strip{#1}}{CC0-1.0}}{
    \def\@eussetCopyrightLicenseName{Creative Commons Zero~1.0}
    \def\@eussetCopyrightLicenseUrl{https://creativecommons.org/publicdomain/zero/1.0/}
    \def\@eussetCopyrightNotice{This article has been dedicated to the public domain as described by the \href{\@eussetCopyrightLicenseUrl}{\color{black}\@eussetCopyrightLicenseName} copyright waiver. You are free to share, adapt, and build upon this work without restriction. For details, see: \url{\@eussetCopyrightLicenseUrl}}
    \def\@eussetCopyrightLicenseBadge{doclicense-CC-zero-88x31}
  }{}
  \ifx\@eussetCopyrightLicenseBadge\undefined
  \else
    \IfFileExists{\@eussetCopyrightLicenseBadge.pdf}{}{
      \IfFileExists{\@eussetCopyrightLicenseBadge.png}{}{
        \IfFileExists{\@eussetCopyrightLicenseBadge.jpg}{}{
          \IfFileExists{\@eussetCopyrightLicenseBadge.jpeg}{}{
            \ClassWarning{eusset}{Could not find license badge. Please install the doclicense package to enable Creative Commons badges.}
            \let\@eussetCopyrightLicenseBadge=\undefined
          }
        }
      }
    }
  \fi
  \ifx\@eussetCopyrightLicenseName\undefined\else
    \ifx\@eussetCopyrightNotice\@eussetCopyrightDefaultNotice
      \def\@eussetCopyrightNotice{This article is released to the public under the \href{\@eussetCopyrightLicenseUrl}{\color{black}\@eussetCopyrightLicenseName} license. \ifx\@eussetCopyrightLicenseExplanation\undefined\else\@eussetCopyrightLicenseExplanation\fi{} For details, see: \urlstyle{sf}\url{\@eussetCopyrightLicenseUrl}}
    \fi
  \fi
  \ifthenelse{\equal{#1}{}}{}{%
    \ifx\@eussetCopyrightNotice\@eussetCopyrightDefaultNotice%
      \def\@eussetCopyrightNotice{\@strip{#1}}%
    \fi%
  }%
}

\geometry{
  paper=\@eussetPaperSize,
  left=30mm,right=30mm,top=25mm,bottom=25mm,
  centering,
  landscape=false,
}
\ifthenelse{\equal{\@eussetPaperLandscapeOption}{true}}{
  \geometry{
    landscape=true,
  }
}{}

\setlength{\bibhang}{5mm}
\setlength{\bibsep}{3pt}
\def\bibfont{\footnotesize}
\def\bibcommenthead{}
\def\bibname{References}
\renewcommand{\bibsection}{\section*{\bibname}\addcontentsline{toc}{section}{\bibname}}
\bibliographystyle{eusset}
\def\sectionautorefname{Section}
\def\subsectionautorefname{Subsection}
\def\subsubsectionautorefname{Subsubsection}
\clubpenalty=10000
\tolerance=1
\hbadness=10000
\emergencystretch=\maxdimen
\pagestyle{fancy}
\setlist{noitemsep}
\setlist[1]{leftmargin=1.5em,itemsep=.4em}
\setlist[2]{leftmargin=1.5em,itemsep=.2em}
\setlist[3]{leftmargin=1.5em,itemsep=0pt}
\setlist[4]{leftmargin=1.5em,itemsep=0pt}
\setlist[1,itemize]{label=$\bullet$}
\setlist[2,itemize]{label=\raisebox{.3ex}{\scalebox{0.6}{$\blacksquare$}}}
\setlist[3,itemize]{label=$\circ$}
\setlist[4,itemize]{label=\raisebox{.3ex}{\scalebox{0.6}{$\square$}}}
\setlist[1,enumerate]{label=\arabic{enumi}.}
\setlist[2,enumerate]{label=\alph{enumii}.}
\setlist[3,enumerate]{label=\roman{enumiii}.}
\setlist[4,enumerate]{label=\Alph{enumiv}.}

% Disallow changing the bibliography style in the document
\RenewDocumentCommand{\bibliographystyle}{}{}
% Emit a warning on use of \cite to encourage proper use of natbib commands
\RenewDocumentCommand{\cite}{oom}{%
  \ClassWarning{eusset}{\@backslashchar cite should not be used. Did you mean \@backslashchar citep or \@backslashchar citet?}%
  \IfNoValueTF{#2}{%
    \IfNoValueTF{#1}{%
       \citet{#3}%
     }{%
       \citet[#1]{#3}%
     }%
   }{%
     \citet[#1][#2]{#3}%
   }%
}

\definecolor{eussetYellow}{RGB}{255,204,0}
\definecolor{eussetGray}{RGB}{96,96,96}
\NewDocumentCommand{\@eussetLogo}{}{%
  \ifx\@eussetNoIcons\undefined%
    \raisebox{16pt}{%
      \scalebox{.06}[-.06]{%
        \begin{tikzpicture}
          \filldraw[eussetYellow] svg{m354.9 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.94-6.666 14.94-14.95 0-8.28-6.664-14.95-14.94-14.95h-67.25zm317 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h86.68c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-86.68zm-618.1 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.94 14.95 14.94h86.68c8.28 0 14.95-6.664 14.95-14.94 0-8.28-6.666-14.95-14.95-14.95h-86.68zm272 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.94 14.95 14.94-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94 0-8.28-6.666-14.95-14.95-14.95h-8.967zm116.6 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.94 14.95 14.94h8.967c8.28 0 14.95-6.664 14.95-14.94 0-8.28-6.666-14.95-14.95-14.95h-8.967zm200.4 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.94 14.95 14.94-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h-38.86c-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94h38.86c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h185.3c-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.664-14.95 14.94 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.94-14.95-14.94 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h77.71c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-272c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94 0-8.28-6.666-14.95-14.95-14.95h-8.967zm-627.8 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h77.71c8.28 0 14.94-6.664 14.94-14.94s-6.664-14.95-14.94-14.95h-77.71c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-8.967zm340 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.94-6.666 14.94-14.95 0-8.28-6.664-14.95-14.94-14.95h-67.25zm161.6 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-67.25zm-346.1 29.89c-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h-116.6c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h116.6c-8.28 0-14.95 6.664-14.95 14.94 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.94-14.95-14.94 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h-8.967zm116.6 0c-8.28 0-14.94 6.666-14.94 14.95s6.664 14.94 14.94 14.94c-8.28 0-14.94 6.666-14.94 14.95 0 8.28 6.664 14.95 14.94 14.95-8.28 0-14.94 6.666-14.94 14.95 0 8.28 6.664 14.95 14.94 14.95-8.28 0-14.94 6.666-14.94 14.95 0 8.28 6.664 14.95 14.94 14.95-8.28 0-14.94 6.664-14.94 14.94 0 8.28 6.664 14.95 14.94 14.95-8.28 0-14.94 6.666-14.94 14.95 0 8.28 6.664 14.95 14.94 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.94-14.95-14.94 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h38.86c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-38.86c8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h-8.967zm155.4 0c-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h-8.967zm44.99 0c-8.28 0-14.95 6.666-14.95 14.95s6.666 14.94 14.95 14.94c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95 8.28 0 14.95-6.664 14.95-14.94s-6.666-14.95-14.95-14.95h-8.967zm-132.4 59.78c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.94-6.666 14.94-14.95 0-8.28-6.664-14.95-14.94-14.95h-67.25zm161.6 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-67.25zm155.4 0c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h86.68c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-86.68zm-68 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95-8.28 0-14.95 6.664-14.95 14.94 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.94-14.95-14.94 8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-8.967zm-116.6 29.89c-8.28 0-14.95 6.664-14.95 14.94 0 8.28 6.666 14.95 14.95 14.95h8.967c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.94-14.95-14.94h-8.967zm29.14 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-67.25zm-317 29.89c-8.28 0-14.95 6.666-14.95 14.95 0 8.28 6.666 14.95 14.95 14.95h67.25c8.28 0 14.95-6.666 14.95-14.95 0-8.28-6.666-14.95-14.95-14.95h-67.25z};
          \filldraw[eussetGray] svg{m701.1 48.57v27.24h19.54v-3.064h-16.06v-9.34h14.83v-3.062h-14.83v-8.705h15.39v-3.064h-18.87zm26.75 0v27.24h3.289v-22.83l7.732 22.83h3.662l7.658-22.83v22.83h3.289v-27.24h-4.82l-7.92 23.72-8.07-23.72h-4.82zm33.66 0v27.24h12.29c2.578 0 4.484-0.7102 5.941-2.279 1.345-1.42 2.092-3.363 2.092-5.492 0-3.288-1.494-5.268-4.969-6.613 2.503-1.158 3.773-3.137 3.773-5.939 0-2.017-0.7483-3.736-2.168-5.006-1.457-1.308-3.287-1.906-5.902-1.906h-11.06zm27.72 0v27.24h19.54v-3.064h-16.06v-9.34h14.83v-3.062h-14.83v-8.705h15.39v-3.064h-18.87zm27.27 0v27.24h10.5c6.874 0 11.1-5.156 11.1-13.64 0-8.443-4.184-13.6-11.1-13.6h-10.5zm29.37 0v27.24h10.5c6.874 0 11.1-5.156 11.1-13.64 0-8.443-4.184-13.6-11.1-13.6h-10.5zm28.95 0v27.24h19.54v-3.064h-16.06v-9.34h14.83v-3.062h-14.83v-8.705h15.39v-3.064h-18.87zm27.27 0v27.24h10.5c6.874 0 11.1-5.156 11.1-13.64 0-8.443-4.184-13.6-11.1-13.6h-10.5zm-137.1 3.064h6.725c1.943 0 3.027 0.2609 3.961 0.9707 0.9714 0.7472 1.494 1.869 1.494 3.363 0 1.494-0.5228 2.614-1.494 3.361-0.934 0.7098-2.018 0.9727-3.961 0.9727h-6.725v-8.668zm54.99 0h6.426c5.38 0 8.219 3.623 8.219 10.57 0 6.912-2.839 10.54-8.219 10.54h-6.426v-21.11zm29.37 0h6.426c5.38 0 8.219 3.623 8.219 10.57 0 6.912-2.839 10.54-8.219 10.54h-6.426v-21.11zm56.23 0h6.426c5.38 0 8.219 3.623 8.219 10.57 0 6.912-2.839 10.54-8.219 10.54h-6.426v-21.11zm-140.6 11.73h8.48c3.064 0 4.895 1.756 4.895 4.707 0 2.914-1.831 4.67-4.895 4.67h-8.48v-9.377zm-589.6 13.99c-7.808 0-13.11 5.753-13.11 14.27 0 8.555 5.267 14.27 13.15 14.27 3.325 0 6.239-1.009 8.443-2.877 2.951-2.503 4.707-6.726 4.707-11.17 0-8.78-5.192-14.49-13.19-14.49zm-96.76 0.4473v27.24h19.54v-3.064h-16.06v-9.34h14.83v-3.062h-14.83v-8.705h15.39v-3.064h-18.87zm27.12 0v19.13c0 5.529 3.961 8.967 10.42 8.967 6.389 0 10.5-3.512 10.5-8.967v-19.13h-3.475v19.13c0 3.661-2.652 5.902-7.023 5.902-2.017 0-3.661-0.4859-4.969-1.42-1.345-1.046-1.98-2.428-1.98-4.482v-19.13h-3.475zm29.66 0v27.24h3.475v-11.73h8.967c3.101 0 4.482 1.495 4.482 4.857l-0.03711 2.428c0 1.681 0.2975 3.326 0.7832 4.447h4.223v-0.8594c-1.308-0.8966-1.57-1.868-1.645-5.492-0.0374-4.483-0.7458-5.829-3.697-7.1 3.064-1.532 4.295-3.362 4.295-6.5 0-4.707-2.913-7.285-8.293-7.285h-12.55zm60.04 0v27.24h3.475v-11.54h8.555c2.13 0 3.811-0.6358 5.268-1.943 1.644-1.494 2.354-3.249 2.354-5.752 0-5.118-3.024-7.996-8.404-7.996h-11.25zm26.04 0v27.24h19.54v-3.064h-16.07v-9.34h14.83v-3.062h-14.83v-8.705h15.39v-3.064h-18.87zm34.33 0-9.713 27.24h3.699l2.877-8.182h10.5l2.801 8.182h3.887l-9.564-27.24h-4.484zm19.8 0v27.24h3.289v-22.08l14.08 22.08h3.922v-27.24h-3.287v22.27l-14.23-22.27h-3.773zm-100.2 2.615c5.903 0 9.713 4.446 9.713 11.36 0 6.575-3.922 11.06-9.676 11.06-5.828 0-9.676-4.482-9.676-11.21 0-6.725 3.848-11.21 9.639-11.21zm-36.5 0.4492h8.406c1.943 0 3.063 0.2977 3.922 1.045 0.934 0.7846 1.42 2.019 1.42 3.625 0 3.25-1.643 4.707-5.342 4.707h-8.406v-9.377zm60.04 0h7.248c3.325 0 5.305 1.792 5.305 4.781s-1.98 4.781-5.305 4.781h-7.248v-9.562zm59.1 0.6719 4.184 12.4h-8.668l4.484-12.4zm689.9 59.33c-3.661 0-6.611 1.159-8.629 3.4-2.466 2.69-3.811 6.576-3.811 10.98 0 4.483 1.381 8.33 3.922 10.98 2.13 2.167 4.82 3.176 8.369 3.176 6.65 0 10.39-3.586 11.21-10.8h-3.586c-0.2989 1.868-0.672 3.139-1.232 4.223-1.121 2.242-3.437 3.512-6.352 3.512-5.417 0-8.854-4.335-8.854-11.13 0-6.986 3.25-11.28 8.555-11.28 2.204 0 4.258 0.6353 5.379 1.719 1.009 0.934 1.57 2.055 1.98 4.109h3.549c-1.083-5.978-4.52-8.893-10.5-8.893zm87.95 0c-7.808 0-13.11 5.753-13.11 14.27 0 8.555 5.269 14.27 13.15 14.27 3.325 0 6.237-1.009 8.441-2.877 2.952-2.503 4.709-6.724 4.709-11.17 0-8.78-5.194-14.5-13.19-14.5zm53.09 0c-7.808 0-13.11 5.753-13.11 14.27 0 8.555 5.267 14.27 13.15 14.27 3.325 0 6.239-1.009 8.443-2.877 2.951-2.503 4.707-6.724 4.707-11.17 0-8.78-5.192-14.5-13.19-14.5zm31.64 0c-3.325 0-6.015 0.8593-8.145 2.615-3.176 2.615-4.932 6.836-4.932 11.73 0 8.369 5.118 14.2 12.48 14.2 3.699 0 6.613-1.383 9.303-4.334l0.8593 3.625h2.205v-14.53h-11.36v3.062h8.293v0.748c0 4.857-3.586 8.369-8.555 8.369-2.765 0-5.268-1.01-6.875-2.766-1.793-1.943-2.877-5.192-2.877-8.555 0-6.687 3.811-11.1 9.564-11.1 4.147 0 7.136 2.129 7.883 5.641h3.549c-0.9713-5.529-5.155-8.705-11.39-8.705zm67.81 0c-5.978 0-9.676 3.065-9.676 7.996 0 3.325 1.755 5.416 5.342 6.35l6.764 1.795c3.474 0.8966 5.006 2.279 5.006 4.408 0 1.457-0.7851 2.952-1.943 3.773-1.083 0.7846-2.802 1.158-5.006 1.158-2.989 0-4.97-0.7102-6.277-2.279-1.009-1.196-1.457-2.502-1.42-4.184h-3.287c0.037 2.503 0.524 4.146 1.607 5.641 1.868 2.578 5.006 3.885 9.152 3.885 3.25 0 5.902-0.7468 7.658-2.092 1.831-1.457 2.99-3.885 2.99-6.238 0-3.362-2.092-5.829-5.791-6.838l-6.838-1.83c-3.288-0.8966-4.482-1.943-4.482-4.035 0-2.765 2.428-4.596 6.09-4.596 4.334 0 6.762 1.943 6.799 5.529h3.287c0-1.868-0.1113-2.39-0.709-3.66-1.494-3.138-4.67-4.783-9.266-4.783zm-304.7 0.4492v3.062h8.967v24.17h3.475v-24.17h8.928v-3.062h-21.37zm27.16 0v27.23h19.54v-3.062h-16.06v-9.34h14.83v-3.064h-14.83v-8.705h15.39v-3.062h-18.87zm54.81 0v27.23h3.475v-12.4h14.01v12.4h3.475v-27.23h-3.475v11.77h-14.01v-11.77h-3.475zm29.1 0v27.23h3.289v-22.08l14.08 22.08h3.924v-27.23h-3.289v22.27l-14.23-22.27h-3.773zm60.97 0v27.23h16.92v-3.062h-13.45v-24.17h-3.475zm85.29 0v27.23h3.512v-27.23h-3.512zm12.4 0v27.23h19.54v-3.062h-16.06v-9.34h14.83v-3.064h-14.83v-8.705h15.39v-3.062h-18.87zm-117.6 2.615c5.903 0 9.715 4.446 9.715 11.36 0 6.575-3.922 11.06-9.676 11.06-5.828 0-9.678-4.484-9.678-11.21 0-6.725 3.848-11.21 9.639-11.21zm53.09 0c5.903 0 9.713 4.446 9.713 11.36 0 6.575-3.922 11.06-9.676 11.06-5.828 0-9.676-4.484-9.676-11.21 0-6.725 3.848-11.21 9.639-11.21zm-541.6 81.21c-6.872 0-11.54 5.064-11.54 12.56 0 7.53 4.637 12.56 11.57 12.56 2.926 0 5.49-0.8872 7.43-2.531 2.598-2.203 4.145-5.917 4.145-9.83 0-7.727-4.571-12.76-11.61-12.76zm-31.59 0.3945v23.97h3.057v-10.92h11.44v-2.695h-11.44v-7.662h13.02v-2.695h-16.08zm49.83 0v23.97h3.059v-10.32h7.891c2.729 0 3.945 1.316 3.945 4.275l-0.03124 2.137c0 1.48 0.262 2.926 0.6894 3.912h3.715v-0.7559c-1.151-0.7891-1.38-1.645-1.445-4.834-0.0329-3.946-0.6583-5.128-3.256-6.246 2.696-1.348 3.781-2.961 3.781-5.723 0-4.143-2.564-6.41-7.299-6.41h-11.05zm-18.24 2.301c5.195 0 8.549 3.913 8.549 9.996 0 5.787-3.452 9.732-8.516 9.732-5.129 0-8.516-3.945-8.516-9.863 0-5.918 3.386-9.865 8.482-9.865zm21.3 0.3945h7.398c1.71 0 2.695 0.2643 3.451 0.9219 0.822 0.6905 1.25 1.774 1.25 3.188 0 2.861-1.446 4.145-4.701 4.145h-7.398v-8.254zm60.17 49.05c-5.978 0-9.678 3.065-9.678 7.996 0 3.325 1.757 5.418 5.344 6.352l6.762 1.793c3.474 0.8966 5.006 2.279 5.006 4.408 0 1.457-0.7852 2.952-1.943 3.773-1.083 0.7846-2.802 1.158-5.006 1.158-2.989 0-4.968-0.7102-6.275-2.279-1.009-1.196-1.457-2.502-1.42-4.184h-3.287c0.0374 2.503 0.522 4.146 1.605 5.641 1.868 2.578 5.007 3.887 9.154 3.887 3.25 0 5.902-0.7488 7.658-2.094 1.831-1.457 2.988-3.885 2.988-6.238 0-3.362-2.092-5.829-5.791-6.838l-6.836-1.83c-3.288-0.8966-4.484-1.943-4.484-4.035 0-2.765 2.429-4.596 6.09-4.596 4.334 0 6.763 1.943 6.801 5.529h3.287c0-1.868-0.1132-2.39-0.7109-3.66-1.494-3.138-4.668-4.783-9.264-4.783zm29.18 0c-7.808 0-13.11 5.753-13.11 14.27 0 8.555 5.267 14.27 13.15 14.27 3.325 0 6.239-1.009 8.443-2.877 2.951-2.503 4.707-6.726 4.707-11.17 0-8.78-5.192-14.5-13.19-14.5zm31.08 0c-3.661 0-6.613 1.159-8.631 3.4-2.466 2.69-3.811 6.576-3.811 10.98 0 4.483 1.381 8.332 3.922 10.98 2.13 2.167 4.82 3.176 8.369 3.176 6.65 0 10.39-3.588 11.21-10.8h-3.588c-0.2989 1.868-0.672 3.139-1.232 4.223-1.121 2.242-3.437 3.512-6.352 3.512-5.417 0-8.854-4.333-8.854-11.13 0-6.986 3.25-11.28 8.555-11.28 2.204 0 4.26 0.6353 5.381 1.719 1.009 0.934 1.568 2.055 1.979 4.109h3.551c-1.083-5.978-4.52-8.893-10.5-8.893zm18.87 0.4492v27.24h3.512v-27.24h-3.512zm18.87 0-9.713 27.24h3.697l2.877-8.184h10.5l2.803 8.184h3.885l-9.564-27.24h-4.482zm19.95 0v27.24h16.92v-3.064h-13.45v-24.17h-3.475zm23.16 0v27.24h16.92v-3.064h-13.45v-24.17h-3.475zm16.1 0 10.5 16.55v10.69h3.475v-10.69l10.24-16.55h-4.148l-7.77 13.26-7.996-13.26h-4.297zm-461.5 0.3789c-5.978 0-9.676 3.065-9.676 7.996 0 3.325 1.755 5.418 5.3TechReport42 6.352l6.764 1.793c3.474 0.8966 5.006 2.279 5.006 4.408 0 1.457-0.7852 2.952-1.943 3.773-1.083 0.7846-2.802 1.158-5.006 1.158-2.989 0-4.97-0.7102-6.277-2.279-1.009-1.196-1.457-2.502-1.42-4.184h-3.287c0.0374 2.503 0.524 4.146 1.607 5.641 1.868 2.578 5.005 3.885 9.152 3.885 3.25 0 5.902-0.7468 7.658-2.092 1.831-1.457 2.99-3.885 2.99-6.238 0-3.362-2.092-5.829-5.791-6.838l-6.838-1.83c-3.288-0.8966-4.482-1.943-4.482-4.035 0-2.765 2.429-4.596 6.09-4.596 4.334 0 6.761 1.943 6.799 5.529h3.287c0-1.868-0.1112-2.39-0.709-3.66-1.494-3.138-4.67-4.783-9.266-4.783zm29.18 0c-7.808 0-13.11 5.753-13.11 14.27 0 8.555 5.269 14.27 13.15 14.27 3.325 0 6.239-1.009 8.443-2.877 2.951-2.503 4.707-6.724 4.707-11.17 0-8.78-5.194-14.5-13.19-14.5zm31.08 0c-3.661 0-6.613 1.159-8.631 3.4-2.466 2.69-3.811 6.576-3.811 10.98 0 4.483 1.383 8.33 3.924 10.98 2.13 2.167 4.82 3.176 8.369 3.176 6.65 0 10.39-3.586 11.21-10.8h-3.586c-0.2989 1.868-0.672 3.139-1.232 4.223-1.121 2.242-3.437 3.512-6.352 3.512-5.417 0-8.855-4.333-8.855-11.13 0-6.986 3.252-11.28 8.557-11.28 2.204 0 4.258 0.6353 5.379 1.719 1.009 0.934 1.57 2.055 1.98 4.109h3.549c-1.083-5.978-4.52-8.893-10.5-8.893zm18.87 0.4492v27.23h3.512v-27.23h-3.512zm12.4 0v27.23h19.54v-3.062h-16.07v-9.34h14.83v-3.064h-14.83v-8.705h15.39v-3.062h-18.87zm24.36 0v3.062h8.967v24.17h3.475v-24.17h8.93v-3.062h-21.37zm25.63 0 10.5 16.55v10.68h3.475v-10.68l10.24-16.55h-4.146l-7.771 13.26-7.994-13.26h-4.297zm191.9 1.787c5.903 0 9.713 4.446 9.713 11.36 0 6.575-3.922 11.06-9.676 11.06-5.828 0-9.676-4.484-9.676-11.21 0-6.725 3.848-11.21 9.639-11.21zm-304.3 0.8281c5.903 0 9.715 4.446 9.715 11.36 0 6.575-3.922 11.06-9.676 11.06-5.828 0-9.678-4.484-9.678-11.21 0-6.725 3.848-11.21 9.639-11.21zm375.3 0.293 4.184 12.4h-8.668l4.484-12.4z};
          \node[font=\small, opacity=0] at (current bounding box.mid) {\scalebox{0.1}{EUSSET}};
        \end{tikzpicture}%
      }%
    }%
  \fi%
}
\definecolor{orcidGreen}{RGB}{166,206,57}
\NewDocumentCommand{\@orcidIcon}{m}{%
  \ifx\@eussetNoIcons\undefined%
    \hspace{.3em}%
    \raisebox{-.2em}[.3em]{%
      \scalebox{0.8333}{%
        \begin{tikzpicture}
          \filldraw[orcidGreen] (0,0) circle (.6em);
          \filldraw[white] (-0.231499em,0.333257em) circle (0.044em);
          \draw[color=white,line width=0.072579em] (-0.231499em,0.228980em) -- (-0.231499em,-0.278em);
          \draw[color=white,line width=0.072579em] (-0.052961em,0.228980em) -- (-0.052961em,-0.272448em);
          \draw[color=white,line width=0.072579em] (-0.089251em,0.192691em) -- (0.121875em,0.192691em);
          \draw[color=white,line width=0.072579em] (-0.089251em,-0.242em) -- (0.121875em,-0.242em);
          \draw[color=white,line width=0.072579em,start angle=90,end angle=-90,x radius=0.216836em,y radius=0.216836em] (0.119122em,0.192691em) arc;
          \node[font=\small, opacity=0] at (current bounding box.mid) {\scalebox{0.03}{(ORCID: https://orcid.org/#1)}};
        \end{tikzpicture}%
      }%
    }%
  \fi%
}
\definecolor{rorGray}{RGB}{44,44,44}
\definecolor{rorGreen}{RGB}{83,186,161}
\NewDocumentCommand{\@rorIcon}{m}{%
  \ifx\@eussetNoIcons\undefined%
    \hspace{.3em}%
    \raisebox{-.13em}{%
      \resizebox{1.262em}{.9em}{%
        \begin{tikzpicture}
          \fill[rorGreen] svg{m39.51 0 12.14 18.58 12.13-18.58zm27.76 0 12.14 18.58 12.13-18.58zm-63.62 92.72-12.14 18.59h24.27zm37.76 -18.59 -12.14 18.59h24.27z};
          \fill[rorGray,yscale=-1] svg{m0 -111.3m140.7 59.55c4.3-0.8 7.57-2.71 9.8-5.72 2.24-3.01 3.35-6.67 3.35-10.96 0-3.56-0.62-6.52-1.85-8.9s-2.9-4.27-4.99-5.68c-2.09-1.4-4.53-2.41-7.31-3.01s-5.72-0.9-8.81-0.9h-23.56v18.83c-0.19-0.55-0.39-1.09-0.61-1.63-1.63-3.95-3.91-7.32-6.84-10.1s-6.39-4.92-10.41-6.41c-4.01-1.49-8.4-2.24-13.16-2.24s-9.14 0.75-13.16 2.24c-4.01 1.49-7.48 3.63-10.41 6.41-2.62 2.49-4.72 5.46-6.3 8.9-0.23-2.47-0.81-4.61-1.74-6.41-1.23-2.38-2.9-4.27-4.99-5.68-2.09-1.4-4.53-2.41-7.31-3.01s-5.72-0.9-8.81-0.9h-23.55v60.88h13.41v-24.34h6.62l12.73 24.34h16.08l-15.47-25.71c4.3-0.8 7.57-2.71 9.8-5.72 0.1-0.14 0.19-0.29 0.29-0.43-0.02 0.47-0.03 0.94-0.03 1.42 0 4.87 0.82 9.29 2.45 13.24s3.91 7.32 6.84 10.1c2.92 2.78 6.39 4.92 10.41 6.41 4.01 1.49 8.4 2.24 13.16 2.24s9.14-0.75 13.16-2.24c4.01-1.49 7.48-3.63 10.41-6.41 2.92-2.78 5.2-6.15 6.84-10.1 0.22-0.53 0.42-1.08 0.61-1.63v18.83h13.41v-24.34h6.62l12.73 24.34h16.08zm-124.1-38.9c-0.72 0.92-1.62 1.59-2.71 2.02s-2.31 0.69-3.65 0.77c-1.35 0.09-2.62 0.13-3.83 0.13h-7.91v-13.84h8.77c1.2 0 2.44 0.09 3.7 0.26s2.38 0.5 3.35 0.99 1.78 1.19 2.41 2.11 0.95 2.15 0.95 3.7c0 1.65-0.36 2.94-1.08 3.86zm62.35 16.04c-0.89 2.38-2.16 4.44-3.83 6.19-1.66 1.75-3.65 3.11-5.98 4.09-2.32 0.98-4.92 1.46-7.78 1.46-2.87 0-5.46-0.49-7.78-1.46s-4.31-2.34-5.98-4.09c-1.66-1.75-2.94-3.81-3.83-6.19s-1.33-5-1.33-7.87c0-2.81 0.44-5.42 1.33-7.83s2.16-4.48 3.83-6.23c1.66-1.75 3.65-3.11 5.98-4.09 2.32-0.97 4.91-1.46 7.78-1.46s5.46 0.49 7.78 1.46 4.31 2.34 5.98 4.09c1.66 1.75 2.94 3.83 3.83 6.23 0.89 2.41 1.33 5.02 1.33 7.83 0 2.87-0.44 5.49-1.33 7.87zm44.94-16.04c-0.72 0.92-1.62 1.59-2.71 2.02s-2.31 0.69-3.65 0.77c-1.35 0.09-2.62 0.13-3.83 0.13h-7.91v-13.84h8.77c1.2 0 2.44 0.09 3.7 0.26s2.38 0.5 3.35 0.99 1.78 1.19 2.41 2.11 0.95 2.15 0.95 3.7c0 1.65-0.36 2.94-1.08 3.86z};
          \node[font=\small, opacity=0] at (current bounding box.mid) {\scalebox{0.05}{(ROR: https://ror.org/#1)}};
        \end{tikzpicture}%
      }%
    }%
    \hspace{.1em}%
  \fi%
}
\NewDocumentCommand{\@internetArchiveIcon}{}{%
  \ifx\@eussetNoIcons\undefined%
    \raisebox{-.13em}[.3em]{%
      \resizebox{.76em}{.86em}{%
        \begin{tikzpicture}
          % Coincidentally the IA icon graphic I found is the exact same shade of gray
          % as the letters in the ROR logo.
          \fill[rorGray,yscale=-1] svg{m76 82v4h-76l8.085e-4 -4zm73-6v5h-70v-5zm8.17-54 0.8344 0.4217 0.4176 6.744 0.4176 10.96v10.54l-0.4176 13.14-0.06947 8.85-1.183 0.3524h-4.174l-1.252-0.3524-0.4863-8.85-0.4184-13.07v-10.54l0.4184-11.03 0.3817-6.78 0.8703-0.3854zm22 0 0.8354 0.4217 0.4169 6.744 0.4169 10.96v10.54l-0.4169 13.14-0.06868 8.85-1.184 0.3524h-4.174l-1.252-0.3524-0.488-8.85-0.4169-13.07v-10.54l0.4169-11.03 0.3833-6.78 0.8697-0.3854zm29 0 0.8354 0.4217 0.4169 6.744 0.4169 10.96v10.54l-0.4169 13.14-0.06868 8.85-1.184 0.3524h-4.174l-1.252-0.3524-0.488-8.85-0.4169-13.07v-10.54l0.4169-11.03 0.3833-6.78 0.8697-0.3854zm22 0 0.8354 0.4217 0.4169 6.744 0.4169 10.96v10.54l-0.4169 13.14-0.06868 8.85-1.184 0.3524h-4.174l-1.252-0.3524-0.488-8.85-0.4169-13.07v-10.54l0.4169-11.03 0.3833-6.78 0.8697-0.3854zm7.67-9v7h-70v-7zm34.72-13 36.72 8.409-1.472 2.591h-70.33l-2.2-2.101z};
        \end{tikzpicture}%
      }%
    }%
  \fi%
}
\NewDocumentCommand{\waybackMachineURL}{m}{%
  \href{https://web.archive.org/web/*/#1}{%
    \ifx\@eussetNoIcons\undefined%
      \@internetArchiveIcon%
    \else%
      \textcolor{black}{\scriptsize [IA]}%
    \fi%
  }%
}

\ExplSyntaxOn
\NewDocumentCommand{\@eussetAuthorAffiliationFull}{m}{
  \int_zero_new:N \l_author_affiliation_full_counter
  \int_set:Nn \l_author_affiliation_full_counter {1}
  \int_zero_new:N \l_author_affiliation_comparison_counter
  \int_zero_new:N \l_author_affiliation_count
  \int_set:Nn \l_author_affiliation_count {\csname the@eussetAuthor#1AffiliationCount\endcsname}
  \tl_clear_new:N \l_author_affiliation_full_result_tl
  \tl_clear_new:N \l_author_affiliation_interim_result_tl
  \int_while_do:nn {\l_author_affiliation_full_counter <= \l_author_affiliation_count} {
    \tl_if_empty:NTF \l_author_affiliation_interim_result_tl {} {
      \tl_put_right:Nn \l_author_affiliation_interim_result_tl {,~}
    }
    \ifcsname @eussetAuthor#1AffiliationRor \int_use:N \l_author_affiliation_full_counter \endcsname
      % This part is a bit fiddly because the text formatting commands here must not be
      % expanded before being added to the token list, but the variables need to be.
      \tl_put_right:Nn \l_author_affiliation_interim_result_tl {\href}
      \tl_put_right:Nx \l_author_affiliation_interim_result_tl {{https\char_generate:nn{58}{12}//ror.org/\csname @eussetAuthor#1AffiliationRor \int_use:N \l_author_affiliation_full_counter \endcsname}}
      \tl_put_right:Nx \l_author_affiliation_interim_result_tl {{
        \exp_not:N \color{black}
        \csname @eussetAuthor#1Affiliation \int_use:N \l_author_affiliation_full_counter \endcsname
        \exp_not:N \@rorIcon {\csname @eussetAuthor#1AffiliationRor \int_use:N \l_author_affiliation_full_counter \endcsname}
      }}
    \else
      \tl_put_right:Nx \l_author_affiliation_interim_result_tl {\csname @eussetAuthor#1Affiliation \int_use:N \l_author_affiliation_full_counter \endcsname}
    \fi
    \int_set_eq:NN \l_author_affiliation_comparison_counter \l_author_affiliation_full_counter
    \int_incr:N \l_author_affiliation_comparison_counter
    \ifthenelse{\equal{\csname @eussetAuthor#1AffiliationCountry \int_use:N \l_author_affiliation_full_counter \endcsname}{\csname @eussetAuthor#1AffiliationCountry \int_use:N \l_author_affiliation_comparison_counter \endcsname}}{}{
      \tl_if_empty:NTF \l_author_affiliation_full_result_tl {} {
        \tl_put_right:Nn \l_author_affiliation_full_result_tl {;~}
      }
      % Special case for state information: authors may try to add state information to their
      % affiliation via the \state command. We generally do not want to show this (e.g. for German
      % states), but we permit it for affiliations in the USA because (a) they usually use shorthand
      % so the name and state take very little horizontal space, and (b) the information seems to be
      % culturally more important there than in Europe.
      \ifthenelse{\equal{\csname @eussetAuthor#1AffiliationCountry \int_use:N \l_author_affiliation_full_counter \endcsname}{USA}}{
        \ifcsname @eussetAuthor#1AffiliationState \int_use:N \l_author_affiliation_full_counter \endcsname
          \tl_put_right:Nx \l_author_affiliation_interim_result_tl {,~\csname @eussetAuthor#1AffiliationState \int_use:N \l_author_affiliation_full_counter \endcsname}
        \fi
      }{}
      \tl_concat:NNN \l_author_affiliation_full_result_tl \l_author_affiliation_full_result_tl \l_author_affiliation_interim_result_tl
      \tl_put_right:Nx \l_author_affiliation_full_result_tl {,~\csname @eussetAuthor#1AffiliationCountry \int_use:N \l_author_affiliation_full_counter \endcsname}
      \tl_clear:N \l_author_affiliation_interim_result_tl
    }
    \int_incr:N \l_author_affiliation_full_counter
  }
  \tl_use:N \l_author_affiliation_full_result_tl
}
\ExplSyntaxOff

\NewDocumentCommand{\@eussetCombineAuthorNames}{m}{%
  \def\@eussetCombineAuthorNamesResult{}%
  \ifcsname c@@eussetCombineAuthorNames@i\endcsname\else%
    \newcounter{@eussetCombineAuthorNames@i}%
  \fi%
  \setcounter{@eussetCombineAuthorNames@i}{0}%
  \whiledo{\value{@eussetCombineAuthorNames@i}<\value{@eussetAuthorCount}}{%
    \stepcounter{@eussetCombineAuthorNames@i}%
    \ifthenelse{\value{@eussetCombineAuthorNames@i}>1}{%
      \appto\@eussetCombineAuthorNamesResult{#1}%
    }{}%
    \eappto\@eussetCombineAuthorNamesResult{\csname @eussetAuthor\the@eussetCombineAuthorNames@i Name\endcsname}%
  }%
  \@eussetCombineAuthorNamesResult%
}

\def\@eussetPageHeader{%
  \begingroup%
    \large\sffamily%
    \makebox[2cm]{\scalebox{0.75}{\textcolor{white}{EUSSET}}}%
    \hspace{-2cm}%
    \raisebox{-0.5\height}{\ifx\@eussetNoIcons\undefined\@eussetLogo\else EUSSET\fi}%
    \hspace{1ex}%
    \raisebox{-0.5\height}{Workshop Proceedings}%
  \endgroup%
}

\NewDocumentCommand{\@eussetMaketitle}{}{%
  \ifx\@eussetAnonymized\undefined%
    \ifnum\value{@eussetAuthorCount}=0\else%
      \@eussetOriginalAuthor{\@eussetCombineAuthorNames{ \and }}%
    \fi%
  \fi%
  % Begin the title area by placing the footer, so we can be sure that
  % it is on page 1 even if someone has an absurdly long title and/or
  % author list.
  \@eussetFooter{%
    \sffamily\fontsize{7}{9}\selectfont%
    \setlength{\parskip}{4pt}%
    \parbox{\linewidth}{%
    \ifx\@eussetAnonymized\undefined%
      \ifnum\value{@eussetAuthorCount}=0%
        Anonymous%
      \else%
        \@eussetCombineAuthorNames{, }%
      \fi%
    \else%
      Anonymized for review%
    \fi. %
    \ifx\@eussetConferenceYear\undefined\else\@eussetConferenceYear. \fi%
    \ifx\@eussetConferenceName\undefined\begingroup\itshape\fi%
    \ifx\@eussetTitle\undefined\else%
      \@eussetTitle%
      \ifx\@eussetSubtitle\undefined\else: \@eussetSubtitle\fi. %
    \fi%
    \ifx\@eussetConferenceName\undefined\endgroup\fi%
    \ifx\@eussetWorkshopName\undefined\else%
      A contribution to: %
      \ifx\@eussetWorkshopUrl\undefined%
        \@eussetWorkshopName%
      \else%
        \href{\@eussetWorkshopUrl}{\color{black}\@eussetWorkshopName}%
      \fi%
      \ifx\@eussetWorkshopCredit\undefined\else%
        \ (\@eussetWorkshopCredit)%
      \fi%
      . %
    \fi%
    \ifx\@eussetFullVenue\undefined%
      \def\@eussetFullVenue{}%
      \ifx\@eussetConferenceName\undefined\else%
        \g@addto@macro\@eussetFullVenue{\textit{Proceedings of the \@eussetConferenceName}}%
        \ifx\@eussetConferenceShort\undefined\else%
          \g@addto@macro\@eussetFullVenue{\textit{ (\@eussetConferenceShort)}}%
        \fi%
        \ifx\@eussetSubmissionType\undefined\else%
          \g@addto@macro\@eussetFullVenue{\textit{ -- \@eussetSubmissionType}}%
        \fi%
      \fi%
      \ifx\@eussetJournalName\undefined\else%
        \ifthenelse{\equal{\@eussetFullVenue}{}}{}{\g@addto@macro\@eussetFullVenue{, }}%
        \g@addto@macro\@eussetFullVenue{\@eussetJournalName}%
      \fi%
    \fi%
    \ifthenelse{\equal{\@eussetFullVenue}{}}{}{In: \@eussetFullVenue. }%
    \ifx\@eussetIssn\undefined\else ISSN:\ \@eussetIssn \fi%
    \ifx\@eussetDoi\undefined.\else\enskip\urlstyle{sf}\url{https://doi.org/\@eussetDoi}\fi%
    }%
    \par%
    \def\@eussetSkipCopyrightInFooter{false}%
    \ifx\@eussetCopyrightNotice\@eussetCopyrightDefaultNotice%
      \ifx\@eussetNonEusset\undefined\else%
        \def\@eussetSkipCopyrightInFooter{true}%
      \fi%
    \fi%
    \ifx\@eussetAnonymized\undefined%
      \ifthenelse{\equal{\@eussetSkipCopyrightInFooter}{false}}{%
        \ifx\@eussetCopyrightLicenseBadge\undefined%
          \@eussetCopyrightNotice%
        \else%
          \def\@eussetCopyrightLicenseBadgeWidth{2cm}
          \begin{minipage}{\dimexpr\textwidth - \@eussetCopyrightLicenseBadgeWidth - 1em\relax}%
            \@eussetCopyrightNotice%
          \end{minipage}%
          \hfill%
          \begin{minipage}{\@eussetCopyrightLicenseBadgeWidth}%
            \vspace{-1cm}%
            \href{\@eussetCopyrightLicenseUrl}{\includegraphics[width=\@eussetCopyrightLicenseBadgeWidth,alt={\@eussetCopyrightLicenseName}]{\@eussetCopyrightLicenseBadge}}%
            \vspace{-1cm}%
          \end{minipage}%
        \fi%
      }{}%
    \else%
      \textcolor{red}{This document has been anonymized for review purposes. Please do not redistribute beyond the intended recipients.}%
    \fi%
    \ifx\@eussetNonEusset\undefined%
      \par%
      Find the latest version of this document in the \href{https://dl.eusset.eu/}{\color{black}EUSSET Digital Library}: %
      \urlstyle{sf}%
      \ifx\@eussetCustomDownloadUrl\undefined%
        \url{https://dl.eusset.eu/}%
      \else%
        \url{\@eussetCustomDownloadUrl}%
      \fi%
    \fi%
  }
  \addcontentsline{toc}{section}{Title}
  \thispagestyle{firstpage}
  \fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \RenewDocumentCommand{\headrulewidth}{}{0pt}
  }
  \pagestyle{plain}
  \begingroup%
    \ifx\@eussetTitle\undefined\else%
      \noindent\fontsize{22}{26}\selectfont\sffamily\raggedright%
      \textbf{\@eussetTitle}
      \ifx\@eussetSubtitle\undefined\else%
        \par\vspace{6pt}
        \noindent\fontsize{18}{21}\selectfont\raggedright%
        \@eussetSubtitle%
      \fi%
      \ifx\@eussetWorkshopName\undefined\else%
        \par\vspace{6pt}
        \noindent\fontsize{12}{14}\selectfont\raggedright
        \ifx\@eussetWorkshopUrl\undefined%
          \textit{\@eussetWorkshopName}%
        \else%
          \href{\@eussetWorkshopUrl}{\color{black}\textit{\@eussetWorkshopName}}%
        \fi%
        \def\@eussetWorkshopVenue{}%
        \ifx\@eussetConferenceShort\undefined\else%
          \g@addto@macro\@eussetWorkshopVenue{\@eussetConferenceShort}%
        \fi%
        \ifx\@eussetConferenceYear\undefined\else%
          \ifthenelse{\equal{\@eussetWorkshopVenue}{}}{}{\g@addto@macro\@eussetWorkshopVenue{ }}%
          \g@addto@macro\@eussetWorkshopVenue{\@eussetConferenceYear}%
        \fi%
        \ifthenelse{\equal{\@eussetWorkshopVenue}{}}{}{%
          \textit{ (\@eussetWorkshopVenue)}%
        }%
      \fi%
      \par%
    \fi%
  \endgroup%
  \vspace{1em}%
  \ifx\@eussetAnonymized\undefined%
    \newcounter{@eussetAuthorOutputIndex}%
    \setcounter{@eussetAuthorOutputIndex}{0}%
    \ifthenelse{\equal{\@eussetAuthorStyle}{classic}}{%
      \newcounter{@eussetAuthorMergeUpper}%
      \newcounter{@eussetAuthorMergeIndex}%
      \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
      \begingroup%
        \def\@eussetInsideAuthorList{true}%
        \whiledo{\value{@eussetAuthorOutputIndex}<\value{@eussetAuthorCount}}{%
          \stepcounter{@eussetAuthorOutputIndex}%
          \setcounter{@eussetAuthorMergeIndex}{\the@eussetAuthorOutputIndex}%
          \setcounter{@eussetAuthorMergeUpper}{\the@eussetAuthorOutputIndex}%
          \whiledo{\value{@eussetAuthorMergeIndex}<\value{@eussetAuthorCount}\and\equal{\csname @eussetAuthor\the@eussetAuthorOutputIndex Affiliation1\endcsname}{\csname @eussetAuthor\the@eussetAuthorMergeIndex Affiliation1\endcsname}\and\equal{\csname @eussetAuthor\the@eussetAuthorOutputIndex AffiliationCountry1\endcsname}{\csname @eussetAuthor\the@eussetAuthorMergeIndex AffiliationCountry1\endcsname}}{%
            \setcounter{@eussetAuthorMergeUpper}{\the@eussetAuthorMergeIndex}%
            \stepcounter{@eussetAuthorMergeIndex}%
          }%
          \sffamily%
          \par\vspace{.8em}%
          \noindent\large%
          \setcounter{@eussetAuthorMergeIndex}{\the@eussetAuthorOutputIndex}%
          \whiledo{\value{@eussetAuthorMergeIndex}<\numexpr\value{@eussetAuthorMergeUpper} + 1\relax}{%
            \def\@eussetCurrentAuthorName{%
              \csname @eussetAuthor\the@eussetAuthorMergeIndex Name\endcsname%
              \ifcsname @eussetAuthor\the@eussetAuthorMergeIndex Footnote\endcsname%
                \ifcsname @eussetAuthor\the@eussetAuthorMergeIndex FootnoteID\endcsname%
                  \ifcsname c@@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorMergeIndex FootnoteID\endcsname\endcsname%
                    \textsuperscript{\rmfamily\fnsymbol{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorMergeIndex FootnoteID\endcsname}}%
                  \else%
                    \footnote{\csname @eussetAuthor\the@eussetAuthorMergeIndex Footnote\endcsname}%
                    \newcounter{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorMergeIndex FootnoteID\endcsname}%
                    \setcounter{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorMergeIndex FootnoteID\endcsname}{\value{footnote}}%
                  \fi%
                \else%
                  \footnote{\csname @eussetAuthor\the@eussetAuthorMergeIndex Footnote\endcsname}%
                \fi%
              \fi%
            }%
            \ifcsname @eussetAuthor\the@eussetAuthorMergeIndex Orcid\endcsname%
              \href{https://orcid.org/\csname @eussetAuthor\the@eussetAuthorMergeIndex Orcid\endcsname}{%
                \color{black}%
                \@eussetCurrentAuthorName%
                \@orcidIcon{\csname @eussetAuthor\the@eussetAuthorMergeIndex Orcid\endcsname}%
              }%
            \else%
               \@eussetCurrentAuthorName%
            \fi%
            \ifthenelse{\value{@eussetAuthorMergeIndex}=\value{@eussetAuthorMergeUpper}}{}{, }%
            \stepcounter{@eussetAuthorMergeIndex}%
          }%
          \newline\normalsize%
          \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex Affiliation1\endcsname%
            \@eussetAuthorAffiliationFull{\the@eussetAuthorOutputIndex}%
            \newline%
          \fi%
          \begingroup\itshape%
          \setcounter{@eussetAuthorMergeIndex}{\the@eussetAuthorOutputIndex}%
          \whiledo{\value{@eussetAuthorMergeIndex}<\numexpr\value{@eussetAuthorMergeUpper} + 1\relax}{%
            \ifcsname @eussetAuthor\the@eussetAuthorMergeIndex Email\endcsname%
              \textit{\href{mailto:\csname @eussetAuthor\the@eussetAuthorMergeIndex Email\endcsname}{\color{black}\csname @eussetAuthor\the@eussetAuthorMergeIndex Email\endcsname}}%
            \fi%
            \ifthenelse{\value{@eussetAuthorMergeIndex}=\value{@eussetAuthorMergeUpper}}{}{, }%
            \stepcounter{@eussetAuthorMergeIndex}%
          }%
          \endgroup%
          \setcounter{@eussetAuthorOutputIndex}{\the@eussetAuthorMergeUpper}%
        }%
        \let\@eussetInsideAuthorList=\undefined%
      \endgroup
      \par%
    }{%
      \begin{list}{}{%
        \setlength{\topsep}{0pt}%
        \setlength{\leftmargin}{.5cm}%
        \setlength{\rightmargin}{0pt}%
        \setlength{\listparindent}{0pt}%
        \setlength{\itemindent}{0pt}%
        \setlength{\parsep}{0pt}%
      }\item[]%
        \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
        \def\@eussetAuthorFontSize{\fontsize{10}{12}\selectfont}%
        %\setlength{\parskip}{.2em}%
        \sffamily%
        \whiledo{\value{@eussetAuthorOutputIndex}<\value{@eussetAuthorCount}}{%
          \stepcounter{@eussetAuthorOutputIndex}%
          \raggedright%
          \hspace*{-.5cm}%
          \def\@eussetCurrentAuthorName{%
            \fontsize{12}{14}\selectfont%
            \csname @eussetAuthor\the@eussetAuthorOutputIndex Name\endcsname%
            \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex Footnote\endcsname%
              \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex FootnoteID\endcsname%
                \ifcsname c@@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorOutputIndex FootnoteID\endcsname\endcsname%
                  \textsuperscript{\rmfamily\fnsymbol{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorOutputIndex FootnoteID\endcsname}}%
                \else%
                  \footnote{\csname @eussetAuthor\the@eussetAuthorOutputIndex Footnote\endcsname}%
                  \newcounter{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorOutputIndex FootnoteID\endcsname}%
                  \setcounter{@eussetAuthorFootnoteID@\csname @eussetAuthor\the@eussetAuthorOutputIndex FootnoteID\endcsname}{\value{footnote}}%
                \fi%
              \else%
                \footnote{\csname @eussetAuthor\the@eussetAuthorOutputIndex Footnote\endcsname}%
              \fi%
            \fi%
          }%
          \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex Orcid\endcsname%
            \href{https://orcid.org/\csname @eussetAuthor\the@eussetAuthorOutputIndex Orcid\endcsname}{%
              \color{black}%
              \begingroup%
                \@eussetCurrentAuthorName%
                \@orcidIcon{\csname @eussetAuthor\the@eussetAuthorOutputIndex Orcid\endcsname}%
              \endgroup%
            }%
          \else%
            \begingroup%
              \@eussetCurrentAuthorName%
            \endgroup%
          \fi%
          \@eussetAuthorFontSize%
          \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex Affiliation1\endcsname%
            \ \textperiodcentered \ %
            \@eussetAuthorAffiliationFull{\the@eussetAuthorOutputIndex}%
          \fi%
          \ifcsname @eussetAuthor\the@eussetAuthorOutputIndex Email\endcsname%
            \ \textperiodcentered \ 
            \textit{\href{mailto:\csname @eussetAuthor\the@eussetAuthorOutputIndex Email\endcsname}{\color{black}\csname @eussetAuthor\the@eussetAuthorOutputIndex Email\endcsname}}%
          \fi%
          \par\vspace{.35em}%
        }%
      \end{list}%
    }%
    \ifnum\value{@eussetAuthorCount}=0\else%
      \par%
      \vskip0.6\baselineskip%
    \fi%
  \else%
    \Large\noindent\sffamily\textit{Anonymized for review}%
    \par%
    \vskip0.6\baselineskip%
  \fi%
  \ifx\@eussetTeaserFigure\undefined\else%
    \par%
    \begin{figure}[h!]%
      \ifx\capstart\undefined\else\capstart\fi%
      \centering%
      \sffamily%
      \@eussetTeaserFigure%
    \end{figure}%
  \fi%
  \ifx\@eussetAbstract\undefined\else%
    \vskip0.6\baselineskip%
    \setlength\parindent{1em}%
    \noindent%
    \sffamily%
    \fontsize{10}{12}%
    \fontseries{b}%
    \selectfont{\abstractname. \ }%
    \fontseries{m}%
    \selectfont%
    \@eussetAbstract%
  \fi%
  \ifx\@eussetKeywords\undefined\else%
    \par%
    \vskip0.6\baselineskip%
    \noindent%
    \sffamily%
    \fontsize{10}{12}%
    \fontseries{b}%
    \selectfont{Keywords. \ }%
    \fontseries{m}%
    \selectfont%
    \@eussetKeywords%
  \fi%
  \par%
  \vskip 1\baselineskip%
  \vskip 16pt%
  \normalfont%
  \normalsize%
  \urlstyle{rm}%
  \setcounter{footnote}{0}%
  \def\@eussetAfterTitle{true}%
}

\NewDocumentCommand{\@eussetFooter}{+m}{%
  \newlength{\@eussetFooterHeight}
  \sbox{\@tempboxa}{%
    \begin{minipage}{\textwidth}%
      #1%
    \end{minipage}%
  }
  \setlength{\@eussetFooterHeight}{\ht\@tempboxa}
  \enlargethispage{\dimexpr-2\@eussetFooterHeight + 0.1cm\relax}
  \fancypagestyle{firstpage}{%
    \fancyfoot[C]{}%
    \fancyfoot[L]{%
      \vspace*{\dimexpr-2\@eussetFooterHeight - 1cm\relax}\par%
      \rule{\textwidth}{0.7pt}\par%
      
      #1%
    }%
    \RenewDocumentCommand{\headrulewidth}{}{0pt}
  }
}

\NewCommandCopy{\@eussetOriginalMaketitle}{\maketitle}
\RenewDocumentCommand{\maketitle}{}{%
  \ClassError{eusset}{Do not call \@backslashchar maketitle in your document, the template generates the title matter automatically}{This template does not support any custom placement or omission of the title matter. Do not use \@backslashchar maketitle in your document.}%
  \def\maketitle{}%
}

\NewCommandCopy{\@eussetOriginalTitle}{\title}
\renewcommand{\title}[1]{
  \edef\@eussetTitle{\@strip{#1}}
  \edef\@eussetCombinedTitle{\@eussetTitle}
  \ifx\@eussetSubtitle\undefined\else\edef\@eussetCombinedTitle{\@eussetTitle: \@eussetSubtitle}\fi
  \@eussetOriginalTitle{\@eussetCombinedTitle}
}
\NewDocumentCommand\subtitle{m}{
  \edef\@eussetSubtitle{\@strip{#1}}
  \ifx\@eussetTitle\undefined
    \edef\@eussetCombinedTitle{Untitled: \@eussetSubtitle}
  \else
    \edef\@eussetCombinedTitle{\@eussetTitle: \@eussetSubtitle}
  \fi
  \@eussetOriginalTitle{\@eussetCombinedTitle}
}

\NewCommandCopy{\@eussetOriginalAuthor}{\author}

\newcounter{@eussetAuthorCount}
\setcounter{@eussetAuthorCount}{0}
\renewcommand{\author}[1]{
  \ifthenelse{\equal{\@strip{#1}}{}}{}{%
    \ifx\@eussetAfterTitle\undefined%
      \ifx\@fullAuthorList\undefined
        \def\@fullAuthorList{\@strip{#1}}
      \else
        \appto\@fullAuthorList{, \@strip{#1}}
      \fi
      \stepcounter{@eussetAuthorCount}
      \expandafter\def\csname @eussetAuthor\the@eussetAuthorCount Name\endcsname{\@strip{#1}}
      \newcounter{@eussetAuthor\the@eussetAuthorCount AffiliationCount}
      \setcounter{@eussetAuthor\the@eussetAuthorCount AffiliationCount}{0}
    \else%
      \ClassError{eusset}{Author names must be set before the start of the document}{Any uses of \@backslashchar authorName must occur before \@backslashchar begin\{document\}}%
    \fi%
  }%
}
\NewDocumentCommand{\authorFootnote}{om}{
  \ifthenelse{\equal{\@strip{#1}\@strip{#2}}{}}{}{%
    \ifx\@eussetAfterTitle\undefined%
      \expandafter\def\csname @eussetAuthor\the@eussetAuthorCount Footnote\endcsname{\@strip{#2}}
      \IfValueT{#1}{%
        \ifthenelse{\equal{\@strip{#1}}{}}{}{%
          \expandafter\def\csname @eussetAuthor\the@eussetAuthorCount FootnoteID\endcsname{\@strip{#1}}
        }%
      }%
    \else%
      \ClassError{eusset}{Author footnotes must be set before the start of the document}{Any uses of \@backslashchar authorFootnote must occur before \@backslashchar begin\{document\}}%
    \fi%
  }%
}
\NewDocumentCommand{\email}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{Author\the@eussetAuthorCount Email}{#1}}
\NewDocumentCommand{\orcid}{m}{\@eussetStoreData[trim,verbatim,nonempty,beforetitle]{Author\the@eussetAuthorCount Orcid}{#1}}

\ExplSyntaxOn
\keys_define:nn { eussetOrganization } {
  ror .store     = \l_organization_ror_tl,
  ror .initial:n = {},
  url .store     = \l_organization_url_tl,
  url .initial:n = {},
}
\ExplSyntaxOff
\NewDocumentCommand{\affiliation}{+m}{%
  \ifx\@eussetAfterTitle\undefined%
    \gdef\@eussetWithinAffiliation{true}%
    \stepcounter{@eussetAuthor\the@eussetAuthorCount AffiliationCount}%
    \sbox{\@tempboxa}{#1}%
    \ifcsname @eussetAuthor\the@eussetAuthorCount Affiliation\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname\else%
      \ClassError{eusset}{Author affiliations must contain an institution name}{Any uses of \@backslashchar affiliation must include a \@backslashchar institution as part of their parameter}%
    \fi%
    \ifcsname @eussetAuthor\the@eussetAuthorCount AffiliationCountry\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname\else%
      \ClassError{eusset}{Author affiliations must contain a country name}{Any uses of \@backslashchar affiliation must include a \@backslashchar country as part of their parameter}%
    \fi%
    \let\@eussetWithinAffiliation=\undefined%
  \else%
    \ClassError{eusset}{Author affiliations must be set before the start of the document}{Any uses of \@backslashchar affiliation must occur before \@backslashchar begin\{document\}}%
  \fi%
}
\NewDocumentCommand{\institution}{m}{%
  \ifx\@eussetWithinAffiliation\undefined
    \ClassError{eusset}{Author institution must be set within an affiliation command}{Any uses of \@backslashchar institution must occur as part of a \@backslashchar affiliation parameter}%
  \else%
    \ifthenelse{\equal{\@strip{#1}}{}}{}{%
      \expandafter\gdef\csname @eussetAuthor\the@eussetAuthorCount Affiliation\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname{\@strip{#1}}%
    }%
  \fi%
}
\NewDocumentCommand{\country}{m}{%
  \ifx\@eussetWithinAffiliation\undefined%
    \ClassError{eusset}{Author country must be set within an affiliation command}{Any uses of \@backslashchar country must occur as part of a \@backslashchar affiliation parameter}%
  \else%
    \ifthenelse{\equal{\@strip{#1}}{}}{}{%
      \expandafter\gdef\csname @eussetAuthor\the@eussetAuthorCount AffiliationCountry\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname{\@strip{#1}}%
    }%
  \fi%
}
\NewDocumentCommand{\state}{m}{%
  \ifx\@eussetWithinAffiliation\undefined%
    \ClassError{eusset}{Author state must be set within an affiliation command}{Any uses of \@backslashchar state must occur as part of a \@backslashchar affiliation parameter}%
  \else%
    \ifthenelse{\equal{\@strip{#1}}{}}{}{%
      \expandafter\gdef\csname @eussetAuthor\the@eussetAuthorCount AffiliationState\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname{\@strip{#1}}%
    }%
  \fi%
}

\ExplSyntaxOn

\NewDocumentCommand{\ror}{m}{
  \ifx\@eussetWithinAffiliation\undefined
    \ClassError{eusset}{Affiliation~ROR~must~be~set~within~an~affiliation~command}{Any~uses~of~\@backslashchar~ror~must~occur~as~part~of~a~\@backslashchar~affiliation~parameter}
  \else
    \ifthenelse{\equal{\@strip{#1}}{}}{}{
      \tl_clear_new:N \l_affiliation_ror_tl
      \tl_set:Nn \l_affiliation_ror_tl { #1 }
      \tl_trim_spaces:N \l_affiliation_ror_tl
      \tl_reverse:N \l_affiliation_ror_tl
      \str_if_eq:eeTF { \tl_head:N \l_affiliation_ror_tl } { / } {
        \tl_remove_once:Nn \l_affiliation_ror_tl { / }
      } {}
      \tl_reverse:N \l_affiliation_ror_tl
      \str_clear_new:N \l_affiliation_ror_str
      \str_set_eq:NN \l_affiliation_ror_str \l_affiliation_ror_tl
      \str_replace_once:Nnn \l_affiliation_ror_str { http:// } { https:// }
      \str_remove_once:Nn \l_affiliation_ror_str { https://ror.org/ }
      % Stashed for the future: available from LaTeX 2024-12-08, replaces the following.
      % \tl_if_regex_match:VnTF { \str_use:N \l_affiliation_ror_str } { [a-z0-9]+ } { true } { false }
      \str_if_in:NnTF \l_affiliation_ror_str { / } {
        \ClassError{eusset}{Affiliation~ROR~is~not~well-formed}{Please~supply~the~affiliation~ROR~either~as~the~unmodified~ror.org~URL~or~as~the~trimmed~alphanumeric~ID}
      } {
        \expandafter\xdef\csname @eussetAuthor\the@eussetAuthorCount AffiliationRor\csname the@eussetAuthor\the@eussetAuthorCount AffiliationCount\endcsname\endcsname{\str_use:N \l_affiliation_ror_str}
      }
    }
  \fi
}

\ExplSyntaxOff

% The following are included for copy&paste compatibility with ACM,
% they are not currently used by this template.
\NewDocumentCommand{\city}{m}{%
  \ifx\@eussetWithinAffiliation\undefined%
    \ClassError{eusset}{Author affiliation info must be set within an affiliation command}{Any uses of this command must occur as part of a \@backslashchar affiliation parameter}%
  \fi%
}
\let\position=\city%
\let\department=\city%

\ExplSyntaxOn

\seq_clear_new:N \eusset_funding_orgs_seq

\NewDocumentCommand{\fundingOrg}{om}{
  \tl_clear_new:N \l_organization_ror_tl
  \tl_clear_new:N \l_organization_url_tl
  \IfValueT{#1}{\keys_set:nn{eussetOrganization}{#1}}
  \tl_trim_spaces:N \l_organization_ror_tl
  \tl_reverse:N \l_organization_ror_tl
  \str_if_eq:eeTF { \tl_head:N \l_organization_ror_tl } { / } {
    \tl_remove_once:Nn \l_organization_ror_tl { / }
  } {}
  \tl_reverse:N \l_organization_ror_tl
  \str_clear_new:N \l_organization_ror_str
  \str_set_eq:NN \l_organization_ror_str \l_organization_ror_tl
  \str_replace_once:Nnn \l_organization_ror_str { http:// } { https:// }
  \str_remove_once:Nn \l_organization_ror_str { https://ror.org/ }
  % Stashed for the future: available from LaTeX 2024-12-08, replaces the following.
  % \tl_if_regex_match:VnTF { \str_use:N \l_organization_ror_str } { [a-z0-9]+ } { true } { false }
  \str_if_in:NnTF \l_organization_ror_str { / } {
    \ClassError{eusset}{Funding~organization~ROR~is~not~well-formed}{Please~supply~the~funding~organization~ROR~either~as~the~unmodified~ror.org~URL~or~as~the~trimmed~alphanumeric~ID}
  } {}
  \tl_if_empty:NTF \l_organization_url_tl {
    \str_if_empty:NTF \l_organization_ror_str {
      #2
    } {
      \href{https\char_generate:nn{58}{12}//ror.org/\str_use:N \l_organization_ror_str}{\color{black}#2\@rorIcon{\str_use:N \l_organization_ror_str}}
    }
  } {
    \str_if_empty:NTF \l_organization_ror_str {
      \href{\l_organization_url_tl}{#2}
    } {
      \href{\l_organization_url_tl}{#2}
      \href{https\char_generate:nn{58}{12}//ror.org/\str_use:N \l_organization_ror_str}{\@rorIcon{\str_use:N \l_organization_ror_str}}
    }
  }
  % We may want to store these somewhere in the PDF metadata - but where?
  \seq_put_right:Nn \eusset_funding_orgs_seq {#2}
}

\ExplSyntaxOff

\NewDocumentCommand{\anon}{om}{%
  \ifx\@eussetAnonymized\undefined%
    #2%
  \else%
    \IfNoValueTF{#1}{ANONYMOUS}{#1}%
  \fi%
}

\NewEnviron{anonsuppress}{%
  \ifx\@eussetAnonymized\undefined%
    \BODY%
  \fi%
}

% Modified \includegraphics used for the teaser figure, allows centered
% images that extend into the page margins without causing overfull boxes.
\NewDocumentCommand{\@eussetTeaserIncludegraphics}{ s O{} m }{%
  \noindent\makebox[\textwidth]{%
    \IfBooleanTF{#1}{\includegraphics*}{\includegraphics}[#2]{#3}%
  }%
}

% This is how we detect whether a use of \includegraphics anywhere in the
% document includes alternative text: if the `alt' key is present, we set
% a sentinel macro to `false' from the previously set `true'.
\define@key{@eussetIncludegraphicsAltWarning}{alt}{%
  \def\@eussetIncludegraphicsNeedsAltWarning{false}%
}
\NewCommandCopy{\@eussetOriginalIncludegraphics}{\includegraphics}
\RenewDocumentCommand{\includegraphics}{ s O{} m }{%
  \def\@eussetIncludegraphicsNeedsAltWarning{true}%
  \setkeys*{@eussetIncludegraphicsAltWarning}{#2}%
  \ifthenelse{\equal{\@eussetIncludegraphicsNeedsAltWarning}{true}}{%
    \ifthenelse{\equal{\@eussetNoAlt}{error}}{%
      \ClassError{eusset}{Please remember to provide alt text when using \@backslashchar includegraphics}{Every \@backslashchar includegraphics call should have a parameter `alt' set to suitable alternative text.}%
    }{}%
    \ifthenelse{\equal{\@eussetNoAlt}{warn}}{%
      \ClassWarning{eusset}{Please remember to provide alt text when using \@backslashchar includegraphics}%
    }{}%
  }{}%
  \IfBooleanTF{#1}{\@eussetOriginalIncludegraphics*}{\@eussetOriginalIncludegraphics}[#2]{#3}%
}

\RenewEnviron{abstract}{%
  \ifx\@eussetAfterTitle\undefined%
    \ifx\@eussetAbstract\undefined%
      \global\edef\@eussetAbstract{\expandonce\BODY}%
    \else%
      \ClassError{eusset}{There can only be one abstract}{The `abstract' environment can only be used once per document}%
    \fi%
  \else%
    \ClassError{eusset}{Abstract must be set before the start of the document}{The `abstract' environment must be used before \@backslashchar begin\{document\}}%
  \fi%
}

\NewEnviron{teaserfigure}[1][]{%
  \ifx\@eussetAfterTitle\undefined%
    \ifx\@eussetTeaserFigure\undefined%
      \patchcmd{\BODY}{\includegraphics}{\@eussetTeaserIncludegraphics}{}{}%
      \global\edef\@eussetTeaserFigure{\expandonce\BODY}%
    \else%
      \ClassError{eusset}{There can only be one teaser figure}{The `teaserfigure' environment can only be used once per document}%
    \fi%
  \else%
    \ClassError{eusset}{Teaser figure must be set before the start of the document}{The `teaserfigure' environment must be used before \@backslashchar begin\{document\}}%
  \fi%
}

\RenewEnviron{quotation}{%
  \list{}{\rightmargin 5mm \leftmargin 5mm \itemindent 5mm}\item[]%
  \small%
  \BODY%
  \endlist%
}

\renewenvironment{figure}[1][]{%
  \@float{figure}[#1]%
  \ifx\capstart\undefined\else\capstart\fi%
  \centering%
}{\end@float}
\renewenvironment{figure*}[1][]{%
  \@dblfloat{figure}[#1]%
  \ifx\capstart\undefined\else\capstart\fi%
  \centering%
}{\end@float}
\renewenvironment{table}[1][]{%
  \@float{table}[#1]%
  \ifx\capstart\undefined\else\capstart\fi%
  \centering%
}{\end@float}
\renewenvironment{table*}[1][]{%
  \@dblfloat{table}[#1]%
  \ifx\capstart\undefined\else\capstart\fi%
  \centering%
}{\end@float}

\def\@eussetAcksTitle{Acknowledgments}
\NewEnviron{acks}{%
  \section*{\@eussetAcksTitle}%
  \addcontentsline{toc}{section}{\@eussetAcksTitle}%
  \fontsize{10}{12}\fontseries{m}\selectfont%
  \BODY%
  \par%
  \normalsize%
}

\RenewDocumentCommand\section{}{%
  \@startsection{section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}{2.6ex \@plus .2ex}%
  {\normalfont\bfseries\fontsize{18}{21.6}\selectfont}%
}
\RenewDocumentCommand\subsection{}{%
  \@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}{1.5ex \@plus .2ex}%
  {\normalfont\bfseries\fontsize{14}{16.8}\selectfont}%
}
\RenewDocumentCommand\subsubsection{}{%
  \@startsection{subsubsection}{3}{\z@}%
  {-2.5ex\@plus -.7ex \@minus -.2ex}{1.1ex \@plus .2ex}%
  {\normalfont\bfseries\normalsize}%
}
\RenewDocumentCommand\paragraph{}{%
  \@startsection{paragraph}{4}{\z@}%
  {2ex\@plus .6ex \@minus .2ex}{-1em}%
  {\normalfont\bfseries\scshape\normalsize}%
}
\RenewDocumentCommand\subparagraph{}{%
  \@startsection{subparagraph}{5}{\z@}%
  {1.3ex\@plus .6ex \@minus .2ex}{-1em}%
  {\normalfont\bfseries\normalsize}%
}

%% Captions in 10pt, flushed left
\RenewDocumentCommand{\@makecaption}{m+m}{%
  \vskip\abovecaptionskip%
  \begingroup%
    \fontsize{10}{12}\selectfont%
    \sbox\@tempboxa{\textbf{#1.} #2}%
    \ifdim \wd\@tempboxa >\hsize%
      \parindent 5mm%
      \noindent%
      \textbf{#1.} #2\par%
    \else%
      \centering%
      \textbf{#1.} #2\par%
    \fi%
  \endgroup%
  \vskip\belowcaptionskip%
}

% Formatting of footnotes
\renewcommand{\@makefntext}[1]{%
  \parindent 0em%
  \noindent%
  \@makefnmark\hspace{1ex}#1%
}

% Some stuff we need to do after the document preamble...
\AddToHook{begindocument/end}{%
  % Let's just automate the title output since it's never optional.
  \@eussetMaketitle%
  % Set up PDF metadata that needs all preamble commands to be finished
  \ifx\@eussetCombinedTitle\undefined\else%
    \hypersetup{pdftitle={\@eussetCombinedTitle}}%
  \fi%
  \ifx\@eussetAnonymized\undefined%
    \pdfstringdefDisableCommands{%
      \def\spacefactor{}%
      \def\@m{}%
    }%
    \ifx\@fullAuthorList\undefined\else%
      \hypersetup{pdfauthor={\@fullAuthorList}}%
    \fi%
  \fi%
  \ifx\@eussetNonEusset\undefined%
    \hypersetup{%
      pdfpublisher={Europen Society for Socially Embedded Technologies},%
      pdfpubtype={journal},%
      pdfcontactaddress={Social Computing e.V., Grüner Weg 5, 57078 Siegen},%
      pdfcontactpostcode={57078},%
      pdfcontactcity={Siegen},%
      pdfcontactcountry={Germany},%
      pdfcontactemail={coreteam@eusset.eu},%
      pdfcontacturl={https://eusset.eu/},%
    }%
  \fi%
  \ifx\@eussetKeywords\undefined\else%
    \hypersetup{pdfkeywords={\@eussetKeywords}}%
  \fi%
  \ifx\@eussetJournalName\undefined\else%
    \hypersetup{pdfpublication={\@eussetJournalName}}%
  \fi%
  \ifx\@eussetConferenceName\undefined\else%
    \ifx\@eussetWorkshopName\undefined%
      \edef\@eussetPdfSubject{Contribution to: \@eussetConferenceName}%
    \else%
      \edef\@eussetPdfSubject{Contribution to: \@eussetWorkshopName at \@eussetConferenceName}%
    \fi%
    \hypersetup{pdfsubject={\@eussetPdfSubject}}%
  \fi%
  \ifx\@eussetIssn\undefined\else%
    \hypersetup{pdfeissn={\@eussetIssn}}%
  \fi%
  \ifx\@eussetDoi\undefined\else%
    \hypersetup{%
      pdfdoi={\@eussetDoi},%
      pdfurl={https://doi.org/\@eussetDoi},%
    }%
  \fi%
  \ifx\@eussetCopyrightLicenseName\undefined\else%
    \hypersetup{pdfcopyright={\@eussetCopyrightLicenseName}}%
  \fi%
  \ifx\@eussetCopyrightLicenseUrl\undefined\else%
    \hypersetup{pdflicenseurl={\@eussetCopyrightLicenseUrl}}%
  \fi%
  % If this is a workshop proceedings paper, set up the header decoration
  \ifx\@eussetNonEusset\undefined%
    \ifthenelse{\equal{\@eussetWorkshopProceedings}{always}}{\def\@eussetPrintWorkshopProceedingsBanner{true}}{}%
    \ifx\@eussetWorkshopName\undefined\else%
      \ifthenelse{\equal{\@eussetWorkshopProceedings}{ifworkshop}}{\def\@eussetPrintWorkshopProceedingsBanner{true}}{}%
    \fi%
  \fi%
  \ifx\@eussetPrintWorkshopProceedingsBanner\undefined\else%
    \newlength{\@eussetPageHeaderWidth}
    \sbox{\@tempboxa}{\@eussetPageHeader}
    \setlength{\@eussetPageHeaderWidth}{\wd\@tempboxa}
    \newlength{\@eussetPageMarginWidth}
    \setlength{\@eussetPageMarginWidth}{\dimexpr\paperwidth - \textwidth\relax}
    \setlength{\@eussetPageMarginWidth}{.5\@eussetPageMarginWidth}
    \AddToHook{shipout/background}{%
      \put(0pt,-1cm){%
        \setlength{\fboxsep}{0pt}%
        \colorbox{eussetYellow}{\makebox[\dimexpr\paperwidth - \@eussetPageHeaderWidth - \@eussetPageMarginWidth - 3mm\relax]{\parbox[c][2mm][c]{2mm}{}}}%
      }%
      \put(\dimexpr\paperwidth - \@eussetPageMarginWidth + 3mm\relax,-1cm){%
        \setlength{\fboxsep}{0pt}%
        \colorbox{eussetYellow}{\makebox[\@eussetPageMarginWidth]{\parbox[c][2mm][c]{2mm}{}}}%
      }%
      \put(\dimexpr\paperwidth - \@eussetPageHeaderWidth - \@eussetPageMarginWidth\relax,-.85cm){%
        \textcolor{black}{\@eussetPageHeader}%
      }%
    }%
  \fi%
  % Configure the listings package only if it's loaded by the document.
  \@ifpackageloaded{listings}{
    % Colors based on Eric W. Bailey's accessible light theme for PrismJS:
    % https://github.com/ericwbailey/a11y-syntax-highlighting
    \definecolor{eussetListingKeyword}{HTML}{9400D3}
    \definecolor{eussetListingIdentifier}{HTML}{D91E18}
    \definecolor{eussetListingString}{HTML}{008000}
    \definecolor{eussetListingComment}{HTML}{696969}
    \lstset{
      float=htp,
      aboveskip=1em,
      abovecaptionskip=1ex,
      xleftmargin=3mm,
      xrightmargin=3mm,
      frame=single,
      framerule=0pt,
      framesep=0pt,
      framexleftmargin=3mm,
      framexrightmargin=3mm,
      framextopmargin=2mm,
      framexbottommargin=2mm,
      extendedchars=true,
      columns=flexible,
      keepspaces=true,
      captionpos=b,
      backgroundcolor=\color{black!3!white},
      basicstyle=\color{black}\ttfamily\small,
      keywordstyle=\color{eussetListingKeyword}\bfseries,
      identifierstyle=\color{eussetListingIdentifier},
      stringstyle=\color{eussetListingString},
      commentstyle=\color{eussetListingComment}\itshape,
      numbers=none,
    }
  }{}%
}

% For LaTeX tips in the template:
\NewDocumentCommand{\LaTeXtip}{m}{\textcolor{RedViolet}{\textbf{\LaTeX{}~tip:} #1}}

\WarningFilter{latex}{Writing or overwriting file}
\begin{filecontents}[overwrite,nosearch]{eusset.bst}
%% Modified apalike style for EUSSET conferences
%% by Julian Fietkau <julian@fietkau.me>
%%
%% Based on ecscw2007.bst by S. Luz <luzs@acm.org> (2007)
%%
%% This style produces citations in the `author-year' format. It
%% is tested with natbib and is capable of producing textual references
%% as in ``Author (2026)'' and parenthetical references as in ``(Author
%% 2026)''.


ENTRY
  { address
    author
    booktitle
    chapter
    doi
    edition
    editor
    howpublished
    institution
    isbn
    journal
    key
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    url
    volume
    year
  }
  {}
  { label extra.label sort.label }
 
INTEGERS { output.state before.all mid.sentence after.sentence
   after.block after.colon }
 
FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
  #4 'after.colon :=
}
 
STRINGS { s t }
 
FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.block =
        { add.period$ write$
          newline$
          "\newblock " write$
        }
        { output.state before.all =
            'write$
            { output.state after.colon =
               'write$
              { add.period$ " " * write$ }
            if$
            }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}
 
FUNCTION {output.nonnull.extra}
{ 's :=
  output.state mid.sentence =
    { " " * write$ }
    { output.state after.block =
        { add.period$  write$
          newline$
          "\newblock " write$
        }
        { output.state before.all =
            'write$
            { output.state after.colon =
              'write$
              { add.period$ " " * write$ }
            if$
            }
          if$
        }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}
 
FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}
 
FUNCTION {output.extra}
{ duplicate$ empty$
    'pop$
    'output.nonnull.extra
  if$
}
 
FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}
 
FUNCTION {output.check.extra}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull.extra
  if$
}
 
FUNCTION {output.year.check}
{ year empty$
    { "empty year in " cite$ * warning$ }
    { write$
      " " year * extra.label * ". " *
      before.all 'output.state :=
    }
  if$
}
 
FUNCTION {output.bibitem}
{ newline$
  "\bibitem[" write$
  label write$
  "]{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {format.url}
{
  url empty$
    { "" }
    { "\url{" url * "}~\waybackMachineURL{" url "}" * * * }
  if$
}

% Borrowed (and slightly adapted) from acmart: https://github.com/borisveytsman/acmart
% Our version operates on the topmost stack element instead of the DOI directly
% because we use it to check URL and DOI for redundancy.
FUNCTION { strip.doi } % UTAH
{ % Strip any Web address prefix to recover the bare DOI, leaving the
  % result on the output stack, as recommended by CrossRef DOI
  % documentation.
  % For example, reduce "http://doi.acm.org/10.1145/1534530.1534545" to
  % "10.1145/1534530.1534545".  A suitable URL is later typeset and
  % displayed as the LAST item in the reference list entry.  Publisher Web
  % sites wrap this with a suitable link to a real URL to resolve the DOI,
  % and the master https://doi.org/ address is preferred, since publisher-
  % specific URLs can disappear in response to economic events.  All
  % journals are encouraged by the DOI authorities to use that typeset
  % format and link procedures for uniformity across all publications that
  % include DOIs in reference lists.
  % The numeric prefix is guaranteed to start with "10.", so we use
  % that as a test.
  % 2017-02-04 Added stripping of https:// (Boris)
  duplicate$
  #1 #3 substring$ "10." =
    { skip$ }
    {
      't :=  % get modifiable copy of DOI

      % Change https:// to http:// to strip both prefixes (BV)

      t #1 #8 substring$ "https://" =
        { "http://"  t #9 t text.length$ #8 - substring$ * 't := }
        { }
      if$

      t #1 #7 substring$ "http://" =
        {
            t #8 t text.length$ #7 - substring$ 't :=

            "INTERNAL STYLE-FILE ERROR" 's :=

            % search for next "/" and assign its suffix to s

            { t text.length$ }
            {
              t #1 #1 substring$ "/" =
                {
                  % save rest of string as true DOI (should be 10.xxxx/yyyy)
                  t #2 t text.length$ #1 - substring$ 's :=
                  "" 't :=    % empty string t terminates the loop
                }
                {
                  % discard first character and continue loop: t <= substring(t,2,last)
                  t #2 t text.length$ #1 - substring$ 't :=
                }
              if$
            }
            while$

            s   % push the stripped DOI on the output stack

        }
        {
          "unrecognized DOI value [" doi * "]" * warning$
          skip$   % push the unrecognized original DOI on the output stack
        }
      if$
    }
  if$
}

FUNCTION {format.doi}
{
  doi empty$
    { "" }
    { "\url{https://doi.org/" doi strip.doi * "}"  * }
  if$
}
 
FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
}
 
FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}
 
FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}
 
FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}
 
FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}
 
FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}
 
FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}
 
FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}
 
FUNCTION {boldface}
{ duplicate$ empty$
    { pop$ "" }
    { "{\bf " swap$ * "}" * }
  if$
}
 
FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "{\em " swap$ * "}" * }
  if$
}
 
INTEGERS { nameptr namesleft numnames }
 
FUNCTION {format.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
        { s nameptr "{ff }{vv~}{ll}{, jj}" format.name$ 't := }
        { s nameptr "{vv~}{ll}{, jj}{, ff}" format.name$ 't := }
      if$
      nameptr #1 >
        { namesleft #1 >
            { ", " * t * }
            { numnames #2 >
                { "," * }
                'skip$
              if$
              t "others" =
                { " et~al." * }
                { " and " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}
 
FUNCTION {format.ed.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
        { s nameptr "{ff }{vv~}{ll}{, jj}" format.name$ 't := }
        { s nameptr "{ff }{vv~}{ll}{, jj}" format.name$ 't := }
      if$
      nameptr #1 >
        { namesleft #1 >
            { ", " * t * }
            { numnames #2 >
                { "," * }
                'skip$
              if$
              t "others" =
                { " et~al." * }
                { " and " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {format.authors}
{ author empty$
    { "" }
    { author format.names
      add.period$
    }
  if$
}
 
FUNCTION {format.key}
{ empty$
    { key field.or.null }
    { "" }
  if$
}

FUNCTION {format.editors}
{ editor empty$
    { "" }
    { editor format.names
      editor num.names$ #1 >
        { " (eds.)" * }
        { " (ed.)" * }
      if$
      add.period$
    }
  if$
}
 
FUNCTION {format.editors.extra}
{ editor empty$
    { "" }
    { editor format.ed.names
      editor num.names$ #1 >
        { " (eds.)" * }
        { " (ed.)" * }
      if$
    }
  if$
}
 
FUNCTION {format.title}
{ title empty$
    { "" }
    { title }
  if$
}
 
FUNCTION {n.dashify}
{ 't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
                { "-" *
                  t #2 global.max$ substring$ 't :=
                }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
      if$
    }
  while$
}
 
FUNCTION {first.page.number}
{ 't :=
  ""
    { t "" =
        { #0 }
        { t #1 #1 substring$ "-" = not }
      if$
    }
    { t #1 #1 substring$ *
      t #2 global.max$ substring$ 't :=
    }
  while$
}

FUNCTION {format.btitle}
{ title emphasize
}
 
FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}
 
FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}
 
FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { "Vol." volume tie.or.space.connect
      series empty$
        'skip$
        { " of " * series emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}
 
FUNCTION {format.number.series}
{ volume empty$
    { number empty$
        { series field.or.null }
        { output.state mid.sentence =
            { "No." }
            { "No." }
          if$
          number tie.or.space.connect
          series empty$
            { "there's a number but no series in " cite$ * warning$ }
            { " in " * series * }
          if$
        }
      if$
    }
    { "" }
  if$
}
 
FUNCTION {format.edition}
{ edition empty$
    { "" }
    { output.state mid.sentence =
        { edition "l" change.case$ " edition" * }
        { edition "t" change.case$ " edition" * }
      if$
    }
  if$
}
 
INTEGERS { multiresult }
 
FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}
 
FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
        { "pp." pages n.dashify tie.or.space.connect }
        { "p." pages tie.or.space.connect }
      if$
    }
  if$
}

FUNCTION {format.page}
{ pages empty$
    { "" }
    { "" pages first.page.number * }
  if$
}

FUNCTION {format.vol.num.pages}
{ volume empty$
    { "" }
    { volume }
  if$
  number empty$
    'skip$
    { "~(" number * ")" * *
      volume empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
    }
  if$
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ": " * pages n.dashify * }
      if$
    }
  if$
}

FUNCTION {format.vol.num.page}
{ volume empty$
    'skip$
    { volume }
  if$
  number empty$
    'skip$
    { "~(" number * ")" * *
      volume empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
    }
  if$
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ": " * pages first.page.number * }
      if$
    }
  if$
}

FUNCTION {format.chapter.pages}
{ chapter empty$
    'format.pages
    { type empty$
        { "Chapt." }
        { type "l" change.case$ }
      if$
      chapter tie.or.space.connect
      pages empty$
        'skip$
        { ", " * format.pages * }
      if$
    }
  if$
}
 
FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { editor empty$
        { "In: " booktitle emphasize * }
        { "In: " format.editors.extra * ": " * booktitle emphasize * }
      if$
    }
  if$
}
 
FUNCTION {format.in.booktitle.or.series}
{ booktitle empty$
    { series empty$
        { "" }
        { "In: " series emphasize * }
      if$
    }
    { editor empty$
        { "In: " booktitle emphasize * }
        { "In: " format.editors.extra * ": " * booktitle emphasize * }
      if$ 
    }
  if$
}
 
FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$
      type "t" change.case$
    }
  if$
}
 
FUNCTION {format.tr.number}
{ type empty$
    { "Technical Report" }
    'type
  if$
  number empty$
    { "t" change.case$ }
    { number tie.or.space.connect }
  if$
}
 
FUNCTION {format.article.crossref}
{ "In"
  " \cite{" * crossref * "}" *
}
 
FUNCTION {format.book.crossref}
{ volume empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      "In "
    }
    { "Vol." volume tie.or.space.connect
      " of " *
    }
  if$
  "\cite{" * crossref * "}" *
}
 
FUNCTION {format.incoll.inproc.crossref}
{ "In"
  " \cite{" * crossref * "}" *
}

% Prints URL and DOI (unbuffered). If DOI is set, will attempt to check
% whether URL is a redundant copy of the DOI URI (e.g. exported references
% from the ACM DL are notorious for this) and skip it if so. If DOI is set
% and URL is not another copy of the DOI URI, show both with a separator
% character in between.
FUNCTION {output.url.and.doi}
{ url empty$
    { doi empty$
      {  }
      { " \ " format.doi * write$ }
      if$
    }
    { doi empty$
      { " \ " format.url * write$ }
      { doi strip.doi url strip.doi =
          { " \ " format.doi * write$ }
          { " \ " format.url * " \textperiodcentered{} " * format.doi * write$ }
        if$
      }
      if$
    }
  if$
}

FUNCTION {output.isbn}
{ isbn empty$
    { "" }
    { "\textsc{isbn}: " isbn * " "  * }
  if$
  write$
}
 
FUNCTION {article}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  new.block
  format.title "title" output.check
  new.block
  crossref missing$
    { journal emphasize output
      format.vol.num.pages empty$
        { "" output }
        { " " format.vol.num.pages * output }
      if$
    }
    { format.article.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {book}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check
      editor format.key output
    }
    { format.authors output.nonnull
      crossref missing$
        { "author and editor" editor either.or.check }
        'skip$
      if$
    }
  if$
  output.year.check
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      format.number.series output
      new.block
      address empty$
        'skip$
        { address ": " * output
          after.colon 'output.state :=
        }
      if$
      publisher "publisher" output.check.extra
    }
    { new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {booklet}
{ output.bibitem
  format.authors output
  author format.key output
  output.year.check
  format.btitle "title" output.check
  new.block
  howpublished output
  address output
  new.block
  note output
  fin.entry
  output.url.and.doi
}
 
FUNCTION {inbook}
{ output.bibitem
  author empty$
    { editor format.key output }
    { format.authors output.nonnull }
  if$
  output.year.check
  booktitle empty$
    { format.btitle "title" output.check }
    { format.title "title" output.check }
  if$
  new.block
  crossref missing$
    { format.in.booktitle.or.series "booktitle or series" output.check
      format.bvolume output
      format.chapter.pages "chapter and pages" output.check
      format.number.series output
      new.block
      address empty$
        'skip$
        { address ": " * output
          after.colon 'output.state :=
        }
      if$
      publisher "publisher" output.check.extra
    }
    { format.chapter.pages "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {incollection}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      new.block
      address empty$
        'skip$
        { address ": " * output
          after.colon 'output.state :=
        }
      if$
      publisher "publisher" output.check.extra
      format.edition output
      format.chapter.pages output
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {inproceedings}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.booktitle.or.series "booktitle or series" output.check
      format.bvolume output
      format.pages output
      new.sentence
      address empty$
        'skip$
        { address
          publisher empty$
            'skip$
            { ": " * }
          if$
          output
          publisher empty$
            'skip$
            { after.colon 'output.state := }
          if$
        }
      if$
      publisher empty$
        'skip$
        { publisher output }
      if$
    }
    { format.incoll.inproc.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {conference} { inproceedings }
 
FUNCTION {manual}
{ output.bibitem
  format.authors output
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  organization output
  address output
  format.edition output
  new.block
  note output
  fin.entry
  output.url.and.doi
}
 
FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  "Master's thesis" format.thesis.type output.nonnull
  school "school" output.check
  address output
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {misc}
{ output.bibitem
  format.authors output
  author format.key output
  output.year.check
  format.btitle "title" output.check
  new.block
  howpublished output
  new.block
  note output
  fin.entry
  output.url.and.doi
}
 
FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  "Ph.D. thesis" format.thesis.type output.nonnull
  school "school" output.check
  address output
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {proceedings}
{ output.bibitem
  format.editors output
  editor format.key output
  output.year.check
  format.title "title" output.check
  format.bvolume output
  format.number.series output
  new.block
  address empty$
     'skip$
     { address ": " * output
       after.colon 'output.state :=
     }
  if$
  organization output.extra
  publisher output
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.btitle "title" output.check
  new.block
  format.tr.number output.nonnull
  institution empty$
    { new.sentence
      address empty$
        'skip$
        { address
          publisher empty$
            'skip$
            { ": " * }
          if$
          output
          publisher empty$
            'skip$
            { after.colon 'output.state := }
          if$
        }
      if$
      publisher empty$
        'skip$
        { publisher output }
      if$
    }
    { "institution and publisher" publisher either.or.check
      institution "institution" output.check
    }
  if$
  new.block
  note output
  fin.entry
  output.isbn
  output.url.and.doi
}
 
FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  output.year.check
  format.title "title" output.check
  new.block
  note "note" output.check
  fin.entry
  output.url.and.doi
}
 
FUNCTION {default.type} { misc }

MACRO {jan} {"Jan."}

MACRO {feb} {"Feb."}

MACRO {mar} {"Mar."}

MACRO {apr} {"Apr."}

MACRO {may} {"May"}

MACRO {jun} {"June"}

MACRO {jul} {"July"}

MACRO {aug} {"Aug."}

MACRO {sep} {"Sept."}

MACRO {oct} {"Oct."}

MACRO {nov} {"Nov."}

MACRO {dec} {"Dec."}

READ
 
FUNCTION {sortify}
{ purify$
  "l" change.case$
}
 
INTEGERS { len }
 
FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}
 
FUNCTION {format.lab.names}
{ 's :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ duplicate$
  #2 >
    { pop$ " et~al." * }
    { #2 <
        'skip$
        { s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            { " et~al." * }
            { " and " * s #2 "{vv~}{ll}" format.name$ * }
          if$
        }
      if$
    }
  if$
}
 
FUNCTION {author.key.label}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { author format.lab.names }
  if$
}
 
FUNCTION {author.editor.key.label}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor format.lab.names }
      if$
    }
    { author format.lab.names }
  if$
}
 
FUNCTION {editor.key.label}
{ editor empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { editor format.lab.names }
  if$
}
 
FUNCTION {calc.label}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label
    { type$ "proceedings" =
        'editor.key.label
        'author.key.label
      if$
    }
  if$
  "\protect\citeauthoryear{" swap$ * "}{"
  *
  year field.or.null purify$ #-1 #4 substring$
  *
  'label :=
}
 
FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
        { "   " * }
        'skip$
      if$
      s nameptr "{vv{ } }{ll{ }}{  f{ }}{  jj{ }}" format.name$ 't :=
      nameptr numnames = t "others" = and
        { "et al" * }
        { t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}
 
FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}
 
FUNCTION {author.sort}
{ author empty$
    { key empty$
        { "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}
 
FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
        { key empty$
            { "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}
 
FUNCTION {editor.sort}
{ editor empty$
    { key empty$
        { "to sort, need editor or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { editor sort.format.names }
  if$
}
 
FUNCTION {presort}
{ calc.label
  label sortify
  "    "
  *
  type$ "book" =
  type$ "inbook" =
  or
    'author.editor.sort
    { type$ "proceedings" =
        'editor.sort
        'author.sort
      if$
    }
  if$
  #1 entry.max$ substring$
  'sort.label :=
  sort.label
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}
 
ITERATE {presort}
 
SORT            % by label, sort.label, title---for final label calculation
 
STRINGS { last.label next.extra }
 
INTEGERS { last.extra.num }
 
FUNCTION {initialize.extra.label.stuff}
{ #0 int.to.chr$ 'last.label :=
  "" 'next.extra :=
  #0 'last.extra.num :=
}
 
FUNCTION {forward.pass}
{ last.label label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
}
 
FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  label extra.label * "}" * 'label :=
  extra.label 'next.extra :=
}
 
EXECUTE {initialize.extra.label.stuff}
 
ITERATE {forward.pass}
 
REVERSE {reverse.pass}
 
FUNCTION {bib.sort.order}
{ sort.label
  "    "
  *
  year field.or.null sortify
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}
 
ITERATE {bib.sort.order}
 
SORT            % by sort.label, year, title---giving final bibliography order
 
FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{}" write$ newline$
}
 
EXECUTE {begin.bib}
 
EXECUTE {init.state.consts}
 
ITERATE {call.type$}
 
FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}
 
EXECUTE {end.bib}

\end{filecontents}

\endinput
%%
%% End of file `eusset.cls'.

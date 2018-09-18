%%
%% This is file `hecppt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hecppt.dtx  (with options: `class')
%% 
%% This is a stripped version of the original file.
%% 
%% Copyright 2018 HEC Montreal
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% 
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008/05/04 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Benoit Hamel
%% <benoit.2.hamel@hec.ca>.
%% 
%% This work consists of the files hecppt.dtx and hecppt.ins,
%% all the image files contained in the <img/> directory
%% and the derived files listed in the README file.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hecppt}[2018/04/19 v0.1 Classe pour des presentations beamer avec l'image de marque HEC Montreal]
\RequirePackage{ifthen}

\newboolean{debutSection}
\newboolean{gabarita}
\newboolean{gabaritb}
\newboolean{gabaritc}
\newboolean{gabaritd}
\newboolean{gabarite}

\setboolean{gabarita}{false}
\setboolean{gabaritb}{false}
\setboolean{gabaritc}{false}
\setboolean{gabaritd}{false}
\setboolean{gabarite}{false}


\newcommand{\HECbgfile}{}
\newcommand{\HECsectionbgfile}{}

\DeclareOption{gabarita}{%
\renewcommand{\HECbgfile}{background-a.eps}
\renewcommand{\HECsectionbgfile}{section-background-a.eps}
\setboolean{gabarita}{true}
}
\DeclareOption{gabaritb}{%
\renewcommand{\HECbgfile}{background-b.eps}
\renewcommand{\HECsectionbgfile}{section-background-b.eps}
\setboolean{gabaritb}{true}
}
\DeclareOption{gabaritc}{%
\renewcommand{\HECbgfile}{background-c.eps}
\renewcommand{\HECsectionbgfile}{section-background-c.eps}
\setboolean{gabaritc}{true}
}
\DeclareOption{gabaritd}{%
\renewcommand{\HECbgfile}{background-d.eps}
\renewcommand{\HECsectionbgfile}{section-background-d.eps}
\setboolean{gabaritd}{true}
}
\DeclareOption{gabarite}{%
\renewcommand{\HECbgfile}{background-e.eps}
\renewcommand{\HECsectionbgfile}{section-background-e.eps}
\setboolean{gabarite}{true}
}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ExecuteOptions{}
\ProcessOptions
\LoadClass{beamer}

\mode<presentation>
\usetheme{HECMtl}


\RequirePackage[utf8]{inputenc} % Utilisation des diacritiques dans le texte
\RequirePackage[T1]{fontenc} % Utilisation des polices T1
\RequirePackage{xcolor} % Gestion des couleurs
\RequirePackage{graphicx} % Gestion des images
\RequirePackage[abs]{overpic} % Découpage des pages titres en blocs
\RequirePackage{babel} % Support multilingue
\RequirePackage{amsmath} % Package obligatoire pour les maths
\RequirePackage{mathpazo} % Utilisation de la police Palatino
\RequirePackage[overload]{textcase} % Gestion des casses de caractères
\RequirePackage{nameref} % Référencement des sections par le nom


\graphicspath{{img/}}
\setlength\unitlength{1mm}


\newcommand{\HECauteur}[2]{%
\author[\MakeUppercase{#1}]{#2}
}


\newcommand{\pageTitre}{%
{%
\setbeamertemplate{footline}{}
\begin{frame}
\titlepage
\end{frame}
\addtocounter{framenumber}{-1}
}
}


\makeatletter
\newcommand*{\nomsectioncourante}{\@currentlabelname}
\makeatother


\makeatletter
\patchcmd{\beamer@sectionintoc}
{\vfill}
{}
{}
{}
\makeatother



\newenvironment{HECimagesstitre}[1]{%
\vspace{-3.5mm}
\begin{block}{#1}
\begin{figure}
}{%
\end{figure}
\end{block}
}

\newenvironment{HECcomparaison}[1]{%
\begin{column}[t]{.5\textwidth}
\vspace{-6.5mm}
\begin{block}{#1}
}{%
\end{block}
\end{column}
}

\newenvironment{HEClegende}[1]{%
\begin{column}[t]{.36\textwidth}
\vspace{-6.5mm}
\begin{block}{#1}
}{%
\end{block}
\end{column}
}

\newenvironment{HECcontenuLegende}{%
\begin{column}[t]{.64\textwidth}
}{%
\end{column}
}
\endinput
%%
%% End of file `hecppt.cls'.

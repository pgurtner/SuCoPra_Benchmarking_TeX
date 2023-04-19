\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BenchmarkingReport}[2023/04/19 TeX class for SuCoPra benchmarking reports.]

\usepackage{xparse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

\LoadClass{article}
\RequirePackage{graphicx}
\RequirePackage{listings}
\RequirePackage{lstautogobble}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{float}

\lstdefinestyle{benchmarking_report_listings_style}{
	breaklines=true,
	frame=shadowbox,
	linewidth=\textwidth,
	autogobble=true
}
\lstset{style=benchmarking_report_listings_style}

\NewDocumentCommand{\benchmarkingplot}{m o o}{
	\begin{figure}[H]
		\centering
		\includegraphics[width=\textwidth]{#1}
		\IfValueT{#2}{\caption{#2}}
		\IfValueT{#3}{\label{#3}}
	\end{figure}
}

%\NewDocumentCommand{\benchmarkingconfigfile}{m o o o}{
%	\begin{figure}[H]
%		\begin{lstlisting} \IfValueT{#3}{[language=#3]}
%			#1%
%		\end{lstlisting}
%		\IfValueT{#2}{\caption{#2}}
%		\IfValueT{#4}{\label{#4}}
%	\end{figure}
%}

\newcommand{\Ra}{$\Rightarrow$\ }

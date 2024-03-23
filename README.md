[Pendulum_modelling.pdf](https://github.com/Tachia/Pendulum_Model_with_Octave/files/14729675/Pendulum_modelling.pdf)


\documentclass{article}
\usepackage{listings}
\usepackage{xcolor}
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{amsmath}
\usepackage{comment}
\usepackage[affil-it]{authblk}
%\titlespacing{\paragraph}{2em}{1em}{1em}
\usepackage{vmargin}
\setpapersize{A4}
\setmarginsrb{2.5cm}{2cm}{2cm}{2cm}{0pt}{10mm}{0pt}{13mm}
\usepackage{setspace}
\sloppy
\setstretch{1.5}
\usepackage{indentfirst}
\parindent=1.25cm

\lstset{
  basicstyle=\ttfamily,
  keywordstyle=\color{blue},
  commentstyle=\color{green!60!black},
  stringstyle=\color{orange},
  numbers=left,
  numberstyle=\tiny,
  numbersep=5pt,
  showstringspaces=false,
  breaklines=true,
  frame=lines,
  backgroundcolor=\color{gray!10},
  captionpos=b,
  language=Octave,
}

\title{MATHEMATICAL MODELLING OF A PENDULUM WITH SHORT, LARGE AND EXTRA LARGE TIME PERIODS}
\author{OCTAVE SCRIPTING}

\space
\space

\begin{document}
\maketitle
\section*{Principle of Mathematical Modelling}
This scripts models the behavior of a pendulum with a short period, long period, and extra large period of time respectively demonstrating how their models differs in the way they oscillate.

The behavior of a pendulum with short, long, and extra long time periods differs in the way they oscillate. A pendulum with a short period will have a higher frequency of oscillation, meaning it swings back and forth more frequently within a given time frame. On the other hand, a pendulum with a long, and extra longer time periods will have lower frequencies of oscillation, meaning it takes longer to complete each swing. This is more pronounce for the case of extra large time period.

\section*{Pendulum with Short Period of Time}

The Model for a Pendulum with Short Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \omega^2\phi = 0$

Where: $\phi$ is the angle formed by the pendulum thread or rope, 
This second order differential equation is the solved numerically using Octave Scripting, a open source software and the visualization are presented.

\subsection*{Model Visualizations}
\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{short_p1.PNG}
    \caption{Pendulum with Short Period of Time}
    \label{fig:enter-label}
\end{figure}

\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{short_p2.PNG}
    \caption{The Phase Model }
    \label{fig:enter-label}
\end{figure}

\section*{Pendulum with Large Period of Time}

The Model for a Pendulum with Large Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \omega^2sin(\phi) = 0$

This second order differential equation is the solved numerically using Octave Scripting, a open source software and the visualization are presented.

\subsection*{Model Visualizations}
\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{large_p1.PNG}
    \caption{Pendulum with Large Period of Time}
    \label{fig:enter-label}
\end{figure}
\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{large_p2.PNG}
    \caption{Phase Model}
    \label{fig:enter-label}
\end{figure}

\section*{Pendulum with Extra Large Period of Time}

The Model for a Pendulum with Extra Large Period of Time is given by the following mathematical expression:

$\frac{d^2\phi}{dt^2} + \mu sgn \frac{d\phi}{dt} + \omega^2sin(\phi) = 0$

This second order differential equation is the solved numerically using Octave Scripting, a open source software and the visualization are presented.

\subsection*{Model Visualizations}
\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{extra_large_p1.PNG}
    \caption{Pendulum with Extra Large Period of Time}
    \label{fig:enter-label}
\end{figure}

\begin{figure}
    \centering
    \includegraphics[width=0.75\linewidth]{extra_large_p2.PNG}
    \caption{Phase Model}
    \label{fig:enter-label}
\end{figure}

\subsection*{The terms in the mathematical expressions:}
\begin{itemize}
    \item $\phi$: This is the angle in radian
    \item $\frac{d^2\phi}{dt^2}$: Is the second derivative of the variable $\phi$ with respect to time $t$. It represents the rate of change of $\phi$'s rate of change.
    \item $\mu$: Represents the damping constant
    \item $\mu sgn \frac{d\phi}{dt}$: This term represents a force acting on the pendulum. It is proportional to the sign (positive or negative) of the first derivative of $\phi$ with respect to time $t$. The force is multiplied by a constant $\mu$.
    \item $\omega^2sin(\phi)$: It represents the restoring force of the pendulum and it is proportional to the angular frequency $\omega$ squared, multiplied by the sine of the angle $\phi$.
    \item Overall, the differential equations describes how the angle $\phi$ and its rate of change over time $t$ represents the equation of motion for the pendulum.
\end{itemize}


\end{document}

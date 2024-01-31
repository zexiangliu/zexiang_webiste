---
layout: post
mathjax: true 
---
<head>
<link rel="stylesheet" href="../../../assets/css/simple.css">
</head>

This post aims to answer a simple question in linear system theory: **Is a system with all its poles on the imaginary axis always marginally stable?**

The answer is NO.  A well-known counter example is 
\begin{align} \label{eq:ex1}
    \dot{x} = \begin{bmatrix}
    0 & 1\\\\\\\\0 & 0	
    \end{bmatrix}x
\end{align}
The system in \eqref{eq:ex1} has two poles at the origin, but it is not marginally stable since there is a single Jordan block corresponding to the eigenvalue $$0$$.

Now, let us make this question a bit more challenging: **Is any system with all its poles satisfying (a) non-zero (b) on the imaginary axis always marginally stable?**

This revised question excludes the counter example in \eqref{eq:ex1}. According to [Wikipedia](https://www.wikiwand.com/en/Marginal_stability), 
> a continuous-time state-space model is marginally stable if and only if the Jordan blocks corresponding to poles with zero real part are one-by-one matrices.

By Wiki (which might be wrong), the answer to the revised question seems negative, since the Jordan blocks corresponding to the non-zero poles on the imaginary axis may not be one-by-one. But I am not convinced by this argument unless someone can show me a counter example. 

So, our goal now is to find a real matrix whose the Jordan block corresponding to an imaginary eigenvalue is not one-by-one. Have you seen such an example in your linear system theory course or linear algebra 101? I cannot recall anything like that. One famous example for a matrix with purely imaginary poles is 
\begin{align}
A=  \begin{bmatrix}
    0 & 1 \\\\\\\\
	-1 & 0
    \end{bmatrix}.
\end{align}
The Jordan normal form of $$A$$ is 
\begin{align}
    \begin{bmatrix}
    i & 0\\\\\\\\0 & -i
    \end{bmatrix}.
\end{align}
It would be nice if we can find a real matrix whose Jordan normal form is
\begin{align} \label{eq:jordan}
    \begin{bmatrix}
    i & 1 & 0 & 0\\\\\\\\
	0 & i & 0 & 0\\\\\\\\
	0 & 0 & -i & 1\\\\\\\\
	0 & 0 & 0 & -i
    \end{bmatrix}.
\end{align}
Actually, it is indeed possible. According to this document ([Real Jordan Form](https://people.math.osu.edu/costin.10/5101/Eigenvalues%20p20-30.pdf)), the matrix in \eqref{eq:ex2} has exactly the Jordan normal form in \eqref{eq:jordan}.

\begin{align} \label{eq:ex2}
   A = \begin{bmatrix}
    0 & 1 & 1 & 0\\\\\\\\
	-1 & 0 & 0 & 1\\\\\\\\
	0 & 0 & 0 & 1\\\\\\\\
	0 & 0 & -1 & 0 
    \end{bmatrix}.
\end{align}
Therefore, the system $$\dot{x} = Ax$$ with $$A$$ in \eqref{eq:ex2} serves as a counter example for our revised question.
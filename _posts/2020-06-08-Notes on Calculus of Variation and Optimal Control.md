---
layout: post
mathjax: true 
---
<head>
<link rel="stylesheet" href="../../../assets/css/simple.css">
</head>


<!-- # Reading notes of the book *Calculus of variation and optimal control* by *Daniel Liberzon*. -->


This note contains the problems encountered during reading the book and my thoughts on their solutions. 


## Table of Content
* TOC
{:toc}

**TODO**:
- [ ] [Check the proof of second order condition.](#cont-eps) 
- [ ] [Fill in the proof of Tangent space](#tangent-space)  
- [X] [Linearity of Gateaux derivative](#gateaux)



## Chapter 1 <a name="chp1"></a>  
---
### Continuity of $\epsilon(d)$ in second-order sufficient condition (P6)
The book claims that $\epsilon$ as a function of $d$ is continuous and thereby Weierstrass theorem can be applied.  But we cannot write down the explicit expression of $\epsilon$. So it is not easy to verify the continuity argument. Fortunately, a proof of the second-order sufficient condition is given by Prof. Llya in AE 575. <a name="cont-eps"></a> 


### Regular point (P9) 

There is a graphic interpretation on points that are not regular.

![example of points not regular](../../../assets/images/regular_point.svg)


### Tangent space (P9)

Let $M$ be a submanifold of $R^{n}$ and let $a\in M$. The tangent space of $M$ at $a$ is given by
\\[T_{a} M = \lbrace v\in R^{n} \mid  \exists \gamma: (-s,s) \rightarrow R^{n}: \gamma(t) \in M \text{ for same } s > 0 \text{ and } t\in (-s,s), \gamma(0) =a, \dot{ \gamma}(0)= v	\rbrace.\\]
*(this definition is copied from  Dr. Richter's [course materials](https://academic.csuohio.edu/richter_h/courses/esc694.html))* 

According to the book, if the submanifold is given by $M = \lbrace x \mid h_{i}(x) = 0, i=1,..,m\rbrace$ and $a\in M$ is a regular point, then the tangent space $T_{a}M$ at $a$ can be characterized by 

\\[T_{a}M = \lbrace d\in R^{n} \mid <d, \bigtriangledown h_{i}(a)> = 0, i=1,...,m \rbrace.\\]


The discussion in the book can be summarized by the following theorem:

<div class="theorem" name="Theorem "></div> 

Set $D = \lbrace d\in R^{n} \mid <d, \bigtriangledown h_{i}(a)>=0, i=1,...,m\rbrace$. Then, $T_{a}M \subseteq D$. If $a$ is a regular point, then $T_{a}M = D$.

**Question:**  How to prove that for any $d\in T_{a}M$, there is a curve $\gamma (\cdot)\in \mathcal{C}^{1}$ such that $\gamma (0) = a$ and $\gamma'(0) =d$ (assume that $a$ is a regular point)? See recitation 3 of AE 575. <a name="tangent-space"></a>  

### First-order necessary condition --- Lagrange multipliers (P9)
Given that $x^{*}$ is a regular point, the first order necessary condition is  
\\[\bigtriangledown f(x^{\ast}) + \lambda_{1}^{\ast} \bigtriangledown h_1(x^{\ast}) + ... + \lambda_{m}^{\ast} \bigtriangledown h_{m}(x^{\ast}) = 0.\\]

The idea behind this condition is fairly intuitive:

- First, the actual first order necessary condition is $\bigtriangledown f(x^{\ast}) \cdot d = 0$ for all $d \in T_{a}M$, where $M = \lbrace x \mid h_{i}(x) = 0, i=1,...,m\rbrace$. This can be easily seen from the first order Taylor expansion of $f(x(\alpha))$ for some curve $x(\alpha)\in \mathcal{C}^{1}$ through $x^{\ast}$.
- Second, if $x^{\ast}$ is a regular point, then $T_{a}M$ can be characterized as $\lbrace d \mid  <d, \bigtriangledown h_{i}> = 0, i=1,...,m\rbrace$. Based on this observation, we can rewritten the actual necessary condition in the first bullet point as in form of Lagrange multipliers.  

### Exercise 1.3
**Proof:** Define 
\\[F: ( \alpha_1,..., \alpha_{m+1}) \rightarrow	( f(x^{\ast} + \alpha_1 d_1 + ... \alpha_{m+1}d_{m+1}), h_1(x^{\ast} + \alpha_1 d_1 + ... \alpha_{m+1}d_{m+1}), ..., h_{m}(x^{\ast} + \alpha_1 d_1 + ... \alpha_{m+1}d_{m+1})).\\]

The Jacobian of $F$ is 

\begin{align}
\label{eqn:JF} 
\begin{pmatrix}  
\bigtriangledown f(x^{\ast})\cdot d_1 & \bigtriangledown f(x^{\ast})\cdot d_2 & ... & \bigtriangledown f(x^{\ast})\cdot d_{m+1} \\\\\\\\
\bigtriangledown h_{1}(x^{\ast}) \cdot d_1 & \bigtriangledown h_{1}(x^{\ast}) \cdot d_2 &  ... &  \bigtriangledown h_{1}(x^{\ast}) \cdot d_{m+1} \\\\\\\\
... & ... &  ... & ...\\\\\\\\
\bigtriangledown h_{m}(x^{\ast}) \cdot d_1 & \bigtriangledown h_{m}(x^{\ast}) \cdot d_2 &  ... &  \bigtriangledown h_{m}(x^{\ast}) \cdot d_{m+1}
\end{pmatrix} = 
\begin{pmatrix} \bigtriangledown f(x^{\ast}) \\\\\\\\ \bigtriangledown h_1(x^{\ast}) \\\\\\\\ \vdots \\\\\\\\  \bigtriangledown	h_{m}(x^{\ast})  \end{pmatrix} \cdot 
\begin{pmatrix} d_1 & d_2 &  ... &  d_{m+1}
 \end{pmatrix}.
\end{align} 

Suppose that the Jacobian \eqref{eqn:JF} is not singular. Then, there exists neighbors $U$,  $V$ around $0$ and $(f(x^{\ast}),0,...,0)$ such that $F\vert_{U}: U \rightarrow V$ is a bijection. By the same argument as in $1$-d case, we know that the Jacobian of $F$ has to be singular. 

Since $\lbrace \bigtriangledown h\_{i}(x^{\ast}) \rbrace_{i=1}^{m}$ are linearly independent, $m \leq n$. 

Case I: $n=m$. Then  $\lbrace \bigtriangledown h\_{i}(x^{\ast}) \rbrace_{i=1}^{m}$ is a basis of $R^{n}$. $\bigtriangledown f$ must be in span of $\lbrace \bigtriangledown h_{i}(x^{\ast})\brace_{i}$. 

Case II: $n>m$.  We know that \eqref{eqn:JF} is singular for any choice of $d_{i}$. Thus, we pick $d_{1} = \bigtriangledown f(x^{\ast})$ and $d_{i+1} = \bigtriangledown h_{i}$ for $i\geq 1$. Since we know that for any matrix $D$, $rank(DD^{T}) = rank(D)$. Thus, we know that the matrix

\begin{align}
\begin{pmatrix} \bigtriangledown f(x^{\ast}) \\\\\\\\ \bigtriangledown h_1(x^{\ast}) \\\\\\\\ \vdots \\\\\\\\  \bigtriangledown	h_{m}(x^{\ast})  \end{pmatrix}
\end{align} 
is singular, that is not full rank. Since $m+1 \leq n$, we know that this is a fat matrix and the row has to be linearly dependent. Also, since $\bigtriangledown h_{i}(x^{\ast})$ for $i=1,...,m$ are linear dependent, $\bigtriangledown f(x^{\ast})$ must be in the span of $\lbrace \bigtriangledown h_{i}(x^{\ast})\rbrace_{i}$. \\[\tag*{$\blacksquare$}\\] 

### Exercise 1.4

**Proof:** 

![Light reflection](../../../assets/images/ex1_4.svg )

Let $y = (y_1,y_2)$, $z=(z_1, z_2)$. We want to solve 
\begin{align}
\min_{x} &~ \Vert x-y\Vert_{2} + \Vert x-z\Vert_{2} \\\\\\\\
\text{subject to } & h(x) = 0. 
\end{align} 

The Lagrange is 
\begin{align}
L(x, \lambda) =  \Vert x-y\Vert_{2} + \Vert x-z\Vert_{2} + \lambda h(x).
\end{align} 
with gradient
\begin{align}
\bigtriangledown L_{x} = \frac{x-y}{\Vert x-y\Vert } + \frac{x-z}{ \Vert x-z\Vert } +   \lambda \bigtriangledown h (x). 
\end{align} 

According to the first-order necessary condition, the optimal solution $x^{\ast}$ satisfies $\bigtriangledown L_{x}(x^{\ast}) = 0$, that is
\begin{align} 
\frac{y-x^{\ast}}{\Vert x^{\ast}-y\Vert } + \frac{z-x^{\ast}}{ \Vert x^{\ast}-z\Vert } =  \lambda \bigtriangledown h (x^{\ast}).  \label{ex_1_4}
\end{align} 

Case 1: $\lambda \not= 0$. Then, \eqref{ex_1_4} implies $\bigtriangledown h(x^{\ast})$ divides the angle between $\vec{xy}$ and $\vec{xz}$ evenly. 

Case 2: $\lambda= 0$. Then, $h(x^{\ast})$ lies on the line segment connecting $y$ and $z$. We argue that this is the case where $y$ and $z$ are not on the same side of $h(x)$.  \\[\tag*{$\blacksquare$}\\]

### Linearity of Gateaux derivative <a name="gateaux"></a> 

In Section 1.3.2 of the book, the author said that the first variation of $J$, which is an analogous  of Gateaux derivative in finite dimension, needs to be a liear functional. I am wondering if linearity is a property of Gateaux derivative. 

Actually the answer to this question depends the context, according to [Wiki page](https://www.wikiwand.com/en/Gateaux_derivative). Generally speaking, Gateaux derivative is not necessarily linear or continuous, but some definition of Gateaux differential requires the linearity, as in our book.  

Later, we will see that though Gateaux derivative may not be linear, Frechet derivative by definition needs to be a bounded linear transformation. 

### Exercise 1.5 and 1.6

**Proof:** 

\begin{align}
\delta J \vert_{y}( \eta) &=  \lim_{ \alpha \rightarrow 0} \frac{1}{ \alpha} \left( \int_{0}^{1}g(y(x) + \alpha \eta(x)) dx - \int_{0}^{1}g(y(x)) dx  \right)\\\\\\\\
&=  \lim_{ \alpha \rightarrow 0}  \int_{0}^{1} \frac{g(y(x) + \alpha \eta(x)) - g(y(x))}{ \alpha}dx 
\end{align} 
We can use [Leibniz integral rule](https://www.wikiwand.com/en/Leibniz_integral_rule) to exchange the order of limit and integral sign. The technical conditions checked for applying Leibniz integral rule are the continuity of $g(y(x) + \alpha \eta(x))$ in $\alpha$ and $x$ and the continuity of $dg(y(x) + \alpha \eta(x))/ d \alpha = g'(y(x)+ \alpha \eta(x)) \eta(x)$.  Since $g\in \mathcal{C}^{1}$ and $y, \eta\in \mathcal{C}^{0}$, those technical conditions are satisfied (the ideas behind Leibniz integral rule are mean value theorem and dominated convergence theorem). Thus, we have 
\begin{align}
\delta	J \vert_{y} ( \eta ) = \int_{0}^{1} g'(y(x) ) \eta(x) dx
\end{align} 


Now we suppose that $g\in \mathcal{C}^{2}$ and derive the second variation of $J$. By definition,
\begin{align}
\delta^{2} J \vert_{y} ( \eta) &= \lim_{ \alpha \rightarrow 0} \frac{J(y+ \alpha \eta)- J(y) - \delta J\vert_{y}( \eta) \alpha}{ \alpha^{2}} \\\\\\\\
&= \lim_{ \alpha \rightarrow 0} \frac{1}{\alpha^{2}} \int_{0}^{1} g(y(x)+ \alpha \eta) - g(y(x)) - g'(y(x)+ \alpha \eta) \eta(x) \alpha dx 
\label{ex_1_5_dJ_1}
\end{align} 

To make things easier, let's first ignore any potential technical conditions and compute the second derivative of $J(y + \alpha \eta)$ with respect to $\alpha$. 

\begin{align}
\delta^{2} J\vert_{y} (\eta) &=  \frac{1}{2} \frac{d^{2}}{d \alpha^{2}} J(y+  \alpha \eta)\bigg\vert_{\alpha=0}\\\\\\\\
&= \frac{1}{2}\frac{d}{d \alpha} \int_{0}^{1} g'(y(x) + \alpha \eta(x)) \eta(x) dx \bigg\vert_{\alpha=0}\\\\\\\\
&= \frac{1}{2} \int_{0}^{1}   g''(y(x) + \alpha \eta) \eta(x)^{2} dx \bigg\vert_{\alpha=0}\\\\\\\\
&= \frac{1}{2}	\int_{0}^{1} g''(y(x)) \eta(x)^{2} dx. \label{ex_1_5_dJ_2}
\end{align} 

Clearly, the last row is a quadratic functional. However,  we still need to show that \eqref{ex_1_5_dJ_2} is indeed equal to \eqref{ex_1_5_dJ_1}. To do that, we need some technical assumptions.

We have the second-order Taylor expansion of $g$ with respect to $\alpha$:

\begin{align}
g(y(x) + \alpha \eta(x)) = g(y(x)) + g'(y(x)) \eta \alpha + \frac{1}{2} g''(y(x)) \eta^{2} \alpha^{2} + o( \alpha^{2}). \label{ex_1_5_g_expan}
\end{align} 

We plug the expansion of $g$ into \eqref{ex_1_5_dJ_1} and get

\begin{align}
\delta^{2} J\vert_{y}( \eta) = \lim_{ \alpha \rightarrow 0} \frac{1}{ \alpha^{2}} \int_{0}^{1} \frac{1}{2} g''(y(x)) \eta^{2} \alpha^{2} + o( \alpha^{2}) dx 
\end{align} 
By continuity of $g$, $g'$, $y$, $\eta$, we know that $1/2 g''(y(x)) \eta^{2} \alpha^{2} + o( \alpha^{2})$ is continuous and bounded for $x\in [0,1]$, by Weierstrass theorem. Thus, by dominated convergence theorem, we can exchange the limit and the integral and get

\begin{align}
\delta^{2} J\vert_{y} (\eta) = \int_{0}^{1} \frac{1}{2} g''(y(x)) \eta^{2} dx.
\end{align} 

\\[\tag*{$\blacksquare$}\\]


### Necessary conditions with Frechet derivative 

The book makes a remark that the first and second-order derivative can also be defined using Frechet derivative. But it is not clear how the first and second order conditions are derived from Frechet derivation. 

First, we need a formal definition of the Frechet derivative. 

<div class="definition" name="Definition "></div> (Optimization by Vector Space Methods, David G. Luenberger, Page 172)

Let $T$ be a transformation defined on an open domain $D$ ina normed space $X$ and having range in a normed space $Y$. If for fixed $x\in D$ and each $h\in X$ there exists $\delta T(x; h)\in Y$ which is linear and continuous with respect to $h$ such that 

\begin{align}
\lim_{\Vert h\Vert \rightarrow 0} \frac{ \Vert  T(x+h) - T(x) - \delta T (x;h)\Vert }{\Vert h\Vert } = 0
\end{align} 

then $T$ is said to be Frechet differentiable at $x$ and $\delta T(x;h)$ is said to be  the Frechet differential of $T$ at $x$ with increment $h$. \\[\tag*{$\blacksquare$}\\]

Later in Luenberger's book,  $\delta T(x;h)$ is denoted by $\delta(T(x;h))=A_{x}h$ where $A_{x}$ is a bounded linear operator from $X$ to $Y$. If $T$ is Frechet differentiable on $D \subseteq X$, the transformation $T':D \rightarrow B(x,Y)$, $T' (x) =A_{x}$, is called the Frechet derivative of $T$.

<div class="theorem" name="Theorem "></div>

Suppose that $y^{\ast}$ is a minimum and  
\begin{align}
J(y^{\ast}+ \eta) = J(y^{\ast}) + \delta J \vert_{y^{\ast}}( \eta) + o( \Vert \eta\Vert),
\end{align} 
that is  $\delta J\vert_{y}(\eta)$ is the Frechet differential of $J$ at $y$ with increment $\eta$.

Then $\delta J \vert_{y^{\ast}}(\eta)=0$ for all $\eta\in V$.

**Proof:** 
Suppose that there exists a $\eta_0$ such that $\delta J \vert_{y^{\ast}}(\eta_0)\not=0$. WLOG, assume $\delta J \vert_{y^{\ast}}(\eta_0)$ is less than $0$ (otherwise take $-\eta_0$). We construct $\eta_{n} = \eta_0/n$. Then, we know that $\eta_{n} \rightarrow 0$. Thus, by definition,
\begin{align}
\lim_{n \rightarrow	0} \frac{ \Vert T(x+\eta_0/n)- T(x) -\delta T\vert_{y}(\eta/n)\Vert }{\Vert\eta_0\Vert/n  } = 0
\end{align} 
Take $\epsilon = \vert \delta T \vert_{y}(\eta_0) \vert /2 \Vert \eta_0\Vert$. There exists $N \in \mathbb{N}$ such that for all $n \geq N$, 
\begin{align}
\Vert T(x+\eta_0/n)- T(x) -\delta T\vert_{y}(\eta/n)\Vert \leq  \epsilon \Vert \eta_0\Vert /n  = \vert \delta T \vert_{y}( \eta_0) \vert / (2n)\\\\\\\\
T(x+\eta_0/n)- T(x) -\delta T\vert_{y}(\eta/n) \leq \vert \delta T \vert_{y}( \eta_0) \vert / (2n)\\\\\\\\
T(x+\eta_0/n)\leq  T(x)+ \delta T\vert_{y}(\eta)/n +  \vert \delta T \vert_{y}( \eta_0) \vert / (2n) < T(x).
\end{align} 
\\[\tag*{$\blacksquare$}\\] 

<div class="theorem" name="Theorem "></div>

Suppose that 

\begin{align}
J(y^{\ast}+ \eta) = J(y^{\ast}) + \delta J \vert_{y^{\ast}}( \eta) + \delta^{2} J \vert_{y} (\eta)+ o( \Vert \eta\Vert^{2}).
\end{align} 

If $\delta J \vert_{y^{\ast}}(\eta)=0$ and $\delta^{2}J\vert_{y^{\ast}} (\eta) \geq \lambda \Vert \eta\Vert^{2}$ for any $\eta\in V$, then $y^{\ast}$ is a minimum.

**Proof:** 
\begin{align}
J(y^{\ast}+ \eta) = J(y^{\ast}) + \delta^{2} J \vert_{y} (\eta)+ o( \Vert \eta\Vert^{2}) \geq  J(y^{\ast}) + \lambda \Vert \eta \Vert^{2} + o( \Vert \eta\Vert^{2}).
\end{align} 

For $\eta$ small enough, we can have
\begin{align}
\frac{o(\Vert \eta\Vert^{2})}{ \Vert \eta\Vert^{2}} < \lambda
\end{align} 
That is, $\lambda \Vert \eta\Vert^{2} + o(\Vert \eta\Vert^{2})>0$ and thereby $J(y^{\ast} + \eta )> J(y^{\ast})$. \\[\tag*{$\blacksquare$}\\]

### Exercise 1.7

 
Consider the space $C[0,1]$ of continuous functions equipped with sup norm. Convergence in $C[0,1]$ is the same as uniform convergence in calculus. Define $A = \lbrace f\in C[0,1] \mid \Vert f\Vert =1\rbrace $ the unit circle. $A$ is closed and bounded. Now, $\lbrace f_{n} = x^{n}\rbrace_{n=1}^{\infty}$ is a sequence contained in $A$, which does not have a convergent subsequence. Thus, $A$ is closed and bounded, but not compact. 

Define 

\begin{align}
J(f) = \int_{0}^{1} \vert f(x) \vert  dx.
\end{align} 

To show $J$ is continuous, note that

\begin{align}
\vert J(f) - J(g) \vert = \vert \int_{0}^{1} f- g \vert \leq  \int_{0}^{1} \vert f-g \vert \leq \Vert f-g\Vert. 
\end{align} 

That is, $J$ is Lipschitz continuous. 

It is clearly that the infimum of $J$ over $A$ is $0$ ($J(x^{n}) \rightarrow 0$ as $n$ goes to $\infty$), but there exists no $f$ in $A$ such that $J(f) = 0$, by continuity of $f$. 

##  Chapter 2

### Exercise 2.2

$y = 0$ is a weak minima. For any $z$ such that $\Vert z-y\Vert_{1} \leq 0.5$, $\vert z' \vert  \leq 0.5$. Thus, $(z'(x))^{2} (1 - (z'(X))^{2}) \geq 0$. Therefore,

\begin{align}
J(x) = \int_{0}^{1} \left( z'(x) \right)^{2} (1- \left( z'(x) \right)^{2}) dx \geq 0 = J(y).
\end{align} 

By definition, $y$ is a weak minima.

$y=0$ is not a strong minima, because for any $\epsilon > 0$, there exists $z\in \mathcal{C}^{0}$ such that $\vert z(x)\vert \leq \epsilon$ for all $x\in [0,1]$ but $\vert z'(x) \vert = 2$ almost everywhere (that is a triangular wave signal). For such a $z$, 
\begin{align}
J(z) = \int_{0}^{1} 4 \cdot -3 dx = -12.
\end{align} 



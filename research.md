---
layout: page
title:  Research 
permalink: /research/
---

My research is focused on enhancing the safety of autonomous systems, such as self-driving vehicles and mobile robots, using theoretical or algorithmic tools from system theory,  optimization, computational geometry, and machine learning.  Beyond safety control, part of my research aims at understanding fundamental limitations of learning-based methods for prediction and control, so that we know when to apply those methods and how to improve their performance and reliability. Several research projects I have undertaken are summarized below. 

## On-going Projects
### Scalable Safety Controller Synthesis by Exploiting Structures


<div class="image" style="float:right; padding: 5px; height: 300px">
    <iframe style="float:right; padding: 5px" src="https://www.youtube.com/embed/mB9ir0R9bzM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <p> Safe online planning in unknown environment using implicit RCIS</p>
</div>

Safety control methods often do not scale to high-dimensional systems, limiting their practical applicability. In this project,  we address this challenge by leveraging structures in the dynamics, or imposing structures in control. Specifically, we propose one-shot approaches of computing implicit *robust controlled invariant sets (RCISs)*, which provides guarantees on the permissiveness of the resulting RCIS and demonstrates scalability to systems with up to two hundred states. 
Additionally, for systems with special structures like input delay, we show its maximal RCIS is embedded in a lower dimensional system, which enables scalable safety control synthesis for systems with hundreds of input delay steps. 


- Anevlavis, Tzanis\*, Zexiang Liu\*, Necmiye Ozay, and Paulo Tabuada. "[Controlled Invariant Sets: Implicit Closed-form Representations and Applications](https://arxiv.org/pdf/2107.08566)", IEEE Transactions on Automatic Control (TAC), 2023 (to appear)

- Liu, Zexiang, Liren Yang, and Necmiye Ozay. "[Scalable Computation of Controlled Invariant Sets for Discrete-Time Linear Systems with Input Delays](https://arxiv.org/abs/2003.04953)", Proc. American Control Conference (ACC), Denver, CO, July 2020.

### Safety Control Beyond the Maximal Controlled Invariant Set 

<div class="image" style="float:right; padding: 5px; height: 400px;">
    <iframe  style="float:right; padding: 5px" src="https://www.youtube.com/embed/EDRQq_q4LIE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <p> Opportunistic safety control vs robust safety control on a drone</p>
</div>
Many existing safety control methods, if not all, assume that the system starts within a robust controlled invariant set (RCIS), and fail to generate control inputs once the system deviate from the maximal RCIS. This makes those methods vunerable to unmodeling dynamics or unexpected disturbances that can cause accidental exit of the maximal RCIS. In this project, we first conduct a formal analysis to determine the expanded safe operation region beyond the maximal RCIS by incorporating predictions on disturbances. In addition, we introduce a novel safety control framework, called opportunistic safety control, that operates beyond the maximal RCIS by minimally weakening disturbance constraints. 


- Liu, Zexiang and Necmiye Ozay, "[Quantifying the Value of Preview Information for Safety Control](https://arxiv.org/abs/2303.10660)" arXiv prepint arXiv:2303.10660 (2023)

- Liu, Zexiang, Hao Chen, Yulong Gao, and Necmiye Ozay, "[Opportunistic Safety Outside the Maximal Controlled Invariant Set](https://web.eecs.umich.edu/~necmiye/pubs/LiuCGO_draft23.pdf)", submitted for journal publication, 2023 [(website)](https://haochern.github.io/OpSafe/)

<div class="image" style="float:right; padding: 5px; max-width: 300px; max-height: 400px;">
    <img src="../../assets/images/koopman.png" width="80%" height="80%"/>
    <p> 1D example showing a linear immersion may  exist for systems with multiple  equilibria.</p>
</div>

### Fundamental Limits of Learning Dynamics and Control

Learning-based methods have demonstrated promising performance in prediction and control of complex dynamics systems. In this project, we aim at uncovering some inherent limits in those methods. Our analysis involves studying the sample complexity of identifying ARX models with ordinary least squares, revealing a self-regularization property in over-parameterized models. We also present sufficient conditions where linear representations of nonlinear dynamics do not exist and how it impacts methods aiming at learning linear representations from data.


- Du, Zhe\*, Zexiang Liu\*, Jack Weitze, and Necmiye Ozay. "[Sample Complexity Analysis and Self-regularization in Identification of Over-parameterized ARX Models.](https://deepblue.lib.umich.edu/handle/2027.42/174145)", Proc. 61th IEEE Conference on Decision and Control (CDC), Cancun, Mexico, December 2022.
 
- Liu, Zexiang, Necmiye Ozay, and Eduardo Sontag, "[On the Non-Existence of Immersions for Systems with Multiple Omega-Limit Sets](http://ftp.eecs.umich.edu/~necmiye/pubs/LiuOS_ifac23.pdf)", IFAC World Congress, Yokohoma, Japan, July 2023 (to appear) 

<br>
<br>
<br>
<br>

---
## Previous Projects
A list of projects I participated during my undergraduate and master program can be found in [here](https://sites.google.com/site/zexiangliu2016/project).

---

<!-- ## Some Fun Projects  -->




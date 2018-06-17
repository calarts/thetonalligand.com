+++
date = "2016-11-06T13:00:25+05:30"
title = "Combinatorial Signal Perception in the BMP Pathway"
description = "A single cell can perform different computations depending on which combinations of receptors and ligands are present by harnessing promiscuous receptor-ligand interactions in the BMP pathway."
image = ""
+++

http://dx.doi.org/10.1016/j.cell.2017.08.015


## Authors
Yaron E. Antebi[^1], James M. Linton[^1], Heidi Klumpe[^1],[^2], Christina Su, Reed McCardell, Michael B. Elowitz[^1],[^2],[^3],[^4], *

[^1]: Division of Biology and Biological Engineering, California Institute of Technology, Pasadena, CA 91125, USA
[^2]: Division of Chemistry and Chemical Engineering, California Institute of Technology, Pasadena, CA 91125, USA
[^3]: Howard Hughes Medical Institute and Department of Applied Physics, California Institute of Technology, Pasadena, CA 91125, 

[^4]: Lead Contact
* Correspondence: melowitz@caltech.edu


## Highlights
- Cells perform complex computations on combinations of BMP ligands
- A mathematical model shows how computations arise from receptor-ligand promiscuity
- A single cell type can perform different computations on different ligand pairs
- Changes in receptor profiles can reprogram the computations. 



## SUMMARY

The bone morphogenetic protein (BMP) signaling pathway comprises multiple ligands and receptors that interact promiscuously with one another and typically appear in combinations. This feature is often explained in terms of redundancy and regulatory flexibility, but it has remained unclear what signal-processing capabilities it provides. Here, we show that the BMP pathway processes multi-ligand inputs using a specific repertoire of computations, including ratiometric sensing, balance detection, and imbalance detection. These computations operate on the relative levels of different ligands and can arise directly from competitive receptor-ligand interactions. Furthermore, cells can select different computations to perform on the same ligand combination through the expression of alternative sets of receptor variants. These results provide a direct signal-processing role for promiscuous receptor-ligand interactions and establish operational principles for quantitatively controlling cells with BMP ligands. Similar principles could apply to other promiscuous signaling pathways.

## INTRODUCTION
Many intercellular signaling pathways, such as bone morphogenetic protein (BMP), Wnt, Notch, and JAK-STAT, exhibit a curious feature. Rather than using a single ligand and receptor, these systems comprise multiple ligand and receptor variants that interact promiscuously with one another to combinatorially generate a broad set of distinct signaling complexes. These complexes activate the same intracellular targets and therefore appear to operate redundantly. Previous work has suggested that the use of redundant ligands and receptors offers regulatory flexibility (Llimargas and Lawrence, 2001) or provides robustness to genetic variation (Dudley and Robertson, 1997; Edson et al., 2010). However, it is also possible that this apparent redundancy provides specific signal-processing capabilities (Mueller and Nickel, 2012; Murray, 2007; Schmierer and Hill, 2007; Wodarz and Nusse, 1998).
The BMP pathway is an ideal example of promiscuous receptor-ligand architecture.

![Figure 1A](/img/elowitz_1a.png)

In mammalian species, it includes more than 20 distinct ligands, 4 type I receptors (BMPR1A, BMPR1B, ACVR1, and ALK1), and 3 type II receptors (BMPR2, ACVR2A, and ACVR2B). These components could interact combinatorially to form hundreds of distinct receptor-ligand signaling complexes, each composed of 2 type I and 2 type II receptors binding a dimeric ligand. Active signaling complexes phosphorylate SMAD1, 5, and 8, which, together with SMAD4, translocate to the nucleus to regulate target gene expression (Heldin et al., 1997; Massague ́, 1998).
Two features of the BMP pathway suggest the possibility of more complex signal processing. First, in most contexts, multiple BMP ligands and receptors appear in overlapping spatiotemporal distributions and therefore appear to be utilized in combinations (Danesh et al., 2009; Faber et al., 2002; Lorda- Diez et al., 2014; Salazar et al., 2016). For example, BMP9 and BMP10 co-regulate the formation of the vasculature (Chen et al., 2013; Ricard et al., 2012), while BMP2, BMP4, GDF5, and GDF6 operate together in joint development (Storm and Kings- ley, 1996). Similarly, at least six distinct ligands and three receptors are involved in kidney development (Simic and Vukicevic, 2005). Second, individual ligands preferentially signal through particular receptors. For example, ALK1 is preferentially activated by BMP9 and BMP10 in endothelial cells (David et al., 2007); GDF5 signals mainly through BMPR1B and not BMPR1A (Nishitoh et al., 1996); and BMP2/4 and BMP6/7 signal through distinct receptors to induce mesenchymal stem cell differentiation (Lavery et al., 2008).

The ability to form many competing complexes with distinct affinity and activity preferences could, in principle, allow the system to perform complex signal processing. However, we lack a general quantitative framework to understand how the BMP pathway perceives combinations of ligands, how such combinatorial perception emerges from underlying molecular interactions, and whether and how distinct cell types respond differently to the same ligand combinations.

Here, combining theoretical and experimental approaches, we show that the BMP pathway perceives ligand combinations through a specific family of multi-dimensional response profiles. These profiles allow the pathway to perceive relative, in addition to absolute, levels of multiple ligands. Mathematical modeling further reveals that these response profiles can arise from the interplay between receptor-ligand binding affinities and the quantitative activity of each complex. The former determine what complexes form, while the latter determines how the activities of those complexes combine to establish overall pathway activity. Critically, we find that the response profiles differ qualitatively and quantitatively depending on the expression levels of the different receptor variants. As a result, different cell types, with distinct receptor expression profiles, can respond to distinct features in the multidimensional space of ligand concentrations. Together, these results establish a general framework for analyzing the BMP signaling pathway and reveal a more general design principle for biological signaling systems containing promiscuous receptor-ligand interactions.

## RESULTS
### Theoretical Framework

It is useful to consider two multi-dimensional spaces to analyze the way in which the BMP pathway uses multiple receptor variants to integrate signals from multiple dimeric ligand species. Cellular environments, specified by the concentrations of each of the dimeric ligand species, can be represented as points in a multi-dimensional ‘‘ligand space.’’ 

![Figure 1B](/img/elowitz_1b.png)

Similarly, individual cell types typically co-express multiple type I and type II receptors (Cheifetz, 1999) and can, therefore, be represented as points in a 7-dimensional ‘‘receptor space’’ specified by the individual expression levels of each receptor. 

![Figure 1C](/img/elowitz_1c.png)
This space is, more precisely, the combination of a 3-dimensional space for the type I receptors and a 4-dimensional space for the type II receptors.

Not every point in ligand or receptor space may be realized biologically, and other secreted and intracellular factors further modulate BMP signaling in specific contexts (Balemans and Van Hul, 2002; Zakin and De Robertis, 2010). Nevertheless, understanding signal processing by the BMP pathway requires determining how multiple ligands combine, or integrate, to control the pathway activity in a cell with a given receptor configuration (Figure 1D) and whether distinct cells, expressing specific combinations of receptors, can integrate the same ligands in qualitatively different ways.

![Figure 1E: BMP Ligands Exhibit Combinatorial Effects](/img/elowitz_1e.png)


To address these questions experimentally, we set out to measure the dependence of BMP pathway activity on individual ligands and ligand combinations. Ligand monomers form covalent homodimers and heterodimers with distinct activities (Israel et al., 1996; Neugebauer et al., 2015; Valera et al., 2010). Here, we focused on mixtures of distinct homodimeric ligands, which have been shown to produce non-additive responses in some systems (Ying et al., 2000, 2001; Ying and Zhao, 2001; Ac ̧il et al., 2014). Mixtures of heterodimeric ligands could be analyzed similarly.

To quantitatively measure BMP pathway activity, we constructed a reporter cell line by stably integrating a histone 2B (H2B)-Citrine fluorescent reporter driven by a BMP response element (BRE) specific for SMAD1/5/8 (Korchynskyi and ten Dijke, 2002) into the NAMRU mouse mammary gland (NMuMG) epithelial cell line, in which the BMP pathway can be activated without inducing differentiation (Piek et al., 1999). Reporter expression correlated with phosphorylation of SMAD1/5/8 and with endogenous BMP target gene expression (Figures S1A–S1C) and exhibited a unimodal distribution for each ligand concentration.

![Figure 1D](/img/elowitz_1d.png)

After an elevated transient response to BMP addition, pSMAD levels reached a steady state within 90 min (Figure S1E). The steady-state behavior was also reflected in reporter fluorescence, which accumulated at an approximately constant rate over time for up to 48 hours.

Figure S1F
---
title: "HMOs Cell Factory — Conference Notes"
meta_title: ""
description: "Conference notes on engineering HMOs-producing cell factories: DBTL framework, multi-scale metabolic models, gene circuits, and 2'-FL optimization."
date: 2024-06-15T10:00:00+08:00
image: ""
categories: ["Research"]
author: "KeLin Cheng"
tags: ["HMOs", "Cell Factory", "Metabolic Engineering", "DBTL", "Synthetic Biology"]
draft: false
---

Human milk oligosaccharides (HMOs) are a class of structurally diverse complex carbohydrates that serve as prebiotics, anti-adhesive antimicrobials, and immunomodulators in infant nutrition. Industrial production of HMOs via microbial fermentation has attracted significant interest, yet several bottlenecks remain: low substrate specificity of glycosyltransferases, difficult co-regulation of precursor synthesis pathways, and unclear key regulatory targets. This post summarizes conference notes from LiuLong (JiangNan University) on a series of strategies addressing these challenges through an integrated synthetic biology workflow.

## DBTL Framework for Enzyme Engineering

A key limitation in HMOs biosynthesis is the poor catalytic efficiency and substrate specificity of fucosyltransferases. To overcome this, an integrated **Design-Build-Test-Learn (DBTL)** iterative framework was developed, combining:

- **Molecular dynamics simulations** to predict mutation hotspots and conformational flexibility;
- **Quantum mechanics calculations** to model transition states and substrate binding energetics;
- **Structural biology analysis** (X-ray crystallography and cryo-EM) to guide rational design.

By iterating through this pipeline, the team enhanced enzyme substrate specificity and catalytic activity, significantly reducing the formation of undesired byproducts such as difucosyllactose (DFL).

## Multiplex Dual Base Editing (MultiduBE)

Traditional directed evolution relies on random mutagenesis, which is labor-intensive and low-throughput. To enable more efficient enzyme engineering, a **Multiplex Dual Base Editor (MultiduBE)** was constructed using CRISPR/dCas12a. This system:

- Enables simultaneous C-to-T and A-to-G base conversions at multiple genomic loci;
- Performs targeted *in-situ* saturation mutagenesis without requiring double-strand breaks;
- Facilitates rapid construction of focused mutant libraries for screening improved enzyme variants.

## Multi-Scale Metabolic Network Model: etiBsu1209

Genome-scale metabolic models (GEMs) are powerful tools for predicting genetic interventions, but conventional GEMs lack proteome and thermodynamic constraints. Using the automated model-building software **Model-Tool**, a multi-scale integrated model, **etiBsu1209**, was developed that incorporates:

- **Enzyme constraint** (kcat values and protein abundance limits);
- **Thermodynamic constraints** (ΔrG'° for each reaction, eliminating infeasible flux loops);
- **Transcriptional regulatory networks** (TF-gene interactions).

The model achieved a prediction accuracy of **74.3%** for gene essentiality and growth phenotypes.

## Machine Learning-Enhanced Multi-Omics Model (iBsu1209-ME)

To further improve predictive power, 34 ensemble machine learning models were trained on high-quality multi-omics datasets (transcriptomics, proteomics, metabolomics, and fluxomics). These were integrated into the metabolic modeling framework as **iBsu1209-ME**, achieving a prediction accuracy of **87.9%** for cellular phenotypes. The ML layer effectively captures nonlinear genotype-phenotype relationships that purely mechanistic models miss.

## Temperature-Sensitive Gene Circuits

Dynamic control of metabolic pathways is essential to balance cell growth and product formation. Using the thermolabile repressor **CI857**, the team engineered:

- **Temperature-sensitive transcription regulatory elements** that respond to temporal temperature shifts;
- **Single-input multi-output circuits** that simultaneously regulate multiple target genes with a single temperature signal;
- **Bidirectional gene circuits** capable of both activation and repression depending on temperature setpoints.

This approach decouples the growth phase (low temperature, biomass accumulation) from the production phase (elevated temperature, pathway induction) without chemical inducers.

## Programmable Biomolecular Condensates

Subcellular organization of metabolic enzymes can enhance pathway flux through substrate channeling and reduced intermediate diffusion. Leveraging **liquid-liquid phase separation (LLPS)** mechanisms, a series of synthetic intrinsically disordered proteins (SIDPs) were designed via a modular building-block strategy. These SIDPs self-assemble into membraneless organelles that co-localize multiple enzymes of the 3-FL synthesis pathway, achieving spatial coupling of metabolic fluxes within the condensate.

## Cascade Gene Circuit-Based High-Throughput Screening

To link metabolite concentration to a selectable fluorescent output, **cascade gene circuits** were designed that amplify the metabolite-fluorescence signal conversion. Key features:

- **5,184 crRNA combinations** screened in a pooled library format;
- Metabolic pathway activity fine-tuned through combinatorial regulation;
- **Flow cytometry sorting coupled with automated colony picking** to isolate high-yield strains.

Additionally, a **2'-FL whole-cell biosensor** was constructed. When paired with droplet microfluidics, it successfully identified FutC mutants that increased 2'-FL yield by **1.8-fold** without producing the byproduct DFL.

## 2'-Fucosyllactose (2'-FL) Cell Factory: Construction and Optimization

The culmination of the above strategies was applied to construct a high-performance 2'-FL producer. The engineering workflow included:

1. **Pathway assembly**: Heterologous GDP-fucose synthesis pathway introduced into *E. coli*;
2. **Transporter engineering**: Optimization of lactose uptake and 2'-FL efflux;
3. **Precursor supply enhancement**: Strengthening of the pentose phosphate pathway and GTP biosynthesis;
4. **Cofactor balancing**: NADPH regeneration systems to support reductive biosynthesis steps.

For **3-FL production**, the synthetic pathway was further optimized by reconstructing multi-copy heterologous α-1,3-fucosyltransferase (FutM) and applying the artificial membraneless organelle system to co-localize pathway enzymes. The shake-flask 3-FL titer reached **8.2 g/L**.

Final results in a 3-L bioreactor: **2'-FL + 3-FL combined titer of 30.1 g/L** using glycerol as the sole carbon source.

<div class="callout callout-summary">

**Summary**

This work demonstrates a comprehensive synthetic biology pipeline for HMOs production — from enzyme engineering (DBTL + MultiduBE) and systems-level modeling (etiBsu1209 → iBsu1209-ME) to dynamic regulation (temperature-sensitive circuits) and spatial organization (LLPS condensates). The modular nature of these tools suggests they can be adapted to other nucleotide-sugar-derived natural products beyond HMOs.

</div>

<div class="callout callout-ref">

**References**

- LiuLong (JiangNan University). Engineering HMOs-producing cell factories: from enzyme design to metabolic network models. Presentation at the Tianjin Synthetic Biology Conference, June 2024.
- Bych, K., et al. (2019). Production of HMOs by engineered *E. coli*. *Current Opinion in Biotechnology*, 56, 130–137.
- Zhu, Y., et al. (2022). Recent advances in metabolic engineering of *Escherichia coli* for HMOs production. *Biotechnology Advances*, 59, 107965.

</div>

<div class="callout callout-question">

**Discussion Questions**

1. The DBTL framework achieved significant improvement in enzyme specificity. What are the main limitations of relying solely on computational predictions, and how would you design experiments to validate *in silico* results?
2. If you were to extend the multi-scale model (etiBsu1209) to predict optimal SynCom compositions for HMOs production, what additional constraints and data types would you need to incorporate?

</div>

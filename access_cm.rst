======================
ACCESS-CM Optimization
======================

The following document details the proposed goals of the ACCESS optimisation
project in the areas of climate and ocean research.


Background
==========

ACCESS-CM is the climate model of the ACCESS model suite, consisting of the UM,
MOM and CICE submodels, and the OASIS3-MCT coupler library.  All models include
custom modifications to support OASIS communication and additional conversions
of the coupling fields.  The model has primarily been used to produce
Australian submissions to CMIP5, which were regarded as highly successful
contributions.  It is also been used by BoM and ARCCSS as a research tool in
various studies.

ACCESS-OM is an intermediate model which replaces the UM model with the fixed
CORE atmospheric field data sets.  It is primarily used for testing within
CSIRO during CM development, although it has also been used in some research
projects, such as CSIRO's BGC simulations (WOMBAT).

The ARCCSS ("CoE") ocean research group is conducting 0.25°-resolution ocean
experiments with the GFDL coupled model based on MOM and SIS, the internal GFDL
sea ice model.  The model has been used as part of several well-received
academic publications, and remains an integral part of ongoing research.

OFAM is an ocean data assimilation model used and developed within CSIRO and
BoM.  The current version is based on a 0.1° grid with near-global coverage
excepting the Arctic seas.  The model is used operationally within BoM and
research within CSIRO.


Motivation
==========

As part of preparation for CMIP6, the ACCESS-CM and ACCESS-OM models are
currently in a state of redevelopment, and they lack stable experiment
configurations that can used for scaling analysis.  Any formal profiling and
scaling work at this stage may not reflect the future state of these projects.

Both CSIRO and ARCCSS seek to unite the ACCESS-CM and ACCESS-OM projects under
a single framework, motivated by the following factors:

* Both groups wish to run experiments at higher grid resolutions for academic
  research, seasonal prediction, and potential CMIP6 submissions.

* There are known bottlenecks in the MOM-SIS configuration related to its its
  sea ice and coupling components.  Resolving these bottlenecks can be address
  by replacing them with optimised ARCCSS components.

* A common framework ensures that both projects receive greater attention, and
  will streamline support for these models on NCI platforms.

* Adoption of ACCESS-OM within ARCCSS will allow greater collaboration between
  CSIRO, BoM, and ARCCSS, as well as other partners within the Australian
  research community.

Active participation of NCI in this transition will ensure that scalability
plays a key role in the development of ACCESS-CM, and that both projects will
receive sufficient computational resources and support from NCI.


Proposed Goals
==============

We propose that NCI contribute to the projects listed below by providing
oversight on their performance and contributing to their development in the
following ways:

* Ensure that these models receive sufficient access to system resources and
  technical expertise within NCI to quickly address any technical issues

* Assess and document the resource requirements for these models, as part of
  vendoring for the next machine

* Investigate the scalability during and after development

* Identify the scaling bottlenecks and limits to scalability

* Patch model source codes to resolve bottlenecks if possible


Porting
-------

The following are immediate potential goals, some of which are near completion:

* Port the 0.1° global MOM-SIS model to Raijin, and scale beyond 2500 CPUs

* Convert 0.25° global MOM-SIS to an updated ACCESS-OM (MOM-CICE) framework

* Convert 0.1° global MOM-SIS to updated ACCESS-OM framework

Once these models have reached a state where they can be used for research,
focus will shift to the following projects:

* Integration of updated ACCESS-OM into an updated ACCESS-CM framework

* Porting N96/1.0° ACCESS-CM to the updated ACCESS-CM framework

* Development of a N216/0.25° ACCESS-CM model


Consolidation
-------------

Several of these experiments are on nominally identical grids and
configurations, but a lack of communication and common resources have led to
divergences in configuration details, which has impeded collaboration and
impeded both development and troubleshooting issues on Raijin.

The following projects require a 0.25° grid:

* ACCESS-OM (ARCCSS)

* ACCESS-CM (CSIRO, BoM)

The following projects require a common 0.1° grid:

* ACCESS-OM (ARCCSS)

* OFAM v2 (BoM)

* CSIRO BGC model (CSIRO)

We highlight the following goals:

* Establish a single, common point for the following resources:

  - Model source codes

  - Support libraries

  - Experiment configurations

  - Runscripts

  - Automated logging of experiments

  - Output archival

NCI's role:

* Confirm that the five projects run under common codebases, or that any forks
  retain consistency with the main codebases

* Ensure that all groups benefit from common performance optimisations

* Communicate configuration settings (libraries, runtime) across groups

* Ensure that datasets are accessible across projects


Profiling
---------

In addition to standard profiling methods, NCI will seek to document the
behaviour of these models through resource models:

* For each ACCESS-CM submodel, we construct a "resource model" that estimates
  resource usage as a function of model configuration:

  * Communication (MPI)

    - Number of messages

    - Size of messages

    - Classification by physical parameterisation

    - Develop network usage

  * Computational memory usage

* Contribute to automated testing with automated profiling metrics

This information will allow NCI to ensure that these models remain efficient on
Raijin, and will provide us with the necessary information for the vendoring of
future hardware.


.. raw:: pdf

    PageBreak


Timeline
========

*NOTE: 2014 goes into greater detail since much of the work has already been
done.*


2014Q3 (*complete*)
-------------------

- 0.25° MOM-SIS:

  - Fixed outstanding performance problems

    - Hyperthreading resolved "process bottleneck"

    - 12 yr/day performance (14 yr/day with 12 PPN)

  - Land masking

    - Confirmed reduction of CPU hours by 20%

  - Profile generation

    - Full profiles from HPCToolkit, ScoreP (Scalasca)

    - Computational profiles from gprof

    - Communication profiles from IPM, mpiP

  - Potential energy optimization

    - This was the largest source of MPI_Allreduce calls in MOM

    - Reduction of MPI_Allreduce calls by 50x (vertical levels) in subroutine

    - Patch submitted to official MOM codebase, tenatively approved

  - Porting to Fujistu compilers (and FX10):

    - Patch submitted and accepted into MOM codebase


2104Q4 (ongoing)
----------------

The focus of this term is to resolve any outstanding issues in high-resolution
ocean scalability, and to begin the transition from MOM-SIS to ACCESS-OM.

- MOM: (2 weeks)

  - Construct MOM's MPI communication model (*partially complete*)

  - Document this "comm model" procedure

  - Test and remove MPI calls in land cell checks

- 0.25° MOM-SIS: (*complete*)

  - ISESS scaling submission

  - Submodel scaling

    - MOM scalability up to 2000 CPUs (beyond?)

    - Diagnosis of SIS & coupler bottlenecks at 500 CPUs

- 0.25° ACCESS-OM: (2 weeks)

  **Collaborator**: Nicholas Hannah

  - Compile and run (*complete*)

  - Update codebases and supporting libraries (*complete*)

  - Establish tentative configuration (*partially complete*)

  - Initial profiling

  - Develop procedure for coupled scaling analysis

- 0.1° MOM-SIS: (2 weeks)

  **Collaborator**: Aidan Heerdegen

  - Complete port to Raijin (*complete*)

  - Scale beyond 2500 CPUs
    (or determine why it is not possible)

- N96/1.0° ACCESS-CM (1 week)

  **Collaborators**: Hailin Yan, Martin Dix, Nicholas Hannah

  - Document input files across submodels (*complete*)

  - Run and compile with updated codebases (*partially complete*)

  - Preliminary profiling (HPCtoolkit, ScoreP) (*rtially complete*)


2015Q1
------

The focus of this term should be to finalise the transition to ACCESS-OM and to
integrate these changes into ACCESS-CM.  This also includes porting the
existing N96/1.0° model to the new framework.  NCI's priority should be to
address any performance issues at each stage.

Given the many challenges associated with this goal, we should prepare for some
of this work to extend to Q2.

- 0.25° ACCESS-OM: (3 weeks)

  **Collaborator**: Nicholas Hannah

  - Construct CICE and OASIS communication models

  - Identify scalability bottlenecks within CICE and OASIS

  - Implement and test potential code modifications to CICE and OASIS

- 0.1° ACCESS-OM: (3 weeks, overlap with 0.25° ACCESS-OM)

  **Collaborators**: Nicholas Hannah, Aidan Heerdegen

  - Port 0.1° MOM-SIS to ACCESS-OM

  - Profile and compare to 0.25° configuration

- N96/1.0° ACCESS-CM: (4 weeks)

  **Collaborators**: Hailin Yan, Martin Dix, Nicholas Hannah

  - Update UM to 9.1+

  - Implement IO server (for N216/0.25°)

  - Assess any changes to scaling and profiling results

- MOM: (2 weeks; optional)

  - Optimise Allreduce operations in time-mean IO writes

    - Currently one per timestep, change to one per write

  - Organise a "MOM user's group" meeting to prepare for Q2 collaborations


2015Q2
------

The focus of this term is to communicate our work to external projects in BoM
and CSIRO, namely OFAM and CSIRO's BGC model.

- Port OFAM to 0.1° global grid (2 weeks)

  **Collaborators**: Justin Freeman, Russ Fiedler

  - Develop a common 0.1° grid for OFAM and ACCESS-OM

  - Confirm scalability of output results

  - Investigate any potential IO issues unique to OFAM

- 0.1° ACCESS BGC: (2 weeks)

  **Collaborators**: Richard Matear, Matt Chamberlain, Russ Fiedler

  - Implement CSIRO's BGC into either OFAM or ACCESS-OM 0.1° model

  - Confirm configuration and scalability of results

- 0.1° ACCESS-OM: (2 weeks; optional)

  - Placeholder for any ongoing 0.1° ACCESS-OM issues

- N96/0.25° ACCESS-CM (3 weeks)

  - Port existing 0.25° ACCESS-OM work into a working ACCESS-CM with
    low-resolution atmosphere

  - Initial scalability tests

- 3+ weeks available to resolve outstanding or unexpected issues

  - Optionally, investigate a N216/1.0° ACCESS-CM configuration


2015H2
------

Without specifying detail, the focus of this period should be on an
implementation and scaling of a high-resolution atmosphere with a
high-resolution ocean

- N216/0.25° ACCESS-CM development

- Resolve any outstanding issues from previous periods


2016H1
------

This period should focus on adopting new technologies and preparing for
machines beyond Raijin

- MOM:

  - Xeon Phi scaling tests

  - MOM6 initial testing

  - Scalability tests on off-site FX10 and post-FX10 platforms

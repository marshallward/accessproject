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

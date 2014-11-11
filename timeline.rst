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

  - Porting to FX10

    - Patch submitted and accepted in MOM codebase


2104Q4 (ongoing)
----------------

- MOM: (1 week)

  - Construct MOM's MPI communication model (*partially complete*)

  - Document this "comm model" procedure

- 0.25° MOM-SIS: (*complete*)

  - ISESS scaling submission

  - Submodel scaling

    - MOM scalability up to 2000 CPUs (beyond?)

    - Diagnosis of SIS & coupler bottlenecks at 500 CPUs

- 0.25° ACCESS-OM: (2 weeks)

  **Collaborator**: Nicholas Hannah

  - Compile and run (*complete*)

  - Update codebases and supporting libraries (*complete*)

  - Establish tentative configuration

  - Initial profiling

  - Develop procedure for coupled scaling analysis

- 0.1° MOM-SIS: (2 weeks)

  **Collaborator**: Aidan Heerdegen

  - Complete port to Raijin (*complete*)

  - Scale beyond 2500 CPUs
    (or determine why it is not possible)

- N96/1.0° ACCESS-CM (2 weeks)

  **Collaborators**: Hailin Yan, Martin Dix, Nicholas Hannah

  - Document input files across submodels (*complete*)

  - Run and compile with updated codebases (*partially complete*)

  - Preliminary profiling (HPCtoolkit, ScoreP) (*partially complete*)


2015Q1
------

- 0.25° ACCESS-OM: (3 weeks)

  **Collaborator**: Nicholas Hannah

  - Construct CICE and OASIS communication models

  - Identify scalability bottlenecks within CICE and OASIS

  - Implement and test potential code modifications to CICE and OASIS

- 0.1° ACCESS-OM: (3 weeks, overlap with 0.25° ACCESS-OM)

  **Collaborators**: Nicholas Hannah, Aidan Heerdegen

  - Port 0.1° MOM-SIS to ACCESS-OM

  - Confirm scalability and effectiveness of 0.25° changes

- N96L38/1.0° ACCESS-CM: (4 weeks)

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

- Port OFAM to 0.1° grid (2 weeks; optional)

  **Collaborators**: Justin Freeman, Russ Fiedler

  *Note*: NCI would primarily be advisory, ensuring that grids are common and
  encouraging scalability of model configurations

  - Develop a common 0.1° grid for OFAM and ACCESS-OM

  - Confirm scalability of output results

  - Investigate any potential IO issues unique to OFAM

- 0.1° ACCESS BGC: (2 weeks)

  **Collaborators**: Richard Matear, Matt Chamberlain, Russ Fiedler

  - Implement CSIRO's BGC into either OFAM or ACCESS-OM 0.1° model

  - Confirm configuration and scalability of results

- 0.1° ACCESS-OM: (2 weeks; optional)

  - Placeholder for any ongoing 0.1° ACCESS-OM issues

- N216/0.25 ACCESS-CM

  - Port existing 0.25° ACCESS-OM work to ACCESS-CM

  - Initial scalability tests; confirm if CMIP6 runs are possible


2015H2
------

- N216/0.25° ACCESS-CM

  - Focus on any chnages


2016H1
------

-

- MOM:

  - Xeon Phi scaling tests

  - MOM6 initial testing

  - Scalability tests on off-site FX10 and post-FX10 platforms

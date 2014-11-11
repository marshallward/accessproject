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

  - Potential energy optimization

    - This was the largest source of MPI_Allreduce calls in MOM

    - Reduction of MPI_Allreduce calls by 50x (vertical levels) in subroutine

    - Patch submitted to official MOM codebase, tenatively approved

  - Porting to FX10

    - Patch submitted and accepted in MOM codebase


2104Q4 (ongoing)
----------------

- MOM:

  - Construct MOM's MPI communication model

- 0.25° MOM-SIS: (*complete*)

  - ISESS scaling submission

  - Submodel scaling

    - MOM scalability up to 2000 CPUs (beyond?)

    - Diagnosis of SIS & coupler bottlenecks at 500 CPUs

- 0.1° MOM-SIS:

  **Collaborator**: Aidan Heerdegen

  - Complete port to Raijin (*complete*)

  - Scale beyond 2500 CPUs
    (or determine why it is not possible)

- 0.25° ACCESS-OM:

  **Collaborator**: Nicholas Hannah

  - Compile and run (*complete*)

  - Update codebases and supporting libraries

  - Establish tentative configuration

  - Initial profiling

- 1.0° ACCESS-CM

  **Collaborators**: Hailin Yan, Martin Dix, Nicholas Hannah

  - Run and compile with updated codebases

  - Develop procedure for coupled scaling analysis


2015Q1
------

- Construct CICE and OASIS communication models

- 0.1° ACCESS-OM:

  **Collaborators**: Nicholas Hannah, Aidan Heerdegen

  - Initial port

- OFAM port to 0.1° grid

  **Collaborators**: Justin Freeman, Russ Fiedler

- MOM:

  - Optimise Allreduce operations in time-mean IO writes

    - Currently one per timestep, change to one per write

- N96L38/1.0° ACCESS-CM:

  - Updated UM (9.x)

  - Implement IO server (preparation for N216/0.25°)


2015Q2
------

- 0.1° ACCESS-OM:

  - Scaling and profiling analysis

  - Bottleneck diagnosis

- 1.0° ACCESS-CM

  - Scaling and profiling analysis

  - Bottleneck diagnosis


2015H2
------

- 0.25° ACCESS-CM
  -


2016H1
------

- MOM:

  - Xeon Phi scaling tests

  - MOM6 initial testing

  - Scalability tests on off-site FX10 and post-FX10 platforms

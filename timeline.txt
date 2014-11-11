Timeline
========

2014Q3 (*complete*)
-------------------

*NOTE: Greater detail since this work has been done*

- 0.25° MOM-SIS:

  - Fixed outstanding performance problems

    - Hyperthreading resolved "process bottleneck"

    - 12 yr/day performance (14 yr/day with 12 PPN)

  - Land masking

    - Reduced CPU hours by 20%

  - Potential energy optimization

    - This was the largest source of MPI_Allreduce calls in MOM

    - Reduction of MPI_Allreduce calls by 50x (vertical levels) in subroutine

    - Patch submitted to official MOM codebase, tenatively approved

  - Porting to FX10

    - Patch submitted and accepted in MOM codebase


2104Q4 (ongoing)
----------------

*NOTE: Greater detail since much of this work has been done*

- Construct MOM communication model

- 0.25° MOM-SIS: (*complete*)

  - ISESS scaling submission

  - Submodel scaling

    - MOM scalability up to 2000 CPUs (beyond?)

    - SIS, Coupler bottlenecks at 500 CPUs

- 0.1° MOM-SIS:

  **Collaborator**: Aidan Heerdegen

  - Complete port to Raijin (*complete*)

  - Scale beyond 2500 CPUs

- 0.25° ACCESS-OM:

  **Collaborator**: Nicholas Hannah

  - Compile and run (*complete*)

  - Update codebases and supporting libraries

  - Establish tentative configuration

  - Initial profiling


2015Q1
------

- Construct CICE and OASIS communication models

- 0.1° ACCESS-OM:

  - Initial port

- OFAM port to 0.1° grid

- MOM:

   - Optimise Allreduce operations in time-mean IO writes

     - Currently one per timestep, change to one per write

   - Construct memory model


2015Q2
------

*


2015Q3
------

*


2015Q4
------
*


2016Q1
------
*


2016Q2
------
*

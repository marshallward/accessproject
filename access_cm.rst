======================
ACCESS-CM Optimization
======================


Background
==========

ACCESS-CM is the climate model of the ACCESS model suite, consisting of the UM,
MOM and CICE submodels, and the OASIS3-MCT coupler library.  All models include
custom modifications to support OASIS communication and coupling field
conversions.  The model has primarily been used to produce Australian
submissions to CMIP5, which were regarded as highly successful contributions.
It is also been used by BoM and ARCCSS as a research tool in various studies.

ACCESS-OM is an intermediate model which replaces the UM model with the fixed
CORE atmospheric field data sets.  It is primarily used for testing within
CSIRO during CM development, although it has also been used in some research
projects, such as CSIRO's BGC simulations (WOMBAT?).

The ARCCSS ("CoE") ocean research groups is conducting 0.25°-resolution ocean
experiments with the GFDL coupled model based on MOM and SIS, the internal GFDL
sea ice model.  The model has been used as part of several well-received
academic publications, and remains an integral part of ongoing research.

OFAM is an ocean data assimilation model used and developed within BoM. (TODO)


Motivation
==========

As part of preparation for CMIP6, ACCESS-CM and ACCESS-OM are currently in a
state of redevelopment, and they lack stable experiment configurations that are
to be used in future studies.  Any formal profiling and scaling work at this
stage may not reflect the future state of these projects.

* ACCESS-CM and ACCESS-OM are currently being redeveloped in preparation for
  CMIP6 and support for higher resolutions, along with ARCCSS contributions via
  Nicholas Hannah

* ARCCSS oceans intend to replace MOM-SIS with ACCESS-OM, and eventually
  ACCESS-CM, as part of ongoing efforts to coordinate resources with CAWCR

* NCI has identified limits to SIS scalability, and ARCCSS will have to adopt a
  new coupled framework in order to efficiently scale up to 0.1° resolution and
  beyond.


Proposed Goals
==============


Porting
-------

The following are immediate potential goals, some of which are near completion:

* Port the 0.1° global MOM-SIS model to Raijin, and scale beyond 2500 CPUs

* Convert 0.25° global MOM-SIS to an updated ACCESS-OM (MOM-CICE) framework

* Convert 0.1° global MOM-SIS to updated ACCESS-OM framework

NCI's role would be the following:

* Ensure that these models receive sufficient access to system resources and
  expertise within NCI to get them running

* Aggressively tackle the scalability during and after development

* Identify the scaling bottlenecks and limits to scalability

* Patch model source codes to resolve bottlenecks if possible

Once these models have reached a sufficient state of
foundations for the following projects:

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

* Confirm that the five projects run under the established MOM codebase

* Ensure that datasets and configurations are accessible across projects

* Provide independent scaling of current codebases

* Communicate configuration settings through common runscripts


Profiling
---------

* Develop "computational models" for ACCESS-CM components as a function of
  model configuration:

  * Communication (MPI)

    - Number of messages

    - Size of messages

    - Classification by physical parameterisation

    - Develop network usage

  * Computational memory usage

* Contribute to automated testing with automated profiling metrics

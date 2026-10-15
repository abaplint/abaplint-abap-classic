INTERFACE zlnt_view_storage_74017ca272ac PUBLIC.
  METHODS structural RETURNING VALUE(result) TYPE abap_bool.
  METHODS source RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS get IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS put IMPORTING p0 TYPE string p1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  METHODS has IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
  METHODS delete IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
ENDINTERFACE.

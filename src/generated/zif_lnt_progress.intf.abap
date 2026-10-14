* TS: src/progress.ts:1:1 IProgress
INTERFACE zif_lnt_progress PUBLIC.
  METHODS set IMPORTING i_total TYPE int8 i_text TYPE string.
  METHODS tick IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_builtin_f94a6ae8.
  METHODS tick_sync IMPORTING i_text TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.

* TS: src/progress.ts:1:1 IProgress
INTERFACE zif_lnt_progress PUBLIC.
  METHODS set IMPORTING i_total TYPE f i_text TYPE string.
  METHODS tick IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
  METHODS tick_sync IMPORTING i_text TYPE string.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.

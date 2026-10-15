* TS: src/files/_ifile.ts:1:1 IFile
INTERFACE zif_lnt_file PUBLIC.
  METHODS get_filename RETURNING VALUE(result) TYPE string.
  METHODS get_object_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
  METHODS get_object_name RETURNING VALUE(result) TYPE string.
  METHODS get_raw RETURNING VALUE(result) TYPE string.
  METHODS get_raw_rows RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
ENDINTERFACE.

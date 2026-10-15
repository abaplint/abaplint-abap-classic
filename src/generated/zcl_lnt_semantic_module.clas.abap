* TS: src/lsp/semantic.ts.module module
CLASS zcl_lnt_semantic_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CONSTANTS source_abap TYPE string VALUE `source.abap`.
    CONSTANTS block_abap TYPE string VALUE `storage.type.block.abap`.
    CLASS-DATA zlnt_builtin_init_19279d0919f9 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_4a077bb17d1e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_semantic_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_4a077bb17d1e.
    IF zlnt_builtin_init_19279d0919f9 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_19279d0919f9 = abap_true.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1952_de37b917dea8.
  ENDMETHOD.
ENDCLASS.

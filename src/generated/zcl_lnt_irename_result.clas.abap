* TS: src/objects/rename/renamer.ts:15:1 IRenameResult
CLASS zcl_lnt_irename_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA deleted_files TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA added_files TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA updated_files TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS constructor IMPORTING i_deleted_files TYPE REF TO zlnt_runtime_set__1827558fd4c7 i_added_files TYPE REF TO zlnt_runtime_set__1827558fd4c7 i_updated_files TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irename_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_set__1827558fd4c7( i_deleted_files ).
    DATA(t2) = CAST zlnt_runtime_set__1827558fd4c7( i_added_files ).
    DATA(t3) = CAST zlnt_runtime_set__1827558fd4c7( i_updated_files ).
    DATA(t4) = CAST zlnt_runtime_set__1827558fd4c7( t1 ).
    me->deleted_files = t4.
    DATA(t5) = CAST zlnt_runtime_set__1827558fd4c7( t2 ).
    me->added_files = t5.
    DATA(t6) = CAST zlnt_runtime_set__1827558fd4c7( t3 ).
    me->updated_files = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1239_ee03a29f95a6.
  ENDMETHOD.
ENDCLASS.

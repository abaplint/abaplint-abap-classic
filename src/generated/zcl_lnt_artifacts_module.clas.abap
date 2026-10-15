* TS: src/abap/artifacts.ts.module module
CLASS zcl_lnt_artifacts_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS class_name IMPORTING i_cla TYPE REF TO object RETURNING VALUE(result) TYPE string.
    CLASS-DATA zlnt_builtin_init_043101e8dbcf TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_00010beddc70.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_module IMPLEMENTATION.
  METHOD class_name.
    DATA t1 TYPE REF TO object.
    t1 = i_cla.
    DATA t2 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t3) = |excluded abaplint introspection: className|.
    t2 = NEW #( ).
    t2->payload = t3.
    CLEAR t2->source_value.
    CREATE OBJECT t2->source_value.
    t2->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2->source_value->sval = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_builtin_init_00010beddc70.
    IF zlnt_builtin_init_043101e8dbcf = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_043101e8dbcf = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1930_42cd268504b4.
  ENDMETHOD.
ENDCLASS.

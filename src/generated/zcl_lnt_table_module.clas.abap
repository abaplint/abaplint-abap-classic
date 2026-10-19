* TS: src/objects/table.ts.module module
CLASS zcl_lnt_table_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA enhancement_category_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA table_category_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_204630f669b0 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_aad83507db3c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_table_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_aad83507db3c.
    IF zlnt_builtin_init_204630f669b0 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_204630f669b0 = abap_true.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    zcl_lnt_table_module=>enhancement_category_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t2 = zcl_lnt_table_module=>enhancement_category_namespace->set( p0 = |NotClassified| p1 = |0| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t6 = zcl_lnt_table_module=>enhancement_category_namespace->set( p0 = |CannotBeEnhanced| p1 = |1| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t10 = zcl_lnt_table_module=>enhancement_category_namespace->set( p0 = |Character| p1 = |2| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t14 = zcl_lnt_table_module=>enhancement_category_namespace->set( p0 = |CharacterOrNumeric| p1 = |3| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t18 = zcl_lnt_table_module=>enhancement_category_namespace->set( p0 = |Deep| p1 = |4| ).
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    zcl_lnt_table_module=>table_category_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t23 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |Transparent| p1 = |TRANSP| ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t27 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |Structure| p1 = |INTTAB| ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t31 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |Cluster| p1 = |CLUSTER| ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t35 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |Pooled| p1 = |POOL| ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t39 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |View| p1 = |VIEW| ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t43 = zcl_lnt_table_module=>table_category_namespace->set( p0 = |Append| p1 = |APPEND| ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1973_7363a4fe8ca2.
  ENDMETHOD.
ENDCLASS.

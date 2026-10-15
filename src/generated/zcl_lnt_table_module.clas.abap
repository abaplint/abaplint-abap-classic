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
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_table_module=>enhancement_category_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t3 = zcl_lnt_table_module=>enhancement_category_namespace.
    DATA(t4) = |NotClassified|.
    DATA(t5) = |0|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t7 = zcl_lnt_table_module=>enhancement_category_namespace.
    DATA(t8) = |CannotBeEnhanced|.
    DATA(t9) = |1|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t11 = zcl_lnt_table_module=>enhancement_category_namespace.
    DATA(t12) = |Character|.
    DATA(t13) = |2|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t15 = zcl_lnt_table_module=>enhancement_category_namespace.
    DATA(t16) = |CharacterOrNumeric|.
    DATA(t17) = |3|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t19 = zcl_lnt_table_module=>enhancement_category_namespace.
    DATA(t20) = |Deep|.
    DATA(t21) = |4|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    DATA(t22) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_table_module=>table_category_namespace = t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t24 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t25) = |Transparent|.
    DATA(t26) = |TRANSP|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t28.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t28 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t29) = |Structure|.
    DATA(t30) = |INTTAB|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t32.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t32 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t33) = |Cluster|.
    DATA(t34) = |CLUSTER|.
    t31 = t32->set( p0 = t33 p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t36.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t36 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t37) = |Pooled|.
    DATA(t38) = |POOL|.
    t35 = t36->set( p0 = t37 p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t40.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t40 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t41) = |View|.
    DATA(t42) = |VIEW|.
    t39 = t40->set( p0 = t41 p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t44.
    IF zcl_lnt_table_module=>zlnt_builtin_init_204630f669b0 = abap_false.
      zcl_lnt_table_module=>zlnt_builtin_init_aad83507db3c( ).
    ENDIF.
    t44 = zcl_lnt_table_module=>table_category_namespace.
    DATA(t45) = |Append|.
    DATA(t46) = |APPEND|.
    t43 = t44->set( p0 = t45 p1 = t46 ).
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

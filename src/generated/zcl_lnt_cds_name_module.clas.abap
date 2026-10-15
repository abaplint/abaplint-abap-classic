* TS: src/cds/expressions/cds_name.ts.module module
CLASS zcl_lnt_cds_name_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA keywords_36a7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_2f4438a19ed8 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_dfb42c40df8c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_name_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_dfb42c40df8c.
    IF zlnt_builtin_init_2f4438a19ed8 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_2f4438a19ed8 = abap_true.
    IF zcl_lnt_cds_name_module=>zlnt_builtin_init_2f4438a19ed8 = abap_false.
      zcl_lnt_cds_name_module=>zlnt_builtin_init_dfb42c40df8c( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = CONV string( |AS| ).
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t7) = CONV string( |ON| ).
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t9) = CONV string( |WHERE| ).
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t11) = CONV string( |WITH| ).
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t13) = CONV string( |UNION| ).
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t15) = CONV string( |GROUP| ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t17) = CONV string( |HAVING| ).
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t19) = CONV string( |AND| ).
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t21) = CONV string( |OR| ).
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t23) = CONV string( |BETWEEN| ).
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t25) = CONV string( |LIKE| ).
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA(t26) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t27) = CONV string( |IN| ).
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t29) = CONV string( |EXISTS| ).
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t31) = CONV string( |WHEN| ).
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t33) = CONV string( |THEN| ).
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t35) = CONV string( |ELSE| ).
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t37) = CONV string( |END| ).
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t39) = CONV string( |CASE| ).
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t41) = CONV string( |CAST| ).
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t42.
    zcl_lnt_cds_name_module=>keywords_36a7 = t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1950_b4123d6fa7ae.
  ENDMETHOD.
ENDCLASS.

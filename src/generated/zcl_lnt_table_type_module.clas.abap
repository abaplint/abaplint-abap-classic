* TS: src/abap/types/basic/table_type.ts.module module
CLASS zcl_lnt_table_type_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA table_access_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA table_key_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_835804886a08 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_4ff3a7c28948.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_table_type_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_4ff3a7c28948.
    IF zlnt_builtin_init_835804886a08 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_835804886a08 = abap_true.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_table_type_module=>table_access_type_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t3 = zcl_lnt_table_type_module=>table_access_type_namespace.
    DATA(t4) = |standard|.
    DATA(t5) = |STANDARD|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t7 = zcl_lnt_table_type_module=>table_access_type_namespace.
    DATA(t8) = |sorted|.
    DATA(t9) = |SORTED|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t11 = zcl_lnt_table_type_module=>table_access_type_namespace.
    DATA(t12) = |hashed|.
    DATA(t13) = |HASHED|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t15 = zcl_lnt_table_type_module=>table_access_type_namespace.
    DATA(t16) = |index|.
    DATA(t17) = |INDEX|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t19 = zcl_lnt_table_type_module=>table_access_type_namespace.
    DATA(t20) = |any|.
    DATA(t21) = |ANY|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    DATA(t22) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_table_type_module=>table_key_type_namespace = t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t24 = zcl_lnt_table_type_module=>table_key_type_namespace.
    DATA(t25) = |default|.
    DATA(t26) = |DEFAULT|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t28.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t28 = zcl_lnt_table_type_module=>table_key_type_namespace.
    DATA(t29) = |user|.
    DATA(t30) = |USER|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t32.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t32 = zcl_lnt_table_type_module=>table_key_type_namespace.
    DATA(t33) = |empty|.
    DATA(t34) = |EMPTY|.
    t31 = t32->set( p0 = t33 p1 = t34 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1966_dc8365dbe9e2.
  ENDMETHOD.
ENDCLASS.

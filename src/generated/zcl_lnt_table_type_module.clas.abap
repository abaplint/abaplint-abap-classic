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
    zcl_lnt_table_type_module=>table_access_type_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t2 = zcl_lnt_table_type_module=>table_access_type_namespace->set( p0 = |standard| p1 = |STANDARD| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t6 = zcl_lnt_table_type_module=>table_access_type_namespace->set( p0 = |sorted| p1 = |SORTED| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t10 = zcl_lnt_table_type_module=>table_access_type_namespace->set( p0 = |hashed| p1 = |HASHED| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t14 = zcl_lnt_table_type_module=>table_access_type_namespace->set( p0 = |index| p1 = |INDEX| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t18 = zcl_lnt_table_type_module=>table_access_type_namespace->set( p0 = |any| p1 = |ANY| ).
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    zcl_lnt_table_type_module=>table_key_type_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t23 = zcl_lnt_table_type_module=>table_key_type_namespace->set( p0 = |default| p1 = |DEFAULT| ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t27 = zcl_lnt_table_type_module=>table_key_type_namespace->set( p0 = |user| p1 = |USER| ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_table_type_module=>zlnt_builtin_init_835804886a08 = abap_false.
      zcl_lnt_table_type_module=>zlnt_builtin_init_4ff3a7c28948( ).
    ENDIF.
    t31 = zcl_lnt_table_type_module=>table_key_type_namespace->set( p0 = |empty| p1 = |EMPTY| ).
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

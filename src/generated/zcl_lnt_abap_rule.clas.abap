* TS: src/rules/_abap_rule.ts:8:1 ABAPRule
CLASS zcl_lnt_abap_rule DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS get_metadata ABSTRACT RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_config ABSTRACT RETURNING VALUE(result) TYPE REF TO object.
    METHODS set_config ABSTRACT IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run_parsed ABSTRACT IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS in_in_src_rls_abp_rl_ts_abp_rl IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value ABSTRACT RETURNING VALUE(result) TYPE REF TO object.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_rule IMPLEMENTATION.
  METHOD in_in_src_rls_abp_rl_ts_abp_rl.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA t9 TYPE REF TO object.
    t9 = t1.
    t7 ?= t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t7->parsed.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t12->load( ).
      IF t19 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t12->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA(t22) = VALUE i( ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zcl_lnt_abap_object.
      DATA t27 TYPE REF TO object.
      t27 = t1.
      t25 ?= t27.
      t23 = me->run_parsed( i_file = t17 i_obj_1ed0 = t25 ).
      DATA t28 TYPE REF TO zcl_lnt_issue.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      DATA(t30) = VALUE i( ).
      DO.
        t23->load( ).
        IF t30 >= lines( t23->items ).
          EXIT.
        ENDIF.
        CLEAR t29.
        READ TABLE t23->items INDEX t30 + 1 INTO t29.
        t30 = t30 + 1.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t28.
        IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t29.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t28 ?= t32.
        ELSE.
          t28 ?= t29.
        ENDIF.
        t10->load( ).
        APPEND t28 TO t10->items.
        t10->save( ).
      ENDDO.
      t10->load( ).
      t22 = lines( t10->items ).
    ENDDO.
    result = t10.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_src_rls_abp_rl_ts_abp_rl( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1381_f38c7a4d0777.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.

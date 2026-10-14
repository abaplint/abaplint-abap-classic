* TS: src/abap/5_syntax/_builtin.ts:132:1 BuiltIn
CLASS zcl_lnt_built_in DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS filename TYPE string VALUE `_builtin.prog.abap`.
    CLASS-DATA counter TYPE int8.
    CLASS-DATA get_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA types_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA extras_cache_key TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-DATA extras_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA methods TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA row TYPE int8.
    METHODS constructor.
    CLASS-METHODS build_definition IMPORTING i_method TYPE REF TO zcl_lnt_ibuiltin_method i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    CLASS-METHODS search_builtin IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definition.
    CLASS-METHODS is_predicate IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS get_types RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_db65 IMPORTING i_extras TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_variable IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS build_sy RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_constant IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    CLASS-DATA zlnt_builtin_init_d2c53bdf259f TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_97ac0787fc72.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_built_in IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CONV int8( 1 ).
    me->row = t1.
  ENDMETHOD.

  METHOD build_definition.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CAST zcl_lnt_ibuiltin_method( i_method ).
    DATA(t2) = i_name.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_built_in_method.
    DATA(t5) = CAST zcl_lnt_ibuiltin_method( t1 ).
    t4 = t5->cache.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_built_in_method.
      DATA t7 TYPE REF TO zcl_lnt_built_in_method.
      DATA(t8) = CAST zcl_lnt_ibuiltin_method( t1 ).
      t7 = t8->cache.
      t6 = t7.
      result = t6.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t10 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CONV int8( 1 ).
    DATA(t13) = CONV int8( 1 ).
    t11 = NEW zcl_lnt_position( i_row = t12 i_col = t13 ).
    DATA(t14) = t2.
    t10 = NEW zcl_lnt_lx_identifier( i_start = t11 i_str = t14 ).
    t9 = t10.
    DATA t15 TYPE REF TO zcl_lnt_built_in_method.
    DATA t16 TYPE REF TO zcl_lnt_built_in_method.
    DATA(t17) = CAST zcl_lnt_lx_identifier( t9 ).
    DATA(t18) = CONV string( zcl_lnt_built_in=>filename ).
    DATA(t19) = CAST zcl_lnt_ibuiltin_method( t1 ).
    DATA t20 TYPE int8.
    DATA(t21) = CAST zcl_lnt_ibuiltin_method( t1 ).
    t20 = t21->counter.
    t16 = NEW zcl_lnt_built_in_method( i_token = t17 i_filename = t18 i_method = t19 i_row = t20 ).
    t15 = t16.
    DATA(t22) = CAST zcl_lnt_ibuiltin_method( t1 ).
    DATA t23 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = CAST zcl_lnt_built_in_method( t15 ).
      t23 = t25.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_built_in_method.
      CLEAR t26.
      t23 = t26.
    ENDIF.
    t22->cache = t23.
    DATA(t27) = CAST zcl_lnt_built_in_method( t15 ).
    result = t27.

  ENDMETHOD.

  METHOD search_builtin.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_method_definition.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t12.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t12 = zcl_lnt_built_in=>methods.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t14 = t15->value.
    DATA(t16) = strlen( t14 ).
    t13 = t14.
    IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t13 TO UPPER CASE.
    ELSE.
      t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
    ENDIF.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t19) = CAST zcl_lnt_ibuiltin_method( t10 ).
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = CAST zcl_lnt_ibuiltin_method( t18 ).
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zif_lnt_method_definition.
      CLEAR t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zif_lnt_method_definition.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA t27 TYPE REF TO zif_lnt_method_definition.
      DATA t28 TYPE REF TO zcl_lnt_ibuiltin_method.
      DATA(t29) = CAST zcl_lnt_ibuiltin_method( t10 ).
      t28 = t29.
      DATA t30 TYPE string.
      DATA(t31) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t30 = t31->value.
      t27 = zcl_lnt_built_in=>build_definition( i_method = t28 i_name = t30 ).
      t25 = t27.
    ELSE.
      DATA t32 TYPE REF TO zif_lnt_method_definition.
      CLEAR t32.
      t25 = t32.
    ENDIF.
    result = t25.

  ENDMETHOD.

  METHOD is_predicate.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t12.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t12 = zcl_lnt_built_in=>methods.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t14 = t15->value.
    DATA(t16) = strlen( t14 ).
    t13 = t14.
    IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t13 TO UPPER CASE.
    ELSE.
      t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
    ENDIF.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t19) = CAST zcl_lnt_ibuiltin_method( t10 ).
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = CAST zcl_lnt_ibuiltin_method( t18 ).
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t26 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t27) = CAST zcl_lnt_ibuiltin_method( t10 ).
    t26 = t27.
    t25 = t26->predicate.
    result = t25.

  ENDMETHOD.

  METHOD get_types.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3 = zcl_lnt_built_in=>types_cache.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( me->build_sy( ) ).
      t8 = t9.
      DATA t10 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t11 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA(t13) = CONV int8( 1 ).
      DATA(t14) = CONV int8( 1 ).
      t12 = NEW zcl_lnt_position( i_row = t13 i_col = t14 ).
      DATA(t15) = |abap_bool|.
      t11 = NEW zcl_lnt_lx_identifier( i_start = t12 i_str = t15 ).
      t10 = t11.
      DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t17.
      DATA(t18) = CAST zcl_lnt_lx_identifier( t10 ).
      DATA(t19) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t20 TYPE REF TO zcl_lnt_character_type.
      CLEAR t20.
      DATA(t21) = CONV int8( 1 ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t24.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA(t27) = |ABAP_BOOL|.
          DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t28->has = abap_true.
          t28->value = t27.
          t25 = t28.
        ELSE.
          DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t29.
          t25 = t29.
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA(t34) = |ABAP_BOOL|.
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t34.
          t32 = t35.
        ELSE.
          DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t36.
          t32 = t36.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t24 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t25 i_conversion_exit = t30 i_derived_from_constant = t31 i_ddic_name = t32 i_rtti_name = t37 i_description = t38 ).
        t22 = t24.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t39.
        t22 = t39.
      ENDIF.
      t20 = NEW zcl_lnt_character_type( i_length = t21 i_extra = t22 ).
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t17 = NEW zcl_lnt_typed_identifier( i_token = t18 i_filename = t19 i_type_9913 = t20 i_meta = t40 i_value = t41 ).
      APPEND t17 TO t16->items.
      DATA t42 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t43 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t44 TYPE REF TO zcl_lnt_position.
      DATA(t45) = CONV int8( 1 ).
      DATA(t46) = CONV int8( 1 ).
      t44 = NEW zcl_lnt_position( i_row = t45 i_col = t46 ).
      DATA(t47) = |cursor|.
      t43 = NEW zcl_lnt_lx_identifier( i_start = t44 i_str = t47 ).
      t42 = t43.
      DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
      DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t49.
      DATA(t50) = CAST zcl_lnt_lx_identifier( t42 ).
      DATA(t51) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t52 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t53.
      DATA(t54) = abap_true.
      IF t54 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |CURSOR|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = |CURSOR|.
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t65.
          t63 = t66.
        ELSE.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          t63 = t67.
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t55 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t56 i_conversion_exit = t61 i_derived_from_constant = t62 i_ddic_name = t63 i_rtti_name = t68 i_description = t69 ).
        t53 = t55.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t70.
        t53 = t70.
      ENDIF.
      t52 = zcl_lnt_integer_type=>get_db65( i_input_967e = t53 ).
      DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t49 = NEW zcl_lnt_typed_identifier( i_token = t50 i_filename = t51 i_type_9913 = t52 i_meta = t71 i_value = t72 ).
      APPEND t49 TO t48->items.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
        t73 = t75.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t76.
        t73 = t76.
      ENDIF.
      zcl_lnt_built_in=>types_cache = t73.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t78 = zcl_lnt_built_in=>types_cache.
    t77 = t78.
    result = t77.

  ENDMETHOD.

  METHOD get_db65.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_extras ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE i( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t6 = zcl_lnt_built_in=>get_cache.
    t5 = lines( t6->items ).
    DATA(t7) = 0.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA(t8) = VALUE i( ).
      DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( me->build_sy( ) ).
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      LOOP AT t9->items INTO t11.
        t10 ?= t11.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t12.
        IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
          zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
        ENDIF.
        t12 = zcl_lnt_built_in=>get_cache.
        DATA(t13) = CAST zcl_lnt_typed_identifier( t10 ).
        APPEND t13 TO t12->items.
      ENDLOOP.
      DATA(t14) = VALUE i( ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t15 = zcl_lnt_built_in=>get_cache.
      t14 = lines( t15->items ).
      t8 = t14.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t16 = zcl_lnt_built_in=>get_cache.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_lx_identifier.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_lx_identifier.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_position.
      CLEAR t20.
      DATA(t21) = VALUE int8( ).
      DATA t22 TYPE REF TO zcl_lnt_built_in.
      DATA(t23) = CAST zcl_lnt_built_in( me ).
      t22 = t23.
      DATA t24 TYPE int8.
      DATA t25 TYPE int8.
      DATA(t26) = CAST zcl_lnt_built_in( t22 ).
      t25 = t26->row.
      t24 = t25.
      DATA(t27) = CAST zcl_lnt_built_in( t22 ).
      DATA t28 TYPE int8.
      DATA(t29) = t24.
      DATA(t30) = CONV int8( 1 ).
      t28 = t29 + t30.
      IF t28 < range_int8_bound_min OR t28 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t27->row = t28.
      DATA(t31) = t24.
      t21 = t31.
      DATA(t32) = CONV int8( 1 ).
      t20 = NEW zcl_lnt_position( i_row = t21 i_col = t32 ).
      DATA(t33) = |screen|.
      t19 = NEW zcl_lnt_lx_identifier( i_start = t20 i_str = t33 ).
      t18 = t19.
      DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t34.
      DATA(t35) = CAST zcl_lnt_lx_identifier( t18 ).
      DATA(t36) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t37 TYPE REF TO zcl_lnt_void_type.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA(t40) = |screen|.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t40.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t37 = zcl_lnt_void_type=>get_db65( i_voided = t38 i_qualified_name = t43 ).
      DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t48.
        t47 = t48.
        DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t47 ).
        DATA(t50) = |built-in|.
        APPEND t50 TO t49->items.
        DATA(t51) = CAST zlnt_runtime_arra_8ecd6afe19e0( t47 ).
        t46 = t51.
        t44 = t46.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t52.
        t44 = t52.
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      t34 = NEW zcl_lnt_typed_identifier( i_token = t35 i_filename = t36 i_type_9913 = t37 i_meta = t44 i_value = t53 ).
      t17 = t34.
      APPEND t17 TO t16->items.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t54.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t54 = zcl_lnt_built_in=>get_cache.
      DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t56) = |%_ENDIAN|.
      DATA t57 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t55 = me->build_constant( i_name = t56 i_type_9913 = t57 i_value = t58 ).
      APPEND t55 TO t54->items.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t59 = zcl_lnt_built_in=>get_cache.
      DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t61) = |%_CHARSIZE|.
      DATA t62 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t60 = me->build_constant( i_name = t61 i_type_9913 = t62 i_value = t63 ).
      APPEND t60 TO t59->items.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t64.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t64 = zcl_lnt_built_in=>get_cache.
      DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t65.
      DATA(t66) = |%_BACKSPACE|.
      DATA t67 TYPE REF TO zcl_lnt_character_type.
      DATA(t68) = CONV int8( 1 ).
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t69.
      t67 = NEW zcl_lnt_character_type( i_length = t68 i_extra = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA(t71) = abap_true.
      IF t71 = abap_true.
        DATA(t72) = ||.
        DATA t73 TYPE c LENGTH 1.
        CLEAR t73.
        t73 = cl_abap_conv_in_ce=>uccpi( 8 ).
        CONCATENATE t72 t73 INTO t72 RESPECTING BLANKS.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t72.
        t70 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t70 = t75.
      ENDIF.
      t65 = me->build_constant( i_name = t66 i_type_9913 = t67 i_value = t70 ).
      APPEND t65 TO t64->items.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t76.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t76 = zcl_lnt_built_in=>get_cache.
      DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t77.
      DATA(t78) = |%_CR_LF|.
      DATA t79 TYPE REF TO zcl_lnt_character_type.
      DATA(t80) = CONV int8( 2 ).
      DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t81.
      t79 = NEW zcl_lnt_character_type( i_length = t80 i_extra = t81 ).
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA(t83) = abap_true.
      IF t83 = abap_true.
        DATA(t84) = ||.
        DATA t85 TYPE c LENGTH 1.
        CLEAR t85.
        t85 = cl_abap_conv_in_ce=>uccpi( 13 ).
        CONCATENATE t84 t85 INTO t84 RESPECTING BLANKS.
        DATA t86 TYPE c LENGTH 1.
        CLEAR t86.
        t86 = cl_abap_conv_in_ce=>uccpi( 10 ).
        CONCATENATE t84 t86 INTO t84 RESPECTING BLANKS.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t84.
        t82 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t82 = t88.
      ENDIF.
      t77 = me->build_constant( i_name = t78 i_type_9913 = t79 i_value = t82 ).
      APPEND t77 TO t76->items.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t89 = zcl_lnt_built_in=>get_cache.
      DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t90.
      DATA(t91) = |%_FORMFEED|.
      DATA t92 TYPE REF TO zcl_lnt_character_type.
      DATA(t93) = CONV int8( 1 ).
      DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t94.
      t92 = NEW zcl_lnt_character_type( i_length = t93 i_extra = t94 ).
      DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA(t97) = ||.
        DATA t98 TYPE c LENGTH 1.
        CLEAR t98.
        t98 = cl_abap_conv_in_ce=>uccpi( 12 ).
        CONCATENATE t97 t98 INTO t97 RESPECTING BLANKS.
        DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t99->has = abap_true.
        t99->value = t97.
        t95 = t99.
      ELSE.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t95 = t100.
      ENDIF.
      t90 = me->build_constant( i_name = t91 i_type_9913 = t92 i_value = t95 ).
      APPEND t90 TO t89->items.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t101.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t101 = zcl_lnt_built_in=>get_cache.
      DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t102.
      DATA(t103) = |%_HORIZONTAL_TAB|.
      DATA t104 TYPE REF TO zcl_lnt_character_type.
      DATA(t105) = CONV int8( 1 ).
      DATA t106 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t106.
      t104 = NEW zcl_lnt_character_type( i_length = t105 i_extra = t106 ).
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA(t109) = ||.
        DATA t110 TYPE c LENGTH 1.
        CLEAR t110.
        t110 = cl_abap_conv_in_ce=>uccpi( 9 ).
        CONCATENATE t109 t110 INTO t109 RESPECTING BLANKS.
        DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t111->has = abap_true.
        t111->value = t109.
        t107 = t111.
      ELSE.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        t107 = t112.
      ENDIF.
      t102 = me->build_constant( i_name = t103 i_type_9913 = t104 i_value = t107 ).
      APPEND t102 TO t101->items.
      DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t113.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t113 = zcl_lnt_built_in=>get_cache.
      DATA t114 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t114.
      DATA(t115) = |%_MAXCHAR|.
      DATA t116 TYPE REF TO zcl_lnt_character_type.
      DATA(t117) = CONV int8( 1 ).
      DATA t118 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t118.
      t116 = NEW zcl_lnt_character_type( i_length = t117 i_extra = t118 ).
      DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t119.
      DATA(t120) = abap_true.
      IF t120 = abap_true.
        DATA(t121) = |��|.
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t121.
        t119 = t122.
      ELSE.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        t119 = t123.
      ENDIF.
      t114 = me->build_constant( i_name = t115 i_type_9913 = t116 i_value = t119 ).
      APPEND t114 TO t113->items.
      DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t124.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t124 = zcl_lnt_built_in=>get_cache.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t125.
      DATA(t126) = |%_MINCHAR|.
      DATA t127 TYPE REF TO zcl_lnt_character_type.
      DATA(t128) = CONV int8( 1 ).
      DATA t129 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t129.
      t127 = NEW zcl_lnt_character_type( i_length = t128 i_extra = t129 ).
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA(t131) = abap_true.
      IF t131 = abap_true.
        DATA(t132) = ||.
        DATA t133 TYPE c LENGTH 1.
        CLEAR t133.
        t133 = cl_abap_conv_in_ce=>uccpi( 0 ).
        CONCATENATE t132 t133 INTO t132 RESPECTING BLANKS.
        DATA t134 TYPE c LENGTH 1.
        CLEAR t134.
        t134 = cl_abap_conv_in_ce=>uccpi( 0 ).
        CONCATENATE t132 t134 INTO t132 RESPECTING BLANKS.
        DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t135->has = abap_true.
        t135->value = t132.
        t130 = t135.
      ELSE.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        t130 = t136.
      ENDIF.
      t125 = me->build_constant( i_name = t126 i_type_9913 = t127 i_value = t130 ).
      APPEND t125 TO t124->items.
      DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t137.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t137 = zcl_lnt_built_in=>get_cache.
      DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t138.
      DATA(t139) = |%_NEWLINE|.
      DATA t140 TYPE REF TO zcl_lnt_character_type.
      DATA(t141) = CONV int8( 1 ).
      DATA t142 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t142.
      t140 = NEW zcl_lnt_character_type( i_length = t141 i_extra = t142 ).
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA(t144) = abap_true.
      IF t144 = abap_true.
        DATA(t145) = ||.
        DATA t146 TYPE c LENGTH 1.
        CLEAR t146.
        t146 = cl_abap_conv_in_ce=>uccpi( 10 ).
        CONCATENATE t145 t146 INTO t145 RESPECTING BLANKS.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t145.
        t143 = t147.
      ELSE.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t143 = t148.
      ENDIF.
      t138 = me->build_constant( i_name = t139 i_type_9913 = t140 i_value = t143 ).
      APPEND t138 TO t137->items.
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t149.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t149 = zcl_lnt_built_in=>get_cache.
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t150.
      DATA(t151) = |%_VERTICAL_TAB|.
      DATA t152 TYPE REF TO zcl_lnt_character_type.
      DATA(t153) = CONV int8( 1 ).
      DATA t154 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t154.
      t152 = NEW zcl_lnt_character_type( i_length = t153 i_extra = t154 ).
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      DATA(t156) = abap_true.
      IF t156 = abap_true.
        DATA(t157) = ||.
        DATA t158 TYPE c LENGTH 1.
        CLEAR t158.
        t158 = cl_abap_conv_in_ce=>uccpi( 11 ).
        CONCATENATE t157 t158 INTO t157 RESPECTING BLANKS.
        DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t159->has = abap_true.
        t159->value = t157.
        t155 = t159.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t155 = t160.
      ENDIF.
      t150 = me->build_constant( i_name = t151 i_type_9913 = t152 i_value = t155 ).
      APPEND t150 TO t149->items.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t161.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t161 = zcl_lnt_built_in=>get_cache.
      DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t162.
      DATA(t163) = |abap_false|.
      DATA t164 TYPE REF TO zcl_lnt_character_type.
      CLEAR t164.
      DATA(t165) = CONV int8( 1 ).
      DATA t166 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t166.
      DATA(t167) = abap_true.
      IF t167 = abap_true.
        DATA t168 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t168.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        DATA(t170) = abap_true.
        IF t170 = abap_true.
          DATA(t171) = |ABAP_BOOL|.
          DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t172->has = abap_true.
          t172->value = t171.
          t169 = t172.
        ELSE.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          t169 = t173.
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t175.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = abap_true.
        IF t177 = abap_true.
          DATA(t178) = |ABAP_BOOL|.
          DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t179->has = abap_true.
          t179->value = t178.
          t176 = t179.
        ELSE.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t176 = t180.
        ENDIF.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t168 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t169 i_conversion_exit = t174 i_derived_from_constant = t175 i_ddic_name = t176 i_rtti_name = t181 i_description = t182 ).
        t166 = t168.
      ELSE.
        DATA t183 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t183.
        t166 = t183.
      ENDIF.
      t164 = NEW zcl_lnt_character_type( i_length = t165 i_extra = t166 ).
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = abap_true.
      IF t185 = abap_true.
        DATA(t186) = |' '|.
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t186.
        t184 = t187.
      ELSE.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t184 = t188.
      ENDIF.
      t162 = me->build_constant( i_name = t163 i_type_9913 = t164 i_value = t184 ).
      APPEND t162 TO t161->items.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t189.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t189 = zcl_lnt_built_in=>get_cache.
      DATA t190 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t190.
      DATA(t191) = |abap_true|.
      DATA t192 TYPE REF TO zcl_lnt_character_type.
      CLEAR t192.
      DATA(t193) = CONV int8( 1 ).
      DATA t194 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t194.
      DATA(t195) = abap_true.
      IF t195 = abap_true.
        DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        DATA(t198) = abap_true.
        IF t198 = abap_true.
          DATA(t199) = |ABAP_BOOL|.
          DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t200->has = abap_true.
          t200->value = t199.
          t197 = t200.
        ELSE.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          t197 = t201.
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t202.
        DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t203.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        DATA(t205) = abap_true.
        IF t205 = abap_true.
          DATA(t206) = |ABAP_BOOL|.
          DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t207->has = abap_true.
          t207->value = t206.
          t204 = t207.
        ELSE.
          DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t208.
          t204 = t208.
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t210.
        t196 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t197 i_conversion_exit = t202 i_derived_from_constant = t203 i_ddic_name = t204 i_rtti_name = t209 i_description = t210 ).
        t194 = t196.
      ELSE.
        DATA t211 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t211.
        t194 = t211.
      ENDIF.
      t192 = NEW zcl_lnt_character_type( i_length = t193 i_extra = t194 ).
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      DATA(t213) = abap_true.
      IF t213 = abap_true.
        DATA(t214) = |'X'|.
        DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t215->has = abap_true.
        t215->value = t214.
        t212 = t215.
      ELSE.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        t212 = t216.
      ENDIF.
      t190 = me->build_constant( i_name = t191 i_type_9913 = t192 i_value = t212 ).
      APPEND t190 TO t189->items.
      DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t217.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t217 = zcl_lnt_built_in=>get_cache.
      DATA t218 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t218.
      DATA(t219) = |abap_undefined|.
      DATA t220 TYPE REF TO zcl_lnt_character_type.
      CLEAR t220.
      DATA(t221) = CONV int8( 1 ).
      DATA t222 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t222.
      DATA(t223) = abap_true.
      IF t223 = abap_true.
        DATA t224 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = abap_true.
        IF t226 = abap_true.
          DATA(t227) = |ABAP_BOOL|.
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t227.
          t225 = t228.
        ELSE.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          t225 = t229.
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t231.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        DATA(t233) = abap_true.
        IF t233 = abap_true.
          DATA(t234) = |ABAP_BOOL|.
          DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t235->has = abap_true.
          t235->value = t234.
          t232 = t235.
        ELSE.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          t232 = t236.
        ENDIF.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        t224 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t225 i_conversion_exit = t230 i_derived_from_constant = t231 i_ddic_name = t232 i_rtti_name = t237 i_description = t238 ).
        t222 = t224.
      ELSE.
        DATA t239 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t239.
        t222 = t239.
      ENDIF.
      t220 = NEW zcl_lnt_character_type( i_length = t221 i_extra = t222 ).
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t240.
      DATA(t241) = abap_true.
      IF t241 = abap_true.
        DATA(t242) = |'-'|.
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t242.
        t240 = t243.
      ELSE.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t244.
        t240 = t244.
      ENDIF.
      t218 = me->build_constant( i_name = t219 i_type_9913 = t220 i_value = t240 ).
      APPEND t218 TO t217->items.
      DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t245.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t245 = zcl_lnt_built_in=>get_cache.
      DATA t246 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t246.
      DATA(t247) = |abap_off|.
      DATA t248 TYPE REF TO zcl_lnt_character_type.
      CLEAR t248.
      DATA(t249) = CONV int8( 1 ).
      DATA t250 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t250.
      DATA(t251) = abap_true.
      IF t251 = abap_true.
        DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t254) = abap_true.
        IF t254 = abap_true.
          DATA(t255) = |ABAP_BOOL|.
          DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t256->has = abap_true.
          t256->value = t255.
          t253 = t256.
        ELSE.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          t253 = t257.
        ENDIF.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA t259 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t259.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA(t262) = |ABAP_BOOL|.
          DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t263->has = abap_true.
          t263->value = t262.
          t260 = t263.
        ELSE.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          t260 = t264.
        ENDIF.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        t252 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t253 i_conversion_exit = t258 i_derived_from_constant = t259 i_ddic_name = t260 i_rtti_name = t265 i_description = t266 ).
        t250 = t252.
      ELSE.
        DATA t267 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t267.
        t250 = t267.
      ENDIF.
      t248 = NEW zcl_lnt_character_type( i_length = t249 i_extra = t250 ).
      DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t268.
      DATA(t269) = abap_true.
      IF t269 = abap_true.
        DATA(t270) = |' '|.
        DATA(t271) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t271->has = abap_true.
        t271->value = t270.
        t268 = t271.
      ELSE.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        t268 = t272.
      ENDIF.
      t246 = me->build_constant( i_name = t247 i_type_9913 = t248 i_value = t268 ).
      APPEND t246 TO t245->items.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t273.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t273 = zcl_lnt_built_in=>get_cache.
      DATA t274 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t274.
      DATA(t275) = |abap_on|.
      DATA t276 TYPE REF TO zcl_lnt_character_type.
      CLEAR t276.
      DATA(t277) = CONV int8( 1 ).
      DATA t278 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t278.
      DATA(t279) = abap_true.
      IF t279 = abap_true.
        DATA t280 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t280.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        DATA(t282) = abap_true.
        IF t282 = abap_true.
          DATA(t283) = |ABAP_BOOL|.
          DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t284->has = abap_true.
          t284->value = t283.
          t281 = t284.
        ELSE.
          DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t285.
          t281 = t285.
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t286.
        DATA t287 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA(t289) = abap_true.
        IF t289 = abap_true.
          DATA(t290) = |ABAP_BOOL|.
          DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t291->has = abap_true.
          t291->value = t290.
          t288 = t291.
        ELSE.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          t288 = t292.
        ENDIF.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        t280 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t281 i_conversion_exit = t286 i_derived_from_constant = t287 i_ddic_name = t288 i_rtti_name = t293 i_description = t294 ).
        t278 = t280.
      ELSE.
        DATA t295 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t295.
        t278 = t295.
      ENDIF.
      t276 = NEW zcl_lnt_character_type( i_length = t277 i_extra = t278 ).
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA(t297) = abap_true.
      IF t297 = abap_true.
        DATA(t298) = |'X'|.
        DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t299->has = abap_true.
        t299->value = t298.
        t296 = t299.
      ELSE.
        DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t300.
        t296 = t300.
      ENDIF.
      t274 = me->build_constant( i_name = t275 i_type_9913 = t276 i_value = t296 ).
      APPEND t274 TO t273->items.
      DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t301.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t301 = zcl_lnt_built_in=>get_cache.
      DATA t302 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t302.
      DATA(t303) = |col_background|.
      DATA t304 TYPE REF TO zcl_lnt_integer_type.
      DATA t305 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t305.
      t304 = zcl_lnt_integer_type=>get_db65( i_input_967e = t305 ).
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t306.
      DATA(t307) = abap_true.
      IF t307 = abap_true.
        DATA(t308) = |0|.
        DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t309->has = abap_true.
        t309->value = t308.
        t306 = t309.
      ELSE.
        DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t310.
        t306 = t310.
      ENDIF.
      t302 = me->build_constant( i_name = t303 i_type_9913 = t304 i_value = t306 ).
      APPEND t302 TO t301->items.
      DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t311.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t311 = zcl_lnt_built_in=>get_cache.
      DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t312.
      DATA(t313) = |col_heading|.
      DATA t314 TYPE REF TO zcl_lnt_integer_type.
      DATA t315 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t315.
      t314 = zcl_lnt_integer_type=>get_db65( i_input_967e = t315 ).
      DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t316.
      DATA(t317) = abap_true.
      IF t317 = abap_true.
        DATA(t318) = |1|.
        DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t319->has = abap_true.
        t319->value = t318.
        t316 = t319.
      ELSE.
        DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t320.
        t316 = t320.
      ENDIF.
      t312 = me->build_constant( i_name = t313 i_type_9913 = t314 i_value = t316 ).
      APPEND t312 TO t311->items.
      DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t321.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t321 = zcl_lnt_built_in=>get_cache.
      DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t322.
      DATA(t323) = |col_key|.
      DATA t324 TYPE REF TO zcl_lnt_integer_type.
      DATA t325 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t325.
      t324 = zcl_lnt_integer_type=>get_db65( i_input_967e = t325 ).
      DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t326.
      DATA(t327) = abap_true.
      IF t327 = abap_true.
        DATA(t328) = |4|.
        DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t329->has = abap_true.
        t329->value = t328.
        t326 = t329.
      ELSE.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        t326 = t330.
      ENDIF.
      t322 = me->build_constant( i_name = t323 i_type_9913 = t324 i_value = t326 ).
      APPEND t322 TO t321->items.
      DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t331.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t331 = zcl_lnt_built_in=>get_cache.
      DATA t332 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t332.
      DATA(t333) = |col_negative|.
      DATA t334 TYPE REF TO zcl_lnt_integer_type.
      DATA t335 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t335.
      t334 = zcl_lnt_integer_type=>get_db65( i_input_967e = t335 ).
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t336.
      DATA(t337) = abap_true.
      IF t337 = abap_true.
        DATA(t338) = |6|.
        DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t339->has = abap_true.
        t339->value = t338.
        t336 = t339.
      ELSE.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        t336 = t340.
      ENDIF.
      t332 = me->build_constant( i_name = t333 i_type_9913 = t334 i_value = t336 ).
      APPEND t332 TO t331->items.
      DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t341.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t341 = zcl_lnt_built_in=>get_cache.
      DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t342.
      DATA(t343) = |col_group|.
      DATA t344 TYPE REF TO zcl_lnt_integer_type.
      DATA t345 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t345.
      t344 = zcl_lnt_integer_type=>get_db65( i_input_967e = t345 ).
      DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t346.
      DATA(t347) = abap_true.
      IF t347 = abap_true.
        DATA(t348) = |7|.
        DATA(t349) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t349->has = abap_true.
        t349->value = t348.
        t346 = t349.
      ELSE.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t350.
        t346 = t350.
      ENDIF.
      t342 = me->build_constant( i_name = t343 i_type_9913 = t344 i_value = t346 ).
      APPEND t342 TO t341->items.
      DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t351.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t351 = zcl_lnt_built_in=>get_cache.
      DATA t352 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t352.
      DATA(t353) = |col_normal|.
      DATA t354 TYPE REF TO zcl_lnt_integer_type.
      DATA t355 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t355.
      t354 = zcl_lnt_integer_type=>get_db65( i_input_967e = t355 ).
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t356.
      DATA(t357) = abap_true.
      IF t357 = abap_true.
        DATA(t358) = |2|.
        DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t359->has = abap_true.
        t359->value = t358.
        t356 = t359.
      ELSE.
        DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t360.
        t356 = t360.
      ENDIF.
      t352 = me->build_constant( i_name = t353 i_type_9913 = t354 i_value = t356 ).
      APPEND t352 TO t351->items.
      DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t361.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t361 = zcl_lnt_built_in=>get_cache.
      DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t362.
      DATA(t363) = |col_positive|.
      DATA t364 TYPE REF TO zcl_lnt_integer_type.
      DATA t365 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t365.
      t364 = zcl_lnt_integer_type=>get_db65( i_input_967e = t365 ).
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t366.
      DATA(t367) = abap_true.
      IF t367 = abap_true.
        DATA(t368) = |5|.
        DATA(t369) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t369->has = abap_true.
        t369->value = t368.
        t366 = t369.
      ELSE.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        t366 = t370.
      ENDIF.
      t362 = me->build_constant( i_name = t363 i_type_9913 = t364 i_value = t366 ).
      APPEND t362 TO t361->items.
      DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t371.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t371 = zcl_lnt_built_in=>get_cache.
      DATA t372 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t372.
      DATA(t373) = |col_total|.
      DATA t374 TYPE REF TO zcl_lnt_integer_type.
      DATA t375 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t375.
      t374 = zcl_lnt_integer_type=>get_db65( i_input_967e = t375 ).
      DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t376.
      DATA(t377) = abap_true.
      IF t377 = abap_true.
        DATA(t378) = |3|.
        DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t379->has = abap_true.
        t379->value = t378.
        t376 = t379.
      ELSE.
        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t380.
        t376 = t380.
      ENDIF.
      t372 = me->build_constant( i_name = t373 i_type_9913 = t374 i_value = t376 ).
      APPEND t372 TO t371->items.
      DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t381.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t381 = zcl_lnt_built_in=>get_cache.
      DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t382.
      DATA(t383) = |space|.
      DATA t384 TYPE REF TO zcl_lnt_character_type.
      CLEAR t384.
      DATA(t385) = CONV int8( 1 ).
      DATA t386 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t386.
      DATA(t387) = abap_true.
      IF t387 = abap_true.
        DATA t388 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t388.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t389.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t391.
        DATA(t392) = abap_true.
        IF t392 = abap_true.
          DATA(t393) = abap_true.
          DATA(t394) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t394->has = abap_true.
          t394->value = t393.
          t391 = t394.
        ELSE.
          DATA t395 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t395.
          t391 = t395.
        ENDIF.
        DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t396.
        DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t397.
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t398.
        t388 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t389 i_conversion_exit = t390 i_derived_from_constant = t391 i_ddic_name = t396 i_rtti_name = t397 i_description = t398 ).
        t386 = t388.
      ELSE.
        DATA t399 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t399.
        t386 = t399.
      ENDIF.
      t384 = NEW zcl_lnt_character_type( i_length = t385 i_extra = t386 ).
      DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t400.
      DATA(t401) = abap_true.
      IF t401 = abap_true.
        DATA(t402) = |' '|.
        DATA(t403) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t403->has = abap_true.
        t403->value = t402.
        t400 = t403.
      ELSE.
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        t400 = t404.
      ENDIF.
      t382 = me->build_constant( i_name = t383 i_type_9913 = t384 i_value = t400 ).
      APPEND t382 TO t381->items.
    ENDIF.
    DATA(t405) = VALUE i( ).
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t406.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t406 = zcl_lnt_built_in=>get_cache.
    DATA t407 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t407.
    DATA t408 TYPE REF TO object.
    CLEAR t408.
    LOOP AT t406->items INTO t408.
      t407 ?= t408.
      DATA(t409) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t410) = CAST zcl_lnt_typed_identifier( t407 ).
      APPEND t410 TO t409->items.
    ENDLOOP.
    DATA t411 TYPE i.
    DATA(t412) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t411 = lines( t412->items ).
    t405 = t411.
    DATA t413 TYPE string.
    DATA t414 TYPE string.
    DATA(t415) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t416) = |\||.
    DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t417->has = abap_true.
    t417->value = t416.
    t414 = t415->join( p0 = t417 ).
    t413 = t414.
    DATA(t418) = VALUE abap_bool( ).
    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t419.
    DATA(t420) = abap_true.
    IF t420 = abap_true.
      DATA(t421) = t413.
      DATA(t422) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t422->has = abap_true.
      t422->value = t421.
      t419 = t422.
    ELSE.
      DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t423.
      t419 = t423.
    ENDIF.
    DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t424.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t424 = zcl_lnt_built_in=>extras_cache_key.
    DATA(t425) = VALUE abap_bool( ).
    DATA(t426) = VALUE abap_bool( ).
    IF t419 IS BOUND.
      t425 = t419->has.
    ENDIF.
    IF t424 IS BOUND.
      t426 = t424->has.
    ENDIF.
    IF t425 = t426.
      IF t425 = abap_false.
        t418 = abap_true.
      ELSEIF t419->value = t424->value.
        t418 = abap_true.
      ENDIF.
    ENDIF.
    IF t418 = abap_true.
      t418 = abap_false.
    ELSE.
      t418 = abap_true.
    ENDIF.
    IF t418 = abap_true.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t427.
      DATA(t428) = abap_true.
      IF t428 = abap_true.
        DATA(t429) = t413.
        DATA(t430) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t430->has = abap_true.
        t430->value = t429.
        t427 = t430.
      ELSE.
        DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t431.
        t427 = t431.
      ENDIF.
      zcl_lnt_built_in=>extras_cache_key = t427.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t432 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t432.
      zcl_lnt_built_in=>extras_cache = t432.
      DATA(t433) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
      DATA(t434) = VALUE string( ).
      LOOP AT t433->items INTO t434.
        DATA t435 TYPE REF TO zcl_lnt_lx_identifier.
        CLEAR t435.
        DATA t436 TYPE REF TO zcl_lnt_lx_identifier.
        CLEAR t436.
        DATA t437 TYPE REF TO zcl_lnt_position.
        CLEAR t437.
        DATA(t438) = VALUE int8( ).
        DATA t439 TYPE REF TO zcl_lnt_built_in.
        DATA(t440) = CAST zcl_lnt_built_in( me ).
        t439 = t440.
        DATA t441 TYPE int8.
        DATA t442 TYPE int8.
        DATA(t443) = CAST zcl_lnt_built_in( t439 ).
        t442 = t443->row.
        t441 = t442.
        DATA(t444) = CAST zcl_lnt_built_in( t439 ).
        DATA t445 TYPE int8.
        DATA(t446) = t441.
        DATA(t447) = CONV int8( 1 ).
        t445 = t446 + t447.
        IF t445 < range_int8_bound_min OR t445 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t444->row = t445.
        DATA(t448) = t441.
        t438 = t448.
        DATA(t449) = CONV int8( 1 ).
        t437 = NEW zcl_lnt_position( i_row = t438 i_col = t449 ).
        DATA(t450) = t434.
        t436 = NEW zcl_lnt_lx_identifier( i_start = t437 i_str = t450 ).
        t435 = t436.
        DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t451.
        IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
          zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
        ENDIF.
        t451 = zcl_lnt_built_in=>extras_cache.
        DATA t452 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t452.
        DATA(t453) = CAST zcl_lnt_lx_identifier( t435 ).
        DATA(t454) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t455 TYPE REF TO zcl_lnt_void_type.
        CLEAR t455.
        DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t456.
        DATA(t457) = abap_true.
        IF t457 = abap_true.
          DATA(t458) = t434.
          DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t459->has = abap_true.
          t459->value = t458.
          t456 = t459.
        ELSE.
          DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t460.
          t456 = t460.
        ENDIF.
        DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t461.
        t455 = zcl_lnt_void_type=>get_db65( i_voided = t456 i_qualified_name = t461 ).
        DATA t462 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t462.
        DATA(t463) = abap_true.
        IF t463 = abap_true.
          DATA t464 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t465 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t466 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t466.
          t465 = t466.
          DATA(t467) = CAST zlnt_runtime_arra_8ecd6afe19e0( t465 ).
          DATA(t468) = |read_only|.
          APPEND t468 TO t467->items.
          DATA(t469) = CAST zlnt_runtime_arra_8ecd6afe19e0( t465 ).
          DATA(t470) = |built-in|.
          APPEND t470 TO t469->items.
          DATA(t471) = CAST zlnt_runtime_arra_8ecd6afe19e0( t465 ).
          t464 = t471.
          t462 = t464.
        ELSE.
          DATA t472 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t472.
          t462 = t472.
        ENDIF.
        DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t473.
        DATA(t474) = abap_true.
        IF t474 = abap_true.
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t476) = |'?'|.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t475->sval = t476.
          t473 = t475.
        ELSE.
          DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t477.
          t473 = t477.
        ENDIF.
        t452 = NEW zcl_lnt_typed_identifier( i_token = t453 i_filename = t454 i_type_9913 = t455 i_meta = t462 i_value = t473 ).
        APPEND t452 TO t451->items.
      ENDLOOP.
    ENDIF.
    DATA(t478) = VALUE i( ).
    DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t479.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t479 = zcl_lnt_built_in=>extras_cache.
    DATA t480 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t480.
    DATA t481 TYPE REF TO object.
    CLEAR t481.
    LOOP AT t479->items INTO t481.
      t480 ?= t481.
      DATA(t482) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t483) = CAST zcl_lnt_typed_identifier( t480 ).
      APPEND t483 TO t482->items.
    ENDLOOP.
    DATA t484 TYPE i.
    DATA(t485) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t484 = lines( t485->items ).
    t478 = t484.
    DATA(t486) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t486.

  ENDMETHOD.

  METHOD build_variable.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    CLEAR t4.
    DATA(t5) = VALUE int8( ).
    DATA t6 TYPE REF TO zcl_lnt_built_in.
    DATA(t7) = CAST zcl_lnt_built_in( me ).
    t6 = t7.
    DATA t8 TYPE int8.
    DATA t9 TYPE int8.
    DATA(t10) = CAST zcl_lnt_built_in( t6 ).
    t9 = t10->row.
    t8 = t9.
    DATA(t11) = CAST zcl_lnt_built_in( t6 ).
    DATA t12 TYPE int8.
    DATA(t13) = t8.
    DATA(t14) = CONV int8( 1 ).
    t12 = t13 + t14.
    IF t12 < range_int8_bound_min OR t12 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t11->row = t12.
    DATA(t15) = t8.
    t5 = t15.
    DATA(t16) = CONV int8( 1 ).
    t4 = NEW zcl_lnt_position( i_row = t5 i_col = t16 ).
    DATA(t17) = t1.
    t3 = NEW zcl_lnt_lx_identifier( i_start = t4 i_str = t17 ).
    t2 = t3.
    DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t18.
    DATA(t19) = CAST zcl_lnt_lx_identifier( t2 ).
    DATA(t20) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t21 TYPE REF TO zcl_lnt_void_type.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = t1.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t24.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t22 = t26.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t21 = zcl_lnt_void_type=>get_db65( i_voided = t22 i_qualified_name = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t32.
      t31 = t32.
      DATA(t33) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      DATA(t34) = |built-in|.
      APPEND t34 TO t33->items.
      DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t31 ).
      t30 = t35.
      t28 = t30.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t36.
      t28 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t18 = NEW zcl_lnt_typed_identifier( i_token = t19 i_filename = t20 i_type_9913 = t21 i_meta = t28 i_value = t37 ).
    result = t18.

  ENDMETHOD.

  METHOD build_sy.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t4 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t5) = |index|.
    DATA t6 TYPE REF TO zcl_lnt_integer_type.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t7.
    t6 = zcl_lnt_integer_type=>get_db65( i_input_967e = t7 ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    t4 = NEW zcl_lnt_istructure_component( i_name = t5 i_type_9913 = t6 i_as_include = t8 i_suffix = t9 ).
    APPEND t4 TO t3->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t11 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t12) = |pagno|.
    DATA t13 TYPE REF TO zcl_lnt_integer_type.
    DATA t14 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t14.
    t13 = zcl_lnt_integer_type=>get_db65( i_input_967e = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    t11 = NEW zcl_lnt_istructure_component( i_name = t12 i_type_9913 = t13 i_as_include = t15 i_suffix = t16 ).
    APPEND t11 TO t10->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t18 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t19) = |tabix|.
    DATA t20 TYPE REF TO zcl_lnt_integer_type.
    DATA t21 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t21.
    t20 = zcl_lnt_integer_type=>get_db65( i_input_967e = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t18 = NEW zcl_lnt_istructure_component( i_name = t19 i_type_9913 = t20 i_as_include = t22 i_suffix = t23 ).
    APPEND t18 TO t17->items.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t25 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t26) = |tfill|.
    DATA t27 TYPE REF TO zcl_lnt_integer_type.
    DATA t28 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t28.
    t27 = zcl_lnt_integer_type=>get_db65( i_input_967e = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    t25 = NEW zcl_lnt_istructure_component( i_name = t26 i_type_9913 = t27 i_as_include = t29 i_suffix = t30 ).
    APPEND t25 TO t24->items.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t32 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t33) = |tlopc|.
    DATA t34 TYPE REF TO zcl_lnt_integer_type.
    DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t35.
    t34 = zcl_lnt_integer_type=>get_db65( i_input_967e = t35 ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t32 = NEW zcl_lnt_istructure_component( i_name = t33 i_type_9913 = t34 i_as_include = t36 i_suffix = t37 ).
    APPEND t32 TO t31->items.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t39 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t40) = |tmaxl|.
    DATA t41 TYPE REF TO zcl_lnt_integer_type.
    DATA t42 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t42.
    t41 = zcl_lnt_integer_type=>get_db65( i_input_967e = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    t39 = NEW zcl_lnt_istructure_component( i_name = t40 i_type_9913 = t41 i_as_include = t43 i_suffix = t44 ).
    APPEND t39 TO t38->items.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t46 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t47) = |toccu|.
    DATA t48 TYPE REF TO zcl_lnt_integer_type.
    DATA t49 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t49.
    t48 = zcl_lnt_integer_type=>get_db65( i_input_967e = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    t46 = NEW zcl_lnt_istructure_component( i_name = t47 i_type_9913 = t48 i_as_include = t50 i_suffix = t51 ).
    APPEND t46 TO t45->items.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t53 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t54) = |ttabc|.
    DATA t55 TYPE REF TO zcl_lnt_integer_type.
    DATA t56 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t56.
    t55 = zcl_lnt_integer_type=>get_db65( i_input_967e = t56 ).
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    t53 = NEW zcl_lnt_istructure_component( i_name = t54 i_type_9913 = t55 i_as_include = t57 i_suffix = t58 ).
    APPEND t53 TO t52->items.
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t60 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t61) = |tstis|.
    DATA t62 TYPE REF TO zcl_lnt_integer_type.
    DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t63.
    t62 = zcl_lnt_integer_type=>get_db65( i_input_967e = t63 ).
    DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t65.
    t60 = NEW zcl_lnt_istructure_component( i_name = t61 i_type_9913 = t62 i_as_include = t64 i_suffix = t65 ).
    APPEND t60 TO t59->items.
    DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t67 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t68) = |ttabi|.
    DATA t69 TYPE REF TO zcl_lnt_integer_type.
    DATA t70 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t70.
    t69 = zcl_lnt_integer_type=>get_db65( i_input_967e = t70 ).
    DATA t71 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t72.
    t67 = NEW zcl_lnt_istructure_component( i_name = t68 i_type_9913 = t69 i_as_include = t71 i_suffix = t72 ).
    APPEND t67 TO t66->items.
    DATA(t73) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t74 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t75) = |dbcnt|.
    DATA t76 TYPE REF TO zcl_lnt_integer_type.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t77.
    t76 = zcl_lnt_integer_type=>get_db65( i_input_967e = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t79.
    t74 = NEW zcl_lnt_istructure_component( i_name = t75 i_type_9913 = t76 i_as_include = t78 i_suffix = t79 ).
    APPEND t74 TO t73->items.
    DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t81 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t82) = |fdpos|.
    DATA t83 TYPE REF TO zcl_lnt_integer_type.
    DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t84.
    t83 = zcl_lnt_integer_type=>get_db65( i_input_967e = t84 ).
    DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t86.
    t81 = NEW zcl_lnt_istructure_component( i_name = t82 i_type_9913 = t83 i_as_include = t85 i_suffix = t86 ).
    APPEND t81 TO t80->items.
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t88 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t89) = |colno|.
    DATA t90 TYPE REF TO zcl_lnt_integer_type.
    DATA t91 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t91.
    t90 = zcl_lnt_integer_type=>get_db65( i_input_967e = t91 ).
    DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t93.
    t88 = NEW zcl_lnt_istructure_component( i_name = t89 i_type_9913 = t90 i_as_include = t92 i_suffix = t93 ).
    APPEND t88 TO t87->items.
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t95 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t96) = |linct|.
    DATA t97 TYPE REF TO zcl_lnt_integer_type.
    DATA t98 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t98.
    t97 = zcl_lnt_integer_type=>get_db65( i_input_967e = t98 ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t100.
    t95 = NEW zcl_lnt_istructure_component( i_name = t96 i_type_9913 = t97 i_as_include = t99 i_suffix = t100 ).
    APPEND t95 TO t94->items.
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t102 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t103) = |linno|.
    DATA t104 TYPE REF TO zcl_lnt_integer_type.
    DATA t105 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t105.
    t104 = zcl_lnt_integer_type=>get_db65( i_input_967e = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t107.
    t102 = NEW zcl_lnt_istructure_component( i_name = t103 i_type_9913 = t104 i_as_include = t106 i_suffix = t107 ).
    APPEND t102 TO t101->items.
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t109 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t110) = |linsz|.
    DATA t111 TYPE REF TO zcl_lnt_integer_type.
    DATA t112 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t112.
    t111 = zcl_lnt_integer_type=>get_db65( i_input_967e = t112 ).
    DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t114.
    t109 = NEW zcl_lnt_istructure_component( i_name = t110 i_type_9913 = t111 i_as_include = t113 i_suffix = t114 ).
    APPEND t109 TO t108->items.
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t116 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t117) = |pagct|.
    DATA t118 TYPE REF TO zcl_lnt_integer_type.
    DATA t119 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t119.
    t118 = zcl_lnt_integer_type=>get_db65( i_input_967e = t119 ).
    DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t121.
    t116 = NEW zcl_lnt_istructure_component( i_name = t117 i_type_9913 = t118 i_as_include = t120 i_suffix = t121 ).
    APPEND t116 TO t115->items.
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t123 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t124) = |macol|.
    DATA t125 TYPE REF TO zcl_lnt_integer_type.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t126.
    t125 = zcl_lnt_integer_type=>get_db65( i_input_967e = t126 ).
    DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t128.
    t123 = NEW zcl_lnt_istructure_component( i_name = t124 i_type_9913 = t125 i_as_include = t127 i_suffix = t128 ).
    APPEND t123 TO t122->items.
    DATA(t129) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t130 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t131) = |marow|.
    DATA t132 TYPE REF TO zcl_lnt_integer_type.
    DATA t133 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t133.
    t132 = zcl_lnt_integer_type=>get_db65( i_input_967e = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t135.
    t130 = NEW zcl_lnt_istructure_component( i_name = t131 i_type_9913 = t132 i_as_include = t134 i_suffix = t135 ).
    APPEND t130 TO t129->items.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t137 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t138) = |tleng|.
    DATA t139 TYPE REF TO zcl_lnt_integer_type.
    DATA t140 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t140.
    t139 = zcl_lnt_integer_type=>get_db65( i_input_967e = t140 ).
    DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t142.
    t137 = NEW zcl_lnt_istructure_component( i_name = t138 i_type_9913 = t139 i_as_include = t141 i_suffix = t142 ).
    APPEND t137 TO t136->items.
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t144 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t145) = |sfoff|.
    DATA t146 TYPE REF TO zcl_lnt_integer_type.
    DATA t147 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t147.
    t146 = zcl_lnt_integer_type=>get_db65( i_input_967e = t147 ).
    DATA t148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    t144 = NEW zcl_lnt_istructure_component( i_name = t145 i_type_9913 = t146 i_as_include = t148 i_suffix = t149 ).
    APPEND t144 TO t143->items.
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t151 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t152) = |willi|.
    DATA t153 TYPE REF TO zcl_lnt_integer_type.
    DATA t154 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t154.
    t153 = zcl_lnt_integer_type=>get_db65( i_input_967e = t154 ).
    DATA t155 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t156.
    t151 = NEW zcl_lnt_istructure_component( i_name = t152 i_type_9913 = t153 i_as_include = t155 i_suffix = t156 ).
    APPEND t151 TO t150->items.
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t158 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t159) = |lilli|.
    DATA t160 TYPE REF TO zcl_lnt_integer_type.
    DATA t161 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t161.
    t160 = zcl_lnt_integer_type=>get_db65( i_input_967e = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t163.
    t158 = NEW zcl_lnt_istructure_component( i_name = t159 i_type_9913 = t160 i_as_include = t162 i_suffix = t163 ).
    APPEND t158 TO t157->items.
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t165 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t166) = |subrc|.
    DATA t167 TYPE REF TO zcl_lnt_integer_type.
    DATA t168 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t168.
    t167 = zcl_lnt_integer_type=>get_db65( i_input_967e = t168 ).
    DATA t169 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t170.
    t165 = NEW zcl_lnt_istructure_component( i_name = t166 i_type_9913 = t167 i_as_include = t169 i_suffix = t170 ).
    APPEND t165 TO t164->items.
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t172 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t173) = |fleng|.
    DATA t174 TYPE REF TO zcl_lnt_integer_type.
    DATA t175 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t175.
    t174 = zcl_lnt_integer_type=>get_db65( i_input_967e = t175 ).
    DATA t176 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t177.
    t172 = NEW zcl_lnt_istructure_component( i_name = t173 i_type_9913 = t174 i_as_include = t176 i_suffix = t177 ).
    APPEND t172 TO t171->items.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t179 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t180) = |cucol|.
    DATA t181 TYPE REF TO zcl_lnt_integer_type.
    DATA t182 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t182.
    t181 = zcl_lnt_integer_type=>get_db65( i_input_967e = t182 ).
    DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t184.
    t179 = NEW zcl_lnt_istructure_component( i_name = t180 i_type_9913 = t181 i_as_include = t183 i_suffix = t184 ).
    APPEND t179 TO t178->items.
    DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t186 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t187) = |curow|.
    DATA t188 TYPE REF TO zcl_lnt_integer_type.
    DATA t189 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t189.
    t188 = zcl_lnt_integer_type=>get_db65( i_input_967e = t189 ).
    DATA t190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t191.
    t186 = NEW zcl_lnt_istructure_component( i_name = t187 i_type_9913 = t188 i_as_include = t190 i_suffix = t191 ).
    APPEND t186 TO t185->items.
    DATA(t192) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t193 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t194) = |lsind|.
    DATA t195 TYPE REF TO zcl_lnt_integer_type.
    DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t196.
    t195 = zcl_lnt_integer_type=>get_db65( i_input_967e = t196 ).
    DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t198.
    t193 = NEW zcl_lnt_istructure_component( i_name = t194 i_type_9913 = t195 i_as_include = t197 i_suffix = t198 ).
    APPEND t193 TO t192->items.
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t200 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t201) = |listi|.
    DATA t202 TYPE REF TO zcl_lnt_integer_type.
    DATA t203 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t203.
    t202 = zcl_lnt_integer_type=>get_db65( i_input_967e = t203 ).
    DATA t204 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t205.
    t200 = NEW zcl_lnt_istructure_component( i_name = t201 i_type_9913 = t202 i_as_include = t204 i_suffix = t205 ).
    APPEND t200 TO t199->items.
    DATA(t206) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t207 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t208) = |stepl|.
    DATA t209 TYPE REF TO zcl_lnt_integer_type.
    DATA t210 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t210.
    t209 = zcl_lnt_integer_type=>get_db65( i_input_967e = t210 ).
    DATA t211 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t212.
    t207 = NEW zcl_lnt_istructure_component( i_name = t208 i_type_9913 = t209 i_as_include = t211 i_suffix = t212 ).
    APPEND t207 TO t206->items.
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t214 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t215) = |tpagi|.
    DATA t216 TYPE REF TO zcl_lnt_integer_type.
    DATA t217 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t217.
    t216 = zcl_lnt_integer_type=>get_db65( i_input_967e = t217 ).
    DATA t218 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t219.
    t214 = NEW zcl_lnt_istructure_component( i_name = t215 i_type_9913 = t216 i_as_include = t218 i_suffix = t219 ).
    APPEND t214 TO t213->items.
    DATA(t220) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t221 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t222) = |winx1|.
    DATA t223 TYPE REF TO zcl_lnt_integer_type.
    DATA t224 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t224.
    t223 = zcl_lnt_integer_type=>get_db65( i_input_967e = t224 ).
    DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t226.
    t221 = NEW zcl_lnt_istructure_component( i_name = t222 i_type_9913 = t223 i_as_include = t225 i_suffix = t226 ).
    APPEND t221 TO t220->items.
    DATA(t227) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t228 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t229) = |winy1|.
    DATA t230 TYPE REF TO zcl_lnt_integer_type.
    DATA t231 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t231.
    t230 = zcl_lnt_integer_type=>get_db65( i_input_967e = t231 ).
    DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t233.
    t228 = NEW zcl_lnt_istructure_component( i_name = t229 i_type_9913 = t230 i_as_include = t232 i_suffix = t233 ).
    APPEND t228 TO t227->items.
    DATA(t234) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t235 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t236) = |winx2|.
    DATA t237 TYPE REF TO zcl_lnt_integer_type.
    DATA t238 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t238.
    t237 = zcl_lnt_integer_type=>get_db65( i_input_967e = t238 ).
    DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t240.
    t235 = NEW zcl_lnt_istructure_component( i_name = t236 i_type_9913 = t237 i_as_include = t239 i_suffix = t240 ).
    APPEND t235 TO t234->items.
    DATA(t241) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t242 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t243) = |winy2|.
    DATA t244 TYPE REF TO zcl_lnt_integer_type.
    DATA t245 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t245.
    t244 = zcl_lnt_integer_type=>get_db65( i_input_967e = t245 ).
    DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t247.
    t242 = NEW zcl_lnt_istructure_component( i_name = t243 i_type_9913 = t244 i_as_include = t246 i_suffix = t247 ).
    APPEND t242 TO t241->items.
    DATA(t248) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t249 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t250) = |winco|.
    DATA t251 TYPE REF TO zcl_lnt_integer_type.
    DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t252.
    t251 = zcl_lnt_integer_type=>get_db65( i_input_967e = t252 ).
    DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t254.
    t249 = NEW zcl_lnt_istructure_component( i_name = t250 i_type_9913 = t251 i_as_include = t253 i_suffix = t254 ).
    APPEND t249 TO t248->items.
    DATA(t255) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t256 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t257) = |winro|.
    DATA t258 TYPE REF TO zcl_lnt_integer_type.
    DATA t259 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t259.
    t258 = zcl_lnt_integer_type=>get_db65( i_input_967e = t259 ).
    DATA t260 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t261.
    t256 = NEW zcl_lnt_istructure_component( i_name = t257 i_type_9913 = t258 i_as_include = t260 i_suffix = t261 ).
    APPEND t256 TO t255->items.
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t263 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t264) = |windi|.
    DATA t265 TYPE REF TO zcl_lnt_integer_type.
    DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t266.
    t265 = zcl_lnt_integer_type=>get_db65( i_input_967e = t266 ).
    DATA t267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t268.
    t263 = NEW zcl_lnt_istructure_component( i_name = t264 i_type_9913 = t265 i_as_include = t267 i_suffix = t268 ).
    APPEND t263 TO t262->items.
    DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t270 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t271) = |srows|.
    DATA t272 TYPE REF TO zcl_lnt_integer_type.
    DATA t273 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t273.
    t272 = zcl_lnt_integer_type=>get_db65( i_input_967e = t273 ).
    DATA t274 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t275.
    t270 = NEW zcl_lnt_istructure_component( i_name = t271 i_type_9913 = t272 i_as_include = t274 i_suffix = t275 ).
    APPEND t270 TO t269->items.
    DATA(t276) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t277 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t278) = |scols|.
    DATA t279 TYPE REF TO zcl_lnt_integer_type.
    DATA t280 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t280.
    t279 = zcl_lnt_integer_type=>get_db65( i_input_967e = t280 ).
    DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t282.
    t277 = NEW zcl_lnt_istructure_component( i_name = t278 i_type_9913 = t279 i_as_include = t281 i_suffix = t282 ).
    APPEND t277 TO t276->items.
    DATA(t283) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t284 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t285) = |loopc|.
    DATA t286 TYPE REF TO zcl_lnt_integer_type.
    DATA t287 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t287.
    t286 = zcl_lnt_integer_type=>get_db65( i_input_967e = t287 ).
    DATA t288 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t289.
    t284 = NEW zcl_lnt_istructure_component( i_name = t285 i_type_9913 = t286 i_as_include = t288 i_suffix = t289 ).
    APPEND t284 TO t283->items.
    DATA(t290) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t291 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t292) = |folen|.
    DATA t293 TYPE REF TO zcl_lnt_integer_type.
    DATA t294 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t294.
    t293 = zcl_lnt_integer_type=>get_db65( i_input_967e = t294 ).
    DATA t295 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t296.
    t291 = NEW zcl_lnt_istructure_component( i_name = t292 i_type_9913 = t293 i_as_include = t295 i_suffix = t296 ).
    APPEND t291 TO t290->items.
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t298 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t299) = |fodec|.
    DATA t300 TYPE REF TO zcl_lnt_integer_type.
    DATA t301 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t301.
    t300 = zcl_lnt_integer_type=>get_db65( i_input_967e = t301 ).
    DATA t302 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t303.
    t298 = NEW zcl_lnt_istructure_component( i_name = t299 i_type_9913 = t300 i_as_include = t302 i_suffix = t303 ).
    APPEND t298 TO t297->items.
    DATA(t304) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t305 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t306) = |tzone|.
    DATA t307 TYPE REF TO zcl_lnt_integer_type.
    DATA t308 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t308.
    t307 = zcl_lnt_integer_type=>get_db65( i_input_967e = t308 ).
    DATA t309 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t310.
    t305 = NEW zcl_lnt_istructure_component( i_name = t306 i_type_9913 = t307 i_as_include = t309 i_suffix = t310 ).
    APPEND t305 TO t304->items.
    DATA(t311) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t312 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t313) = |dayst|.
    DATA t314 TYPE REF TO zcl_lnt_character_type.
    DATA(t315) = CONV int8( 1 ).
    DATA t316 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t316.
    t314 = NEW zcl_lnt_character_type( i_length = t315 i_extra = t316 ).
    DATA t317 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t318.
    t312 = NEW zcl_lnt_istructure_component( i_name = t313 i_type_9913 = t314 i_as_include = t317 i_suffix = t318 ).
    APPEND t312 TO t311->items.
    DATA(t319) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t320 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t321) = |ftype|.
    DATA t322 TYPE REF TO zcl_lnt_character_type.
    DATA(t323) = CONV int8( 1 ).
    DATA t324 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t324.
    t322 = NEW zcl_lnt_character_type( i_length = t323 i_extra = t324 ).
    DATA t325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t326.
    t320 = NEW zcl_lnt_istructure_component( i_name = t321 i_type_9913 = t322 i_as_include = t325 i_suffix = t326 ).
    APPEND t320 TO t319->items.
    DATA(t327) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t328 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t329) = |appli|.
    DATA t330 TYPE REF TO zcl_lnt_hex_type.
    DATA(t331) = CONV int8( 2 ).
    DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t332.
    t330 = NEW zcl_lnt_hex_type( i_length = t331 i_qualified_name = t332 ).
    DATA t333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t334.
    t328 = NEW zcl_lnt_istructure_component( i_name = t329 i_type_9913 = t330 i_as_include = t333 i_suffix = t334 ).
    APPEND t328 TO t327->items.
    DATA(t335) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t336 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t337) = |fdayw|.
    DATA t338 TYPE REF TO zcl_lnt_any_type.
    DATA t339 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t339.
    t338 = zcl_lnt_any_type=>get_db65( i_input_967e = t339 ).
    DATA t340 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t341.
    t336 = NEW zcl_lnt_istructure_component( i_name = t337 i_type_9913 = t338 i_as_include = t340 i_suffix = t341 ).
    APPEND t336 TO t335->items.
    DATA(t342) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t343 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t344) = |ccurs|.
    DATA t345 TYPE REF TO zcl_lnt_packed_type.
    DATA(t346) = CONV int8( 5 ).
    DATA(t347) = CONV int8( 0 ).
    DATA t348 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t348.
    t345 = NEW zcl_lnt_packed_type( i_length = t346 i_decimals_2eed = t347 i_extra = t348 ).
    DATA t349 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t350.
    t343 = NEW zcl_lnt_istructure_component( i_name = t344 i_type_9913 = t345 i_as_include = t349 i_suffix = t350 ).
    APPEND t343 TO t342->items.
    DATA(t351) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t352 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t353) = |ccurt|.
    DATA t354 TYPE REF TO zcl_lnt_packed_type.
    DATA(t355) = CONV int8( 5 ).
    DATA(t356) = CONV int8( 0 ).
    DATA t357 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t357.
    t354 = NEW zcl_lnt_packed_type( i_length = t355 i_decimals_2eed = t356 i_extra = t357 ).
    DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t359.
    t352 = NEW zcl_lnt_istructure_component( i_name = t353 i_type_9913 = t354 i_as_include = t358 i_suffix = t359 ).
    APPEND t352 TO t351->items.
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t361 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t362) = |debug|.
    DATA t363 TYPE REF TO zcl_lnt_character_type.
    DATA(t364) = CONV int8( 1 ).
    DATA t365 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t365.
    t363 = NEW zcl_lnt_character_type( i_length = t364 i_extra = t365 ).
    DATA t366 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t367.
    t361 = NEW zcl_lnt_istructure_component( i_name = t362 i_type_9913 = t363 i_as_include = t366 i_suffix = t367 ).
    APPEND t361 TO t360->items.
    DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t369 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t370) = |ctype|.
    DATA t371 TYPE REF TO zcl_lnt_character_type.
    DATA(t372) = CONV int8( 1 ).
    DATA t373 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t373.
    t371 = NEW zcl_lnt_character_type( i_length = t372 i_extra = t373 ).
    DATA t374 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t375.
    t369 = NEW zcl_lnt_istructure_component( i_name = t370 i_type_9913 = t371 i_as_include = t374 i_suffix = t375 ).
    APPEND t369 TO t368->items.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t377 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t377.
    DATA(t378) = |input|.
    DATA t379 TYPE REF TO zcl_lnt_character_type.
    CLEAR t379.
    DATA(t380) = CONV int8( 1 ).
    DATA t381 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t381.
    DATA(t382) = abap_true.
    IF t382 = abap_true.
      DATA t383 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t383.
      DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t384.
      DATA(t385) = abap_true.
      IF t385 = abap_true.
        DATA(t386) = |sy-input|.
        DATA(t387) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t387->has = abap_true.
        t387->value = t386.
        t384 = t387.
      ELSE.
        DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t388.
        t384 = t388.
      ENDIF.
      DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t389.
      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t390.
      DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t391.
      DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t392.
      DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t393.
      t383 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t384 i_conversion_exit = t389 i_derived_from_constant = t390 i_ddic_name = t391 i_rtti_name = t392 i_description = t393 ).
      t381 = t383.
    ELSE.
      DATA t394 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t394.
      t381 = t394.
    ENDIF.
    t379 = NEW zcl_lnt_character_type( i_length = t380 i_extra = t381 ).
    DATA t395 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t396.
    t377 = NEW zcl_lnt_istructure_component( i_name = t378 i_type_9913 = t379 i_as_include = t395 i_suffix = t396 ).
    APPEND t377 TO t376->items.
    DATA(t397) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t398 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t398.
    DATA(t399) = |langu|.
    DATA t400 TYPE REF TO zcl_lnt_character_type.
    CLEAR t400.
    DATA(t401) = CONV int8( 1 ).
    DATA t402 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t402.
    DATA(t403) = abap_true.
    IF t403 = abap_true.
      DATA t404 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t404.
      DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t405.
      DATA(t406) = abap_true.
      IF t406 = abap_true.
        DATA(t407) = |sy-langu|.
        DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t408->has = abap_true.
        t408->value = t407.
        t405 = t408.
      ELSE.
        DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t409.
        t405 = t409.
      ENDIF.
      DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t410.
      DATA(t411) = abap_true.
      IF t411 = abap_true.
        DATA(t412) = |ISOLA|.
        DATA(t413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t413->has = abap_true.
        t413->value = t412.
        t410 = t413.
      ELSE.
        DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t414.
        t410 = t414.
      ENDIF.
      DATA t415 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t415.
      DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t416.
      DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t417.
      DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t418.
      t404 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t405 i_conversion_exit = t410 i_derived_from_constant = t415 i_ddic_name = t416 i_rtti_name = t417 i_description = t418 ).
      t402 = t404.
    ELSE.
      DATA t419 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t419.
      t402 = t419.
    ENDIF.
    t400 = NEW zcl_lnt_character_type( i_length = t401 i_extra = t402 ).
    DATA t420 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t420.
    DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t421.
    t398 = NEW zcl_lnt_istructure_component( i_name = t399 i_type_9913 = t400 i_as_include = t420 i_suffix = t421 ).
    APPEND t398 TO t397->items.
    DATA(t422) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t423 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t424) = |modno|.
    DATA t425 TYPE REF TO zcl_lnt_integer_type.
    DATA t426 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t426.
    t425 = zcl_lnt_integer_type=>get_db65( i_input_967e = t426 ).
    DATA t427 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t428.
    t423 = NEW zcl_lnt_istructure_component( i_name = t424 i_type_9913 = t425 i_as_include = t427 i_suffix = t428 ).
    APPEND t423 TO t422->items.
    DATA(t429) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t430 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t430.
    DATA(t431) = |batch|.
    DATA t432 TYPE REF TO zcl_lnt_character_type.
    CLEAR t432.
    DATA(t433) = CONV int8( 1 ).
    DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t434.
    DATA(t435) = abap_true.
    IF t435 = abap_true.
      DATA t436 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t436.
      DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t437.
      DATA(t438) = abap_true.
      IF t438 = abap_true.
        DATA(t439) = |sy-batch|.
        DATA(t440) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t440->has = abap_true.
        t440->value = t439.
        t437 = t440.
      ELSE.
        DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t441.
        t437 = t441.
      ENDIF.
      DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t442.
      DATA t443 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t443.
      DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t444.
      DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t445.
      DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t446.
      t436 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t437 i_conversion_exit = t442 i_derived_from_constant = t443 i_ddic_name = t444 i_rtti_name = t445 i_description = t446 ).
      t434 = t436.
    ELSE.
      DATA t447 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t447.
      t434 = t447.
    ENDIF.
    t432 = NEW zcl_lnt_character_type( i_length = t433 i_extra = t434 ).
    DATA t448 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t448.
    DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t449.
    t430 = NEW zcl_lnt_istructure_component( i_name = t431 i_type_9913 = t432 i_as_include = t448 i_suffix = t449 ).
    APPEND t430 TO t429->items.
    DATA(t450) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t451 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t451.
    DATA(t452) = |binpt|.
    DATA t453 TYPE REF TO zcl_lnt_character_type.
    CLEAR t453.
    DATA(t454) = CONV int8( 1 ).
    DATA t455 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t455.
    DATA(t456) = abap_true.
    IF t456 = abap_true.
      DATA t457 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t457.
      DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t458.
      DATA(t459) = abap_true.
      IF t459 = abap_true.
        DATA(t460) = |sy-binpt|.
        DATA(t461) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t461->has = abap_true.
        t461->value = t460.
        t458 = t461.
      ELSE.
        DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t462.
        t458 = t462.
      ENDIF.
      DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t463.
      DATA t464 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t464.
      DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t465.
      DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t466.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t467.
      t457 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t458 i_conversion_exit = t463 i_derived_from_constant = t464 i_ddic_name = t465 i_rtti_name = t466 i_description = t467 ).
      t455 = t457.
    ELSE.
      DATA t468 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t468.
      t455 = t468.
    ENDIF.
    t453 = NEW zcl_lnt_character_type( i_length = t454 i_extra = t455 ).
    DATA t469 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t470.
    t451 = NEW zcl_lnt_istructure_component( i_name = t452 i_type_9913 = t453 i_as_include = t469 i_suffix = t470 ).
    APPEND t451 TO t450->items.
    DATA(t471) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t472 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t472.
    DATA(t473) = |calld|.
    DATA t474 TYPE REF TO zcl_lnt_character_type.
    CLEAR t474.
    DATA(t475) = CONV int8( 1 ).
    DATA t476 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t476.
    DATA(t477) = abap_true.
    IF t477 = abap_true.
      DATA t478 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t478.
      DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t479.
      DATA(t480) = abap_true.
      IF t480 = abap_true.
        DATA(t481) = |sy-calld|.
        DATA(t482) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t482->has = abap_true.
        t482->value = t481.
        t479 = t482.
      ELSE.
        DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t483.
        t479 = t483.
      ENDIF.
      DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t484.
      DATA t485 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t485.
      DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t486.
      DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t487.
      DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t488.
      t478 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t479 i_conversion_exit = t484 i_derived_from_constant = t485 i_ddic_name = t486 i_rtti_name = t487 i_description = t488 ).
      t476 = t478.
    ELSE.
      DATA t489 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t489.
      t476 = t489.
    ENDIF.
    t474 = NEW zcl_lnt_character_type( i_length = t475 i_extra = t476 ).
    DATA t490 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t490.
    DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t491.
    t472 = NEW zcl_lnt_istructure_component( i_name = t473 i_type_9913 = t474 i_as_include = t490 i_suffix = t491 ).
    APPEND t472 TO t471->items.
    DATA(t492) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t493 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t493.
    DATA(t494) = |dynnr|.
    DATA t495 TYPE REF TO zcl_lnt_character_type.
    CLEAR t495.
    DATA(t496) = CONV int8( 4 ).
    DATA t497 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t497.
    DATA(t498) = abap_true.
    IF t498 = abap_true.
      DATA t499 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t499.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t500.
      DATA(t501) = abap_true.
      IF t501 = abap_true.
        DATA(t502) = |sy-dynnr|.
        DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t503->has = abap_true.
        t503->value = t502.
        t500 = t503.
      ELSE.
        DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t504.
        t500 = t504.
      ENDIF.
      DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t505.
      DATA t506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t506.
      DATA t507 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t507.
      DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t508.
      DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t509.
      t499 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t500 i_conversion_exit = t505 i_derived_from_constant = t506 i_ddic_name = t507 i_rtti_name = t508 i_description = t509 ).
      t497 = t499.
    ELSE.
      DATA t510 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t510.
      t497 = t510.
    ENDIF.
    t495 = NEW zcl_lnt_character_type( i_length = t496 i_extra = t497 ).
    DATA t511 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t511.
    DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t512.
    t493 = NEW zcl_lnt_istructure_component( i_name = t494 i_type_9913 = t495 i_as_include = t511 i_suffix = t512 ).
    APPEND t493 TO t492->items.
    DATA(t513) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t514 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t514.
    DATA(t515) = |dyngr|.
    DATA t516 TYPE REF TO zcl_lnt_character_type.
    CLEAR t516.
    DATA(t517) = CONV int8( 4 ).
    DATA t518 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t518.
    DATA(t519) = abap_true.
    IF t519 = abap_true.
      DATA t520 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t520.
      DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t521.
      DATA(t522) = abap_true.
      IF t522 = abap_true.
        DATA(t523) = |sy-dyngr|.
        DATA(t524) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t524->has = abap_true.
        t524->value = t523.
        t521 = t524.
      ELSE.
        DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t525.
        t521 = t525.
      ENDIF.
      DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t526.
      DATA t527 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t527.
      DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t528.
      DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t529.
      DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t530.
      t520 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t521 i_conversion_exit = t526 i_derived_from_constant = t527 i_ddic_name = t528 i_rtti_name = t529 i_description = t530 ).
      t518 = t520.
    ELSE.
      DATA t531 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t531.
      t518 = t531.
    ENDIF.
    t516 = NEW zcl_lnt_character_type( i_length = t517 i_extra = t518 ).
    DATA t532 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t532.
    DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t533.
    t514 = NEW zcl_lnt_istructure_component( i_name = t515 i_type_9913 = t516 i_as_include = t532 i_suffix = t533 ).
    APPEND t514 TO t513->items.
    DATA(t534) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t535 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t536) = |newpa|.
    DATA t537 TYPE REF TO zcl_lnt_character_type.
    DATA(t538) = CONV int8( 1 ).
    DATA t539 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t539.
    t537 = NEW zcl_lnt_character_type( i_length = t538 i_extra = t539 ).
    DATA t540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t540.
    DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t541.
    t535 = NEW zcl_lnt_istructure_component( i_name = t536 i_type_9913 = t537 i_as_include = t540 i_suffix = t541 ).
    APPEND t535 TO t534->items.
    DATA(t542) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t543 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t544) = |pri40|.
    DATA t545 TYPE REF TO zcl_lnt_character_type.
    DATA(t546) = CONV int8( 1 ).
    DATA t547 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t547.
    t545 = NEW zcl_lnt_character_type( i_length = t546 i_extra = t547 ).
    DATA t548 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t549.
    t543 = NEW zcl_lnt_istructure_component( i_name = t544 i_type_9913 = t545 i_as_include = t548 i_suffix = t549 ).
    APPEND t543 TO t542->items.
    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t551 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t552) = |rstrt|.
    DATA t553 TYPE REF TO zcl_lnt_character_type.
    DATA(t554) = CONV int8( 1 ).
    DATA t555 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t555.
    t553 = NEW zcl_lnt_character_type( i_length = t554 i_extra = t555 ).
    DATA t556 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t557.
    t551 = NEW zcl_lnt_istructure_component( i_name = t552 i_type_9913 = t553 i_as_include = t556 i_suffix = t557 ).
    APPEND t551 TO t550->items.
    DATA(t558) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t559 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t559.
    DATA(t560) = |wtitl|.
    DATA t561 TYPE REF TO zcl_lnt_character_type.
    CLEAR t561.
    DATA(t562) = CONV int8( 1 ).
    DATA t563 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t563.
    DATA(t564) = abap_true.
    IF t564 = abap_true.
      DATA t565 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t565.
      DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t566.
      DATA(t567) = abap_true.
      IF t567 = abap_true.
        DATA(t568) = |sy-wtitl|.
        DATA(t569) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t569->has = abap_true.
        t569->value = t568.
        t566 = t569.
      ELSE.
        DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t570.
        t566 = t570.
      ENDIF.
      DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t571.
      DATA t572 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t572.
      DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t573.
      DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t574.
      DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t575.
      t565 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t566 i_conversion_exit = t571 i_derived_from_constant = t572 i_ddic_name = t573 i_rtti_name = t574 i_description = t575 ).
      t563 = t565.
    ELSE.
      DATA t576 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t576.
      t563 = t576.
    ENDIF.
    t561 = NEW zcl_lnt_character_type( i_length = t562 i_extra = t563 ).
    DATA t577 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t578.
    t559 = NEW zcl_lnt_istructure_component( i_name = t560 i_type_9913 = t561 i_as_include = t577 i_suffix = t578 ).
    APPEND t559 TO t558->items.
    DATA(t579) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t580 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t581) = |cpage|.
    DATA t582 TYPE REF TO zcl_lnt_integer_type.
    DATA t583 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t583.
    t582 = zcl_lnt_integer_type=>get_db65( i_input_967e = t583 ).
    DATA t584 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t584.
    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t585.
    t580 = NEW zcl_lnt_istructure_component( i_name = t581 i_type_9913 = t582 i_as_include = t584 i_suffix = t585 ).
    APPEND t580 TO t579->items.
    DATA(t586) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t587 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t587.
    DATA(t588) = |dbnam|.
    DATA t589 TYPE REF TO zcl_lnt_character_type.
    CLEAR t589.
    DATA(t590) = CONV int8( 20 ).
    DATA t591 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t591.
    DATA(t592) = abap_true.
    IF t592 = abap_true.
      DATA t593 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t593.
      DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t594.
      DATA(t595) = abap_true.
      IF t595 = abap_true.
        DATA(t596) = |sy-dbnam|.
        DATA(t597) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t597->has = abap_true.
        t597->value = t596.
        t594 = t597.
      ELSE.
        DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t598.
        t594 = t598.
      ENDIF.
      DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t599.
      DATA t600 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t600.
      DATA t601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t601.
      DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t602.
      DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t603.
      t593 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t594 i_conversion_exit = t599 i_derived_from_constant = t600 i_ddic_name = t601 i_rtti_name = t602 i_description = t603 ).
      t591 = t593.
    ELSE.
      DATA t604 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t604.
      t591 = t604.
    ENDIF.
    t589 = NEW zcl_lnt_character_type( i_length = t590 i_extra = t591 ).
    DATA t605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t605.
    DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t606.
    t587 = NEW zcl_lnt_istructure_component( i_name = t588 i_type_9913 = t589 i_as_include = t605 i_suffix = t606 ).
    APPEND t587 TO t586->items.
    DATA(t607) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t608 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t608.
    DATA(t609) = |mandt|.
    DATA t610 TYPE REF TO zcl_lnt_character_type.
    CLEAR t610.
    DATA(t611) = CONV int8( 3 ).
    DATA t612 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t612.
    DATA(t613) = abap_true.
    IF t613 = abap_true.
      DATA t614 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t614.
      DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t615.
      DATA(t616) = abap_true.
      IF t616 = abap_true.
        DATA(t617) = |sy-mandt|.
        DATA(t618) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t618->has = abap_true.
        t618->value = t617.
        t615 = t618.
      ELSE.
        DATA t619 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t619.
        t615 = t619.
      ENDIF.
      DATA t620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t620.
      DATA t621 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t621.
      DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t622.
      DATA t623 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t623.
      DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t624.
      t614 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t615 i_conversion_exit = t620 i_derived_from_constant = t621 i_ddic_name = t622 i_rtti_name = t623 i_description = t624 ).
      t612 = t614.
    ELSE.
      DATA t625 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t625.
      t612 = t625.
    ENDIF.
    t610 = NEW zcl_lnt_character_type( i_length = t611 i_extra = t612 ).
    DATA t626 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t626.
    DATA t627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t627.
    t608 = NEW zcl_lnt_istructure_component( i_name = t609 i_type_9913 = t610 i_as_include = t626 i_suffix = t627 ).
    APPEND t608 TO t607->items.
    DATA(t628) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t629 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t630) = |prefx|.
    DATA t631 TYPE REF TO zcl_lnt_character_type.
    DATA(t632) = CONV int8( 3 ).
    DATA t633 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t633.
    t631 = NEW zcl_lnt_character_type( i_length = t632 i_extra = t633 ).
    DATA t634 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t634.
    DATA t635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t635.
    t629 = NEW zcl_lnt_istructure_component( i_name = t630 i_type_9913 = t631 i_as_include = t634 i_suffix = t635 ).
    APPEND t629 TO t628->items.
    DATA(t636) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t637 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t638) = |fmkey|.
    DATA t639 TYPE REF TO zcl_lnt_character_type.
    DATA(t640) = CONV int8( 3 ).
    DATA t641 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t641.
    t639 = NEW zcl_lnt_character_type( i_length = t640 i_extra = t641 ).
    DATA t642 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t642.
    DATA t643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t643.
    t637 = NEW zcl_lnt_istructure_component( i_name = t638 i_type_9913 = t639 i_as_include = t642 i_suffix = t643 ).
    APPEND t637 TO t636->items.
    DATA(t644) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t645 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t646) = |pexpi|.
    DATA t647 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t648) = CONV int8( 1 ).
    DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t649.
    t647 = NEW zcl_lnt_numeric_type( i_length = t648 i_qualified_name = t649 ).
    DATA t650 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t650.
    DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t651.
    t645 = NEW zcl_lnt_istructure_component( i_name = t646 i_type_9913 = t647 i_as_include = t650 i_suffix = t651 ).
    APPEND t645 TO t644->items.
    DATA(t652) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t653 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t654) = |prini|.
    DATA t655 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t656) = CONV int8( 1 ).
    DATA t657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t657.
    t655 = NEW zcl_lnt_numeric_type( i_length = t656 i_qualified_name = t657 ).
    DATA t658 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t659.
    t653 = NEW zcl_lnt_istructure_component( i_name = t654 i_type_9913 = t655 i_as_include = t658 i_suffix = t659 ).
    APPEND t653 TO t652->items.
    DATA(t660) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t661 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t662) = |primm|.
    DATA t663 TYPE REF TO zcl_lnt_character_type.
    DATA(t664) = CONV int8( 1 ).
    DATA t665 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t665.
    t663 = NEW zcl_lnt_character_type( i_length = t664 i_extra = t665 ).
    DATA t666 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t667.
    t661 = NEW zcl_lnt_istructure_component( i_name = t662 i_type_9913 = t663 i_as_include = t666 i_suffix = t667 ).
    APPEND t661 TO t660->items.
    DATA(t668) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t669 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t670) = |prrel|.
    DATA t671 TYPE REF TO zcl_lnt_character_type.
    DATA(t672) = CONV int8( 1 ).
    DATA t673 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t673.
    t671 = NEW zcl_lnt_character_type( i_length = t672 i_extra = t673 ).
    DATA t674 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t674.
    DATA t675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t675.
    t669 = NEW zcl_lnt_istructure_component( i_name = t670 i_type_9913 = t671 i_as_include = t674 i_suffix = t675 ).
    APPEND t669 TO t668->items.
    DATA(t676) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t677 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t678) = |playo|.
    DATA t679 TYPE REF TO zcl_lnt_character_type.
    DATA(t680) = CONV int8( 5 ).
    DATA t681 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t681.
    t679 = NEW zcl_lnt_character_type( i_length = t680 i_extra = t681 ).
    DATA t682 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t682.
    DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t683.
    t677 = NEW zcl_lnt_istructure_component( i_name = t678 i_type_9913 = t679 i_as_include = t682 i_suffix = t683 ).
    APPEND t677 TO t676->items.
    DATA(t684) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t685 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t686) = |prbig|.
    DATA t687 TYPE REF TO zcl_lnt_character_type.
    DATA(t688) = CONV int8( 1 ).
    DATA t689 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t689.
    t687 = NEW zcl_lnt_character_type( i_length = t688 i_extra = t689 ).
    DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t690.
    DATA t691 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t691.
    t685 = NEW zcl_lnt_istructure_component( i_name = t686 i_type_9913 = t687 i_as_include = t690 i_suffix = t691 ).
    APPEND t685 TO t684->items.
    DATA(t692) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t693 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t694) = |playp|.
    DATA t695 TYPE REF TO zcl_lnt_character_type.
    DATA(t696) = CONV int8( 1 ).
    DATA t697 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t697.
    t695 = NEW zcl_lnt_character_type( i_length = t696 i_extra = t697 ).
    DATA t698 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t698.
    DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t699.
    t693 = NEW zcl_lnt_istructure_component( i_name = t694 i_type_9913 = t695 i_as_include = t698 i_suffix = t699 ).
    APPEND t693 TO t692->items.
    DATA(t700) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t701 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t702) = |prnew|.
    DATA t703 TYPE REF TO zcl_lnt_character_type.
    DATA(t704) = CONV int8( 1 ).
    DATA t705 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t705.
    t703 = NEW zcl_lnt_character_type( i_length = t704 i_extra = t705 ).
    DATA t706 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t706.
    DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t707.
    t701 = NEW zcl_lnt_istructure_component( i_name = t702 i_type_9913 = t703 i_as_include = t706 i_suffix = t707 ).
    APPEND t701 TO t700->items.
    DATA(t708) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t709 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t710) = |prlog|.
    DATA t711 TYPE REF TO zcl_lnt_character_type.
    DATA(t712) = CONV int8( 1 ).
    DATA t713 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t713.
    t711 = NEW zcl_lnt_character_type( i_length = t712 i_extra = t713 ).
    DATA t714 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t714.
    DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t715.
    t709 = NEW zcl_lnt_istructure_component( i_name = t710 i_type_9913 = t711 i_as_include = t714 i_suffix = t715 ).
    APPEND t709 TO t708->items.
    DATA(t716) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t717 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t717.
    DATA(t718) = |pdest|.
    DATA t719 TYPE REF TO zcl_lnt_character_type.
    CLEAR t719.
    DATA(t720) = CONV int8( 4 ).
    DATA t721 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t721.
    DATA(t722) = abap_true.
    IF t722 = abap_true.
      DATA t723 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t723.
      DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t724.
      DATA(t725) = abap_true.
      IF t725 = abap_true.
        DATA(t726) = |sy-pdest|.
        DATA(t727) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t727->has = abap_true.
        t727->value = t726.
        t724 = t727.
      ELSE.
        DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t728.
        t724 = t728.
      ENDIF.
      DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t729.
      DATA t730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t730.
      DATA t731 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t731.
      DATA t732 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t732.
      DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t733.
      t723 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t724 i_conversion_exit = t729 i_derived_from_constant = t730 i_ddic_name = t731 i_rtti_name = t732 i_description = t733 ).
      t721 = t723.
    ELSE.
      DATA t734 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t734.
      t721 = t734.
    ENDIF.
    t719 = NEW zcl_lnt_character_type( i_length = t720 i_extra = t721 ).
    DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t735.
    DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t736.
    t717 = NEW zcl_lnt_istructure_component( i_name = t718 i_type_9913 = t719 i_as_include = t735 i_suffix = t736 ).
    APPEND t717 TO t716->items.
    DATA(t737) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t738 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t739) = |plist|.
    DATA t740 TYPE REF TO zcl_lnt_character_type.
    DATA(t741) = CONV int8( 12 ).
    DATA t742 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t742.
    t740 = NEW zcl_lnt_character_type( i_length = t741 i_extra = t742 ).
    DATA t743 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t743.
    DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t744.
    t738 = NEW zcl_lnt_istructure_component( i_name = t739 i_type_9913 = t740 i_as_include = t743 i_suffix = t744 ).
    APPEND t738 TO t737->items.
    DATA(t745) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t746 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t747) = |pauth|.
    DATA t748 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t749) = CONV int8( 2 ).
    DATA t750 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t750.
    t748 = NEW zcl_lnt_numeric_type( i_length = t749 i_qualified_name = t750 ).
    DATA t751 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t751.
    DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t752.
    t746 = NEW zcl_lnt_istructure_component( i_name = t747 i_type_9913 = t748 i_as_include = t751 i_suffix = t752 ).
    APPEND t746 TO t745->items.
    DATA(t753) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t754 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t755) = |prdsn|.
    DATA t756 TYPE REF TO zcl_lnt_character_type.
    DATA(t757) = CONV int8( 6 ).
    DATA t758 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t758.
    t756 = NEW zcl_lnt_character_type( i_length = t757 i_extra = t758 ).
    DATA t759 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t759.
    DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t760.
    t754 = NEW zcl_lnt_istructure_component( i_name = t755 i_type_9913 = t756 i_as_include = t759 i_suffix = t760 ).
    APPEND t754 TO t753->items.
    DATA(t761) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t762 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t763) = |pnwpa|.
    DATA t764 TYPE REF TO zcl_lnt_character_type.
    DATA(t765) = CONV int8( 1 ).
    DATA t766 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t766.
    t764 = NEW zcl_lnt_character_type( i_length = t765 i_extra = t766 ).
    DATA t767 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t767.
    DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t768.
    t762 = NEW zcl_lnt_istructure_component( i_name = t763 i_type_9913 = t764 i_as_include = t767 i_suffix = t768 ).
    APPEND t762 TO t761->items.
    DATA(t769) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t770 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t770.
    DATA(t771) = |callr|.
    DATA t772 TYPE REF TO zcl_lnt_character_type.
    CLEAR t772.
    DATA(t773) = CONV int8( 8 ).
    DATA t774 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t774.
    DATA(t775) = abap_true.
    IF t775 = abap_true.
      DATA t776 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t776.
      DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t777.
      DATA(t778) = abap_true.
      IF t778 = abap_true.
        DATA(t779) = |sy-callr|.
        DATA(t780) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t780->has = abap_true.
        t780->value = t779.
        t777 = t780.
      ELSE.
        DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t781.
        t777 = t781.
      ENDIF.
      DATA t782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t782.
      DATA t783 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t783.
      DATA t784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t784.
      DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t785.
      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t786.
      t776 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t777 i_conversion_exit = t782 i_derived_from_constant = t783 i_ddic_name = t784 i_rtti_name = t785 i_description = t786 ).
      t774 = t776.
    ELSE.
      DATA t787 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t787.
      t774 = t787.
    ENDIF.
    t772 = NEW zcl_lnt_character_type( i_length = t773 i_extra = t774 ).
    DATA t788 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t788.
    DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t789.
    t770 = NEW zcl_lnt_istructure_component( i_name = t771 i_type_9913 = t772 i_as_include = t788 i_suffix = t789 ).
    APPEND t770 TO t769->items.
    DATA(t790) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t791 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t792) = |repi2|.
    DATA t793 TYPE REF TO zcl_lnt_character_type.
    DATA(t794) = CONV int8( 40 ).
    DATA t795 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t795.
    t793 = NEW zcl_lnt_character_type( i_length = t794 i_extra = t795 ).
    DATA t796 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t796.
    DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t797.
    t791 = NEW zcl_lnt_istructure_component( i_name = t792 i_type_9913 = t793 i_as_include = t796 i_suffix = t797 ).
    APPEND t791 TO t790->items.
    DATA(t798) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t799 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t800) = |rtitl|.
    DATA t801 TYPE REF TO zcl_lnt_character_type.
    DATA(t802) = CONV int8( 70 ).
    DATA t803 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t803.
    t801 = NEW zcl_lnt_character_type( i_length = t802 i_extra = t803 ).
    DATA t804 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t804.
    DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t805.
    t799 = NEW zcl_lnt_istructure_component( i_name = t800 i_type_9913 = t801 i_as_include = t804 i_suffix = t805 ).
    APPEND t799 TO t798->items.
    DATA(t806) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t807 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t808) = |prrec|.
    DATA t809 TYPE REF TO zcl_lnt_character_type.
    DATA(t810) = CONV int8( 12 ).
    DATA t811 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t811.
    t809 = NEW zcl_lnt_character_type( i_length = t810 i_extra = t811 ).
    DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t812.
    DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t813.
    t807 = NEW zcl_lnt_istructure_component( i_name = t808 i_type_9913 = t809 i_as_include = t812 i_suffix = t813 ).
    APPEND t807 TO t806->items.
    DATA(t814) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t815 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t816) = |prtxt|.
    DATA t817 TYPE REF TO zcl_lnt_character_type.
    DATA(t818) = CONV int8( 68 ).
    DATA t819 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t819.
    t817 = NEW zcl_lnt_character_type( i_length = t818 i_extra = t819 ).
    DATA t820 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t820.
    DATA t821 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t821.
    t815 = NEW zcl_lnt_istructure_component( i_name = t816 i_type_9913 = t817 i_as_include = t820 i_suffix = t821 ).
    APPEND t815 TO t814->items.
    DATA(t822) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t823 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t824) = |prabt|.
    DATA t825 TYPE REF TO zcl_lnt_character_type.
    DATA(t826) = CONV int8( 12 ).
    DATA t827 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t827.
    t825 = NEW zcl_lnt_character_type( i_length = t826 i_extra = t827 ).
    DATA t828 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t828.
    DATA t829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t829.
    t823 = NEW zcl_lnt_istructure_component( i_name = t824 i_type_9913 = t825 i_as_include = t828 i_suffix = t829 ).
    APPEND t823 TO t822->items.
    DATA(t830) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t831 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t832) = |lpass|.
    DATA t833 TYPE REF TO zcl_lnt_character_type.
    DATA(t834) = CONV int8( 4 ).
    DATA t835 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t835.
    t833 = NEW zcl_lnt_character_type( i_length = t834 i_extra = t835 ).
    DATA t836 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t836.
    DATA t837 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t837.
    t831 = NEW zcl_lnt_istructure_component( i_name = t832 i_type_9913 = t833 i_as_include = t836 i_suffix = t837 ).
    APPEND t831 TO t830->items.
    DATA(t838) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t839 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t840) = |nrpag|.
    DATA t841 TYPE REF TO zcl_lnt_character_type.
    DATA(t842) = CONV int8( 1 ).
    DATA t843 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t843.
    t841 = NEW zcl_lnt_character_type( i_length = t842 i_extra = t843 ).
    DATA t844 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t844.
    DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t845.
    t839 = NEW zcl_lnt_istructure_component( i_name = t840 i_type_9913 = t841 i_as_include = t844 i_suffix = t845 ).
    APPEND t839 TO t838->items.
    DATA(t846) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t847 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t848) = |paart|.
    DATA t849 TYPE REF TO zcl_lnt_character_type.
    DATA(t850) = CONV int8( 16 ).
    DATA t851 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t851.
    t849 = NEW zcl_lnt_character_type( i_length = t850 i_extra = t851 ).
    DATA t852 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t852.
    DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t853.
    t847 = NEW zcl_lnt_istructure_component( i_name = t848 i_type_9913 = t849 i_as_include = t852 i_suffix = t853 ).
    APPEND t847 TO t846->items.
    DATA(t854) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t855 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t856) = |prcop|.
    DATA t857 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t858) = CONV int8( 3 ).
    DATA t859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t859.
    t857 = NEW zcl_lnt_numeric_type( i_length = t858 i_qualified_name = t859 ).
    DATA t860 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t860.
    DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t861.
    t855 = NEW zcl_lnt_istructure_component( i_name = t856 i_type_9913 = t857 i_as_include = t860 i_suffix = t861 ).
    APPEND t855 TO t854->items.
    DATA(t862) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t863 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t864) = |batzs|.
    DATA t865 TYPE REF TO zcl_lnt_character_type.
    DATA(t866) = CONV int8( 1 ).
    DATA t867 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t867.
    t865 = NEW zcl_lnt_character_type( i_length = t866 i_extra = t867 ).
    DATA t868 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t868.
    DATA t869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t869.
    t863 = NEW zcl_lnt_istructure_component( i_name = t864 i_type_9913 = t865 i_as_include = t868 i_suffix = t869 ).
    APPEND t863 TO t862->items.
    DATA(t870) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t871 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t872) = |bspld|.
    DATA t873 TYPE REF TO zcl_lnt_character_type.
    DATA(t874) = CONV int8( 1 ).
    DATA t875 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t875.
    t873 = NEW zcl_lnt_character_type( i_length = t874 i_extra = t875 ).
    DATA t876 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t876.
    DATA t877 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t877.
    t871 = NEW zcl_lnt_istructure_component( i_name = t872 i_type_9913 = t873 i_as_include = t876 i_suffix = t877 ).
    APPEND t871 TO t870->items.
    DATA(t878) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t879 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t880) = |brep4|.
    DATA t881 TYPE REF TO zcl_lnt_character_type.
    DATA(t882) = CONV int8( 4 ).
    DATA t883 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t883.
    t881 = NEW zcl_lnt_character_type( i_length = t882 i_extra = t883 ).
    DATA t884 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t884.
    DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t885.
    t879 = NEW zcl_lnt_istructure_component( i_name = t880 i_type_9913 = t881 i_as_include = t884 i_suffix = t885 ).
    APPEND t879 TO t878->items.
    DATA(t886) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t887 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t888) = |batzo|.
    DATA t889 TYPE REF TO zcl_lnt_character_type.
    DATA(t890) = CONV int8( 1 ).
    DATA t891 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t891.
    t889 = NEW zcl_lnt_character_type( i_length = t890 i_extra = t891 ).
    DATA t892 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t892.
    DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t893.
    t887 = NEW zcl_lnt_istructure_component( i_name = t888 i_type_9913 = t889 i_as_include = t892 i_suffix = t893 ).
    APPEND t887 TO t886->items.
    DATA(t894) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t895 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t896) = |batzd|.
    DATA t897 TYPE REF TO zcl_lnt_character_type.
    DATA(t898) = CONV int8( 1 ).
    DATA t899 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t899.
    t897 = NEW zcl_lnt_character_type( i_length = t898 i_extra = t899 ).
    DATA t900 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t900.
    DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t901.
    t895 = NEW zcl_lnt_istructure_component( i_name = t896 i_type_9913 = t897 i_as_include = t900 i_suffix = t901 ).
    APPEND t895 TO t894->items.
    DATA(t902) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t903 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t904) = |batzw|.
    DATA t905 TYPE REF TO zcl_lnt_character_type.
    DATA(t906) = CONV int8( 1 ).
    DATA t907 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t907.
    t905 = NEW zcl_lnt_character_type( i_length = t906 i_extra = t907 ).
    DATA t908 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t908.
    DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t909.
    t903 = NEW zcl_lnt_istructure_component( i_name = t904 i_type_9913 = t905 i_as_include = t908 i_suffix = t909 ).
    APPEND t903 TO t902->items.
    DATA(t910) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t911 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t912) = |batzm|.
    DATA t913 TYPE REF TO zcl_lnt_character_type.
    DATA(t914) = CONV int8( 1 ).
    DATA t915 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t915.
    t913 = NEW zcl_lnt_character_type( i_length = t914 i_extra = t915 ).
    DATA t916 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t916.
    DATA t917 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t917.
    t911 = NEW zcl_lnt_istructure_component( i_name = t912 i_type_9913 = t913 i_as_include = t916 i_suffix = t917 ).
    APPEND t911 TO t910->items.
    DATA(t918) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t919 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t920) = |ctabl|.
    DATA t921 TYPE REF TO zcl_lnt_character_type.
    DATA(t922) = CONV int8( 4 ).
    DATA t923 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t923.
    t921 = NEW zcl_lnt_character_type( i_length = t922 i_extra = t923 ).
    DATA t924 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t924.
    DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t925.
    t919 = NEW zcl_lnt_istructure_component( i_name = t920 i_type_9913 = t921 i_as_include = t924 i_suffix = t925 ).
    APPEND t919 TO t918->items.
    DATA(t926) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t927 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t927.
    DATA(t928) = |dbsys|.
    DATA t929 TYPE REF TO zcl_lnt_character_type.
    CLEAR t929.
    DATA(t930) = CONV int8( 10 ).
    DATA t931 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t931.
    DATA(t932) = abap_true.
    IF t932 = abap_true.
      DATA t933 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t933.
      DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t934.
      DATA(t935) = abap_true.
      IF t935 = abap_true.
        DATA(t936) = |sy-dbsys|.
        DATA(t937) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t937->has = abap_true.
        t937->value = t936.
        t934 = t937.
      ELSE.
        DATA t938 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t938.
        t934 = t938.
      ENDIF.
      DATA t939 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t939.
      DATA t940 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t940.
      DATA t941 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t941.
      DATA t942 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t942.
      DATA t943 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t943.
      t933 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t934 i_conversion_exit = t939 i_derived_from_constant = t940 i_ddic_name = t941 i_rtti_name = t942 i_description = t943 ).
      t931 = t933.
    ELSE.
      DATA t944 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t944.
      t931 = t944.
    ENDIF.
    t929 = NEW zcl_lnt_character_type( i_length = t930 i_extra = t931 ).
    DATA t945 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t945.
    DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t946.
    t927 = NEW zcl_lnt_istructure_component( i_name = t928 i_type_9913 = t929 i_as_include = t945 i_suffix = t946 ).
    APPEND t927 TO t926->items.
    DATA(t947) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t948 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t949) = |dcsys|.
    DATA t950 TYPE REF TO zcl_lnt_character_type.
    DATA(t951) = CONV int8( 4 ).
    DATA t952 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t952.
    t950 = NEW zcl_lnt_character_type( i_length = t951 i_extra = t952 ).
    DATA t953 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t953.
    DATA t954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t954.
    t948 = NEW zcl_lnt_istructure_component( i_name = t949 i_type_9913 = t950 i_as_include = t953 i_suffix = t954 ).
    APPEND t948 TO t947->items.
    DATA(t955) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t956 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t957) = |macdb|.
    DATA t958 TYPE REF TO zcl_lnt_character_type.
    DATA(t959) = CONV int8( 4 ).
    DATA t960 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t960.
    t958 = NEW zcl_lnt_character_type( i_length = t959 i_extra = t960 ).
    DATA t961 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t961.
    DATA t962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t962.
    t956 = NEW zcl_lnt_istructure_component( i_name = t957 i_type_9913 = t958 i_as_include = t961 i_suffix = t962 ).
    APPEND t956 TO t955->items.
    DATA(t963) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t964 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t964.
    DATA(t965) = |sysid|.
    DATA t966 TYPE REF TO zcl_lnt_character_type.
    CLEAR t966.
    DATA(t967) = CONV int8( 8 ).
    DATA t968 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t968.
    DATA(t969) = abap_true.
    IF t969 = abap_true.
      DATA t970 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t970.
      DATA t971 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t971.
      DATA(t972) = abap_true.
      IF t972 = abap_true.
        DATA(t973) = |sy-sysid|.
        DATA(t974) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t974->has = abap_true.
        t974->value = t973.
        t971 = t974.
      ELSE.
        DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t975.
        t971 = t975.
      ENDIF.
      DATA t976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t976.
      DATA t977 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t977.
      DATA t978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t978.
      DATA t979 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t979.
      DATA t980 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t980.
      t970 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t971 i_conversion_exit = t976 i_derived_from_constant = t977 i_ddic_name = t978 i_rtti_name = t979 i_description = t980 ).
      t968 = t970.
    ELSE.
      DATA t981 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t981.
      t968 = t981.
    ENDIF.
    t966 = NEW zcl_lnt_character_type( i_length = t967 i_extra = t968 ).
    DATA t982 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t982.
    DATA t983 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t983.
    t964 = NEW zcl_lnt_istructure_component( i_name = t965 i_type_9913 = t966 i_as_include = t982 i_suffix = t983 ).
    APPEND t964 TO t963->items.
    DATA(t984) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t985 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t985.
    DATA(t986) = |opsys|.
    DATA t987 TYPE REF TO zcl_lnt_character_type.
    CLEAR t987.
    DATA(t988) = CONV int8( 10 ).
    DATA t989 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t989.
    DATA(t990) = abap_true.
    IF t990 = abap_true.
      DATA t991 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t991.
      DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t992.
      DATA(t993) = abap_true.
      IF t993 = abap_true.
        DATA(t994) = |sy-opsys|.
        DATA(t995) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t995->has = abap_true.
        t995->value = t994.
        t992 = t995.
      ELSE.
        DATA t996 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t996.
        t992 = t996.
      ENDIF.
      DATA t997 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t997.
      DATA t998 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t998.
      DATA t999 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t999.
      DATA t1000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1000.
      DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1001.
      t991 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t992 i_conversion_exit = t997 i_derived_from_constant = t998 i_ddic_name = t999 i_rtti_name = t1000 i_description = t1001 ).
      t989 = t991.
    ELSE.
      DATA t1002 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1002.
      t989 = t1002.
    ENDIF.
    t987 = NEW zcl_lnt_character_type( i_length = t988 i_extra = t989 ).
    DATA t1003 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1003.
    DATA t1004 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1004.
    t985 = NEW zcl_lnt_istructure_component( i_name = t986 i_type_9913 = t987 i_as_include = t1003 i_suffix = t1004 ).
    APPEND t985 TO t984->items.
    DATA(t1005) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1006 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1006.
    DATA(t1007) = |pfkey|.
    DATA t1008 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1008.
    DATA(t1009) = CONV int8( 20 ).
    DATA t1010 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1010.
    DATA(t1011) = abap_true.
    IF t1011 = abap_true.
      DATA t1012 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1012.
      DATA t1013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1013.
      DATA(t1014) = abap_true.
      IF t1014 = abap_true.
        DATA(t1015) = |sy-pfkey|.
        DATA(t1016) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1016->has = abap_true.
        t1016->value = t1015.
        t1013 = t1016.
      ELSE.
        DATA t1017 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1017.
        t1013 = t1017.
      ENDIF.
      DATA t1018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1018.
      DATA t1019 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1019.
      DATA t1020 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1020.
      DATA t1021 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1021.
      DATA t1022 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1022.
      t1012 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1013 i_conversion_exit = t1018 i_derived_from_constant = t1019 i_ddic_name = t1020 i_rtti_name = t1021 i_description = t1022 ).
      t1010 = t1012.
    ELSE.
      DATA t1023 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1023.
      t1010 = t1023.
    ENDIF.
    t1008 = NEW zcl_lnt_character_type( i_length = t1009 i_extra = t1010 ).
    DATA t1024 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1024.
    DATA t1025 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1025.
    t1006 = NEW zcl_lnt_istructure_component( i_name = t1007 i_type_9913 = t1008 i_as_include = t1024 i_suffix = t1025 ).
    APPEND t1006 TO t1005->items.
    DATA(t1026) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1027 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1027.
    DATA(t1028) = |saprl|.
    DATA t1029 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1029.
    DATA(t1030) = CONV int8( 4 ).
    DATA t1031 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1031.
    DATA(t1032) = abap_true.
    IF t1032 = abap_true.
      DATA t1033 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1033.
      DATA t1034 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1034.
      DATA(t1035) = abap_true.
      IF t1035 = abap_true.
        DATA(t1036) = |sy-saprl|.
        DATA(t1037) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1037->has = abap_true.
        t1037->value = t1036.
        t1034 = t1037.
      ELSE.
        DATA t1038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1038.
        t1034 = t1038.
      ENDIF.
      DATA t1039 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1039.
      DATA t1040 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1040.
      DATA t1041 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1041.
      DATA t1042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1042.
      DATA t1043 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1043.
      t1033 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1034 i_conversion_exit = t1039 i_derived_from_constant = t1040 i_ddic_name = t1041 i_rtti_name = t1042 i_description = t1043 ).
      t1031 = t1033.
    ELSE.
      DATA t1044 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1044.
      t1031 = t1044.
    ENDIF.
    t1029 = NEW zcl_lnt_character_type( i_length = t1030 i_extra = t1031 ).
    DATA t1045 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1045.
    DATA t1046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1046.
    t1027 = NEW zcl_lnt_istructure_component( i_name = t1028 i_type_9913 = t1029 i_as_include = t1045 i_suffix = t1046 ).
    APPEND t1027 TO t1026->items.
    DATA(t1047) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1048 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1048.
    DATA(t1049) = |tcode|.
    DATA t1050 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1050.
    DATA(t1051) = CONV int8( 20 ).
    DATA t1052 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1052.
    DATA(t1053) = abap_true.
    IF t1053 = abap_true.
      DATA t1054 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1054.
      DATA t1055 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1055.
      DATA(t1056) = abap_true.
      IF t1056 = abap_true.
        DATA(t1057) = |sy-tcode|.
        DATA(t1058) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1058->has = abap_true.
        t1058->value = t1057.
        t1055 = t1058.
      ELSE.
        DATA t1059 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1059.
        t1055 = t1059.
      ENDIF.
      DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1060.
      DATA t1061 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1061.
      DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1062.
      DATA t1063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1063.
      DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1064.
      t1054 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1055 i_conversion_exit = t1060 i_derived_from_constant = t1061 i_ddic_name = t1062 i_rtti_name = t1063 i_description = t1064 ).
      t1052 = t1054.
    ELSE.
      DATA t1065 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1065.
      t1052 = t1065.
    ENDIF.
    t1050 = NEW zcl_lnt_character_type( i_length = t1051 i_extra = t1052 ).
    DATA t1066 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1066.
    DATA t1067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1067.
    t1048 = NEW zcl_lnt_istructure_component( i_name = t1049 i_type_9913 = t1050 i_as_include = t1066 i_suffix = t1067 ).
    APPEND t1048 TO t1047->items.
    DATA(t1068) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1069 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1069.
    DATA(t1070) = |ucomm|.
    DATA t1071 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1071.
    DATA(t1072) = CONV int8( 70 ).
    DATA t1073 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1073.
    DATA(t1074) = abap_true.
    IF t1074 = abap_true.
      DATA t1075 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1075.
      DATA t1076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1076.
      DATA(t1077) = abap_true.
      IF t1077 = abap_true.
        DATA(t1078) = |sy-ucomm|.
        DATA(t1079) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1079->has = abap_true.
        t1079->value = t1078.
        t1076 = t1079.
      ELSE.
        DATA t1080 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1080.
        t1076 = t1080.
      ENDIF.
      DATA t1081 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1081.
      DATA t1082 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1082.
      DATA t1083 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1083.
      DATA t1084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1084.
      DATA t1085 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1085.
      t1075 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1076 i_conversion_exit = t1081 i_derived_from_constant = t1082 i_ddic_name = t1083 i_rtti_name = t1084 i_description = t1085 ).
      t1073 = t1075.
    ELSE.
      DATA t1086 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1086.
      t1073 = t1086.
    ENDIF.
    t1071 = NEW zcl_lnt_character_type( i_length = t1072 i_extra = t1073 ).
    DATA t1087 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1087.
    DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1088.
    t1069 = NEW zcl_lnt_istructure_component( i_name = t1070 i_type_9913 = t1071 i_as_include = t1087 i_suffix = t1088 ).
    APPEND t1069 TO t1068->items.
    DATA(t1089) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1090 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1091) = |cfwae|.
    DATA t1092 TYPE REF TO zcl_lnt_character_type.
    DATA(t1093) = CONV int8( 5 ).
    DATA t1094 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1094.
    t1092 = NEW zcl_lnt_character_type( i_length = t1093 i_extra = t1094 ).
    DATA t1095 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1095.
    DATA t1096 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1096.
    t1090 = NEW zcl_lnt_istructure_component( i_name = t1091 i_type_9913 = t1092 i_as_include = t1095 i_suffix = t1096 ).
    APPEND t1090 TO t1089->items.
    DATA(t1097) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1098 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1099) = |chwae|.
    DATA t1100 TYPE REF TO zcl_lnt_character_type.
    DATA(t1101) = CONV int8( 5 ).
    DATA t1102 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1102.
    t1100 = NEW zcl_lnt_character_type( i_length = t1101 i_extra = t1102 ).
    DATA t1103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1103.
    DATA t1104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1104.
    t1098 = NEW zcl_lnt_istructure_component( i_name = t1099 i_type_9913 = t1100 i_as_include = t1103 i_suffix = t1104 ).
    APPEND t1098 TO t1097->items.
    DATA(t1105) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1106 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1106.
    DATA(t1107) = |spono|.
    DATA t1108 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1108.
    DATA(t1109) = CONV int8( 10 ).
    DATA t1110 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1110.
    DATA(t1111) = abap_true.
    IF t1111 = abap_true.
      DATA t1112 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1112.
      DATA t1113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1113.
      DATA(t1114) = abap_true.
      IF t1114 = abap_true.
        DATA(t1115) = |sy-spono|.
        DATA(t1116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1116->has = abap_true.
        t1116->value = t1115.
        t1113 = t1116.
      ELSE.
        DATA t1117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1117.
        t1113 = t1117.
      ENDIF.
      DATA t1118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1118.
      DATA t1119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1119.
      DATA t1120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1120.
      DATA t1121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1121.
      DATA t1122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1122.
      t1112 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1113 i_conversion_exit = t1118 i_derived_from_constant = t1119 i_ddic_name = t1120 i_rtti_name = t1121 i_description = t1122 ).
      t1110 = t1112.
    ELSE.
      DATA t1123 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1123.
      t1110 = t1123.
    ENDIF.
    t1108 = NEW zcl_lnt_character_type( i_length = t1109 i_extra = t1110 ).
    DATA t1124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1124.
    DATA t1125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1125.
    t1106 = NEW zcl_lnt_istructure_component( i_name = t1107 i_type_9913 = t1108 i_as_include = t1124 i_suffix = t1125 ).
    APPEND t1106 TO t1105->items.
    DATA(t1126) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1127 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1128) = |sponr|.
    DATA t1129 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t1130) = CONV int8( 10 ).
    DATA t1131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1131.
    t1129 = NEW zcl_lnt_numeric_type( i_length = t1130 i_qualified_name = t1131 ).
    DATA t1132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1132.
    DATA t1133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1133.
    t1127 = NEW zcl_lnt_istructure_component( i_name = t1128 i_type_9913 = t1129 i_as_include = t1132 i_suffix = t1133 ).
    APPEND t1127 TO t1126->items.
    DATA(t1134) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1135 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1136) = |waers|.
    DATA t1137 TYPE REF TO zcl_lnt_character_type.
    DATA(t1138) = CONV int8( 5 ).
    DATA t1139 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1139.
    t1137 = NEW zcl_lnt_character_type( i_length = t1138 i_extra = t1139 ).
    DATA t1140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1140.
    DATA t1141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1141.
    t1135 = NEW zcl_lnt_istructure_component( i_name = t1136 i_type_9913 = t1137 i_as_include = t1140 i_suffix = t1141 ).
    APPEND t1135 TO t1134->items.
    DATA(t1142) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1143 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1144) = |cdate|.
    DATA t1145 TYPE REF TO zcl_lnt_date_type.
    DATA t1146 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1146.
    t1145 = NEW zcl_lnt_date_type( i_input_967e = t1146 ).
    DATA t1147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1147.
    DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1148.
    t1143 = NEW zcl_lnt_istructure_component( i_name = t1144 i_type_9913 = t1145 i_as_include = t1147 i_suffix = t1148 ).
    APPEND t1143 TO t1142->items.
    DATA(t1149) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1150 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1151) = |datum|.
    DATA t1152 TYPE REF TO zcl_lnt_date_type.
    DATA t1153 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1153.
    t1152 = NEW zcl_lnt_date_type( i_input_967e = t1153 ).
    DATA t1154 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1154.
    DATA t1155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1155.
    t1150 = NEW zcl_lnt_istructure_component( i_name = t1151 i_type_9913 = t1152 i_as_include = t1154 i_suffix = t1155 ).
    APPEND t1150 TO t1149->items.
    DATA(t1156) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1157 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1157.
    DATA(t1158) = |slset|.
    DATA t1159 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1159.
    DATA(t1160) = CONV int8( 14 ).
    DATA t1161 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1161.
    DATA(t1162) = abap_true.
    IF t1162 = abap_true.
      DATA t1163 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1163.
      DATA t1164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1164.
      DATA(t1165) = abap_true.
      IF t1165 = abap_true.
        DATA(t1166) = |sy-slset|.
        DATA(t1167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1167->has = abap_true.
        t1167->value = t1166.
        t1164 = t1167.
      ELSE.
        DATA t1168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1168.
        t1164 = t1168.
      ENDIF.
      DATA t1169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1169.
      DATA t1170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1170.
      DATA t1171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1171.
      DATA t1172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1172.
      DATA t1173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1173.
      t1163 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1164 i_conversion_exit = t1169 i_derived_from_constant = t1170 i_ddic_name = t1171 i_rtti_name = t1172 i_description = t1173 ).
      t1161 = t1163.
    ELSE.
      DATA t1174 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1174.
      t1161 = t1174.
    ENDIF.
    t1159 = NEW zcl_lnt_character_type( i_length = t1160 i_extra = t1161 ).
    DATA t1175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1175.
    DATA t1176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1176.
    t1157 = NEW zcl_lnt_istructure_component( i_name = t1158 i_type_9913 = t1159 i_as_include = t1175 i_suffix = t1176 ).
    APPEND t1157 TO t1156->items.
    DATA(t1177) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1178 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1179) = |subty|.
    DATA t1180 TYPE REF TO zcl_lnt_hex_type.
    DATA(t1181) = CONV int8( 1 ).
    DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1182.
    t1180 = NEW zcl_lnt_hex_type( i_length = t1181 i_qualified_name = t1182 ).
    DATA t1183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1183.
    DATA t1184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1184.
    t1178 = NEW zcl_lnt_istructure_component( i_name = t1179 i_type_9913 = t1180 i_as_include = t1183 i_suffix = t1184 ).
    APPEND t1178 TO t1177->items.
    DATA(t1185) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1186 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1187) = |subcs|.
    DATA t1188 TYPE REF TO zcl_lnt_character_type.
    DATA(t1189) = CONV int8( 1 ).
    DATA t1190 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1190.
    t1188 = NEW zcl_lnt_character_type( i_length = t1189 i_extra = t1190 ).
    DATA t1191 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1191.
    DATA t1192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1192.
    t1186 = NEW zcl_lnt_istructure_component( i_name = t1187 i_type_9913 = t1188 i_as_include = t1191 i_suffix = t1192 ).
    APPEND t1186 TO t1185->items.
    DATA(t1193) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1194 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1195) = |group|.
    DATA t1196 TYPE REF TO zcl_lnt_character_type.
    DATA(t1197) = CONV int8( 1 ).
    DATA t1198 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1198.
    t1196 = NEW zcl_lnt_character_type( i_length = t1197 i_extra = t1198 ).
    DATA t1199 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1199.
    DATA t1200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1200.
    t1194 = NEW zcl_lnt_istructure_component( i_name = t1195 i_type_9913 = t1196 i_as_include = t1199 i_suffix = t1200 ).
    APPEND t1194 TO t1193->items.
    DATA(t1201) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1202 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1203) = |ffile|.
    DATA t1204 TYPE REF TO zcl_lnt_character_type.
    DATA(t1205) = CONV int8( 8 ).
    DATA t1206 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1206.
    t1204 = NEW zcl_lnt_character_type( i_length = t1205 i_extra = t1206 ).
    DATA t1207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1207.
    DATA t1208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1208.
    t1202 = NEW zcl_lnt_istructure_component( i_name = t1203 i_type_9913 = t1204 i_as_include = t1207 i_suffix = t1208 ).
    APPEND t1202 TO t1201->items.
    DATA(t1209) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1210 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1211) = |uzeit|.
    DATA t1212 TYPE REF TO zcl_lnt_time_type.
    DATA t1213 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1213.
    t1212 = NEW zcl_lnt_time_type( i_input_967e = t1213 ).
    DATA t1214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1214.
    DATA t1215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1215.
    t1210 = NEW zcl_lnt_istructure_component( i_name = t1211 i_type_9913 = t1212 i_as_include = t1214 i_suffix = t1215 ).
    APPEND t1210 TO t1209->items.
    DATA(t1216) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1217 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1218) = |dsnam|.
    DATA t1219 TYPE REF TO zcl_lnt_character_type.
    DATA(t1220) = CONV int8( 8 ).
    DATA t1221 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1221.
    t1219 = NEW zcl_lnt_character_type( i_length = t1220 i_extra = t1221 ).
    DATA t1222 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1222.
    DATA t1223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1223.
    t1217 = NEW zcl_lnt_istructure_component( i_name = t1218 i_type_9913 = t1219 i_as_include = t1222 i_suffix = t1223 ).
    APPEND t1217 TO t1216->items.
    DATA(t1224) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1225 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1226) = |tabid|.
    DATA t1227 TYPE REF TO zcl_lnt_character_type.
    DATA(t1228) = CONV int8( 8 ).
    DATA t1229 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1229.
    t1227 = NEW zcl_lnt_character_type( i_length = t1228 i_extra = t1229 ).
    DATA t1230 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1230.
    DATA t1231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1231.
    t1225 = NEW zcl_lnt_istructure_component( i_name = t1226 i_type_9913 = t1227 i_as_include = t1230 i_suffix = t1231 ).
    APPEND t1225 TO t1224->items.
    DATA(t1232) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1233 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1234) = |tfdsn|.
    DATA t1235 TYPE REF TO zcl_lnt_character_type.
    DATA(t1236) = CONV int8( 8 ).
    DATA t1237 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1237.
    t1235 = NEW zcl_lnt_character_type( i_length = t1236 i_extra = t1237 ).
    DATA t1238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1238.
    DATA t1239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1239.
    t1233 = NEW zcl_lnt_istructure_component( i_name = t1234 i_type_9913 = t1235 i_as_include = t1238 i_suffix = t1239 ).
    APPEND t1233 TO t1232->items.
    DATA(t1240) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1241 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1241.
    DATA(t1242) = |uname|.
    DATA t1243 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1243.
    DATA(t1244) = CONV int8( 12 ).
    DATA t1245 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1245.
    DATA(t1246) = abap_true.
    IF t1246 = abap_true.
      DATA t1247 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1247.
      DATA t1248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1248.
      DATA(t1249) = abap_true.
      IF t1249 = abap_true.
        DATA(t1250) = |sy-uname|.
        DATA(t1251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1251->has = abap_true.
        t1251->value = t1250.
        t1248 = t1251.
      ELSE.
        DATA t1252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1252.
        t1248 = t1252.
      ENDIF.
      DATA t1253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1253.
      DATA t1254 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1254.
      DATA t1255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1255.
      DATA t1256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1256.
      DATA t1257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1257.
      t1247 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1248 i_conversion_exit = t1253 i_derived_from_constant = t1254 i_ddic_name = t1255 i_rtti_name = t1256 i_description = t1257 ).
      t1245 = t1247.
    ELSE.
      DATA t1258 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1258.
      t1245 = t1258.
    ENDIF.
    t1243 = NEW zcl_lnt_character_type( i_length = t1244 i_extra = t1245 ).
    DATA t1259 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1259.
    DATA t1260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1260.
    t1241 = NEW zcl_lnt_istructure_component( i_name = t1242 i_type_9913 = t1243 i_as_include = t1259 i_suffix = t1260 ).
    APPEND t1241 TO t1240->items.
    DATA(t1261) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1262 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1263) = |lstat|.
    DATA t1264 TYPE REF TO zcl_lnt_character_type.
    DATA(t1265) = CONV int8( 16 ).
    DATA t1266 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1266.
    t1264 = NEW zcl_lnt_character_type( i_length = t1265 i_extra = t1266 ).
    DATA t1267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1267.
    DATA t1268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1268.
    t1262 = NEW zcl_lnt_istructure_component( i_name = t1263 i_type_9913 = t1264 i_as_include = t1267 i_suffix = t1268 ).
    APPEND t1262 TO t1261->items.
    DATA(t1269) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1270 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1270.
    DATA(t1271) = |abcde|.
    DATA t1272 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1272.
    DATA(t1273) = CONV int8( 26 ).
    DATA t1274 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1274.
    DATA(t1275) = abap_true.
    IF t1275 = abap_true.
      DATA t1276 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1276.
      DATA t1277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1277.
      DATA(t1278) = abap_true.
      IF t1278 = abap_true.
        DATA(t1279) = |sy-abcde|.
        DATA(t1280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1280->has = abap_true.
        t1280->value = t1279.
        t1277 = t1280.
      ELSE.
        DATA t1281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1281.
        t1277 = t1281.
      ENDIF.
      DATA t1282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1282.
      DATA t1283 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1283.
      DATA t1284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1284.
      DATA t1285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1285.
      DATA t1286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1286.
      t1276 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1277 i_conversion_exit = t1282 i_derived_from_constant = t1283 i_ddic_name = t1284 i_rtti_name = t1285 i_description = t1286 ).
      t1274 = t1276.
    ELSE.
      DATA t1287 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1287.
      t1274 = t1287.
    ENDIF.
    t1272 = NEW zcl_lnt_character_type( i_length = t1273 i_extra = t1274 ).
    DATA t1288 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1288.
    DATA t1289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1289.
    t1270 = NEW zcl_lnt_istructure_component( i_name = t1271 i_type_9913 = t1272 i_as_include = t1288 i_suffix = t1289 ).
    APPEND t1270 TO t1269->items.
    DATA(t1290) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1291 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1292) = |marky|.
    DATA t1293 TYPE REF TO zcl_lnt_character_type.
    DATA(t1294) = CONV int8( 1 ).
    DATA t1295 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1295.
    t1293 = NEW zcl_lnt_character_type( i_length = t1294 i_extra = t1295 ).
    DATA t1296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1296.
    DATA t1297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1297.
    t1291 = NEW zcl_lnt_istructure_component( i_name = t1292 i_type_9913 = t1293 i_as_include = t1296 i_suffix = t1297 ).
    APPEND t1291 TO t1290->items.
    DATA(t1298) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1299 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1300) = |sfnam|.
    DATA t1301 TYPE REF TO zcl_lnt_character_type.
    DATA(t1302) = CONV int8( 30 ).
    DATA t1303 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1303.
    t1301 = NEW zcl_lnt_character_type( i_length = t1302 i_extra = t1303 ).
    DATA t1304 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1304.
    DATA t1305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1305.
    t1299 = NEW zcl_lnt_istructure_component( i_name = t1300 i_type_9913 = t1301 i_as_include = t1304 i_suffix = t1305 ).
    APPEND t1299 TO t1298->items.
    DATA(t1306) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1307 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1308) = |tname|.
    DATA t1309 TYPE REF TO zcl_lnt_character_type.
    DATA(t1310) = CONV int8( 30 ).
    DATA t1311 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1311.
    t1309 = NEW zcl_lnt_character_type( i_length = t1310 i_extra = t1311 ).
    DATA t1312 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1312.
    DATA t1313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1313.
    t1307 = NEW zcl_lnt_istructure_component( i_name = t1308 i_type_9913 = t1309 i_as_include = t1312 i_suffix = t1313 ).
    APPEND t1307 TO t1306->items.
    DATA(t1314) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1315 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1315.
    DATA(t1316) = |msgli|.
    DATA t1317 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1317.
    DATA(t1318) = CONV int8( 60 ).
    DATA t1319 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1319.
    DATA(t1320) = abap_true.
    IF t1320 = abap_true.
      DATA t1321 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1321.
      DATA t1322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1322.
      DATA(t1323) = abap_true.
      IF t1323 = abap_true.
        DATA(t1324) = |sy-msgli|.
        DATA(t1325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1325->has = abap_true.
        t1325->value = t1324.
        t1322 = t1325.
      ELSE.
        DATA t1326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1326.
        t1322 = t1326.
      ENDIF.
      DATA t1327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1327.
      DATA t1328 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1328.
      DATA t1329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1329.
      DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1330.
      DATA t1331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1331.
      t1321 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1322 i_conversion_exit = t1327 i_derived_from_constant = t1328 i_ddic_name = t1329 i_rtti_name = t1330 i_description = t1331 ).
      t1319 = t1321.
    ELSE.
      DATA t1332 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1332.
      t1319 = t1332.
    ENDIF.
    t1317 = NEW zcl_lnt_character_type( i_length = t1318 i_extra = t1319 ).
    DATA t1333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1333.
    DATA t1334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1334.
    t1315 = NEW zcl_lnt_istructure_component( i_name = t1316 i_type_9913 = t1317 i_as_include = t1333 i_suffix = t1334 ).
    APPEND t1315 TO t1314->items.
    DATA(t1335) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1336 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1336.
    DATA(t1337) = |title|.
    DATA t1338 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1338.
    DATA(t1339) = CONV int8( 70 ).
    DATA t1340 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1340.
    DATA(t1341) = abap_true.
    IF t1341 = abap_true.
      DATA t1342 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1342.
      DATA t1343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1343.
      DATA(t1344) = abap_true.
      IF t1344 = abap_true.
        DATA(t1345) = |sy-title|.
        DATA(t1346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1346->has = abap_true.
        t1346->value = t1345.
        t1343 = t1346.
      ELSE.
        DATA t1347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1347.
        t1343 = t1347.
      ENDIF.
      DATA t1348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1348.
      DATA t1349 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1349.
      DATA t1350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1350.
      DATA t1351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1351.
      DATA t1352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1352.
      t1342 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1343 i_conversion_exit = t1348 i_derived_from_constant = t1349 i_ddic_name = t1350 i_rtti_name = t1351 i_description = t1352 ).
      t1340 = t1342.
    ELSE.
      DATA t1353 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1353.
      t1340 = t1353.
    ENDIF.
    t1338 = NEW zcl_lnt_character_type( i_length = t1339 i_extra = t1340 ).
    DATA t1354 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1354.
    DATA t1355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1355.
    t1336 = NEW zcl_lnt_istructure_component( i_name = t1337 i_type_9913 = t1338 i_as_include = t1354 i_suffix = t1355 ).
    APPEND t1336 TO t1335->items.
    DATA(t1356) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1357 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1358) = |entry|.
    DATA t1359 TYPE REF TO zcl_lnt_character_type.
    DATA(t1360) = CONV int8( 72 ).
    DATA t1361 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1361.
    t1359 = NEW zcl_lnt_character_type( i_length = t1360 i_extra = t1361 ).
    DATA t1362 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1362.
    DATA t1363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1363.
    t1357 = NEW zcl_lnt_istructure_component( i_name = t1358 i_type_9913 = t1359 i_as_include = t1362 i_suffix = t1363 ).
    APPEND t1357 TO t1356->items.
    DATA(t1364) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1365 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1365.
    DATA(t1366) = |lisel|.
    DATA t1367 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1367.
    DATA(t1368) = CONV int8( 255 ).
    DATA t1369 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1369.
    DATA(t1370) = abap_true.
    IF t1370 = abap_true.
      DATA t1371 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1371.
      DATA t1372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1372.
      DATA(t1373) = abap_true.
      IF t1373 = abap_true.
        DATA(t1374) = |sy-lisel|.
        DATA(t1375) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1375->has = abap_true.
        t1375->value = t1374.
        t1372 = t1375.
      ELSE.
        DATA t1376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1376.
        t1372 = t1376.
      ENDIF.
      DATA t1377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1377.
      DATA t1378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1378.
      DATA t1379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1379.
      DATA t1380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1380.
      DATA t1381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1381.
      t1371 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1372 i_conversion_exit = t1377 i_derived_from_constant = t1378 i_ddic_name = t1379 i_rtti_name = t1380 i_description = t1381 ).
      t1369 = t1371.
    ELSE.
      DATA t1382 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1382.
      t1369 = t1382.
    ENDIF.
    t1367 = NEW zcl_lnt_character_type( i_length = t1368 i_extra = t1369 ).
    DATA t1383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1383.
    DATA t1384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1384.
    t1365 = NEW zcl_lnt_istructure_component( i_name = t1366 i_type_9913 = t1367 i_as_include = t1383 i_suffix = t1384 ).
    APPEND t1365 TO t1364->items.
    DATA(t1385) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1386 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1386.
    DATA(t1387) = |uline|.
    DATA t1388 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1388.
    DATA(t1389) = CONV int8( 255 ).
    DATA t1390 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1390.
    DATA(t1391) = abap_true.
    IF t1391 = abap_true.
      DATA t1392 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1392.
      DATA t1393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1393.
      DATA(t1394) = abap_true.
      IF t1394 = abap_true.
        DATA(t1395) = |sy-uline|.
        DATA(t1396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1396->has = abap_true.
        t1396->value = t1395.
        t1393 = t1396.
      ELSE.
        DATA t1397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1397.
        t1393 = t1397.
      ENDIF.
      DATA t1398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1398.
      DATA t1399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1399.
      DATA t1400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1400.
      DATA t1401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1401.
      DATA t1402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1402.
      t1392 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1393 i_conversion_exit = t1398 i_derived_from_constant = t1399 i_ddic_name = t1400 i_rtti_name = t1401 i_description = t1402 ).
      t1390 = t1392.
    ELSE.
      DATA t1403 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1403.
      t1390 = t1403.
    ENDIF.
    t1388 = NEW zcl_lnt_character_type( i_length = t1389 i_extra = t1390 ).
    DATA t1404 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1404.
    DATA t1405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1405.
    t1386 = NEW zcl_lnt_istructure_component( i_name = t1387 i_type_9913 = t1388 i_as_include = t1404 i_suffix = t1405 ).
    APPEND t1386 TO t1385->items.
    DATA(t1406) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1407 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1408) = |xcode|.
    DATA t1409 TYPE REF TO zcl_lnt_character_type.
    DATA(t1410) = CONV int8( 70 ).
    DATA t1411 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1411.
    t1409 = NEW zcl_lnt_character_type( i_length = t1410 i_extra = t1411 ).
    DATA t1412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1412.
    DATA t1413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1413.
    t1407 = NEW zcl_lnt_istructure_component( i_name = t1408 i_type_9913 = t1409 i_as_include = t1412 i_suffix = t1413 ).
    APPEND t1407 TO t1406->items.
    DATA(t1414) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1415 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1415.
    DATA(t1416) = |cprog|.
    DATA t1417 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1417.
    DATA(t1418) = CONV int8( 40 ).
    DATA t1419 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1419.
    DATA(t1420) = abap_true.
    IF t1420 = abap_true.
      DATA t1421 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1421.
      DATA t1422 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1422.
      DATA(t1423) = abap_true.
      IF t1423 = abap_true.
        DATA(t1424) = |sy-cprog|.
        DATA(t1425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1425->has = abap_true.
        t1425->value = t1424.
        t1422 = t1425.
      ELSE.
        DATA t1426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1426.
        t1422 = t1426.
      ENDIF.
      DATA t1427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1427.
      DATA t1428 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1428.
      DATA t1429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1429.
      DATA t1430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1430.
      DATA t1431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1431.
      t1421 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1422 i_conversion_exit = t1427 i_derived_from_constant = t1428 i_ddic_name = t1429 i_rtti_name = t1430 i_description = t1431 ).
      t1419 = t1421.
    ELSE.
      DATA t1432 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1432.
      t1419 = t1432.
    ENDIF.
    t1417 = NEW zcl_lnt_character_type( i_length = t1418 i_extra = t1419 ).
    DATA t1433 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1433.
    DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1434.
    t1415 = NEW zcl_lnt_istructure_component( i_name = t1416 i_type_9913 = t1417 i_as_include = t1433 i_suffix = t1434 ).
    APPEND t1415 TO t1414->items.
    DATA(t1435) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1436 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1437) = |xprog|.
    DATA t1438 TYPE REF TO zcl_lnt_character_type.
    DATA(t1439) = CONV int8( 40 ).
    DATA t1440 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1440.
    t1438 = NEW zcl_lnt_character_type( i_length = t1439 i_extra = t1440 ).
    DATA t1441 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1441.
    DATA t1442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1442.
    t1436 = NEW zcl_lnt_istructure_component( i_name = t1437 i_type_9913 = t1438 i_as_include = t1441 i_suffix = t1442 ).
    APPEND t1436 TO t1435->items.
    DATA(t1443) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1444 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1445) = |xform|.
    DATA t1446 TYPE REF TO zcl_lnt_character_type.
    DATA(t1447) = CONV int8( 30 ).
    DATA t1448 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1448.
    t1446 = NEW zcl_lnt_character_type( i_length = t1447 i_extra = t1448 ).
    DATA t1449 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1449.
    DATA t1450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1450.
    t1444 = NEW zcl_lnt_istructure_component( i_name = t1445 i_type_9913 = t1446 i_as_include = t1449 i_suffix = t1450 ).
    APPEND t1444 TO t1443->items.
    DATA(t1451) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1452 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1452.
    DATA(t1453) = |ldbpg|.
    DATA t1454 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1454.
    DATA(t1455) = CONV int8( 40 ).
    DATA t1456 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1456.
    DATA(t1457) = abap_true.
    IF t1457 = abap_true.
      DATA t1458 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1458.
      DATA t1459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1459.
      DATA(t1460) = abap_true.
      IF t1460 = abap_true.
        DATA(t1461) = |sy-ldbpg|.
        DATA(t1462) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1462->has = abap_true.
        t1462->value = t1461.
        t1459 = t1462.
      ELSE.
        DATA t1463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1463.
        t1459 = t1463.
      ENDIF.
      DATA t1464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1464.
      DATA t1465 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1465.
      DATA t1466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1466.
      DATA t1467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1467.
      DATA t1468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1468.
      t1458 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1459 i_conversion_exit = t1464 i_derived_from_constant = t1465 i_ddic_name = t1466 i_rtti_name = t1467 i_description = t1468 ).
      t1456 = t1458.
    ELSE.
      DATA t1469 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1469.
      t1456 = t1469.
    ENDIF.
    t1454 = NEW zcl_lnt_character_type( i_length = t1455 i_extra = t1456 ).
    DATA t1470 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1470.
    DATA t1471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1471.
    t1452 = NEW zcl_lnt_istructure_component( i_name = t1453 i_type_9913 = t1454 i_as_include = t1470 i_suffix = t1471 ).
    APPEND t1452 TO t1451->items.
    DATA(t1472) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1473 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1473.
    DATA(t1474) = |tvar0|.
    DATA t1475 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1475.
    DATA(t1476) = CONV int8( 20 ).
    DATA t1477 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1477.
    DATA(t1478) = abap_true.
    IF t1478 = abap_true.
      DATA t1479 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1479.
      DATA t1480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1480.
      DATA(t1481) = abap_true.
      IF t1481 = abap_true.
        DATA(t1482) = |sy-tvar0|.
        DATA(t1483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1483->has = abap_true.
        t1483->value = t1482.
        t1480 = t1483.
      ELSE.
        DATA t1484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1484.
        t1480 = t1484.
      ENDIF.
      DATA t1485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1485.
      DATA t1486 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1486.
      DATA t1487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1487.
      DATA t1488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1488.
      DATA t1489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1489.
      t1479 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1480 i_conversion_exit = t1485 i_derived_from_constant = t1486 i_ddic_name = t1487 i_rtti_name = t1488 i_description = t1489 ).
      t1477 = t1479.
    ELSE.
      DATA t1490 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1490.
      t1477 = t1490.
    ENDIF.
    t1475 = NEW zcl_lnt_character_type( i_length = t1476 i_extra = t1477 ).
    DATA t1491 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1491.
    DATA t1492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1492.
    t1473 = NEW zcl_lnt_istructure_component( i_name = t1474 i_type_9913 = t1475 i_as_include = t1491 i_suffix = t1492 ).
    APPEND t1473 TO t1472->items.
    DATA(t1493) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1494 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1494.
    DATA(t1495) = |tvar1|.
    DATA t1496 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1496.
    DATA(t1497) = CONV int8( 20 ).
    DATA t1498 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1498.
    DATA(t1499) = abap_true.
    IF t1499 = abap_true.
      DATA t1500 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1500.
      DATA t1501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1501.
      DATA(t1502) = abap_true.
      IF t1502 = abap_true.
        DATA(t1503) = |sy-tvar1|.
        DATA(t1504) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1504->has = abap_true.
        t1504->value = t1503.
        t1501 = t1504.
      ELSE.
        DATA t1505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1505.
        t1501 = t1505.
      ENDIF.
      DATA t1506 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1506.
      DATA t1507 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1507.
      DATA t1508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1508.
      DATA t1509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1509.
      DATA t1510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1510.
      t1500 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1501 i_conversion_exit = t1506 i_derived_from_constant = t1507 i_ddic_name = t1508 i_rtti_name = t1509 i_description = t1510 ).
      t1498 = t1500.
    ELSE.
      DATA t1511 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1511.
      t1498 = t1511.
    ENDIF.
    t1496 = NEW zcl_lnt_character_type( i_length = t1497 i_extra = t1498 ).
    DATA t1512 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1512.
    DATA t1513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1513.
    t1494 = NEW zcl_lnt_istructure_component( i_name = t1495 i_type_9913 = t1496 i_as_include = t1512 i_suffix = t1513 ).
    APPEND t1494 TO t1493->items.
    DATA(t1514) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1515 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1515.
    DATA(t1516) = |tvar2|.
    DATA t1517 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1517.
    DATA(t1518) = CONV int8( 20 ).
    DATA t1519 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1519.
    DATA(t1520) = abap_true.
    IF t1520 = abap_true.
      DATA t1521 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1521.
      DATA t1522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1522.
      DATA(t1523) = abap_true.
      IF t1523 = abap_true.
        DATA(t1524) = |sy-tvar2|.
        DATA(t1525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1525->has = abap_true.
        t1525->value = t1524.
        t1522 = t1525.
      ELSE.
        DATA t1526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1526.
        t1522 = t1526.
      ENDIF.
      DATA t1527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1527.
      DATA t1528 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1528.
      DATA t1529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1529.
      DATA t1530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1530.
      DATA t1531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1531.
      t1521 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1522 i_conversion_exit = t1527 i_derived_from_constant = t1528 i_ddic_name = t1529 i_rtti_name = t1530 i_description = t1531 ).
      t1519 = t1521.
    ELSE.
      DATA t1532 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1532.
      t1519 = t1532.
    ENDIF.
    t1517 = NEW zcl_lnt_character_type( i_length = t1518 i_extra = t1519 ).
    DATA t1533 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1533.
    DATA t1534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1534.
    t1515 = NEW zcl_lnt_istructure_component( i_name = t1516 i_type_9913 = t1517 i_as_include = t1533 i_suffix = t1534 ).
    APPEND t1515 TO t1514->items.
    DATA(t1535) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1536 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1536.
    DATA(t1537) = |tvar3|.
    DATA t1538 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1538.
    DATA(t1539) = CONV int8( 20 ).
    DATA t1540 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1540.
    DATA(t1541) = abap_true.
    IF t1541 = abap_true.
      DATA t1542 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1542.
      DATA t1543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1543.
      DATA(t1544) = abap_true.
      IF t1544 = abap_true.
        DATA(t1545) = |sy-tvar3|.
        DATA(t1546) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1546->has = abap_true.
        t1546->value = t1545.
        t1543 = t1546.
      ELSE.
        DATA t1547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1547.
        t1543 = t1547.
      ENDIF.
      DATA t1548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1548.
      DATA t1549 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1549.
      DATA t1550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1550.
      DATA t1551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1551.
      DATA t1552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1552.
      t1542 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1543 i_conversion_exit = t1548 i_derived_from_constant = t1549 i_ddic_name = t1550 i_rtti_name = t1551 i_description = t1552 ).
      t1540 = t1542.
    ELSE.
      DATA t1553 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1553.
      t1540 = t1553.
    ENDIF.
    t1538 = NEW zcl_lnt_character_type( i_length = t1539 i_extra = t1540 ).
    DATA t1554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1554.
    DATA t1555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1555.
    t1536 = NEW zcl_lnt_istructure_component( i_name = t1537 i_type_9913 = t1538 i_as_include = t1554 i_suffix = t1555 ).
    APPEND t1536 TO t1535->items.
    DATA(t1556) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1557 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1557.
    DATA(t1558) = |tvar4|.
    DATA t1559 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1559.
    DATA(t1560) = CONV int8( 20 ).
    DATA t1561 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1561.
    DATA(t1562) = abap_true.
    IF t1562 = abap_true.
      DATA t1563 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1563.
      DATA t1564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1564.
      DATA(t1565) = abap_true.
      IF t1565 = abap_true.
        DATA(t1566) = |sy-tvar4|.
        DATA(t1567) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1567->has = abap_true.
        t1567->value = t1566.
        t1564 = t1567.
      ELSE.
        DATA t1568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1568.
        t1564 = t1568.
      ENDIF.
      DATA t1569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1569.
      DATA t1570 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1570.
      DATA t1571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1571.
      DATA t1572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1572.
      DATA t1573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1573.
      t1563 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1564 i_conversion_exit = t1569 i_derived_from_constant = t1570 i_ddic_name = t1571 i_rtti_name = t1572 i_description = t1573 ).
      t1561 = t1563.
    ELSE.
      DATA t1574 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1574.
      t1561 = t1574.
    ENDIF.
    t1559 = NEW zcl_lnt_character_type( i_length = t1560 i_extra = t1561 ).
    DATA t1575 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1575.
    DATA t1576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1576.
    t1557 = NEW zcl_lnt_istructure_component( i_name = t1558 i_type_9913 = t1559 i_as_include = t1575 i_suffix = t1576 ).
    APPEND t1557 TO t1556->items.
    DATA(t1577) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1578 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1578.
    DATA(t1579) = |tvar5|.
    DATA t1580 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1580.
    DATA(t1581) = CONV int8( 20 ).
    DATA t1582 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1582.
    DATA(t1583) = abap_true.
    IF t1583 = abap_true.
      DATA t1584 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1584.
      DATA t1585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1585.
      DATA(t1586) = abap_true.
      IF t1586 = abap_true.
        DATA(t1587) = |sy-tvar5|.
        DATA(t1588) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1588->has = abap_true.
        t1588->value = t1587.
        t1585 = t1588.
      ELSE.
        DATA t1589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1589.
        t1585 = t1589.
      ENDIF.
      DATA t1590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1590.
      DATA t1591 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1591.
      DATA t1592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1592.
      DATA t1593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1593.
      DATA t1594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1594.
      t1584 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1585 i_conversion_exit = t1590 i_derived_from_constant = t1591 i_ddic_name = t1592 i_rtti_name = t1593 i_description = t1594 ).
      t1582 = t1584.
    ELSE.
      DATA t1595 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1595.
      t1582 = t1595.
    ENDIF.
    t1580 = NEW zcl_lnt_character_type( i_length = t1581 i_extra = t1582 ).
    DATA t1596 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1596.
    DATA t1597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1597.
    t1578 = NEW zcl_lnt_istructure_component( i_name = t1579 i_type_9913 = t1580 i_as_include = t1596 i_suffix = t1597 ).
    APPEND t1578 TO t1577->items.
    DATA(t1598) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1599 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1599.
    DATA(t1600) = |tvar6|.
    DATA t1601 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1601.
    DATA(t1602) = CONV int8( 20 ).
    DATA t1603 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1603.
    DATA(t1604) = abap_true.
    IF t1604 = abap_true.
      DATA t1605 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1605.
      DATA t1606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1606.
      DATA(t1607) = abap_true.
      IF t1607 = abap_true.
        DATA(t1608) = |sy-tvar6|.
        DATA(t1609) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1609->has = abap_true.
        t1609->value = t1608.
        t1606 = t1609.
      ELSE.
        DATA t1610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1610.
        t1606 = t1610.
      ENDIF.
      DATA t1611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1611.
      DATA t1612 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1612.
      DATA t1613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1613.
      DATA t1614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1614.
      DATA t1615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1615.
      t1605 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1606 i_conversion_exit = t1611 i_derived_from_constant = t1612 i_ddic_name = t1613 i_rtti_name = t1614 i_description = t1615 ).
      t1603 = t1605.
    ELSE.
      DATA t1616 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1616.
      t1603 = t1616.
    ENDIF.
    t1601 = NEW zcl_lnt_character_type( i_length = t1602 i_extra = t1603 ).
    DATA t1617 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1617.
    DATA t1618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1618.
    t1599 = NEW zcl_lnt_istructure_component( i_name = t1600 i_type_9913 = t1601 i_as_include = t1617 i_suffix = t1618 ).
    APPEND t1599 TO t1598->items.
    DATA(t1619) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1620 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1620.
    DATA(t1621) = |tvar7|.
    DATA t1622 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1622.
    DATA(t1623) = CONV int8( 20 ).
    DATA t1624 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1624.
    DATA(t1625) = abap_true.
    IF t1625 = abap_true.
      DATA t1626 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1626.
      DATA t1627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1627.
      DATA(t1628) = abap_true.
      IF t1628 = abap_true.
        DATA(t1629) = |sy-tvar7|.
        DATA(t1630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1630->has = abap_true.
        t1630->value = t1629.
        t1627 = t1630.
      ELSE.
        DATA t1631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1631.
        t1627 = t1631.
      ENDIF.
      DATA t1632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1632.
      DATA t1633 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1633.
      DATA t1634 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1634.
      DATA t1635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1635.
      DATA t1636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1636.
      t1626 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1627 i_conversion_exit = t1632 i_derived_from_constant = t1633 i_ddic_name = t1634 i_rtti_name = t1635 i_description = t1636 ).
      t1624 = t1626.
    ELSE.
      DATA t1637 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1637.
      t1624 = t1637.
    ENDIF.
    t1622 = NEW zcl_lnt_character_type( i_length = t1623 i_extra = t1624 ).
    DATA t1638 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1638.
    DATA t1639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1639.
    t1620 = NEW zcl_lnt_istructure_component( i_name = t1621 i_type_9913 = t1622 i_as_include = t1638 i_suffix = t1639 ).
    APPEND t1620 TO t1619->items.
    DATA(t1640) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1641 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1641.
    DATA(t1642) = |tvar8|.
    DATA t1643 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1643.
    DATA(t1644) = CONV int8( 20 ).
    DATA t1645 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1645.
    DATA(t1646) = abap_true.
    IF t1646 = abap_true.
      DATA t1647 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1647.
      DATA t1648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1648.
      DATA(t1649) = abap_true.
      IF t1649 = abap_true.
        DATA(t1650) = |sy-tvar8|.
        DATA(t1651) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1651->has = abap_true.
        t1651->value = t1650.
        t1648 = t1651.
      ELSE.
        DATA t1652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1652.
        t1648 = t1652.
      ENDIF.
      DATA t1653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1653.
      DATA t1654 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1654.
      DATA t1655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1655.
      DATA t1656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1656.
      DATA t1657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1657.
      t1647 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1648 i_conversion_exit = t1653 i_derived_from_constant = t1654 i_ddic_name = t1655 i_rtti_name = t1656 i_description = t1657 ).
      t1645 = t1647.
    ELSE.
      DATA t1658 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1658.
      t1645 = t1658.
    ENDIF.
    t1643 = NEW zcl_lnt_character_type( i_length = t1644 i_extra = t1645 ).
    DATA t1659 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1659.
    DATA t1660 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1660.
    t1641 = NEW zcl_lnt_istructure_component( i_name = t1642 i_type_9913 = t1643 i_as_include = t1659 i_suffix = t1660 ).
    APPEND t1641 TO t1640->items.
    DATA(t1661) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1662 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1662.
    DATA(t1663) = |tvar9|.
    DATA t1664 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1664.
    DATA(t1665) = CONV int8( 20 ).
    DATA t1666 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1666.
    DATA(t1667) = abap_true.
    IF t1667 = abap_true.
      DATA t1668 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1668.
      DATA t1669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1669.
      DATA(t1670) = abap_true.
      IF t1670 = abap_true.
        DATA(t1671) = |sy-tvar9|.
        DATA(t1672) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1672->has = abap_true.
        t1672->value = t1671.
        t1669 = t1672.
      ELSE.
        DATA t1673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1673.
        t1669 = t1673.
      ENDIF.
      DATA t1674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1674.
      DATA t1675 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1675.
      DATA t1676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1676.
      DATA t1677 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1677.
      DATA t1678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1678.
      t1668 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1669 i_conversion_exit = t1674 i_derived_from_constant = t1675 i_ddic_name = t1676 i_rtti_name = t1677 i_description = t1678 ).
      t1666 = t1668.
    ELSE.
      DATA t1679 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1679.
      t1666 = t1679.
    ENDIF.
    t1664 = NEW zcl_lnt_character_type( i_length = t1665 i_extra = t1666 ).
    DATA t1680 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1680.
    DATA t1681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1681.
    t1662 = NEW zcl_lnt_istructure_component( i_name = t1663 i_type_9913 = t1664 i_as_include = t1680 i_suffix = t1681 ).
    APPEND t1662 TO t1661->items.
    DATA(t1682) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1683 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1683.
    DATA(t1684) = |msgid|.
    DATA t1685 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1685.
    DATA(t1686) = CONV int8( 20 ).
    DATA t1687 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1687.
    DATA(t1688) = abap_true.
    IF t1688 = abap_true.
      DATA t1689 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1689.
      DATA t1690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1690.
      DATA(t1691) = abap_true.
      IF t1691 = abap_true.
        DATA(t1692) = |sy-msgid|.
        DATA(t1693) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1693->has = abap_true.
        t1693->value = t1692.
        t1690 = t1693.
      ELSE.
        DATA t1694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1694.
        t1690 = t1694.
      ENDIF.
      DATA t1695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1695.
      DATA t1696 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1696.
      DATA t1697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1697.
      DATA t1698 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1698.
      DATA t1699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1699.
      t1689 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1690 i_conversion_exit = t1695 i_derived_from_constant = t1696 i_ddic_name = t1697 i_rtti_name = t1698 i_description = t1699 ).
      t1687 = t1689.
    ELSE.
      DATA t1700 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1700.
      t1687 = t1700.
    ENDIF.
    t1685 = NEW zcl_lnt_character_type( i_length = t1686 i_extra = t1687 ).
    DATA t1701 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1701.
    DATA t1702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1702.
    t1683 = NEW zcl_lnt_istructure_component( i_name = t1684 i_type_9913 = t1685 i_as_include = t1701 i_suffix = t1702 ).
    APPEND t1683 TO t1682->items.
    DATA(t1703) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1704 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1704.
    DATA(t1705) = |msgty|.
    DATA t1706 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1706.
    DATA(t1707) = CONV int8( 1 ).
    DATA t1708 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1708.
    DATA(t1709) = abap_true.
    IF t1709 = abap_true.
      DATA t1710 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1710.
      DATA t1711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1711.
      DATA(t1712) = abap_true.
      IF t1712 = abap_true.
        DATA(t1713) = |sy-msgty|.
        DATA(t1714) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1714->has = abap_true.
        t1714->value = t1713.
        t1711 = t1714.
      ELSE.
        DATA t1715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1715.
        t1711 = t1715.
      ENDIF.
      DATA t1716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1716.
      DATA t1717 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1717.
      DATA t1718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1718.
      DATA t1719 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1719.
      DATA t1720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1720.
      t1710 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1711 i_conversion_exit = t1716 i_derived_from_constant = t1717 i_ddic_name = t1718 i_rtti_name = t1719 i_description = t1720 ).
      t1708 = t1710.
    ELSE.
      DATA t1721 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1721.
      t1708 = t1721.
    ENDIF.
    t1706 = NEW zcl_lnt_character_type( i_length = t1707 i_extra = t1708 ).
    DATA t1722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1722.
    DATA t1723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1723.
    t1704 = NEW zcl_lnt_istructure_component( i_name = t1705 i_type_9913 = t1706 i_as_include = t1722 i_suffix = t1723 ).
    APPEND t1704 TO t1703->items.
    DATA(t1724) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1725 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1725.
    DATA(t1726) = |msgno|.
    DATA t1727 TYPE REF TO zcl_lnt_numeric_type.
    CLEAR t1727.
    DATA(t1728) = CONV int8( 3 ).
    DATA t1729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1729.
    DATA(t1730) = abap_true.
    IF t1730 = abap_true.
      DATA(t1731) = |sy-msgno|.
      DATA(t1732) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t1732->has = abap_true.
      t1732->value = t1731.
      t1729 = t1732.
    ELSE.
      DATA t1733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1733.
      t1729 = t1733.
    ENDIF.
    t1727 = NEW zcl_lnt_numeric_type( i_length = t1728 i_qualified_name = t1729 ).
    DATA t1734 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1734.
    DATA t1735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1735.
    t1725 = NEW zcl_lnt_istructure_component( i_name = t1726 i_type_9913 = t1727 i_as_include = t1734 i_suffix = t1735 ).
    APPEND t1725 TO t1724->items.
    DATA(t1736) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1737 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1737.
    DATA(t1738) = |msgv1|.
    DATA t1739 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1739.
    DATA(t1740) = CONV int8( 50 ).
    DATA t1741 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1741.
    DATA(t1742) = abap_true.
    IF t1742 = abap_true.
      DATA t1743 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1743.
      DATA t1744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1744.
      DATA(t1745) = abap_true.
      IF t1745 = abap_true.
        DATA(t1746) = |sy-msgv1|.
        DATA(t1747) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1747->has = abap_true.
        t1747->value = t1746.
        t1744 = t1747.
      ELSE.
        DATA t1748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1748.
        t1744 = t1748.
      ENDIF.
      DATA t1749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1749.
      DATA t1750 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1750.
      DATA t1751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1751.
      DATA t1752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1752.
      DATA t1753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1753.
      t1743 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1744 i_conversion_exit = t1749 i_derived_from_constant = t1750 i_ddic_name = t1751 i_rtti_name = t1752 i_description = t1753 ).
      t1741 = t1743.
    ELSE.
      DATA t1754 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1754.
      t1741 = t1754.
    ENDIF.
    t1739 = NEW zcl_lnt_character_type( i_length = t1740 i_extra = t1741 ).
    DATA t1755 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1755.
    DATA t1756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1756.
    t1737 = NEW zcl_lnt_istructure_component( i_name = t1738 i_type_9913 = t1739 i_as_include = t1755 i_suffix = t1756 ).
    APPEND t1737 TO t1736->items.
    DATA(t1757) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1758 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1758.
    DATA(t1759) = |msgv2|.
    DATA t1760 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1760.
    DATA(t1761) = CONV int8( 50 ).
    DATA t1762 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1762.
    DATA(t1763) = abap_true.
    IF t1763 = abap_true.
      DATA t1764 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1764.
      DATA t1765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1765.
      DATA(t1766) = abap_true.
      IF t1766 = abap_true.
        DATA(t1767) = |sy-msgv2|.
        DATA(t1768) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1768->has = abap_true.
        t1768->value = t1767.
        t1765 = t1768.
      ELSE.
        DATA t1769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1769.
        t1765 = t1769.
      ENDIF.
      DATA t1770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1770.
      DATA t1771 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1771.
      DATA t1772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1772.
      DATA t1773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1773.
      DATA t1774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1774.
      t1764 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1765 i_conversion_exit = t1770 i_derived_from_constant = t1771 i_ddic_name = t1772 i_rtti_name = t1773 i_description = t1774 ).
      t1762 = t1764.
    ELSE.
      DATA t1775 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1775.
      t1762 = t1775.
    ENDIF.
    t1760 = NEW zcl_lnt_character_type( i_length = t1761 i_extra = t1762 ).
    DATA t1776 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1776.
    DATA t1777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1777.
    t1758 = NEW zcl_lnt_istructure_component( i_name = t1759 i_type_9913 = t1760 i_as_include = t1776 i_suffix = t1777 ).
    APPEND t1758 TO t1757->items.
    DATA(t1778) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1779 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1779.
    DATA(t1780) = |msgv3|.
    DATA t1781 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1781.
    DATA(t1782) = CONV int8( 50 ).
    DATA t1783 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1783.
    DATA(t1784) = abap_true.
    IF t1784 = abap_true.
      DATA t1785 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1785.
      DATA t1786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1786.
      DATA(t1787) = abap_true.
      IF t1787 = abap_true.
        DATA(t1788) = |sy-msgv3|.
        DATA(t1789) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1789->has = abap_true.
        t1789->value = t1788.
        t1786 = t1789.
      ELSE.
        DATA t1790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1790.
        t1786 = t1790.
      ENDIF.
      DATA t1791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1791.
      DATA t1792 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1792.
      DATA t1793 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1793.
      DATA t1794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1794.
      DATA t1795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1795.
      t1785 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1786 i_conversion_exit = t1791 i_derived_from_constant = t1792 i_ddic_name = t1793 i_rtti_name = t1794 i_description = t1795 ).
      t1783 = t1785.
    ELSE.
      DATA t1796 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1796.
      t1783 = t1796.
    ENDIF.
    t1781 = NEW zcl_lnt_character_type( i_length = t1782 i_extra = t1783 ).
    DATA t1797 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1797.
    DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1798.
    t1779 = NEW zcl_lnt_istructure_component( i_name = t1780 i_type_9913 = t1781 i_as_include = t1797 i_suffix = t1798 ).
    APPEND t1779 TO t1778->items.
    DATA(t1799) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1800 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1800.
    DATA(t1801) = |msgv4|.
    DATA t1802 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1802.
    DATA(t1803) = CONV int8( 50 ).
    DATA t1804 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1804.
    DATA(t1805) = abap_true.
    IF t1805 = abap_true.
      DATA t1806 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1806.
      DATA t1807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1807.
      DATA(t1808) = abap_true.
      IF t1808 = abap_true.
        DATA(t1809) = |sy-msgv4|.
        DATA(t1810) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1810->has = abap_true.
        t1810->value = t1809.
        t1807 = t1810.
      ELSE.
        DATA t1811 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1811.
        t1807 = t1811.
      ENDIF.
      DATA t1812 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1812.
      DATA t1813 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1813.
      DATA t1814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1814.
      DATA t1815 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1815.
      DATA t1816 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1816.
      t1806 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1807 i_conversion_exit = t1812 i_derived_from_constant = t1813 i_ddic_name = t1814 i_rtti_name = t1815 i_description = t1816 ).
      t1804 = t1806.
    ELSE.
      DATA t1817 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1817.
      t1804 = t1817.
    ENDIF.
    t1802 = NEW zcl_lnt_character_type( i_length = t1803 i_extra = t1804 ).
    DATA t1818 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1818.
    DATA t1819 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1819.
    t1800 = NEW zcl_lnt_istructure_component( i_name = t1801 i_type_9913 = t1802 i_as_include = t1818 i_suffix = t1819 ).
    APPEND t1800 TO t1799->items.
    DATA(t1820) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1821 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1822) = |oncom|.
    DATA t1823 TYPE REF TO zcl_lnt_character_type.
    DATA(t1824) = CONV int8( 1 ).
    DATA t1825 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1825.
    t1823 = NEW zcl_lnt_character_type( i_length = t1824 i_extra = t1825 ).
    DATA t1826 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1826.
    DATA t1827 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1827.
    t1821 = NEW zcl_lnt_istructure_component( i_name = t1822 i_type_9913 = t1823 i_as_include = t1826 i_suffix = t1827 ).
    APPEND t1821 TO t1820->items.
    DATA(t1828) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1829 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1829.
    DATA(t1830) = |vline|.
    DATA t1831 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1831.
    DATA(t1832) = CONV int8( 1 ).
    DATA t1833 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1833.
    DATA(t1834) = abap_true.
    IF t1834 = abap_true.
      DATA t1835 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1835.
      DATA t1836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1836.
      DATA(t1837) = abap_true.
      IF t1837 = abap_true.
        DATA(t1838) = |sy-vline|.
        DATA(t1839) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1839->has = abap_true.
        t1839->value = t1838.
        t1836 = t1839.
      ELSE.
        DATA t1840 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1840.
        t1836 = t1840.
      ENDIF.
      DATA t1841 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1841.
      DATA t1842 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1842.
      DATA t1843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1843.
      DATA t1844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1844.
      DATA t1845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1845.
      t1835 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1836 i_conversion_exit = t1841 i_derived_from_constant = t1842 i_ddic_name = t1843 i_rtti_name = t1844 i_description = t1845 ).
      t1833 = t1835.
    ELSE.
      DATA t1846 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1846.
      t1833 = t1846.
    ENDIF.
    t1831 = NEW zcl_lnt_character_type( i_length = t1832 i_extra = t1833 ).
    DATA t1847 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1847.
    DATA t1848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1848.
    t1829 = NEW zcl_lnt_istructure_component( i_name = t1830 i_type_9913 = t1831 i_as_include = t1847 i_suffix = t1848 ).
    APPEND t1829 TO t1828->items.
    DATA(t1849) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1850 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1851) = |winsl|.
    DATA t1852 TYPE REF TO zcl_lnt_character_type.
    DATA(t1853) = CONV int8( 79 ).
    DATA t1854 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1854.
    t1852 = NEW zcl_lnt_character_type( i_length = t1853 i_extra = t1854 ).
    DATA t1855 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1855.
    DATA t1856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1856.
    t1850 = NEW zcl_lnt_istructure_component( i_name = t1851 i_type_9913 = t1852 i_as_include = t1855 i_suffix = t1856 ).
    APPEND t1850 TO t1849->items.
    DATA(t1857) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1858 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1859) = |staco|.
    DATA t1860 TYPE REF TO zcl_lnt_integer_type.
    DATA t1861 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1861.
    t1860 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1861 ).
    DATA t1862 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1862.
    DATA t1863 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1863.
    t1858 = NEW zcl_lnt_istructure_component( i_name = t1859 i_type_9913 = t1860 i_as_include = t1862 i_suffix = t1863 ).
    APPEND t1858 TO t1857->items.
    DATA(t1864) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1865 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1866) = |staro|.
    DATA t1867 TYPE REF TO zcl_lnt_integer_type.
    DATA t1868 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1868.
    t1867 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1868 ).
    DATA t1869 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1869.
    DATA t1870 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1870.
    t1865 = NEW zcl_lnt_istructure_component( i_name = t1866 i_type_9913 = t1867 i_as_include = t1869 i_suffix = t1870 ).
    APPEND t1865 TO t1864->items.
    DATA(t1871) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1872 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1872.
    DATA(t1873) = |datar|.
    DATA t1874 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1874.
    DATA(t1875) = CONV int8( 1 ).
    DATA t1876 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1876.
    DATA(t1877) = abap_true.
    IF t1877 = abap_true.
      DATA t1878 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1878.
      DATA t1879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1879.
      DATA(t1880) = abap_true.
      IF t1880 = abap_true.
        DATA(t1881) = |sy-datar|.
        DATA(t1882) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1882->has = abap_true.
        t1882->value = t1881.
        t1879 = t1882.
      ELSE.
        DATA t1883 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1883.
        t1879 = t1883.
      ENDIF.
      DATA t1884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1884.
      DATA t1885 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1885.
      DATA t1886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1886.
      DATA t1887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1887.
      DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1888.
      t1878 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1879 i_conversion_exit = t1884 i_derived_from_constant = t1885 i_ddic_name = t1886 i_rtti_name = t1887 i_description = t1888 ).
      t1876 = t1878.
    ELSE.
      DATA t1889 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1889.
      t1876 = t1889.
    ENDIF.
    t1874 = NEW zcl_lnt_character_type( i_length = t1875 i_extra = t1876 ).
    DATA t1890 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1890.
    DATA t1891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1891.
    t1872 = NEW zcl_lnt_istructure_component( i_name = t1873 i_type_9913 = t1874 i_as_include = t1890 i_suffix = t1891 ).
    APPEND t1872 TO t1871->items.
    DATA(t1892) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1893 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1893.
    DATA(t1894) = |host|.
    DATA t1895 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1895.
    DATA(t1896) = CONV int8( 32 ).
    DATA t1897 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1897.
    DATA(t1898) = abap_true.
    IF t1898 = abap_true.
      DATA t1899 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1899.
      DATA t1900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1900.
      DATA(t1901) = abap_true.
      IF t1901 = abap_true.
        DATA(t1902) = |sy-host|.
        DATA(t1903) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1903->has = abap_true.
        t1903->value = t1902.
        t1900 = t1903.
      ELSE.
        DATA t1904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1904.
        t1900 = t1904.
      ENDIF.
      DATA t1905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1905.
      DATA t1906 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1906.
      DATA t1907 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1907.
      DATA t1908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1908.
      DATA t1909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1909.
      t1899 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1900 i_conversion_exit = t1905 i_derived_from_constant = t1906 i_ddic_name = t1907 i_rtti_name = t1908 i_description = t1909 ).
      t1897 = t1899.
    ELSE.
      DATA t1910 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1910.
      t1897 = t1910.
    ENDIF.
    t1895 = NEW zcl_lnt_character_type( i_length = t1896 i_extra = t1897 ).
    DATA t1911 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1911.
    DATA t1912 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1912.
    t1893 = NEW zcl_lnt_istructure_component( i_name = t1894 i_type_9913 = t1895 i_as_include = t1911 i_suffix = t1912 ).
    APPEND t1893 TO t1892->items.
    DATA(t1913) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1914 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1915) = |locdb|.
    DATA t1916 TYPE REF TO zcl_lnt_character_type.
    DATA(t1917) = CONV int8( 1 ).
    DATA t1918 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1918.
    t1916 = NEW zcl_lnt_character_type( i_length = t1917 i_extra = t1918 ).
    DATA t1919 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1919.
    DATA t1920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1920.
    t1914 = NEW zcl_lnt_istructure_component( i_name = t1915 i_type_9913 = t1916 i_as_include = t1919 i_suffix = t1920 ).
    APPEND t1914 TO t1913->items.
    DATA(t1921) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1922 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1923) = |locop|.
    DATA t1924 TYPE REF TO zcl_lnt_character_type.
    DATA(t1925) = CONV int8( 1 ).
    DATA t1926 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1926.
    t1924 = NEW zcl_lnt_character_type( i_length = t1925 i_extra = t1926 ).
    DATA t1927 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1927.
    DATA t1928 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1928.
    t1922 = NEW zcl_lnt_istructure_component( i_name = t1923 i_type_9913 = t1924 i_as_include = t1927 i_suffix = t1928 ).
    APPEND t1922 TO t1921->items.
    DATA(t1929) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1930 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1931) = |datlo|.
    DATA t1932 TYPE REF TO zcl_lnt_date_type.
    DATA t1933 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1933.
    t1932 = NEW zcl_lnt_date_type( i_input_967e = t1933 ).
    DATA t1934 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1934.
    DATA t1935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1935.
    t1930 = NEW zcl_lnt_istructure_component( i_name = t1931 i_type_9913 = t1932 i_as_include = t1934 i_suffix = t1935 ).
    APPEND t1930 TO t1929->items.
    DATA(t1936) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1937 TYPE REF TO zcl_lnt_istructure_component.
    DATA(t1938) = |timlo|.
    DATA t1939 TYPE REF TO zcl_lnt_time_type.
    DATA t1940 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1940.
    t1939 = NEW zcl_lnt_time_type( i_input_967e = t1940 ).
    DATA t1941 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1941.
    DATA t1942 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1942.
    t1937 = NEW zcl_lnt_istructure_component( i_name = t1938 i_type_9913 = t1939 i_as_include = t1941 i_suffix = t1942 ).
    APPEND t1937 TO t1936->items.
    DATA(t1943) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1944 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t1944.
    DATA(t1945) = |zonlo|.
    DATA t1946 TYPE REF TO zcl_lnt_character_type.
    CLEAR t1946.
    DATA(t1947) = CONV int8( 6 ).
    DATA t1948 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1948.
    DATA(t1949) = abap_true.
    IF t1949 = abap_true.
      DATA t1950 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1950.
      DATA t1951 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1951.
      DATA(t1952) = abap_true.
      IF t1952 = abap_true.
        DATA(t1953) = |sy-zonlo|.
        DATA(t1954) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1954->has = abap_true.
        t1954->value = t1953.
        t1951 = t1954.
      ELSE.
        DATA t1955 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1955.
        t1951 = t1955.
      ENDIF.
      DATA t1956 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1956.
      DATA t1957 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1957.
      DATA t1958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1958.
      DATA t1959 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1959.
      DATA t1960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1960.
      t1950 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1951 i_conversion_exit = t1956 i_derived_from_constant = t1957 i_ddic_name = t1958 i_rtti_name = t1959 i_description = t1960 ).
      t1948 = t1950.
    ELSE.
      DATA t1961 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1961.
      t1948 = t1961.
    ENDIF.
    t1946 = NEW zcl_lnt_character_type( i_length = t1947 i_extra = t1948 ).
    DATA t1962 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1962.
    DATA t1963 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1963.
    t1944 = NEW zcl_lnt_istructure_component( i_name = t1945 i_type_9913 = t1946 i_as_include = t1962 i_suffix = t1963 ).
    APPEND t1944 TO t1943->items.
    DATA t1964 TYPE REF TO zcl_lnt_structure_type.
    DATA t1965 TYPE REF TO zcl_lnt_structure_type.
    DATA(t1966) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t1967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1967.
    DATA t1968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1968.
    DATA t1969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1969.
    t1965 = NEW zcl_lnt_structure_type( i_components = t1966 i_qualified_name = t1967 i_ddic_name = t1968 i_description = t1969 ).
    t1964 = t1965.
    DATA t1970 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t1970.
    DATA t1971 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t1971.
    DATA t1972 TYPE REF TO zcl_lnt_position.
    CLEAR t1972.
    DATA(t1973) = VALUE int8( ).
    DATA t1974 TYPE REF TO zcl_lnt_built_in.
    DATA(t1975) = CAST zcl_lnt_built_in( me ).
    t1974 = t1975.
    DATA t1976 TYPE int8.
    DATA t1977 TYPE int8.
    DATA(t1978) = CAST zcl_lnt_built_in( t1974 ).
    t1977 = t1978->row.
    t1976 = t1977.
    DATA(t1979) = CAST zcl_lnt_built_in( t1974 ).
    DATA t1980 TYPE int8.
    DATA(t1981) = t1976.
    DATA(t1982) = CONV int8( 1 ).
    t1980 = t1981 + t1982.
    IF t1980 < range_int8_bound_min OR t1980 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t1979->row = t1980.
    DATA(t1983) = t1976.
    t1973 = t1983.
    DATA(t1984) = CONV int8( 1 ).
    t1972 = NEW zcl_lnt_position( i_row = t1973 i_col = t1984 ).
    DATA(t1985) = |sy|.
    t1971 = NEW zcl_lnt_lx_identifier( i_start = t1972 i_str = t1985 ).
    t1970 = t1971.
    DATA t1986 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t1986.
    DATA t1987 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t1987.
    DATA(t1988) = CAST zcl_lnt_lx_identifier( t1970 ).
    DATA(t1989) = CONV string( zcl_lnt_built_in=>filename ).
    DATA(t1990) = CAST zcl_lnt_structure_type( t1964 ).
    DATA t1991 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1991.
    DATA(t1992) = abap_true.
    IF t1992 = abap_true.
      DATA t1993 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t1994 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t1995 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t1995.
      t1994 = t1995.
      DATA(t1996) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1994 ).
      DATA(t1997) = |read_only|.
      APPEND t1997 TO t1996->items.
      DATA(t1998) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1994 ).
      DATA(t1999) = |built-in|.
      APPEND t1999 TO t1998->items.
      DATA(t2000) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1994 ).
      t1993 = t2000.
      t1991 = t1993.
    ELSE.
      DATA t2001 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t2001.
      t1991 = t2001.
    ENDIF.
    DATA t2002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2002.
    t1987 = NEW zcl_lnt_typed_identifier( i_token = t1988 i_filename = t1989 i_type_9913 = t1990 i_meta = t1991 i_value = t2002 ).
    t1986 = t1987.
    DATA t2003 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2003.
    DATA t2004 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2004.
    DATA t2005 TYPE REF TO zcl_lnt_position.
    CLEAR t2005.
    DATA(t2006) = VALUE int8( ).
    DATA t2007 TYPE REF TO zcl_lnt_built_in.
    DATA(t2008) = CAST zcl_lnt_built_in( me ).
    t2007 = t2008.
    DATA t2009 TYPE int8.
    DATA t2010 TYPE int8.
    DATA(t2011) = CAST zcl_lnt_built_in( t2007 ).
    t2010 = t2011->row.
    t2009 = t2010.
    DATA(t2012) = CAST zcl_lnt_built_in( t2007 ).
    DATA t2013 TYPE int8.
    DATA(t2014) = t2009.
    DATA(t2015) = CONV int8( 1 ).
    t2013 = t2014 + t2015.
    IF t2013 < range_int8_bound_min OR t2013 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t2012->row = t2013.
    DATA(t2016) = t2009.
    t2006 = t2016.
    DATA(t2017) = CONV int8( 1 ).
    t2005 = NEW zcl_lnt_position( i_row = t2006 i_col = t2017 ).
    DATA(t2018) = |syst|.
    t2004 = NEW zcl_lnt_lx_identifier( i_start = t2005 i_str = t2018 ).
    t2003 = t2004.
    DATA t2019 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2019.
    DATA t2020 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2020.
    DATA(t2021) = CAST zcl_lnt_lx_identifier( t2003 ).
    DATA(t2022) = CONV string( zcl_lnt_built_in=>filename ).
    DATA(t2023) = CAST zcl_lnt_structure_type( t1964 ).
    DATA t2024 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2024.
    DATA(t2025) = abap_true.
    IF t2025 = abap_true.
      DATA t2026 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2027 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2028 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t2028.
      t2027 = t2028.
      DATA(t2029) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2027 ).
      DATA(t2030) = |read_only|.
      APPEND t2030 TO t2029->items.
      DATA(t2031) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2027 ).
      DATA(t2032) = |built-in|.
      APPEND t2032 TO t2031->items.
      DATA(t2033) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2027 ).
      t2026 = t2033.
      t2024 = t2026.
    ELSE.
      DATA t2034 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t2034.
      t2024 = t2034.
    ENDIF.
    DATA t2035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2035.
    t2020 = NEW zcl_lnt_typed_identifier( i_token = t2021 i_filename = t2022 i_type_9913 = t2023 i_meta = t2024 i_value = t2035 ).
    t2019 = t2020.
    DATA t2036 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2036.
    DATA t2037 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2037.
    DATA t2038 TYPE REF TO zcl_lnt_position.
    CLEAR t2038.
    DATA(t2039) = VALUE int8( ).
    DATA t2040 TYPE REF TO zcl_lnt_built_in.
    DATA(t2041) = CAST zcl_lnt_built_in( me ).
    t2040 = t2041.
    DATA t2042 TYPE int8.
    DATA t2043 TYPE int8.
    DATA(t2044) = CAST zcl_lnt_built_in( t2040 ).
    t2043 = t2044->row.
    t2042 = t2043.
    DATA(t2045) = CAST zcl_lnt_built_in( t2040 ).
    DATA t2046 TYPE int8.
    DATA(t2047) = t2042.
    DATA(t2048) = CONV int8( 1 ).
    t2046 = t2047 + t2048.
    IF t2046 < range_int8_bound_min OR t2046 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t2045->row = t2046.
    DATA(t2049) = t2042.
    t2039 = t2049.
    DATA(t2050) = CONV int8( 1 ).
    t2038 = NEW zcl_lnt_position( i_row = t2039 i_col = t2050 ).
    DATA(t2051) = |sy-repid|.
    t2037 = NEW zcl_lnt_lx_identifier( i_start = t2038 i_str = t2051 ).
    t2036 = t2037.
    DATA t2052 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2052.
    DATA t2053 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2053.
    DATA(t2054) = CAST zcl_lnt_lx_identifier( t2036 ).
    DATA(t2055) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t2056 TYPE REF TO zcl_lnt_character_type.
    CLEAR t2056.
    DATA(t2057) = CONV int8( 40 ).
    DATA t2058 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2058.
    DATA(t2059) = abap_true.
    IF t2059 = abap_true.
      DATA t2060 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2060.
      DATA t2061 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2061.
      DATA(t2062) = abap_true.
      IF t2062 = abap_true.
        DATA(t2063) = |sy-repid|.
        DATA(t2064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t2064->has = abap_true.
        t2064->value = t2063.
        t2061 = t2064.
      ELSE.
        DATA t2065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2065.
        t2061 = t2065.
      ENDIF.
      DATA t2066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2066.
      DATA t2067 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2067.
      DATA t2068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2068.
      DATA t2069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2069.
      DATA t2070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2070.
      t2060 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2061 i_conversion_exit = t2066 i_derived_from_constant = t2067 i_ddic_name = t2068 i_rtti_name = t2069 i_description = t2070 ).
      t2058 = t2060.
    ELSE.
      DATA t2071 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2071.
      t2058 = t2071.
    ENDIF.
    t2056 = NEW zcl_lnt_character_type( i_length = t2057 i_extra = t2058 ).
    DATA t2072 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2072.
    DATA(t2073) = abap_true.
    IF t2073 = abap_true.
      DATA t2074 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2075 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2076 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t2076.
      t2075 = t2076.
      DATA(t2077) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2075 ).
      DATA(t2078) = |read_only|.
      APPEND t2078 TO t2077->items.
      DATA(t2079) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2075 ).
      DATA(t2080) = |built-in|.
      APPEND t2080 TO t2079->items.
      DATA(t2081) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2075 ).
      t2074 = t2081.
      t2072 = t2074.
    ELSE.
      DATA t2082 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t2082.
      t2072 = t2082.
    ENDIF.
    DATA t2083 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2083.
    t2053 = NEW zcl_lnt_typed_identifier( i_token = t2054 i_filename = t2055 i_type_9913 = t2056 i_meta = t2072 i_value = t2083 ).
    t2052 = t2053.
    DATA t2084 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2084.
    DATA t2085 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t2085.
    DATA t2086 TYPE REF TO zcl_lnt_position.
    CLEAR t2086.
    DATA(t2087) = VALUE int8( ).
    DATA t2088 TYPE REF TO zcl_lnt_built_in.
    DATA(t2089) = CAST zcl_lnt_built_in( me ).
    t2088 = t2089.
    DATA t2090 TYPE int8.
    DATA t2091 TYPE int8.
    DATA(t2092) = CAST zcl_lnt_built_in( t2088 ).
    t2091 = t2092->row.
    t2090 = t2091.
    DATA(t2093) = CAST zcl_lnt_built_in( t2088 ).
    DATA t2094 TYPE int8.
    DATA(t2095) = t2090.
    DATA(t2096) = CONV int8( 1 ).
    t2094 = t2095 + t2096.
    IF t2094 < range_int8_bound_min OR t2094 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t2093->row = t2094.
    DATA(t2097) = t2090.
    t2087 = t2097.
    DATA(t2098) = CONV int8( 1 ).
    t2086 = NEW zcl_lnt_position( i_row = t2087 i_col = t2098 ).
    DATA(t2099) = |syst-repid|.
    t2085 = NEW zcl_lnt_lx_identifier( i_start = t2086 i_str = t2099 ).
    t2084 = t2085.
    DATA t2100 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2100.
    DATA t2101 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t2101.
    DATA(t2102) = CAST zcl_lnt_lx_identifier( t2084 ).
    DATA(t2103) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t2104 TYPE REF TO zcl_lnt_character_type.
    CLEAR t2104.
    DATA(t2105) = CONV int8( 40 ).
    DATA t2106 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2106.
    DATA(t2107) = abap_true.
    IF t2107 = abap_true.
      DATA t2108 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2108.
      DATA t2109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2109.
      DATA(t2110) = abap_true.
      IF t2110 = abap_true.
        DATA(t2111) = |syst-repid|.
        DATA(t2112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t2112->has = abap_true.
        t2112->value = t2111.
        t2109 = t2112.
      ELSE.
        DATA t2113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t2113.
        t2109 = t2113.
      ENDIF.
      DATA t2114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2114.
      DATA t2115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t2115.
      DATA t2116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2116.
      DATA t2117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2117.
      DATA t2118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t2118.
      t2108 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2109 i_conversion_exit = t2114 i_derived_from_constant = t2115 i_ddic_name = t2116 i_rtti_name = t2117 i_description = t2118 ).
      t2106 = t2108.
    ELSE.
      DATA t2119 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2119.
      t2106 = t2119.
    ENDIF.
    t2104 = NEW zcl_lnt_character_type( i_length = t2105 i_extra = t2106 ).
    DATA t2120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2120.
    DATA(t2121) = abap_true.
    IF t2121 = abap_true.
      DATA t2122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t2124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t2124.
      t2123 = t2124.
      DATA(t2125) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2123 ).
      DATA(t2126) = |read_only|.
      APPEND t2126 TO t2125->items.
      DATA(t2127) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2123 ).
      DATA(t2128) = |built-in|.
      APPEND t2128 TO t2127->items.
      DATA(t2129) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2123 ).
      t2122 = t2129.
      t2120 = t2122.
    ELSE.
      DATA t2130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t2130.
      t2120 = t2130.
    ENDIF.
    DATA t2131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2131.
    t2101 = NEW zcl_lnt_typed_identifier( i_token = t2102 i_filename = t2103 i_type_9913 = t2104 i_meta = t2120 i_value = t2131 ).
    t2100 = t2101.
    DATA t2132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2134.
    t2133 = t2134.
    DATA(t2135) = CAST zlnt_runtime_arra_c22708faf2e3( t2133 ).
    DATA(t2136) = CAST zcl_lnt_typed_identifier( t1986 ).
    APPEND t2136 TO t2135->items.
    DATA(t2137) = CAST zlnt_runtime_arra_c22708faf2e3( t2133 ).
    DATA(t2138) = CAST zcl_lnt_typed_identifier( t2019 ).
    APPEND t2138 TO t2137->items.
    DATA(t2139) = CAST zlnt_runtime_arra_c22708faf2e3( t2133 ).
    DATA(t2140) = CAST zcl_lnt_typed_identifier( t2052 ).
    APPEND t2140 TO t2139->items.
    DATA(t2141) = CAST zlnt_runtime_arra_c22708faf2e3( t2133 ).
    DATA(t2142) = CAST zcl_lnt_typed_identifier( t2100 ).
    APPEND t2142 TO t2141->items.
    DATA(t2143) = CAST zlnt_runtime_arra_c22708faf2e3( t2133 ).
    t2132 = t2143.
    result = t2132.

  ENDMETHOD.

  METHOD build_constant.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_value ).
    DATA t4 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_lx_identifier.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_position.
    CLEAR t6.
    DATA(t7) = VALUE int8( ).
    DATA t8 TYPE REF TO zcl_lnt_built_in.
    DATA(t9) = CAST zcl_lnt_built_in( me ).
    t8 = t9.
    DATA t10 TYPE int8.
    DATA t11 TYPE int8.
    DATA(t12) = CAST zcl_lnt_built_in( t8 ).
    t11 = t12->row.
    t10 = t11.
    DATA(t13) = CAST zcl_lnt_built_in( t8 ).
    DATA t14 TYPE int8.
    DATA(t15) = t10.
    DATA(t16) = CONV int8( 1 ).
    t14 = t15 + t16.
    IF t14 < range_int8_bound_min OR t14 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t13->row = t14.
    DATA(t17) = t10.
    t7 = t17.
    DATA(t18) = CONV int8( 1 ).
    t6 = NEW zcl_lnt_position( i_row = t7 i_col = t18 ).
    DATA(t19) = t1.
    t5 = NEW zcl_lnt_lx_identifier( i_start = t6 i_str = t19 ).
    t4 = t5.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t22) = CAST zcl_lnt_abstract_type( t2 ).
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zcl_lnt_abstract_type( t21 ).
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_void_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = t1.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t27 = zcl_lnt_void_type=>get_db65( i_voided = t28 i_qualified_name = t33 ).
      t2 = t27.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    t35 = t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    t37 = t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = CAST zlnt_runtime_opti_4ba3bdccd169( t35 ).
    IF t40 IS INITIAL.
      t39 = abap_true.
    ELSEIF t40->has = abap_false.
      t39 = abap_true.
    ENDIF.
    t34 = t39.
    IF t34 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      DATA(t42) = abap_true.
      IF t42 = abap_true.
        DATA(t43) = |'?'|.
        DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t44->has = abap_true.
        t44->value = t43.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        t41 = t45.
      ENDIF.
      t3 = t41.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t46.
    DATA(t47) = CAST zcl_lnt_lx_identifier( t4 ).
    DATA(t48) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t49 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t50) = CAST zcl_lnt_abstract_type( t2 ).
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t51.
    DATA(t52) = abap_true.
    IF t52 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t55.
      t54 = t55.
      DATA(t56) = CAST zlnt_runtime_arra_8ecd6afe19e0( t54 ).
      DATA(t57) = |read_only|.
      APPEND t57 TO t56->items.
      DATA(t58) = CAST zlnt_runtime_arra_8ecd6afe19e0( t54 ).
      DATA(t59) = |built-in|.
      APPEND t59 TO t58->items.
      DATA(t60) = CAST zlnt_runtime_arra_8ecd6afe19e0( t54 ).
      t53 = t60.
      t51 = t53.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t61.
      t51 = t61.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = abap_true.
    IF t63 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t65 TYPE string.
      DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
      t65 = t66->value.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t64->sval = t65.
      t62 = t64.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      t62 = t67.
    ENDIF.
    t46 = NEW zcl_lnt_typed_identifier( i_token = t47 i_filename = t48 i_type_9913 = t49 i_meta = t51 i_value = t62 ).
    result = t46.

  ENDMETHOD.

  METHOD zlnt_builtin_init_97ac0787fc72.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    IF zlnt_builtin_init_d2c53bdf259f = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_d2c53bdf259f = abap_true.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CONV int8( 1 ).
    zcl_lnt_built_in=>counter = t1.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    zcl_lnt_built_in=>get_cache = t2.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    zcl_lnt_built_in=>types_cache = t3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    zcl_lnt_built_in=>extras_cache_key = t4.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    zcl_lnt_built_in=>extras_cache = t5.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t8) = NEW zlnt_runtime_map__c27ad0d4c484( ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t11) = |ABS|.
    DATA t12 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t12.
    DATA(t13) = VALUE int8( ).
    DATA(t14) = VALUE int8( ).
    DATA(t15) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t15 = zcl_lnt_built_in=>counter.
    t14 = t15.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t16 TYPE int8.
    DATA(t17) = t14.
    DATA(t18) = CONV int8( 1 ).
    t16 = t17 + t18.
    IF t16 < range_int8_bound_min OR t16 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t16.
    DATA(t19) = t14.
    t13 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t23 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t24) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t26) = CAST zlnt_runtime_map__41b3bb94df3d( t23 ).
      DATA(t27) = |val|.
      DATA t28 TYPE REF TO zcl_lnt_float_type.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t29.
      t28 = NEW zcl_lnt_float_type( i_input_967e = t29 ).
      t25 = t26->set( p0 = t27 p1 = t28 ).
      DATA(t30) = CAST zlnt_runtime_map__41b3bb94df3d( t23 ).
      t22 = t30.
      t20 = t22.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t31.
      t20 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_integer_type.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t36.
    t35 = zcl_lnt_integer_type=>get_db65( i_input_967e = t36 ).
    DATA t37 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t37.
    t12 = NEW zcl_lnt_ibuiltin_method( i_counter = t13 i_mandatory = t20 i_optional = t32 i_release_7928 = t33 i_predicate = t34 i_return_fa63 = t35 i_cache = t37 ).
    t9 = t10->set( p0 = t11 p1 = t12 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t40) = |ACOS|.
    DATA t41 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t41.
    DATA(t42) = VALUE int8( ).
    DATA(t43) = VALUE int8( ).
    DATA(t44) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t44 = zcl_lnt_built_in=>counter.
    t43 = t44.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t45 TYPE int8.
    DATA(t46) = t43.
    DATA(t47) = CONV int8( 1 ).
    t45 = t46 + t47.
    IF t45 < range_int8_bound_min OR t45 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t45.
    DATA(t48) = t43.
    t42 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t52 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t53) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t55) = CAST zlnt_runtime_map__41b3bb94df3d( t52 ).
      DATA(t56) = |val|.
      DATA t57 TYPE REF TO zcl_lnt_float_type.
      DATA t58 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t58.
      t57 = NEW zcl_lnt_float_type( i_input_967e = t58 ).
      t54 = t55->set( p0 = t56 p1 = t57 ).
      DATA(t59) = CAST zlnt_runtime_map__41b3bb94df3d( t52 ).
      t51 = t59.
      t49 = t51.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t60.
      t49 = t60.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_float_type.
    DATA t65 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t65.
    t64 = NEW zcl_lnt_float_type( i_input_967e = t65 ).
    DATA t66 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t66.
    t41 = NEW zcl_lnt_ibuiltin_method( i_counter = t42 i_mandatory = t49 i_optional = t61 i_release_7928 = t62 i_predicate = t63 i_return_fa63 = t64 i_cache = t66 ).
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t67 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t69) = |ASIN|.
    DATA t70 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t70.
    DATA(t71) = VALUE int8( ).
    DATA(t72) = VALUE int8( ).
    DATA(t73) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t73 = zcl_lnt_built_in=>counter.
    t72 = t73.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t74 TYPE int8.
    DATA(t75) = t72.
    DATA(t76) = CONV int8( 1 ).
    t74 = t75 + t76.
    IF t74 < range_int8_bound_min OR t74 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t74.
    DATA(t77) = t72.
    t71 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t78.
    DATA(t79) = abap_true.
    IF t79 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t81 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t82) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t81 = t82.
      DATA t83 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t84) = CAST zlnt_runtime_map__41b3bb94df3d( t81 ).
      DATA(t85) = |val|.
      DATA t86 TYPE REF TO zcl_lnt_float_type.
      DATA t87 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t87.
      t86 = NEW zcl_lnt_float_type( i_input_967e = t87 ).
      t83 = t84->set( p0 = t85 p1 = t86 ).
      DATA(t88) = CAST zlnt_runtime_map__41b3bb94df3d( t81 ).
      t80 = t88.
      t78 = t80.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t89.
      t78 = t89.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_float_type.
    DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t94.
    t93 = NEW zcl_lnt_float_type( i_input_967e = t94 ).
    DATA t95 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t95.
    t70 = NEW zcl_lnt_ibuiltin_method( i_counter = t71 i_mandatory = t78 i_optional = t90 i_release_7928 = t91 i_predicate = t92 i_return_fa63 = t93 i_cache = t95 ).
    t67 = t68->set( p0 = t69 p1 = t70 ).
    DATA t96 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t96.
    DATA(t97) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t98) = |ATAN|.
    DATA t99 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t99.
    DATA(t100) = VALUE int8( ).
    DATA(t101) = VALUE int8( ).
    DATA(t102) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t102 = zcl_lnt_built_in=>counter.
    t101 = t102.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t103 TYPE int8.
    DATA(t104) = t101.
    DATA(t105) = CONV int8( 1 ).
    t103 = t104 + t105.
    IF t103 < range_int8_bound_min OR t103 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t103.
    DATA(t106) = t101.
    t100 = t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t107.
    DATA(t108) = abap_true.
    IF t108 = abap_true.
      DATA t109 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t110 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t111) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t110 = t111.
      DATA t112 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t113) = CAST zlnt_runtime_map__41b3bb94df3d( t110 ).
      DATA(t114) = |val|.
      DATA t115 TYPE REF TO zcl_lnt_float_type.
      DATA t116 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t116.
      t115 = NEW zcl_lnt_float_type( i_input_967e = t116 ).
      t112 = t113->set( p0 = t114 p1 = t115 ).
      DATA(t117) = CAST zlnt_runtime_map__41b3bb94df3d( t110 ).
      t109 = t117.
      t107 = t109.
    ELSE.
      DATA t118 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t118.
      t107 = t118.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_float_type.
    DATA t123 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t123.
    t122 = NEW zcl_lnt_float_type( i_input_967e = t123 ).
    DATA t124 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t124.
    t99 = NEW zcl_lnt_ibuiltin_method( i_counter = t100 i_mandatory = t107 i_optional = t119 i_release_7928 = t120 i_predicate = t121 i_return_fa63 = t122 i_cache = t124 ).
    t96 = t97->set( p0 = t98 p1 = t99 ).
    DATA t125 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t125.
    DATA(t126) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t127) = |BIT-SET|.
    DATA t128 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t128.
    DATA(t129) = VALUE int8( ).
    DATA(t130) = VALUE int8( ).
    DATA(t131) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t131 = zcl_lnt_built_in=>counter.
    t130 = t131.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t132 TYPE int8.
    DATA(t133) = t130.
    DATA(t134) = CONV int8( 1 ).
    t132 = t133 + t134.
    IF t132 < range_int8_bound_min OR t132 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t132.
    DATA(t135) = t130.
    t129 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t136.
    DATA(t137) = abap_true.
    IF t137 = abap_true.
      DATA t138 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t139 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t140) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t139 = t140.
      DATA t141 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t142) = CAST zlnt_runtime_map__41b3bb94df3d( t139 ).
      DATA(t143) = |val|.
      DATA t144 TYPE REF TO zcl_lnt_integer_type.
      DATA t145 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t145.
      t144 = zcl_lnt_integer_type=>get_db65( i_input_967e = t145 ).
      t141 = t142->set( p0 = t143 p1 = t144 ).
      DATA(t146) = CAST zlnt_runtime_map__41b3bb94df3d( t139 ).
      t138 = t146.
      t136 = t138.
    ELSE.
      DATA t147 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t147.
      t136 = t147.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t149.
    DATA(t150) = abap_true.
    IF t150 = abap_true.
      DATA t151 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t152.
      DATA t153 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t153.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t153 = zcl_lnt_version_module=>release_b8cd.
      DATA(t154) = |v702|.
      t152 = t153->get( p0 = t154 ).
      t151 = t152.
      t149 = t151.
    ELSE.
      DATA t155 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t155.
      t149 = t155.
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_x_string_type.
    DATA t158 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t158.
    t157 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t158 ).
    DATA t159 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t159.
    t128 = NEW zcl_lnt_ibuiltin_method( i_counter = t129 i_mandatory = t136 i_optional = t148 i_release_7928 = t149 i_predicate = t156 i_return_fa63 = t157 i_cache = t159 ).
    t125 = t126->set( p0 = t127 p1 = t128 ).
    DATA t160 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t160.
    DATA(t161) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t162) = |BOOLC|.
    DATA t163 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t163.
    DATA(t164) = VALUE int8( ).
    DATA(t165) = VALUE int8( ).
    DATA(t166) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t166 = zcl_lnt_built_in=>counter.
    t165 = t166.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t167 TYPE int8.
    DATA(t168) = t165.
    DATA(t169) = CONV int8( 1 ).
    t167 = t168 + t169.
    IF t167 < range_int8_bound_min OR t167 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t167.
    DATA(t170) = t165.
    t164 = t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t171.
    DATA(t172) = abap_true.
    IF t172 = abap_true.
      DATA t173 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t174 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t175) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t174 = t175.
      DATA t176 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t177) = CAST zlnt_runtime_map__41b3bb94df3d( t174 ).
      DATA(t178) = |val|.
      DATA(t179) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t176 = t177->set( p0 = t178 p1 = t179 ).
      DATA(t180) = CAST zlnt_runtime_map__41b3bb94df3d( t174 ).
      t173 = t180.
      t171 = t173.
    ELSE.
      DATA t181 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t181.
      t171 = t181.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t182.
    DATA t183 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t183.
    DATA(t184) = abap_true.
    IF t184 = abap_true.
      DATA t185 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t186.
      DATA t187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t187.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t187 = zcl_lnt_version_module=>release_b8cd.
      DATA(t188) = |v702|.
      t186 = t187->get( p0 = t188 ).
      t185 = t186.
      t183 = t185.
    ELSE.
      DATA t189 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t189.
      t183 = t189.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t190.
    DATA t191 TYPE REF TO zcl_lnt_string_type.
    DATA t192 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t192.
    t191 = zcl_lnt_string_type=>get_db65( i_input_967e = t192 ).
    DATA t193 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t193.
    t163 = NEW zcl_lnt_ibuiltin_method( i_counter = t164 i_mandatory = t171 i_optional = t182 i_release_7928 = t183 i_predicate = t190 i_return_fa63 = t191 i_cache = t193 ).
    t160 = t161->set( p0 = t162 p1 = t163 ).
    DATA t194 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t194.
    DATA(t195) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t196) = |BOOLX|.
    DATA t197 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t197.
    DATA(t198) = VALUE int8( ).
    DATA(t199) = VALUE int8( ).
    DATA(t200) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t200 = zcl_lnt_built_in=>counter.
    t199 = t200.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t201 TYPE int8.
    DATA(t202) = t199.
    DATA(t203) = CONV int8( 1 ).
    t201 = t202 + t203.
    IF t201 < range_int8_bound_min OR t201 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t201.
    DATA(t204) = t199.
    t198 = t204.
    DATA t205 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t205.
    DATA(t206) = abap_true.
    IF t206 = abap_true.
      DATA t207 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t208 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t209) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t208 = t209.
      DATA t210 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t211) = CAST zlnt_runtime_map__41b3bb94df3d( t208 ).
      DATA(t212) = |bool|.
      DATA(t213) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t210 = t211->set( p0 = t212 p1 = t213 ).
      DATA(t214) = CAST zlnt_runtime_map__41b3bb94df3d( t208 ).
      t207 = t214.
      t205 = t207.
    ELSE.
      DATA t215 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t215.
      t205 = t215.
    ENDIF.
    DATA t216 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t216.
    DATA(t217) = abap_true.
    IF t217 = abap_true.
      DATA t218 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t219 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t220) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t219 = t220.
      DATA t221 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t222) = CAST zlnt_runtime_map__41b3bb94df3d( t219 ).
      DATA(t223) = |bit|.
      DATA t224 TYPE REF TO zcl_lnt_integer_type.
      DATA t225 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t225.
      t224 = zcl_lnt_integer_type=>get_db65( i_input_967e = t225 ).
      t221 = t222->set( p0 = t223 p1 = t224 ).
      DATA(t226) = CAST zlnt_runtime_map__41b3bb94df3d( t219 ).
      t218 = t226.
      t216 = t218.
    ELSE.
      DATA t227 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t227.
      t216 = t227.
    ENDIF.
    DATA t228 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t228.
    DATA(t229) = abap_true.
    IF t229 = abap_true.
      DATA t230 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t231.
      DATA t232 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t232.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t232 = zcl_lnt_version_module=>release_b8cd.
      DATA(t233) = |v702|.
      t231 = t232->get( p0 = t233 ).
      t230 = t231.
      t228 = t230.
    ELSE.
      DATA t234 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t234.
      t228 = t234.
    ENDIF.
    DATA t235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t235.
    DATA t236 TYPE REF TO zcl_lnt_x_string_type.
    DATA t237 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t237.
    t236 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t237 ).
    DATA t238 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t238.
    t197 = NEW zcl_lnt_ibuiltin_method( i_counter = t198 i_mandatory = t205 i_optional = t216 i_release_7928 = t228 i_predicate = t235 i_return_fa63 = t236 i_cache = t238 ).
    t194 = t195->set( p0 = t196 p1 = t197 ).
    DATA t239 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t239.
    DATA(t240) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t241) = |CEIL|.
    DATA t242 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t242.
    DATA(t243) = VALUE int8( ).
    DATA(t244) = VALUE int8( ).
    DATA(t245) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t245 = zcl_lnt_built_in=>counter.
    t244 = t245.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t246 TYPE int8.
    DATA(t247) = t244.
    DATA(t248) = CONV int8( 1 ).
    t246 = t247 + t248.
    IF t246 < range_int8_bound_min OR t246 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t246.
    DATA(t249) = t244.
    t243 = t249.
    DATA t250 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t250.
    DATA(t251) = abap_true.
    IF t251 = abap_true.
      DATA t252 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t253 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t254) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t253 = t254.
      DATA t255 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t256) = CAST zlnt_runtime_map__41b3bb94df3d( t253 ).
      DATA(t257) = |val|.
      DATA t258 TYPE REF TO zcl_lnt_float_type.
      DATA t259 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t259.
      t258 = NEW zcl_lnt_float_type( i_input_967e = t259 ).
      t255 = t256->set( p0 = t257 p1 = t258 ).
      DATA(t260) = CAST zlnt_runtime_map__41b3bb94df3d( t253 ).
      t252 = t260.
      t250 = t252.
    ELSE.
      DATA t261 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t261.
      t250 = t261.
    ENDIF.
    DATA t262 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t262.
    DATA t263 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t264.
    DATA t265 TYPE REF TO zcl_lnt_integer_type.
    DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t266.
    t265 = zcl_lnt_integer_type=>get_db65( i_input_967e = t266 ).
    DATA t267 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t267.
    t242 = NEW zcl_lnt_ibuiltin_method( i_counter = t243 i_mandatory = t250 i_optional = t262 i_release_7928 = t263 i_predicate = t264 i_return_fa63 = t265 i_cache = t267 ).
    t239 = t240->set( p0 = t241 p1 = t242 ).
    DATA t268 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t268.
    DATA(t269) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t270) = |CHAR_OFF|.
    DATA t271 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t271.
    DATA(t272) = VALUE int8( ).
    DATA(t273) = VALUE int8( ).
    DATA(t274) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t274 = zcl_lnt_built_in=>counter.
    t273 = t274.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t275 TYPE int8.
    DATA(t276) = t273.
    DATA(t277) = CONV int8( 1 ).
    t275 = t276 + t277.
    IF t275 < range_int8_bound_min OR t275 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t275.
    DATA(t278) = t273.
    t272 = t278.
    DATA t279 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t279.
    DATA(t280) = abap_true.
    IF t280 = abap_true.
      DATA t281 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t282 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t283) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t282 = t283.
      DATA t284 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t285) = CAST zlnt_runtime_map__41b3bb94df3d( t282 ).
      DATA(t286) = |val|.
      DATA(t287) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t284 = t285->set( p0 = t286 p1 = t287 ).
      DATA t288 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t289) = CAST zlnt_runtime_map__41b3bb94df3d( t282 ).
      DATA(t290) = |add|.
      DATA t291 TYPE REF TO zcl_lnt_integer_type.
      DATA t292 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t292.
      t291 = zcl_lnt_integer_type=>get_db65( i_input_967e = t292 ).
      t288 = t289->set( p0 = t290 p1 = t291 ).
      DATA(t293) = CAST zlnt_runtime_map__41b3bb94df3d( t282 ).
      t281 = t293.
      t279 = t281.
    ELSE.
      DATA t294 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t294.
      t279 = t294.
    ENDIF.
    DATA t295 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t295.
    DATA(t296) = abap_true.
    IF t296 = abap_true.
      DATA t297 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t298 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t299) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t298 = t299.
      DATA t300 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t301) = CAST zlnt_runtime_map__41b3bb94df3d( t298 ).
      DATA(t302) = |off|.
      DATA t303 TYPE REF TO zcl_lnt_integer_type.
      DATA t304 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t304.
      t303 = zcl_lnt_integer_type=>get_db65( i_input_967e = t304 ).
      t300 = t301->set( p0 = t302 p1 = t303 ).
      DATA(t305) = CAST zlnt_runtime_map__41b3bb94df3d( t298 ).
      t297 = t305.
      t295 = t297.
    ELSE.
      DATA t306 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t306.
      t295 = t306.
    ENDIF.
    DATA t307 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t307.
    DATA(t308) = abap_true.
    IF t308 = abap_true.
      DATA t309 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t309.
      DATA t310 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t310.
      DATA t311 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t311.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t311 = zcl_lnt_version_module=>release_b8cd.
      DATA(t312) = |v702|.
      t310 = t311->get( p0 = t312 ).
      t309 = t310.
      t307 = t309.
    ELSE.
      DATA t313 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t313.
      t307 = t313.
    ENDIF.
    DATA t314 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t314.
    DATA t315 TYPE REF TO zcl_lnt_integer_type.
    DATA t316 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t316.
    t315 = zcl_lnt_integer_type=>get_db65( i_input_967e = t316 ).
    DATA t317 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t317.
    t271 = NEW zcl_lnt_ibuiltin_method( i_counter = t272 i_mandatory = t279 i_optional = t295 i_release_7928 = t307 i_predicate = t314 i_return_fa63 = t315 i_cache = t317 ).
    t268 = t269->set( p0 = t270 p1 = t271 ).
    DATA t318 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t318.
    DATA(t319) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t320) = |CHARLEN|.
    DATA t321 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t321.
    DATA(t322) = VALUE int8( ).
    DATA(t323) = VALUE int8( ).
    DATA(t324) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t324 = zcl_lnt_built_in=>counter.
    t323 = t324.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t325 TYPE int8.
    DATA(t326) = t323.
    DATA(t327) = CONV int8( 1 ).
    t325 = t326 + t327.
    IF t325 < range_int8_bound_min OR t325 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t325.
    DATA(t328) = t323.
    t322 = t328.
    DATA t329 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t329.
    DATA(t330) = abap_true.
    IF t330 = abap_true.
      DATA t331 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t332 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t333) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t332 = t333.
      DATA t334 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t335) = CAST zlnt_runtime_map__41b3bb94df3d( t332 ).
      DATA(t336) = |val|.
      DATA(t337) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t334 = t335->set( p0 = t336 p1 = t337 ).
      DATA(t338) = CAST zlnt_runtime_map__41b3bb94df3d( t332 ).
      t331 = t338.
      t329 = t331.
    ELSE.
      DATA t339 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t339.
      t329 = t339.
    ENDIF.
    DATA t340 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t340.
    DATA t341 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t342.
    DATA t343 TYPE REF TO zcl_lnt_integer_type.
    DATA t344 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t344.
    t343 = zcl_lnt_integer_type=>get_db65( i_input_967e = t344 ).
    DATA t345 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t345.
    t321 = NEW zcl_lnt_ibuiltin_method( i_counter = t322 i_mandatory = t329 i_optional = t340 i_release_7928 = t341 i_predicate = t342 i_return_fa63 = t343 i_cache = t345 ).
    t318 = t319->set( p0 = t320 p1 = t321 ).
    DATA t346 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t346.
    DATA(t347) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t348) = |CMAX|.
    DATA t349 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t349.
    DATA(t350) = VALUE int8( ).
    DATA(t351) = VALUE int8( ).
    DATA(t352) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t352 = zcl_lnt_built_in=>counter.
    t351 = t352.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t353 TYPE int8.
    DATA(t354) = t351.
    DATA(t355) = CONV int8( 1 ).
    t353 = t354 + t355.
    IF t353 < range_int8_bound_min OR t353 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t353.
    DATA(t356) = t351.
    t350 = t356.
    DATA t357 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t357.
    DATA(t358) = abap_true.
    IF t358 = abap_true.
      DATA t359 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t361) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t360 = t361.
      DATA t362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t363) = CAST zlnt_runtime_map__41b3bb94df3d( t360 ).
      DATA(t364) = |val1|.
      DATA(t365) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t362 = t363->set( p0 = t364 p1 = t365 ).
      DATA t366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t367) = CAST zlnt_runtime_map__41b3bb94df3d( t360 ).
      DATA(t368) = |val2|.
      DATA(t369) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t366 = t367->set( p0 = t368 p1 = t369 ).
      DATA(t370) = CAST zlnt_runtime_map__41b3bb94df3d( t360 ).
      t359 = t370.
      t357 = t359.
    ELSE.
      DATA t371 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t371.
      t357 = t371.
    ENDIF.
    DATA t372 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t372.
    DATA(t373) = abap_true.
    IF t373 = abap_true.
      DATA t374 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t376) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t375 = t376.
      DATA t377 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t378) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t379) = |val3|.
      DATA(t380) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t377 = t378->set( p0 = t379 p1 = t380 ).
      DATA t381 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t382) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t383) = |val4|.
      DATA(t384) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t381 = t382->set( p0 = t383 p1 = t384 ).
      DATA t385 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t386) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t387) = |val5|.
      DATA(t388) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t385 = t386->set( p0 = t387 p1 = t388 ).
      DATA t389 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t390) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t391) = |val6|.
      DATA(t392) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t389 = t390->set( p0 = t391 p1 = t392 ).
      DATA t393 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t394) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t395) = |val7|.
      DATA(t396) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t393 = t394->set( p0 = t395 p1 = t396 ).
      DATA t397 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t398) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      DATA(t399) = |val9|.
      DATA(t400) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t397 = t398->set( p0 = t399 p1 = t400 ).
      DATA(t401) = CAST zlnt_runtime_map__41b3bb94df3d( t375 ).
      t374 = t401.
      t372 = t374.
    ELSE.
      DATA t402 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t402.
      t372 = t402.
    ENDIF.
    DATA t403 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t403.
    DATA(t404) = abap_true.
    IF t404 = abap_true.
      DATA t405 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t405.
      DATA t406 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t406.
      DATA t407 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t407.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t407 = zcl_lnt_version_module=>release_b8cd.
      DATA(t408) = |v702|.
      t406 = t407->get( p0 = t408 ).
      t405 = t406.
      t403 = t405.
    ELSE.
      DATA t409 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t409.
      t403 = t409.
    ENDIF.
    DATA t410 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t410.
    DATA t411 TYPE REF TO zcl_lnt_string_type.
    DATA t412 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t412.
    t411 = zcl_lnt_string_type=>get_db65( i_input_967e = t412 ).
    DATA t413 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t413.
    t349 = NEW zcl_lnt_ibuiltin_method( i_counter = t350 i_mandatory = t357 i_optional = t372 i_release_7928 = t403 i_predicate = t410 i_return_fa63 = t411 i_cache = t413 ).
    t346 = t347->set( p0 = t348 p1 = t349 ).
    DATA t414 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t414.
    DATA(t415) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t416) = |CMIN|.
    DATA t417 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t417.
    DATA(t418) = VALUE int8( ).
    DATA(t419) = VALUE int8( ).
    DATA(t420) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t420 = zcl_lnt_built_in=>counter.
    t419 = t420.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t421 TYPE int8.
    DATA(t422) = t419.
    DATA(t423) = CONV int8( 1 ).
    t421 = t422 + t423.
    IF t421 < range_int8_bound_min OR t421 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t421.
    DATA(t424) = t419.
    t418 = t424.
    DATA t425 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t425.
    DATA(t426) = abap_true.
    IF t426 = abap_true.
      DATA t427 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t428 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t429) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t428 = t429.
      DATA t430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t431) = CAST zlnt_runtime_map__41b3bb94df3d( t428 ).
      DATA(t432) = |val1|.
      DATA(t433) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t430 = t431->set( p0 = t432 p1 = t433 ).
      DATA t434 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t435) = CAST zlnt_runtime_map__41b3bb94df3d( t428 ).
      DATA(t436) = |val2|.
      DATA(t437) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t434 = t435->set( p0 = t436 p1 = t437 ).
      DATA(t438) = CAST zlnt_runtime_map__41b3bb94df3d( t428 ).
      t427 = t438.
      t425 = t427.
    ELSE.
      DATA t439 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t439.
      t425 = t439.
    ENDIF.
    DATA t440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t440.
    DATA(t441) = abap_true.
    IF t441 = abap_true.
      DATA t442 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t443 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t444) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t443 = t444.
      DATA t445 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t446) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t447) = |val3|.
      DATA(t448) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t445 = t446->set( p0 = t447 p1 = t448 ).
      DATA t449 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t450) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t451) = |val4|.
      DATA(t452) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t449 = t450->set( p0 = t451 p1 = t452 ).
      DATA t453 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t454) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t455) = |val5|.
      DATA(t456) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t453 = t454->set( p0 = t455 p1 = t456 ).
      DATA t457 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t458) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t459) = |val6|.
      DATA(t460) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t457 = t458->set( p0 = t459 p1 = t460 ).
      DATA t461 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t462) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t463) = |val7|.
      DATA(t464) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t461 = t462->set( p0 = t463 p1 = t464 ).
      DATA t465 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t466) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      DATA(t467) = |val9|.
      DATA(t468) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t465 = t466->set( p0 = t467 p1 = t468 ).
      DATA(t469) = CAST zlnt_runtime_map__41b3bb94df3d( t443 ).
      t442 = t469.
      t440 = t442.
    ELSE.
      DATA t470 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t470.
      t440 = t470.
    ENDIF.
    DATA t471 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t471.
    DATA(t472) = abap_true.
    IF t472 = abap_true.
      DATA t473 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t473.
      DATA t474 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t474.
      DATA t475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t475.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t475 = zcl_lnt_version_module=>release_b8cd.
      DATA(t476) = |v702|.
      t474 = t475->get( p0 = t476 ).
      t473 = t474.
      t471 = t473.
    ELSE.
      DATA t477 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t477.
      t471 = t477.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t478.
    DATA t479 TYPE REF TO zcl_lnt_string_type.
    DATA t480 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t480.
    t479 = zcl_lnt_string_type=>get_db65( i_input_967e = t480 ).
    DATA t481 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t481.
    t417 = NEW zcl_lnt_ibuiltin_method( i_counter = t418 i_mandatory = t425 i_optional = t440 i_release_7928 = t471 i_predicate = t478 i_return_fa63 = t479 i_cache = t481 ).
    t414 = t415->set( p0 = t416 p1 = t417 ).
    DATA t482 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t482.
    DATA(t483) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t484) = |CONCAT_LINES_OF|.
    DATA t485 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t485.
    DATA(t486) = VALUE int8( ).
    DATA(t487) = VALUE int8( ).
    DATA(t488) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t488 = zcl_lnt_built_in=>counter.
    t487 = t488.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t489 TYPE int8.
    DATA(t490) = t487.
    DATA(t491) = CONV int8( 1 ).
    t489 = t490 + t491.
    IF t489 < range_int8_bound_min OR t489 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t489.
    DATA(t492) = t487.
    t486 = t492.
    DATA t493 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t493.
    DATA(t494) = abap_true.
    IF t494 = abap_true.
      DATA t495 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t496 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t497) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t496 = t497.
      DATA t498 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t499) = CAST zlnt_runtime_map__41b3bb94df3d( t496 ).
      DATA(t500) = |table|.
      DATA t501 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t502 TYPE REF TO zcl_lnt_any_type.
      DATA t503 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t503.
      t502 = zcl_lnt_any_type=>get_db65( i_input_967e = t503 ).
      DATA t504 TYPE REF TO zcl_lnt_itable_options.
      DATA(t505) = abap_false.
      DATA(t506) = |USER|.
      DATA t507 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t507.
      DATA t508 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t508.
      t504 = NEW zcl_lnt_itable_options( i_with_header = t505 i_key_type = t506 i_primary_key = t507 i_secondary = t508 ).
      DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t509.
      DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t510.
      t501 = NEW zcl_lnt_ty_table_type( i_row_type = t502 i_options = t504 i_qualified_name = t509 i_description = t510 ).
      t498 = t499->set( p0 = t500 p1 = t501 ).
      DATA(t511) = CAST zlnt_runtime_map__41b3bb94df3d( t496 ).
      t495 = t511.
      t493 = t495.
    ELSE.
      DATA t512 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t512.
      t493 = t512.
    ENDIF.
    DATA t513 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t513.
    DATA(t514) = abap_true.
    IF t514 = abap_true.
      DATA t515 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t516 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t517) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t516 = t517.
      DATA t518 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t519) = CAST zlnt_runtime_map__41b3bb94df3d( t516 ).
      DATA(t520) = |sep|.
      DATA(t521) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t518 = t519->set( p0 = t520 p1 = t521 ).
      DATA(t522) = CAST zlnt_runtime_map__41b3bb94df3d( t516 ).
      t515 = t522.
      t513 = t515.
    ELSE.
      DATA t523 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t523.
      t513 = t523.
    ENDIF.
    DATA t524 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t524.
    DATA(t525) = abap_true.
    IF t525 = abap_true.
      DATA t526 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t526.
      DATA t527 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t527.
      DATA t528 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t528.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t528 = zcl_lnt_version_module=>release_b8cd.
      DATA(t529) = |v702|.
      t527 = t528->get( p0 = t529 ).
      t526 = t527.
      t524 = t526.
    ELSE.
      DATA t530 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t530.
      t524 = t530.
    ENDIF.
    DATA t531 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t531.
    DATA t532 TYPE REF TO zcl_lnt_string_type.
    DATA t533 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t533.
    t532 = zcl_lnt_string_type=>get_db65( i_input_967e = t533 ).
    DATA t534 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t534.
    t485 = NEW zcl_lnt_ibuiltin_method( i_counter = t486 i_mandatory = t493 i_optional = t513 i_release_7928 = t524 i_predicate = t531 i_return_fa63 = t532 i_cache = t534 ).
    t482 = t483->set( p0 = t484 p1 = t485 ).
    DATA t535 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t535.
    DATA(t536) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t537) = |CONDENSE|.
    DATA t538 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t538.
    DATA(t539) = VALUE int8( ).
    DATA(t540) = VALUE int8( ).
    DATA(t541) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t541 = zcl_lnt_built_in=>counter.
    t540 = t541.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t542 TYPE int8.
    DATA(t543) = t540.
    DATA(t544) = CONV int8( 1 ).
    t542 = t543 + t544.
    IF t542 < range_int8_bound_min OR t542 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t542.
    DATA(t545) = t540.
    t539 = t545.
    DATA t546 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t546.
    DATA(t547) = abap_true.
    IF t547 = abap_true.
      DATA t548 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t549 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t550) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t549 = t550.
      DATA t551 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t552) = CAST zlnt_runtime_map__41b3bb94df3d( t549 ).
      DATA(t553) = |val|.
      DATA(t554) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t551 = t552->set( p0 = t553 p1 = t554 ).
      DATA(t555) = CAST zlnt_runtime_map__41b3bb94df3d( t549 ).
      t548 = t555.
      t546 = t548.
    ELSE.
      DATA t556 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t556.
      t546 = t556.
    ENDIF.
    DATA t557 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t557.
    DATA(t558) = abap_true.
    IF t558 = abap_true.
      DATA t559 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t560 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t561) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t560 = t561.
      DATA t562 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t563) = CAST zlnt_runtime_map__41b3bb94df3d( t560 ).
      DATA(t564) = |del|.
      DATA(t565) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t562 = t563->set( p0 = t564 p1 = t565 ).
      DATA t566 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t567) = CAST zlnt_runtime_map__41b3bb94df3d( t560 ).
      DATA(t568) = |from|.
      DATA(t569) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t566 = t567->set( p0 = t568 p1 = t569 ).
      DATA t570 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t571) = CAST zlnt_runtime_map__41b3bb94df3d( t560 ).
      DATA(t572) = |to|.
      DATA(t573) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t570 = t571->set( p0 = t572 p1 = t573 ).
      DATA(t574) = CAST zlnt_runtime_map__41b3bb94df3d( t560 ).
      t559 = t574.
      t557 = t559.
    ELSE.
      DATA t575 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t575.
      t557 = t575.
    ENDIF.
    DATA t576 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t576.
    DATA(t577) = abap_true.
    IF t577 = abap_true.
      DATA t578 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t578.
      DATA t579 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t579.
      DATA t580 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t580.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t580 = zcl_lnt_version_module=>release_b8cd.
      DATA(t581) = |v702|.
      t579 = t580->get( p0 = t581 ).
      t578 = t579.
      t576 = t578.
    ELSE.
      DATA t582 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t582.
      t576 = t582.
    ENDIF.
    DATA t583 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t583.
    DATA t584 TYPE REF TO zcl_lnt_string_type.
    DATA t585 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t585.
    t584 = zcl_lnt_string_type=>get_db65( i_input_967e = t585 ).
    DATA t586 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t586.
    t538 = NEW zcl_lnt_ibuiltin_method( i_counter = t539 i_mandatory = t546 i_optional = t557 i_release_7928 = t576 i_predicate = t583 i_return_fa63 = t584 i_cache = t586 ).
    t535 = t536->set( p0 = t537 p1 = t538 ).
    DATA t587 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t587.
    DATA(t588) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t589) = |CONTAINS|.
    DATA t590 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t590.
    DATA(t591) = VALUE int8( ).
    DATA(t592) = VALUE int8( ).
    DATA(t593) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t593 = zcl_lnt_built_in=>counter.
    t592 = t593.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t594 TYPE int8.
    DATA(t595) = t592.
    DATA(t596) = CONV int8( 1 ).
    t594 = t595 + t596.
    IF t594 < range_int8_bound_min OR t594 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t594.
    DATA(t597) = t592.
    t591 = t597.
    DATA t598 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t598.
    DATA(t599) = abap_true.
    IF t599 = abap_true.
      DATA t600 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t601 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t602) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t601 = t602.
      DATA t603 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t604) = CAST zlnt_runtime_map__41b3bb94df3d( t601 ).
      DATA(t605) = |val|.
      DATA(t606) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t603 = t604->set( p0 = t605 p1 = t606 ).
      DATA(t607) = CAST zlnt_runtime_map__41b3bb94df3d( t601 ).
      t600 = t607.
      t598 = t600.
    ELSE.
      DATA t608 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t608.
      t598 = t608.
    ENDIF.
    DATA t609 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t609.
    DATA(t610) = abap_true.
    IF t610 = abap_true.
      DATA t611 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t612 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t613) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t612 = t613.
      DATA t614 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t615) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t616) = |sub|.
      DATA(t617) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t614 = t615->set( p0 = t616 p1 = t617 ).
      DATA t618 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t619) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t620) = |start|.
      DATA(t621) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t618 = t619->set( p0 = t620 p1 = t621 ).
      DATA t622 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t623) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t624) = |end|.
      DATA(t625) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t622 = t623->set( p0 = t624 p1 = t625 ).
      DATA t626 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t627) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t628) = |regex|.
      DATA(t629) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t626 = t627->set( p0 = t628 p1 = t629 ).
      DATA t630 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t631) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t632) = |pcre|.
      DATA(t633) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t630 = t631->set( p0 = t632 p1 = t633 ).
      DATA t634 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t635) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t636) = |case|.
      DATA t637 TYPE REF TO zcl_lnt_character_type.
      DATA(t638) = CONV int8( 1 ).
      DATA t639 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t639.
      t637 = NEW zcl_lnt_character_type( i_length = t638 i_extra = t639 ).
      t634 = t635->set( p0 = t636 p1 = t637 ).
      DATA t640 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t641) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t642) = |off|.
      DATA t643 TYPE REF TO zcl_lnt_integer_type.
      DATA t644 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t644.
      t643 = zcl_lnt_integer_type=>get_db65( i_input_967e = t644 ).
      t640 = t641->set( p0 = t642 p1 = t643 ).
      DATA t645 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t646) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t647) = |len|.
      DATA t648 TYPE REF TO zcl_lnt_integer_type.
      DATA t649 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t649.
      t648 = zcl_lnt_integer_type=>get_db65( i_input_967e = t649 ).
      t645 = t646->set( p0 = t647 p1 = t648 ).
      DATA t650 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t651) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      DATA(t652) = |occ|.
      DATA t653 TYPE REF TO zcl_lnt_integer_type.
      DATA t654 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t654.
      t653 = zcl_lnt_integer_type=>get_db65( i_input_967e = t654 ).
      t650 = t651->set( p0 = t652 p1 = t653 ).
      DATA(t655) = CAST zlnt_runtime_map__41b3bb94df3d( t612 ).
      t611 = t655.
      t609 = t611.
    ELSE.
      DATA t656 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t656.
      t609 = t656.
    ENDIF.
    DATA t657 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t657.
    DATA(t658) = abap_true.
    IF t658 = abap_true.
      DATA t659 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t659.
      DATA t660 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t660.
      DATA t661 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t661.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t661 = zcl_lnt_version_module=>release_b8cd.
      DATA(t662) = |v702|.
      t660 = t661->get( p0 = t662 ).
      t659 = t660.
      t657 = t659.
    ELSE.
      DATA t663 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t663.
      t657 = t663.
    ENDIF.
    DATA t664 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t664.
    DATA(t665) = abap_true.
    IF t665 = abap_true.
      DATA(t666) = abap_true.
      DATA(t667) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t667->has = abap_true.
      t667->value = t666.
      t664 = t667.
    ELSE.
      DATA t668 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t668.
      t664 = t668.
    ENDIF.
    DATA t669 TYPE REF TO zcl_lnt_character_type.
    DATA(t670) = CONV int8( 1 ).
    DATA t671 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t671.
    t669 = NEW zcl_lnt_character_type( i_length = t670 i_extra = t671 ).
    DATA t672 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t672.
    t590 = NEW zcl_lnt_ibuiltin_method( i_counter = t591 i_mandatory = t598 i_optional = t609 i_release_7928 = t657 i_predicate = t664 i_return_fa63 = t669 i_cache = t672 ).
    t587 = t588->set( p0 = t589 p1 = t590 ).
    DATA t673 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t673.
    DATA(t674) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t675) = |CONTAINS_ANY_NOT_OF|.
    DATA t676 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t676.
    DATA(t677) = VALUE int8( ).
    DATA(t678) = VALUE int8( ).
    DATA(t679) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t679 = zcl_lnt_built_in=>counter.
    t678 = t679.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t680 TYPE int8.
    DATA(t681) = t678.
    DATA(t682) = CONV int8( 1 ).
    t680 = t681 + t682.
    IF t680 < range_int8_bound_min OR t680 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t680.
    DATA(t683) = t678.
    t677 = t683.
    DATA t684 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t684.
    DATA(t685) = abap_true.
    IF t685 = abap_true.
      DATA t686 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t687 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t688) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t687 = t688.
      DATA t689 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t690) = CAST zlnt_runtime_map__41b3bb94df3d( t687 ).
      DATA(t691) = |val|.
      DATA(t692) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t689 = t690->set( p0 = t691 p1 = t692 ).
      DATA(t693) = CAST zlnt_runtime_map__41b3bb94df3d( t687 ).
      t686 = t693.
      t684 = t686.
    ELSE.
      DATA t694 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t694.
      t684 = t694.
    ENDIF.
    DATA t695 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t695.
    DATA(t696) = abap_true.
    IF t696 = abap_true.
      DATA t697 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t698 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t699) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t698 = t699.
      DATA t700 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t701) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t702) = |sub|.
      DATA(t703) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t700 = t701->set( p0 = t702 p1 = t703 ).
      DATA t704 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t705) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t706) = |start|.
      DATA(t707) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t704 = t705->set( p0 = t706 p1 = t707 ).
      DATA t708 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t709) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t710) = |end|.
      DATA(t711) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t708 = t709->set( p0 = t710 p1 = t711 ).
      DATA t712 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t713) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t714) = |off|.
      DATA t715 TYPE REF TO zcl_lnt_integer_type.
      DATA t716 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t716.
      t715 = zcl_lnt_integer_type=>get_db65( i_input_967e = t716 ).
      t712 = t713->set( p0 = t714 p1 = t715 ).
      DATA t717 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t718) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t719) = |len|.
      DATA t720 TYPE REF TO zcl_lnt_integer_type.
      DATA t721 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t721.
      t720 = zcl_lnt_integer_type=>get_db65( i_input_967e = t721 ).
      t717 = t718->set( p0 = t719 p1 = t720 ).
      DATA t722 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t723) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      DATA(t724) = |occ|.
      DATA t725 TYPE REF TO zcl_lnt_integer_type.
      DATA t726 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t726.
      t725 = zcl_lnt_integer_type=>get_db65( i_input_967e = t726 ).
      t722 = t723->set( p0 = t724 p1 = t725 ).
      DATA(t727) = CAST zlnt_runtime_map__41b3bb94df3d( t698 ).
      t697 = t727.
      t695 = t697.
    ELSE.
      DATA t728 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t728.
      t695 = t728.
    ENDIF.
    DATA t729 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t729.
    DATA(t730) = abap_true.
    IF t730 = abap_true.
      DATA t731 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t731.
      DATA t732 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t732.
      DATA t733 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t733.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t733 = zcl_lnt_version_module=>release_b8cd.
      DATA(t734) = |v702|.
      t732 = t733->get( p0 = t734 ).
      t731 = t732.
      t729 = t731.
    ELSE.
      DATA t735 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t735.
      t729 = t735.
    ENDIF.
    DATA t736 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t736.
    DATA(t737) = abap_true.
    IF t737 = abap_true.
      DATA(t738) = abap_true.
      DATA(t739) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t739->has = abap_true.
      t739->value = t738.
      t736 = t739.
    ELSE.
      DATA t740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t740.
      t736 = t740.
    ENDIF.
    DATA t741 TYPE REF TO zcl_lnt_character_type.
    DATA(t742) = CONV int8( 1 ).
    DATA t743 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t743.
    t741 = NEW zcl_lnt_character_type( i_length = t742 i_extra = t743 ).
    DATA t744 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t744.
    t676 = NEW zcl_lnt_ibuiltin_method( i_counter = t677 i_mandatory = t684 i_optional = t695 i_release_7928 = t729 i_predicate = t736 i_return_fa63 = t741 i_cache = t744 ).
    t673 = t674->set( p0 = t675 p1 = t676 ).
    DATA t745 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t745.
    DATA(t746) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t747) = |CONTAINS_ANY_OF|.
    DATA t748 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t748.
    DATA(t749) = VALUE int8( ).
    DATA(t750) = VALUE int8( ).
    DATA(t751) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t751 = zcl_lnt_built_in=>counter.
    t750 = t751.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t752 TYPE int8.
    DATA(t753) = t750.
    DATA(t754) = CONV int8( 1 ).
    t752 = t753 + t754.
    IF t752 < range_int8_bound_min OR t752 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t752.
    DATA(t755) = t750.
    t749 = t755.
    DATA t756 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t756.
    DATA(t757) = abap_true.
    IF t757 = abap_true.
      DATA t758 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t759 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t760) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t759 = t760.
      DATA t761 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t762) = CAST zlnt_runtime_map__41b3bb94df3d( t759 ).
      DATA(t763) = |val|.
      DATA(t764) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t761 = t762->set( p0 = t763 p1 = t764 ).
      DATA(t765) = CAST zlnt_runtime_map__41b3bb94df3d( t759 ).
      t758 = t765.
      t756 = t758.
    ELSE.
      DATA t766 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t766.
      t756 = t766.
    ENDIF.
    DATA t767 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t767.
    DATA(t768) = abap_true.
    IF t768 = abap_true.
      DATA t769 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t770 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t771) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t770 = t771.
      DATA t772 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t773) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t774) = |sub|.
      DATA(t775) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t772 = t773->set( p0 = t774 p1 = t775 ).
      DATA t776 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t777) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t778) = |start|.
      DATA(t779) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t776 = t777->set( p0 = t778 p1 = t779 ).
      DATA t780 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t781) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t782) = |end|.
      DATA(t783) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t780 = t781->set( p0 = t782 p1 = t783 ).
      DATA t784 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t785) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t786) = |off|.
      DATA t787 TYPE REF TO zcl_lnt_integer_type.
      DATA t788 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t788.
      t787 = zcl_lnt_integer_type=>get_db65( i_input_967e = t788 ).
      t784 = t785->set( p0 = t786 p1 = t787 ).
      DATA t789 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t790) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t791) = |len|.
      DATA t792 TYPE REF TO zcl_lnt_integer_type.
      DATA t793 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t793.
      t792 = zcl_lnt_integer_type=>get_db65( i_input_967e = t793 ).
      t789 = t790->set( p0 = t791 p1 = t792 ).
      DATA t794 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t795) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      DATA(t796) = |occ|.
      DATA t797 TYPE REF TO zcl_lnt_integer_type.
      DATA t798 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t798.
      t797 = zcl_lnt_integer_type=>get_db65( i_input_967e = t798 ).
      t794 = t795->set( p0 = t796 p1 = t797 ).
      DATA(t799) = CAST zlnt_runtime_map__41b3bb94df3d( t770 ).
      t769 = t799.
      t767 = t769.
    ELSE.
      DATA t800 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t800.
      t767 = t800.
    ENDIF.
    DATA t801 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t801.
    DATA(t802) = abap_true.
    IF t802 = abap_true.
      DATA t803 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t803.
      DATA t804 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t804.
      DATA t805 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t805.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t805 = zcl_lnt_version_module=>release_b8cd.
      DATA(t806) = |v702|.
      t804 = t805->get( p0 = t806 ).
      t803 = t804.
      t801 = t803.
    ELSE.
      DATA t807 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t807.
      t801 = t807.
    ENDIF.
    DATA t808 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t808.
    DATA(t809) = abap_true.
    IF t809 = abap_true.
      DATA(t810) = abap_true.
      DATA(t811) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t811->has = abap_true.
      t811->value = t810.
      t808 = t811.
    ELSE.
      DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t812.
      t808 = t812.
    ENDIF.
    DATA t813 TYPE REF TO zcl_lnt_character_type.
    DATA(t814) = CONV int8( 1 ).
    DATA t815 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t815.
    t813 = NEW zcl_lnt_character_type( i_length = t814 i_extra = t815 ).
    DATA t816 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t816.
    t748 = NEW zcl_lnt_ibuiltin_method( i_counter = t749 i_mandatory = t756 i_optional = t767 i_release_7928 = t801 i_predicate = t808 i_return_fa63 = t813 i_cache = t816 ).
    t745 = t746->set( p0 = t747 p1 = t748 ).
    DATA t817 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t817.
    DATA(t818) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t819) = |COS|.
    DATA t820 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t820.
    DATA(t821) = VALUE int8( ).
    DATA(t822) = VALUE int8( ).
    DATA(t823) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t823 = zcl_lnt_built_in=>counter.
    t822 = t823.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t824 TYPE int8.
    DATA(t825) = t822.
    DATA(t826) = CONV int8( 1 ).
    t824 = t825 + t826.
    IF t824 < range_int8_bound_min OR t824 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t824.
    DATA(t827) = t822.
    t821 = t827.
    DATA t828 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t828.
    DATA(t829) = abap_true.
    IF t829 = abap_true.
      DATA t830 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t831 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t832) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t831 = t832.
      DATA t833 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t834) = CAST zlnt_runtime_map__41b3bb94df3d( t831 ).
      DATA(t835) = |val|.
      DATA t836 TYPE REF TO zcl_lnt_float_type.
      DATA t837 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t837.
      t836 = NEW zcl_lnt_float_type( i_input_967e = t837 ).
      t833 = t834->set( p0 = t835 p1 = t836 ).
      DATA(t838) = CAST zlnt_runtime_map__41b3bb94df3d( t831 ).
      t830 = t838.
      t828 = t830.
    ELSE.
      DATA t839 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t839.
      t828 = t839.
    ENDIF.
    DATA t840 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t840.
    DATA t841 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t841.
    DATA t842 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t842.
    DATA t843 TYPE REF TO zcl_lnt_float_type.
    DATA t844 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t844.
    t843 = NEW zcl_lnt_float_type( i_input_967e = t844 ).
    DATA t845 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t845.
    t820 = NEW zcl_lnt_ibuiltin_method( i_counter = t821 i_mandatory = t828 i_optional = t840 i_release_7928 = t841 i_predicate = t842 i_return_fa63 = t843 i_cache = t845 ).
    t817 = t818->set( p0 = t819 p1 = t820 ).
    DATA t846 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t846.
    DATA(t847) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t848) = |COSH|.
    DATA t849 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t849.
    DATA(t850) = VALUE int8( ).
    DATA(t851) = VALUE int8( ).
    DATA(t852) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t852 = zcl_lnt_built_in=>counter.
    t851 = t852.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t853 TYPE int8.
    DATA(t854) = t851.
    DATA(t855) = CONV int8( 1 ).
    t853 = t854 + t855.
    IF t853 < range_int8_bound_min OR t853 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t853.
    DATA(t856) = t851.
    t850 = t856.
    DATA t857 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t857.
    DATA(t858) = abap_true.
    IF t858 = abap_true.
      DATA t859 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t860 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t861) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t860 = t861.
      DATA t862 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t863) = CAST zlnt_runtime_map__41b3bb94df3d( t860 ).
      DATA(t864) = |val|.
      DATA t865 TYPE REF TO zcl_lnt_float_type.
      DATA t866 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t866.
      t865 = NEW zcl_lnt_float_type( i_input_967e = t866 ).
      t862 = t863->set( p0 = t864 p1 = t865 ).
      DATA(t867) = CAST zlnt_runtime_map__41b3bb94df3d( t860 ).
      t859 = t867.
      t857 = t859.
    ELSE.
      DATA t868 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t868.
      t857 = t868.
    ENDIF.
    DATA t869 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t869.
    DATA t870 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t870.
    DATA t871 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t871.
    DATA t872 TYPE REF TO zcl_lnt_float_type.
    DATA t873 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t873.
    t872 = NEW zcl_lnt_float_type( i_input_967e = t873 ).
    DATA t874 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t874.
    t849 = NEW zcl_lnt_ibuiltin_method( i_counter = t850 i_mandatory = t857 i_optional = t869 i_release_7928 = t870 i_predicate = t871 i_return_fa63 = t872 i_cache = t874 ).
    t846 = t847->set( p0 = t848 p1 = t849 ).
    DATA t875 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t875.
    DATA(t876) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t877) = |COUNT|.
    DATA t878 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t878.
    DATA(t879) = VALUE int8( ).
    DATA(t880) = VALUE int8( ).
    DATA(t881) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t881 = zcl_lnt_built_in=>counter.
    t880 = t881.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t882 TYPE int8.
    DATA(t883) = t880.
    DATA(t884) = CONV int8( 1 ).
    t882 = t883 + t884.
    IF t882 < range_int8_bound_min OR t882 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t882.
    DATA(t885) = t880.
    t879 = t885.
    DATA t886 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t886.
    DATA(t887) = abap_true.
    IF t887 = abap_true.
      DATA t888 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t889 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t890) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t889 = t890.
      DATA t891 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t892) = CAST zlnt_runtime_map__41b3bb94df3d( t889 ).
      DATA(t893) = |val|.
      DATA(t894) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t891 = t892->set( p0 = t893 p1 = t894 ).
      DATA(t895) = CAST zlnt_runtime_map__41b3bb94df3d( t889 ).
      t888 = t895.
      t886 = t888.
    ELSE.
      DATA t896 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t896.
      t886 = t896.
    ENDIF.
    DATA t897 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t897.
    DATA(t898) = abap_true.
    IF t898 = abap_true.
      DATA t899 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t900 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t901) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t900 = t901.
      DATA t902 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t903) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t904) = |sub|.
      DATA(t905) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t902 = t903->set( p0 = t904 p1 = t905 ).
      DATA t906 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t907) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t908) = |regex|.
      DATA(t909) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t906 = t907->set( p0 = t908 p1 = t909 ).
      DATA t910 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t911) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t912) = |pcre|.
      DATA(t913) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t910 = t911->set( p0 = t912 p1 = t913 ).
      DATA t914 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t915) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t916) = |case|.
      DATA t917 TYPE REF TO zcl_lnt_character_type.
      DATA(t918) = CONV int8( 1 ).
      DATA t919 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t919.
      t917 = NEW zcl_lnt_character_type( i_length = t918 i_extra = t919 ).
      t914 = t915->set( p0 = t916 p1 = t917 ).
      DATA t920 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t921) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t922) = |off|.
      DATA t923 TYPE REF TO zcl_lnt_integer_type.
      DATA t924 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t924.
      t923 = zcl_lnt_integer_type=>get_db65( i_input_967e = t924 ).
      t920 = t921->set( p0 = t922 p1 = t923 ).
      DATA t925 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t926) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      DATA(t927) = |len|.
      DATA t928 TYPE REF TO zcl_lnt_integer_type.
      DATA t929 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t929.
      t928 = zcl_lnt_integer_type=>get_db65( i_input_967e = t929 ).
      t925 = t926->set( p0 = t927 p1 = t928 ).
      DATA(t930) = CAST zlnt_runtime_map__41b3bb94df3d( t900 ).
      t899 = t930.
      t897 = t899.
    ELSE.
      DATA t931 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t931.
      t897 = t931.
    ENDIF.
    DATA t932 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t932.
    DATA(t933) = abap_true.
    IF t933 = abap_true.
      DATA t934 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t934.
      DATA t935 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t935.
      DATA t936 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t936.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t936 = zcl_lnt_version_module=>release_b8cd.
      DATA(t937) = |v702|.
      t935 = t936->get( p0 = t937 ).
      t934 = t935.
      t932 = t934.
    ELSE.
      DATA t938 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t938.
      t932 = t938.
    ENDIF.
    DATA t939 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t939.
    DATA t940 TYPE REF TO zcl_lnt_integer_type.
    DATA t941 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t941.
    t940 = zcl_lnt_integer_type=>get_db65( i_input_967e = t941 ).
    DATA t942 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t942.
    t878 = NEW zcl_lnt_ibuiltin_method( i_counter = t879 i_mandatory = t886 i_optional = t897 i_release_7928 = t932 i_predicate = t939 i_return_fa63 = t940 i_cache = t942 ).
    t875 = t876->set( p0 = t877 p1 = t878 ).
    DATA t943 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t943.
    DATA(t944) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t945) = |COUNT_ANY_NOT_OF|.
    DATA t946 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t946.
    DATA(t947) = VALUE int8( ).
    DATA(t948) = VALUE int8( ).
    DATA(t949) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t949 = zcl_lnt_built_in=>counter.
    t948 = t949.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t950 TYPE int8.
    DATA(t951) = t948.
    DATA(t952) = CONV int8( 1 ).
    t950 = t951 + t952.
    IF t950 < range_int8_bound_min OR t950 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t950.
    DATA(t953) = t948.
    t947 = t953.
    DATA t954 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t954.
    DATA(t955) = abap_true.
    IF t955 = abap_true.
      DATA t956 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t958) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t957 = t958.
      DATA t959 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t960) = CAST zlnt_runtime_map__41b3bb94df3d( t957 ).
      DATA(t961) = |val|.
      DATA(t962) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t959 = t960->set( p0 = t961 p1 = t962 ).
      DATA(t963) = CAST zlnt_runtime_map__41b3bb94df3d( t957 ).
      t956 = t963.
      t954 = t956.
    ELSE.
      DATA t964 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t964.
      t954 = t964.
    ENDIF.
    DATA t965 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t965.
    DATA(t966) = abap_true.
    IF t966 = abap_true.
      DATA t967 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t968 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t969) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t968 = t969.
      DATA t970 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t971) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t972) = |sub|.
      DATA(t973) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t970 = t971->set( p0 = t972 p1 = t973 ).
      DATA t974 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t975) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t976) = |regex|.
      DATA(t977) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t974 = t975->set( p0 = t976 p1 = t977 ).
      DATA t978 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t979) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t980) = |pcre|.
      DATA(t981) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t978 = t979->set( p0 = t980 p1 = t981 ).
      DATA t982 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t983) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t984) = |case|.
      DATA t985 TYPE REF TO zcl_lnt_character_type.
      DATA(t986) = CONV int8( 1 ).
      DATA t987 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t987.
      t985 = NEW zcl_lnt_character_type( i_length = t986 i_extra = t987 ).
      t982 = t983->set( p0 = t984 p1 = t985 ).
      DATA t988 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t989) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t990) = |off|.
      DATA t991 TYPE REF TO zcl_lnt_integer_type.
      DATA t992 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t992.
      t991 = zcl_lnt_integer_type=>get_db65( i_input_967e = t992 ).
      t988 = t989->set( p0 = t990 p1 = t991 ).
      DATA t993 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t994) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      DATA(t995) = |len|.
      DATA t996 TYPE REF TO zcl_lnt_integer_type.
      DATA t997 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t997.
      t996 = zcl_lnt_integer_type=>get_db65( i_input_967e = t997 ).
      t993 = t994->set( p0 = t995 p1 = t996 ).
      DATA(t998) = CAST zlnt_runtime_map__41b3bb94df3d( t968 ).
      t967 = t998.
      t965 = t967.
    ELSE.
      DATA t999 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t999.
      t965 = t999.
    ENDIF.
    DATA t1000 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1000.
    DATA(t1001) = abap_true.
    IF t1001 = abap_true.
      DATA t1002 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1002.
      DATA t1003 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1003.
      DATA t1004 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1004.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1004 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1005) = |v702|.
      t1003 = t1004->get( p0 = t1005 ).
      t1002 = t1003.
      t1000 = t1002.
    ELSE.
      DATA t1006 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1006.
      t1000 = t1006.
    ENDIF.
    DATA t1007 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1007.
    DATA t1008 TYPE REF TO zcl_lnt_integer_type.
    DATA t1009 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1009.
    t1008 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1009 ).
    DATA t1010 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1010.
    t946 = NEW zcl_lnt_ibuiltin_method( i_counter = t947 i_mandatory = t954 i_optional = t965 i_release_7928 = t1000 i_predicate = t1007 i_return_fa63 = t1008 i_cache = t1010 ).
    t943 = t944->set( p0 = t945 p1 = t946 ).
    DATA t1011 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1011.
    DATA(t1012) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1013) = |COUNT_ANY_OF|.
    DATA t1014 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1014.
    DATA(t1015) = VALUE int8( ).
    DATA(t1016) = VALUE int8( ).
    DATA(t1017) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1017 = zcl_lnt_built_in=>counter.
    t1016 = t1017.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1018 TYPE int8.
    DATA(t1019) = t1016.
    DATA(t1020) = CONV int8( 1 ).
    t1018 = t1019 + t1020.
    IF t1018 < range_int8_bound_min OR t1018 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1018.
    DATA(t1021) = t1016.
    t1015 = t1021.
    DATA t1022 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1022.
    DATA(t1023) = abap_true.
    IF t1023 = abap_true.
      DATA t1024 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1025 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1026) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1025 = t1026.
      DATA t1027 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1028) = CAST zlnt_runtime_map__41b3bb94df3d( t1025 ).
      DATA(t1029) = |val|.
      DATA(t1030) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1027 = t1028->set( p0 = t1029 p1 = t1030 ).
      DATA(t1031) = CAST zlnt_runtime_map__41b3bb94df3d( t1025 ).
      t1024 = t1031.
      t1022 = t1024.
    ELSE.
      DATA t1032 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1032.
      t1022 = t1032.
    ENDIF.
    DATA t1033 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1033.
    DATA(t1034) = abap_true.
    IF t1034 = abap_true.
      DATA t1035 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1036 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1037) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1036 = t1037.
      DATA t1038 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1039) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1040) = |sub|.
      DATA(t1041) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1038 = t1039->set( p0 = t1040 p1 = t1041 ).
      DATA t1042 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1043) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1044) = |regex|.
      DATA(t1045) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1042 = t1043->set( p0 = t1044 p1 = t1045 ).
      DATA t1046 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1047) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1048) = |pcre|.
      DATA(t1049) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1046 = t1047->set( p0 = t1048 p1 = t1049 ).
      DATA t1050 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1051) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1052) = |case|.
      DATA t1053 TYPE REF TO zcl_lnt_character_type.
      DATA(t1054) = CONV int8( 1 ).
      DATA t1055 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1055.
      t1053 = NEW zcl_lnt_character_type( i_length = t1054 i_extra = t1055 ).
      t1050 = t1051->set( p0 = t1052 p1 = t1053 ).
      DATA t1056 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1057) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1058) = |off|.
      DATA t1059 TYPE REF TO zcl_lnt_integer_type.
      DATA t1060 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1060.
      t1059 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1060 ).
      t1056 = t1057->set( p0 = t1058 p1 = t1059 ).
      DATA t1061 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1062) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      DATA(t1063) = |len|.
      DATA t1064 TYPE REF TO zcl_lnt_integer_type.
      DATA t1065 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1065.
      t1064 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1065 ).
      t1061 = t1062->set( p0 = t1063 p1 = t1064 ).
      DATA(t1066) = CAST zlnt_runtime_map__41b3bb94df3d( t1036 ).
      t1035 = t1066.
      t1033 = t1035.
    ELSE.
      DATA t1067 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1067.
      t1033 = t1067.
    ENDIF.
    DATA t1068 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1068.
    DATA(t1069) = abap_true.
    IF t1069 = abap_true.
      DATA t1070 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1070.
      DATA t1071 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1071.
      DATA t1072 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1072.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1072 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1073) = |v702|.
      t1071 = t1072->get( p0 = t1073 ).
      t1070 = t1071.
      t1068 = t1070.
    ELSE.
      DATA t1074 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1074.
      t1068 = t1074.
    ENDIF.
    DATA t1075 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1075.
    DATA t1076 TYPE REF TO zcl_lnt_integer_type.
    DATA t1077 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1077.
    t1076 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1077 ).
    DATA t1078 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1078.
    t1014 = NEW zcl_lnt_ibuiltin_method( i_counter = t1015 i_mandatory = t1022 i_optional = t1033 i_release_7928 = t1068 i_predicate = t1075 i_return_fa63 = t1076 i_cache = t1078 ).
    t1011 = t1012->set( p0 = t1013 p1 = t1014 ).
    DATA t1079 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1079.
    DATA(t1080) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1081) = |DBMAXLEN|.
    DATA t1082 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1082.
    DATA(t1083) = VALUE int8( ).
    DATA(t1084) = VALUE int8( ).
    DATA(t1085) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1085 = zcl_lnt_built_in=>counter.
    t1084 = t1085.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1086 TYPE int8.
    DATA(t1087) = t1084.
    DATA(t1088) = CONV int8( 1 ).
    t1086 = t1087 + t1088.
    IF t1086 < range_int8_bound_min OR t1086 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1086.
    DATA(t1089) = t1084.
    t1083 = t1089.
    DATA t1090 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1090.
    DATA(t1091) = abap_true.
    IF t1091 = abap_true.
      DATA t1092 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1093 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1094) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1093 = t1094.
      DATA t1095 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1096) = CAST zlnt_runtime_map__41b3bb94df3d( t1093 ).
      DATA(t1097) = |val|.
      DATA(t1098) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1095 = t1096->set( p0 = t1097 p1 = t1098 ).
      DATA(t1099) = CAST zlnt_runtime_map__41b3bb94df3d( t1093 ).
      t1092 = t1099.
      t1090 = t1092.
    ELSE.
      DATA t1100 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1100.
      t1090 = t1100.
    ENDIF.
    DATA t1101 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1101.
    DATA t1102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1102.
    DATA t1103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1103.
    DATA t1104 TYPE REF TO zcl_lnt_integer_type.
    DATA t1105 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1105.
    t1104 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1105 ).
    DATA t1106 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1106.
    t1082 = NEW zcl_lnt_ibuiltin_method( i_counter = t1083 i_mandatory = t1090 i_optional = t1101 i_release_7928 = t1102 i_predicate = t1103 i_return_fa63 = t1104 i_cache = t1106 ).
    t1079 = t1080->set( p0 = t1081 p1 = t1082 ).
    DATA t1107 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1107.
    DATA(t1108) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1109) = |DISTANCE|.
    DATA t1110 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1110.
    DATA(t1111) = VALUE int8( ).
    DATA(t1112) = VALUE int8( ).
    DATA(t1113) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1113 = zcl_lnt_built_in=>counter.
    t1112 = t1113.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1114 TYPE int8.
    DATA(t1115) = t1112.
    DATA(t1116) = CONV int8( 1 ).
    t1114 = t1115 + t1116.
    IF t1114 < range_int8_bound_min OR t1114 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1114.
    DATA(t1117) = t1112.
    t1111 = t1117.
    DATA t1118 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1118.
    DATA(t1119) = abap_true.
    IF t1119 = abap_true.
      DATA t1120 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1121 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1122) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1121 = t1122.
      DATA t1123 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1124) = CAST zlnt_runtime_map__41b3bb94df3d( t1121 ).
      DATA(t1125) = |val1|.
      DATA(t1126) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1123 = t1124->set( p0 = t1125 p1 = t1126 ).
      DATA t1127 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1128) = CAST zlnt_runtime_map__41b3bb94df3d( t1121 ).
      DATA(t1129) = |val2|.
      DATA(t1130) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1127 = t1128->set( p0 = t1129 p1 = t1130 ).
      DATA(t1131) = CAST zlnt_runtime_map__41b3bb94df3d( t1121 ).
      t1120 = t1131.
      t1118 = t1120.
    ELSE.
      DATA t1132 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1132.
      t1118 = t1132.
    ENDIF.
    DATA t1133 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1133.
    DATA t1134 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1134.
    DATA(t1135) = abap_true.
    IF t1135 = abap_true.
      DATA t1136 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1136.
      DATA t1137 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1137.
      DATA t1138 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1138.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1138 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1139) = |v702|.
      t1137 = t1138->get( p0 = t1139 ).
      t1136 = t1137.
      t1134 = t1136.
    ELSE.
      DATA t1140 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1140.
      t1134 = t1140.
    ENDIF.
    DATA t1141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1141.
    DATA t1142 TYPE REF TO zcl_lnt_integer_type.
    DATA t1143 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1143.
    t1142 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1143 ).
    DATA t1144 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1144.
    t1110 = NEW zcl_lnt_ibuiltin_method( i_counter = t1111 i_mandatory = t1118 i_optional = t1133 i_release_7928 = t1134 i_predicate = t1141 i_return_fa63 = t1142 i_cache = t1144 ).
    t1107 = t1108->set( p0 = t1109 p1 = t1110 ).
    DATA t1145 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1145.
    DATA(t1146) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1147) = |ESCAPE|.
    DATA t1148 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1148.
    DATA(t1149) = VALUE int8( ).
    DATA(t1150) = VALUE int8( ).
    DATA(t1151) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1151 = zcl_lnt_built_in=>counter.
    t1150 = t1151.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1152 TYPE int8.
    DATA(t1153) = t1150.
    DATA(t1154) = CONV int8( 1 ).
    t1152 = t1153 + t1154.
    IF t1152 < range_int8_bound_min OR t1152 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1152.
    DATA(t1155) = t1150.
    t1149 = t1155.
    DATA t1156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1156.
    DATA(t1157) = abap_true.
    IF t1157 = abap_true.
      DATA t1158 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1159 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1160) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1159 = t1160.
      DATA t1161 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1162) = CAST zlnt_runtime_map__41b3bb94df3d( t1159 ).
      DATA(t1163) = |val|.
      DATA(t1164) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1161 = t1162->set( p0 = t1163 p1 = t1164 ).
      DATA t1165 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1166) = CAST zlnt_runtime_map__41b3bb94df3d( t1159 ).
      DATA(t1167) = |format|.
      DATA(t1168) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t1165 = t1166->set( p0 = t1167 p1 = t1168 ).
      DATA(t1169) = CAST zlnt_runtime_map__41b3bb94df3d( t1159 ).
      t1158 = t1169.
      t1156 = t1158.
    ELSE.
      DATA t1170 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1170.
      t1156 = t1170.
    ENDIF.
    DATA t1171 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1171.
    DATA t1172 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1172.
    DATA(t1173) = abap_true.
    IF t1173 = abap_true.
      DATA t1174 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1174.
      DATA t1175 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1175.
      DATA t1176 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1176.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1176 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1177) = |v702|.
      t1175 = t1176->get( p0 = t1177 ).
      t1174 = t1175.
      t1172 = t1174.
    ELSE.
      DATA t1178 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1178.
      t1172 = t1178.
    ENDIF.
    DATA t1179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1179.
    DATA t1180 TYPE REF TO zcl_lnt_string_type.
    DATA t1181 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1181.
    t1180 = zcl_lnt_string_type=>get_db65( i_input_967e = t1181 ).
    DATA t1182 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1182.
    t1148 = NEW zcl_lnt_ibuiltin_method( i_counter = t1149 i_mandatory = t1156 i_optional = t1171 i_release_7928 = t1172 i_predicate = t1179 i_return_fa63 = t1180 i_cache = t1182 ).
    t1145 = t1146->set( p0 = t1147 p1 = t1148 ).
    DATA t1183 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1183.
    DATA(t1184) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1185) = |EXP|.
    DATA t1186 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1186.
    DATA(t1187) = VALUE int8( ).
    DATA(t1188) = VALUE int8( ).
    DATA(t1189) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1189 = zcl_lnt_built_in=>counter.
    t1188 = t1189.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1190 TYPE int8.
    DATA(t1191) = t1188.
    DATA(t1192) = CONV int8( 1 ).
    t1190 = t1191 + t1192.
    IF t1190 < range_int8_bound_min OR t1190 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1190.
    DATA(t1193) = t1188.
    t1187 = t1193.
    DATA t1194 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1194.
    DATA(t1195) = abap_true.
    IF t1195 = abap_true.
      DATA t1196 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1197 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1198) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1197 = t1198.
      DATA t1199 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1200) = CAST zlnt_runtime_map__41b3bb94df3d( t1197 ).
      DATA(t1201) = |val|.
      DATA t1202 TYPE REF TO zcl_lnt_float_type.
      DATA t1203 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1203.
      t1202 = NEW zcl_lnt_float_type( i_input_967e = t1203 ).
      t1199 = t1200->set( p0 = t1201 p1 = t1202 ).
      DATA(t1204) = CAST zlnt_runtime_map__41b3bb94df3d( t1197 ).
      t1196 = t1204.
      t1194 = t1196.
    ELSE.
      DATA t1205 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1205.
      t1194 = t1205.
    ENDIF.
    DATA t1206 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1206.
    DATA t1207 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1207.
    DATA t1208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1208.
    DATA t1209 TYPE REF TO zcl_lnt_float_type.
    DATA t1210 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1210.
    t1209 = NEW zcl_lnt_float_type( i_input_967e = t1210 ).
    DATA t1211 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1211.
    t1186 = NEW zcl_lnt_ibuiltin_method( i_counter = t1187 i_mandatory = t1194 i_optional = t1206 i_release_7928 = t1207 i_predicate = t1208 i_return_fa63 = t1209 i_cache = t1211 ).
    t1183 = t1184->set( p0 = t1185 p1 = t1186 ).
    DATA t1212 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1212.
    DATA(t1213) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1214) = |FIND|.
    DATA t1215 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1215.
    DATA(t1216) = VALUE int8( ).
    DATA(t1217) = VALUE int8( ).
    DATA(t1218) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1218 = zcl_lnt_built_in=>counter.
    t1217 = t1218.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1219 TYPE int8.
    DATA(t1220) = t1217.
    DATA(t1221) = CONV int8( 1 ).
    t1219 = t1220 + t1221.
    IF t1219 < range_int8_bound_min OR t1219 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1219.
    DATA(t1222) = t1217.
    t1216 = t1222.
    DATA t1223 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1223.
    DATA(t1224) = abap_true.
    IF t1224 = abap_true.
      DATA t1225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1226 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1227) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1226 = t1227.
      DATA t1228 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1229) = CAST zlnt_runtime_map__41b3bb94df3d( t1226 ).
      DATA(t1230) = |val|.
      DATA(t1231) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1228 = t1229->set( p0 = t1230 p1 = t1231 ).
      DATA(t1232) = CAST zlnt_runtime_map__41b3bb94df3d( t1226 ).
      t1225 = t1232.
      t1223 = t1225.
    ELSE.
      DATA t1233 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1233.
      t1223 = t1233.
    ENDIF.
    DATA t1234 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1234.
    DATA(t1235) = abap_true.
    IF t1235 = abap_true.
      DATA t1236 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1237 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1238) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1237 = t1238.
      DATA t1239 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1240) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1241) = |sub|.
      DATA(t1242) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1239 = t1240->set( p0 = t1241 p1 = t1242 ).
      DATA t1243 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1244) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1245) = |regex|.
      DATA(t1246) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1243 = t1244->set( p0 = t1245 p1 = t1246 ).
      DATA t1247 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1248) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1249) = |pcre|.
      DATA(t1250) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1247 = t1248->set( p0 = t1249 p1 = t1250 ).
      DATA t1251 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1252) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1253) = |case|.
      DATA t1254 TYPE REF TO zcl_lnt_character_type.
      DATA(t1255) = CONV int8( 1 ).
      DATA t1256 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1256.
      t1254 = NEW zcl_lnt_character_type( i_length = t1255 i_extra = t1256 ).
      t1251 = t1252->set( p0 = t1253 p1 = t1254 ).
      DATA t1257 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1258) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1259) = |off|.
      DATA t1260 TYPE REF TO zcl_lnt_integer_type.
      DATA t1261 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1261.
      t1260 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1261 ).
      t1257 = t1258->set( p0 = t1259 p1 = t1260 ).
      DATA t1262 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1263) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1264) = |len|.
      DATA t1265 TYPE REF TO zcl_lnt_integer_type.
      DATA t1266 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1266.
      t1265 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1266 ).
      t1262 = t1263->set( p0 = t1264 p1 = t1265 ).
      DATA t1267 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1268) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      DATA(t1269) = |occ|.
      DATA t1270 TYPE REF TO zcl_lnt_integer_type.
      DATA t1271 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1271.
      t1270 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1271 ).
      t1267 = t1268->set( p0 = t1269 p1 = t1270 ).
      DATA(t1272) = CAST zlnt_runtime_map__41b3bb94df3d( t1237 ).
      t1236 = t1272.
      t1234 = t1236.
    ELSE.
      DATA t1273 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1273.
      t1234 = t1273.
    ENDIF.
    DATA t1274 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1274.
    DATA(t1275) = abap_true.
    IF t1275 = abap_true.
      DATA t1276 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1276.
      DATA t1277 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1277.
      DATA t1278 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1278.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1278 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1279) = |v702|.
      t1277 = t1278->get( p0 = t1279 ).
      t1276 = t1277.
      t1274 = t1276.
    ELSE.
      DATA t1280 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1280.
      t1274 = t1280.
    ENDIF.
    DATA t1281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1281.
    DATA t1282 TYPE REF TO zcl_lnt_integer_type.
    DATA t1283 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1283.
    t1282 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1283 ).
    DATA t1284 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1284.
    t1215 = NEW zcl_lnt_ibuiltin_method( i_counter = t1216 i_mandatory = t1223 i_optional = t1234 i_release_7928 = t1274 i_predicate = t1281 i_return_fa63 = t1282 i_cache = t1284 ).
    t1212 = t1213->set( p0 = t1214 p1 = t1215 ).
    DATA t1285 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1285.
    DATA(t1286) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1287) = |FIND_ANY_NOT_OF|.
    DATA t1288 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1288.
    DATA(t1289) = VALUE int8( ).
    DATA(t1290) = VALUE int8( ).
    DATA(t1291) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1291 = zcl_lnt_built_in=>counter.
    t1290 = t1291.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1292 TYPE int8.
    DATA(t1293) = t1290.
    DATA(t1294) = CONV int8( 1 ).
    t1292 = t1293 + t1294.
    IF t1292 < range_int8_bound_min OR t1292 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1292.
    DATA(t1295) = t1290.
    t1289 = t1295.
    DATA t1296 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1296.
    DATA(t1297) = abap_true.
    IF t1297 = abap_true.
      DATA t1298 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1299 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1300) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1299 = t1300.
      DATA t1301 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1302) = CAST zlnt_runtime_map__41b3bb94df3d( t1299 ).
      DATA(t1303) = |val|.
      DATA(t1304) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1301 = t1302->set( p0 = t1303 p1 = t1304 ).
      DATA(t1305) = CAST zlnt_runtime_map__41b3bb94df3d( t1299 ).
      t1298 = t1305.
      t1296 = t1298.
    ELSE.
      DATA t1306 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1306.
      t1296 = t1306.
    ENDIF.
    DATA t1307 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1307.
    DATA(t1308) = abap_true.
    IF t1308 = abap_true.
      DATA t1309 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1310 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1311) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1310 = t1311.
      DATA t1312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1313) = CAST zlnt_runtime_map__41b3bb94df3d( t1310 ).
      DATA(t1314) = |sub|.
      DATA(t1315) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1312 = t1313->set( p0 = t1314 p1 = t1315 ).
      DATA t1316 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1317) = CAST zlnt_runtime_map__41b3bb94df3d( t1310 ).
      DATA(t1318) = |off|.
      DATA t1319 TYPE REF TO zcl_lnt_integer_type.
      DATA t1320 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1320.
      t1319 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1320 ).
      t1316 = t1317->set( p0 = t1318 p1 = t1319 ).
      DATA t1321 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1322) = CAST zlnt_runtime_map__41b3bb94df3d( t1310 ).
      DATA(t1323) = |len|.
      DATA t1324 TYPE REF TO zcl_lnt_integer_type.
      DATA t1325 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1325.
      t1324 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1325 ).
      t1321 = t1322->set( p0 = t1323 p1 = t1324 ).
      DATA t1326 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1327) = CAST zlnt_runtime_map__41b3bb94df3d( t1310 ).
      DATA(t1328) = |occ|.
      DATA t1329 TYPE REF TO zcl_lnt_integer_type.
      DATA t1330 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1330.
      t1329 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1330 ).
      t1326 = t1327->set( p0 = t1328 p1 = t1329 ).
      DATA(t1331) = CAST zlnt_runtime_map__41b3bb94df3d( t1310 ).
      t1309 = t1331.
      t1307 = t1309.
    ELSE.
      DATA t1332 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1332.
      t1307 = t1332.
    ENDIF.
    DATA t1333 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1333.
    DATA(t1334) = abap_true.
    IF t1334 = abap_true.
      DATA t1335 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1335.
      DATA t1336 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1336.
      DATA t1337 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1337.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1337 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1338) = |v702|.
      t1336 = t1337->get( p0 = t1338 ).
      t1335 = t1336.
      t1333 = t1335.
    ELSE.
      DATA t1339 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1339.
      t1333 = t1339.
    ENDIF.
    DATA t1340 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1340.
    DATA t1341 TYPE REF TO zcl_lnt_integer_type.
    DATA t1342 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1342.
    t1341 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1342 ).
    DATA t1343 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1343.
    t1288 = NEW zcl_lnt_ibuiltin_method( i_counter = t1289 i_mandatory = t1296 i_optional = t1307 i_release_7928 = t1333 i_predicate = t1340 i_return_fa63 = t1341 i_cache = t1343 ).
    t1285 = t1286->set( p0 = t1287 p1 = t1288 ).
    DATA t1344 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1344.
    DATA(t1345) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1346) = |FIND_ANY_OF|.
    DATA t1347 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1347.
    DATA(t1348) = VALUE int8( ).
    DATA(t1349) = VALUE int8( ).
    DATA(t1350) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1350 = zcl_lnt_built_in=>counter.
    t1349 = t1350.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1351 TYPE int8.
    DATA(t1352) = t1349.
    DATA(t1353) = CONV int8( 1 ).
    t1351 = t1352 + t1353.
    IF t1351 < range_int8_bound_min OR t1351 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1351.
    DATA(t1354) = t1349.
    t1348 = t1354.
    DATA t1355 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1355.
    DATA(t1356) = abap_true.
    IF t1356 = abap_true.
      DATA t1357 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1358 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1359) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1358 = t1359.
      DATA t1360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1361) = CAST zlnt_runtime_map__41b3bb94df3d( t1358 ).
      DATA(t1362) = |val|.
      DATA(t1363) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1360 = t1361->set( p0 = t1362 p1 = t1363 ).
      DATA(t1364) = CAST zlnt_runtime_map__41b3bb94df3d( t1358 ).
      t1357 = t1364.
      t1355 = t1357.
    ELSE.
      DATA t1365 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1365.
      t1355 = t1365.
    ENDIF.
    DATA t1366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1366.
    DATA(t1367) = abap_true.
    IF t1367 = abap_true.
      DATA t1368 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1369 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1370) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1369 = t1370.
      DATA t1371 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1372) = CAST zlnt_runtime_map__41b3bb94df3d( t1369 ).
      DATA(t1373) = |sub|.
      DATA(t1374) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1371 = t1372->set( p0 = t1373 p1 = t1374 ).
      DATA t1375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1376) = CAST zlnt_runtime_map__41b3bb94df3d( t1369 ).
      DATA(t1377) = |off|.
      DATA t1378 TYPE REF TO zcl_lnt_integer_type.
      DATA t1379 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1379.
      t1378 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1379 ).
      t1375 = t1376->set( p0 = t1377 p1 = t1378 ).
      DATA t1380 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1381) = CAST zlnt_runtime_map__41b3bb94df3d( t1369 ).
      DATA(t1382) = |len|.
      DATA t1383 TYPE REF TO zcl_lnt_integer_type.
      DATA t1384 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1384.
      t1383 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1384 ).
      t1380 = t1381->set( p0 = t1382 p1 = t1383 ).
      DATA t1385 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1386) = CAST zlnt_runtime_map__41b3bb94df3d( t1369 ).
      DATA(t1387) = |occ|.
      DATA t1388 TYPE REF TO zcl_lnt_integer_type.
      DATA t1389 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1389.
      t1388 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1389 ).
      t1385 = t1386->set( p0 = t1387 p1 = t1388 ).
      DATA(t1390) = CAST zlnt_runtime_map__41b3bb94df3d( t1369 ).
      t1368 = t1390.
      t1366 = t1368.
    ELSE.
      DATA t1391 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1391.
      t1366 = t1391.
    ENDIF.
    DATA t1392 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1392.
    DATA(t1393) = abap_true.
    IF t1393 = abap_true.
      DATA t1394 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1394.
      DATA t1395 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1395.
      DATA t1396 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1396.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1396 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1397) = |v702|.
      t1395 = t1396->get( p0 = t1397 ).
      t1394 = t1395.
      t1392 = t1394.
    ELSE.
      DATA t1398 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1398.
      t1392 = t1398.
    ENDIF.
    DATA t1399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1399.
    DATA t1400 TYPE REF TO zcl_lnt_integer_type.
    DATA t1401 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1401.
    t1400 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1401 ).
    DATA t1402 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1402.
    t1347 = NEW zcl_lnt_ibuiltin_method( i_counter = t1348 i_mandatory = t1355 i_optional = t1366 i_release_7928 = t1392 i_predicate = t1399 i_return_fa63 = t1400 i_cache = t1402 ).
    t1344 = t1345->set( p0 = t1346 p1 = t1347 ).
    DATA t1403 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1403.
    DATA(t1404) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1405) = |FIND_END|.
    DATA t1406 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1406.
    DATA(t1407) = VALUE int8( ).
    DATA(t1408) = VALUE int8( ).
    DATA(t1409) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1409 = zcl_lnt_built_in=>counter.
    t1408 = t1409.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1410 TYPE int8.
    DATA(t1411) = t1408.
    DATA(t1412) = CONV int8( 1 ).
    t1410 = t1411 + t1412.
    IF t1410 < range_int8_bound_min OR t1410 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1410.
    DATA(t1413) = t1408.
    t1407 = t1413.
    DATA t1414 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1414.
    DATA(t1415) = abap_true.
    IF t1415 = abap_true.
      DATA t1416 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1417 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1418) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1417 = t1418.
      DATA t1419 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1420) = CAST zlnt_runtime_map__41b3bb94df3d( t1417 ).
      DATA(t1421) = |val|.
      DATA(t1422) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1419 = t1420->set( p0 = t1421 p1 = t1422 ).
      DATA(t1423) = CAST zlnt_runtime_map__41b3bb94df3d( t1417 ).
      t1416 = t1423.
      t1414 = t1416.
    ELSE.
      DATA t1424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1424.
      t1414 = t1424.
    ENDIF.
    DATA t1425 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1425.
    DATA(t1426) = abap_true.
    IF t1426 = abap_true.
      DATA t1427 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1428 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1429) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1428 = t1429.
      DATA t1430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1431) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1432) = |sub|.
      DATA(t1433) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1430 = t1431->set( p0 = t1432 p1 = t1433 ).
      DATA t1434 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1435) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1436) = |regex|.
      DATA(t1437) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1434 = t1435->set( p0 = t1436 p1 = t1437 ).
      DATA t1438 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1439) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1440) = |pcre|.
      DATA(t1441) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1438 = t1439->set( p0 = t1440 p1 = t1441 ).
      DATA t1442 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1443) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1444) = |case|.
      DATA t1445 TYPE REF TO zcl_lnt_character_type.
      DATA(t1446) = CONV int8( 1 ).
      DATA t1447 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1447.
      t1445 = NEW zcl_lnt_character_type( i_length = t1446 i_extra = t1447 ).
      t1442 = t1443->set( p0 = t1444 p1 = t1445 ).
      DATA t1448 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1449) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1450) = |off|.
      DATA t1451 TYPE REF TO zcl_lnt_integer_type.
      DATA t1452 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1452.
      t1451 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1452 ).
      t1448 = t1449->set( p0 = t1450 p1 = t1451 ).
      DATA t1453 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1454) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1455) = |len|.
      DATA t1456 TYPE REF TO zcl_lnt_integer_type.
      DATA t1457 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1457.
      t1456 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1457 ).
      t1453 = t1454->set( p0 = t1455 p1 = t1456 ).
      DATA t1458 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1459) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      DATA(t1460) = |occ|.
      DATA t1461 TYPE REF TO zcl_lnt_integer_type.
      DATA t1462 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1462.
      t1461 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1462 ).
      t1458 = t1459->set( p0 = t1460 p1 = t1461 ).
      DATA(t1463) = CAST zlnt_runtime_map__41b3bb94df3d( t1428 ).
      t1427 = t1463.
      t1425 = t1427.
    ELSE.
      DATA t1464 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1464.
      t1425 = t1464.
    ENDIF.
    DATA t1465 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1465.
    DATA(t1466) = abap_true.
    IF t1466 = abap_true.
      DATA t1467 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1467.
      DATA t1468 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1468.
      DATA t1469 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1469.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1469 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1470) = |v702|.
      t1468 = t1469->get( p0 = t1470 ).
      t1467 = t1468.
      t1465 = t1467.
    ELSE.
      DATA t1471 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1471.
      t1465 = t1471.
    ENDIF.
    DATA t1472 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1472.
    DATA t1473 TYPE REF TO zcl_lnt_integer_type.
    DATA t1474 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1474.
    t1473 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1474 ).
    DATA t1475 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1475.
    t1406 = NEW zcl_lnt_ibuiltin_method( i_counter = t1407 i_mandatory = t1414 i_optional = t1425 i_release_7928 = t1465 i_predicate = t1472 i_return_fa63 = t1473 i_cache = t1475 ).
    t1403 = t1404->set( p0 = t1405 p1 = t1406 ).
    DATA t1476 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1476.
    DATA(t1477) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1478) = |FLOOR|.
    DATA t1479 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1479.
    DATA(t1480) = VALUE int8( ).
    DATA(t1481) = VALUE int8( ).
    DATA(t1482) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1482 = zcl_lnt_built_in=>counter.
    t1481 = t1482.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1483 TYPE int8.
    DATA(t1484) = t1481.
    DATA(t1485) = CONV int8( 1 ).
    t1483 = t1484 + t1485.
    IF t1483 < range_int8_bound_min OR t1483 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1483.
    DATA(t1486) = t1481.
    t1480 = t1486.
    DATA t1487 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1487.
    DATA(t1488) = abap_true.
    IF t1488 = abap_true.
      DATA t1489 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1490 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1491) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1490 = t1491.
      DATA t1492 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1493) = CAST zlnt_runtime_map__41b3bb94df3d( t1490 ).
      DATA(t1494) = |val|.
      DATA t1495 TYPE REF TO zcl_lnt_float_type.
      DATA t1496 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1496.
      t1495 = NEW zcl_lnt_float_type( i_input_967e = t1496 ).
      t1492 = t1493->set( p0 = t1494 p1 = t1495 ).
      DATA(t1497) = CAST zlnt_runtime_map__41b3bb94df3d( t1490 ).
      t1489 = t1497.
      t1487 = t1489.
    ELSE.
      DATA t1498 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1498.
      t1487 = t1498.
    ENDIF.
    DATA t1499 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1499.
    DATA t1500 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1500.
    DATA t1501 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1501.
    DATA t1502 TYPE REF TO zcl_lnt_integer_type.
    DATA t1503 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1503.
    t1502 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1503 ).
    DATA t1504 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1504.
    t1479 = NEW zcl_lnt_ibuiltin_method( i_counter = t1480 i_mandatory = t1487 i_optional = t1499 i_release_7928 = t1500 i_predicate = t1501 i_return_fa63 = t1502 i_cache = t1504 ).
    t1476 = t1477->set( p0 = t1478 p1 = t1479 ).
    DATA t1505 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1505.
    DATA(t1506) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1507) = |FRAC|.
    DATA t1508 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1508.
    DATA(t1509) = VALUE int8( ).
    DATA(t1510) = VALUE int8( ).
    DATA(t1511) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1511 = zcl_lnt_built_in=>counter.
    t1510 = t1511.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1512 TYPE int8.
    DATA(t1513) = t1510.
    DATA(t1514) = CONV int8( 1 ).
    t1512 = t1513 + t1514.
    IF t1512 < range_int8_bound_min OR t1512 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1512.
    DATA(t1515) = t1510.
    t1509 = t1515.
    DATA t1516 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1516.
    DATA(t1517) = abap_true.
    IF t1517 = abap_true.
      DATA t1518 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1519 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1520) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1519 = t1520.
      DATA t1521 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1522) = CAST zlnt_runtime_map__41b3bb94df3d( t1519 ).
      DATA(t1523) = |val|.
      DATA t1524 TYPE REF TO zcl_lnt_float_type.
      DATA t1525 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1525.
      t1524 = NEW zcl_lnt_float_type( i_input_967e = t1525 ).
      t1521 = t1522->set( p0 = t1523 p1 = t1524 ).
      DATA(t1526) = CAST zlnt_runtime_map__41b3bb94df3d( t1519 ).
      t1518 = t1526.
      t1516 = t1518.
    ELSE.
      DATA t1527 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1527.
      t1516 = t1527.
    ENDIF.
    DATA t1528 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1528.
    DATA t1529 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1529.
    DATA t1530 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1530.
    DATA t1531 TYPE REF TO zcl_lnt_integer_type.
    DATA t1532 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1532.
    t1531 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1532 ).
    DATA t1533 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1533.
    t1508 = NEW zcl_lnt_ibuiltin_method( i_counter = t1509 i_mandatory = t1516 i_optional = t1528 i_release_7928 = t1529 i_predicate = t1530 i_return_fa63 = t1531 i_cache = t1533 ).
    t1505 = t1506->set( p0 = t1507 p1 = t1508 ).
    DATA t1534 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1534.
    DATA(t1535) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1536) = |FROM_MIXED|.
    DATA t1537 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1537.
    DATA(t1538) = VALUE int8( ).
    DATA(t1539) = VALUE int8( ).
    DATA(t1540) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1540 = zcl_lnt_built_in=>counter.
    t1539 = t1540.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1541 TYPE int8.
    DATA(t1542) = t1539.
    DATA(t1543) = CONV int8( 1 ).
    t1541 = t1542 + t1543.
    IF t1541 < range_int8_bound_min OR t1541 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1541.
    DATA(t1544) = t1539.
    t1538 = t1544.
    DATA t1545 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1545.
    DATA(t1546) = abap_true.
    IF t1546 = abap_true.
      DATA t1547 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1548 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1549) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1548 = t1549.
      DATA t1550 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1551) = CAST zlnt_runtime_map__41b3bb94df3d( t1548 ).
      DATA(t1552) = |val|.
      DATA(t1553) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1550 = t1551->set( p0 = t1552 p1 = t1553 ).
      DATA(t1554) = CAST zlnt_runtime_map__41b3bb94df3d( t1548 ).
      t1547 = t1554.
      t1545 = t1547.
    ELSE.
      DATA t1555 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1555.
      t1545 = t1555.
    ENDIF.
    DATA t1556 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1556.
    DATA(t1557) = abap_true.
    IF t1557 = abap_true.
      DATA t1558 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1559 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1560) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1559 = t1560.
      DATA t1561 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1562) = CAST zlnt_runtime_map__41b3bb94df3d( t1559 ).
      DATA(t1563) = |case|.
      DATA t1564 TYPE REF TO zcl_lnt_character_type.
      DATA(t1565) = CONV int8( 1 ).
      DATA t1566 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1566.
      t1564 = NEW zcl_lnt_character_type( i_length = t1565 i_extra = t1566 ).
      t1561 = t1562->set( p0 = t1563 p1 = t1564 ).
      DATA t1567 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1568) = CAST zlnt_runtime_map__41b3bb94df3d( t1559 ).
      DATA(t1569) = |sep|.
      DATA t1570 TYPE REF TO zcl_lnt_integer_type.
      DATA t1571 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1571.
      t1570 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1571 ).
      t1567 = t1568->set( p0 = t1569 p1 = t1570 ).
      DATA t1572 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1573) = CAST zlnt_runtime_map__41b3bb94df3d( t1559 ).
      DATA(t1574) = |min|.
      DATA t1575 TYPE REF TO zcl_lnt_integer_type.
      DATA t1576 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1576.
      t1575 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1576 ).
      t1572 = t1573->set( p0 = t1574 p1 = t1575 ).
      DATA(t1577) = CAST zlnt_runtime_map__41b3bb94df3d( t1559 ).
      t1558 = t1577.
      t1556 = t1558.
    ELSE.
      DATA t1578 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1578.
      t1556 = t1578.
    ENDIF.
    DATA t1579 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1579.
    DATA(t1580) = abap_true.
    IF t1580 = abap_true.
      DATA t1581 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1581.
      DATA t1582 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1582.
      DATA t1583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1583.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1583 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1584) = |v702|.
      t1582 = t1583->get( p0 = t1584 ).
      t1581 = t1582.
      t1579 = t1581.
    ELSE.
      DATA t1585 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1585.
      t1579 = t1585.
    ENDIF.
    DATA t1586 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1586.
    DATA t1587 TYPE REF TO zcl_lnt_string_type.
    DATA t1588 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1588.
    t1587 = zcl_lnt_string_type=>get_db65( i_input_967e = t1588 ).
    DATA t1589 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1589.
    t1537 = NEW zcl_lnt_ibuiltin_method( i_counter = t1538 i_mandatory = t1545 i_optional = t1556 i_release_7928 = t1579 i_predicate = t1586 i_return_fa63 = t1587 i_cache = t1589 ).
    t1534 = t1535->set( p0 = t1536 p1 = t1537 ).
    DATA t1590 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1590.
    DATA(t1591) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1592) = |INSERT|.
    DATA t1593 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1593.
    DATA(t1594) = VALUE int8( ).
    DATA(t1595) = VALUE int8( ).
    DATA(t1596) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1596 = zcl_lnt_built_in=>counter.
    t1595 = t1596.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1597 TYPE int8.
    DATA(t1598) = t1595.
    DATA(t1599) = CONV int8( 1 ).
    t1597 = t1598 + t1599.
    IF t1597 < range_int8_bound_min OR t1597 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1597.
    DATA(t1600) = t1595.
    t1594 = t1600.
    DATA t1601 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1601.
    DATA(t1602) = abap_true.
    IF t1602 = abap_true.
      DATA t1603 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1604 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1605) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1604 = t1605.
      DATA t1606 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1607) = CAST zlnt_runtime_map__41b3bb94df3d( t1604 ).
      DATA(t1608) = |val|.
      DATA(t1609) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1606 = t1607->set( p0 = t1608 p1 = t1609 ).
      DATA t1610 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1611) = CAST zlnt_runtime_map__41b3bb94df3d( t1604 ).
      DATA(t1612) = |sub|.
      DATA(t1613) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1610 = t1611->set( p0 = t1612 p1 = t1613 ).
      DATA(t1614) = CAST zlnt_runtime_map__41b3bb94df3d( t1604 ).
      t1603 = t1614.
      t1601 = t1603.
    ELSE.
      DATA t1615 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1615.
      t1601 = t1615.
    ENDIF.
    DATA t1616 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1616.
    DATA(t1617) = abap_true.
    IF t1617 = abap_true.
      DATA t1618 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1619 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1620) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1619 = t1620.
      DATA t1621 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1622) = CAST zlnt_runtime_map__41b3bb94df3d( t1619 ).
      DATA(t1623) = |off|.
      DATA t1624 TYPE REF TO zcl_lnt_integer_type.
      DATA t1625 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1625.
      t1624 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1625 ).
      t1621 = t1622->set( p0 = t1623 p1 = t1624 ).
      DATA(t1626) = CAST zlnt_runtime_map__41b3bb94df3d( t1619 ).
      t1618 = t1626.
      t1616 = t1618.
    ELSE.
      DATA t1627 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1627.
      t1616 = t1627.
    ENDIF.
    DATA t1628 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1628.
    DATA(t1629) = abap_true.
    IF t1629 = abap_true.
      DATA t1630 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1630.
      DATA t1631 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1631.
      DATA t1632 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1632.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1632 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1633) = |v702|.
      t1631 = t1632->get( p0 = t1633 ).
      t1630 = t1631.
      t1628 = t1630.
    ELSE.
      DATA t1634 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1634.
      t1628 = t1634.
    ENDIF.
    DATA t1635 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1635.
    DATA t1636 TYPE REF TO zcl_lnt_string_type.
    DATA t1637 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1637.
    t1636 = zcl_lnt_string_type=>get_db65( i_input_967e = t1637 ).
    DATA t1638 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1638.
    t1593 = NEW zcl_lnt_ibuiltin_method( i_counter = t1594 i_mandatory = t1601 i_optional = t1616 i_release_7928 = t1628 i_predicate = t1635 i_return_fa63 = t1636 i_cache = t1638 ).
    t1590 = t1591->set( p0 = t1592 p1 = t1593 ).
    DATA t1639 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1639.
    DATA(t1640) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1641) = |IPOW|.
    DATA t1642 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1642.
    DATA(t1643) = VALUE int8( ).
    DATA(t1644) = VALUE int8( ).
    DATA(t1645) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1645 = zcl_lnt_built_in=>counter.
    t1644 = t1645.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1646 TYPE int8.
    DATA(t1647) = t1644.
    DATA(t1648) = CONV int8( 1 ).
    t1646 = t1647 + t1648.
    IF t1646 < range_int8_bound_min OR t1646 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1646.
    DATA(t1649) = t1644.
    t1643 = t1649.
    DATA t1650 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1650.
    DATA(t1651) = abap_true.
    IF t1651 = abap_true.
      DATA t1652 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1653 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1654) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1653 = t1654.
      DATA t1655 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1656) = CAST zlnt_runtime_map__41b3bb94df3d( t1653 ).
      DATA(t1657) = |base|.
      DATA t1658 TYPE REF TO zcl_lnt_float_type.
      DATA t1659 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1659.
      t1658 = NEW zcl_lnt_float_type( i_input_967e = t1659 ).
      t1655 = t1656->set( p0 = t1657 p1 = t1658 ).
      DATA t1660 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1661) = CAST zlnt_runtime_map__41b3bb94df3d( t1653 ).
      DATA(t1662) = |exp|.
      DATA t1663 TYPE REF TO zcl_lnt_float_type.
      DATA t1664 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1664.
      t1663 = NEW zcl_lnt_float_type( i_input_967e = t1664 ).
      t1660 = t1661->set( p0 = t1662 p1 = t1663 ).
      DATA(t1665) = CAST zlnt_runtime_map__41b3bb94df3d( t1653 ).
      t1652 = t1665.
      t1650 = t1652.
    ELSE.
      DATA t1666 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1666.
      t1650 = t1666.
    ENDIF.
    DATA t1667 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1667.
    DATA t1668 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1668.
    DATA(t1669) = abap_true.
    IF t1669 = abap_true.
      DATA t1670 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1670.
      DATA t1671 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1671.
      DATA t1672 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1672.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1672 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1673) = |v740sp02|.
      t1671 = t1672->get( p0 = t1673 ).
      t1670 = t1671.
      t1668 = t1670.
    ELSE.
      DATA t1674 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1674.
      t1668 = t1674.
    ENDIF.
    DATA t1675 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1675.
    DATA t1676 TYPE REF TO zcl_lnt_integer_type.
    DATA t1677 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1677.
    t1676 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1677 ).
    DATA t1678 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1678.
    t1642 = NEW zcl_lnt_ibuiltin_method( i_counter = t1643 i_mandatory = t1650 i_optional = t1667 i_release_7928 = t1668 i_predicate = t1675 i_return_fa63 = t1676 i_cache = t1678 ).
    t1639 = t1640->set( p0 = t1641 p1 = t1642 ).
    DATA t1679 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1679.
    DATA(t1680) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1681) = |LINE_EXISTS|.
    DATA t1682 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1682.
    DATA(t1683) = VALUE int8( ).
    DATA(t1684) = VALUE int8( ).
    DATA(t1685) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1685 = zcl_lnt_built_in=>counter.
    t1684 = t1685.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1686 TYPE int8.
    DATA(t1687) = t1684.
    DATA(t1688) = CONV int8( 1 ).
    t1686 = t1687 + t1688.
    IF t1686 < range_int8_bound_min OR t1686 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1686.
    DATA(t1689) = t1684.
    t1683 = t1689.
    DATA t1690 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1690.
    DATA(t1691) = abap_true.
    IF t1691 = abap_true.
      DATA t1692 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1693 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1694) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1693 = t1694.
      DATA t1695 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1696) = CAST zlnt_runtime_map__41b3bb94df3d( t1693 ).
      DATA(t1697) = |val|.
      DATA t1698 TYPE REF TO zcl_lnt_any_type.
      DATA t1699 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1699.
      t1698 = zcl_lnt_any_type=>get_db65( i_input_967e = t1699 ).
      t1695 = t1696->set( p0 = t1697 p1 = t1698 ).
      DATA(t1700) = CAST zlnt_runtime_map__41b3bb94df3d( t1693 ).
      t1692 = t1700.
      t1690 = t1692.
    ELSE.
      DATA t1701 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1701.
      t1690 = t1701.
    ENDIF.
    DATA t1702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1702.
    DATA t1703 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1703.
    DATA(t1704) = abap_true.
    IF t1704 = abap_true.
      DATA t1705 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1705.
      DATA t1706 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1706.
      DATA t1707 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1707.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1707 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1708) = |v740sp02|.
      t1706 = t1707->get( p0 = t1708 ).
      t1705 = t1706.
      t1703 = t1705.
    ELSE.
      DATA t1709 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1709.
      t1703 = t1709.
    ENDIF.
    DATA t1710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1710.
    DATA(t1711) = abap_true.
    IF t1711 = abap_true.
      DATA(t1712) = abap_true.
      DATA(t1713) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1713->has = abap_true.
      t1713->value = t1712.
      t1710 = t1713.
    ELSE.
      DATA t1714 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1714.
      t1710 = t1714.
    ENDIF.
    DATA t1715 TYPE REF TO zcl_lnt_character_type.
    DATA(t1716) = CONV int8( 1 ).
    DATA t1717 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1717.
    t1715 = NEW zcl_lnt_character_type( i_length = t1716 i_extra = t1717 ).
    DATA t1718 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1718.
    t1682 = NEW zcl_lnt_ibuiltin_method( i_counter = t1683 i_mandatory = t1690 i_optional = t1702 i_release_7928 = t1703 i_predicate = t1710 i_return_fa63 = t1715 i_cache = t1718 ).
    t1679 = t1680->set( p0 = t1681 p1 = t1682 ).
    DATA t1719 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1719.
    DATA(t1720) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1721) = |LINE_INDEX|.
    DATA t1722 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1722.
    DATA(t1723) = VALUE int8( ).
    DATA(t1724) = VALUE int8( ).
    DATA(t1725) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1725 = zcl_lnt_built_in=>counter.
    t1724 = t1725.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1726 TYPE int8.
    DATA(t1727) = t1724.
    DATA(t1728) = CONV int8( 1 ).
    t1726 = t1727 + t1728.
    IF t1726 < range_int8_bound_min OR t1726 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1726.
    DATA(t1729) = t1724.
    t1723 = t1729.
    DATA t1730 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1730.
    DATA(t1731) = abap_true.
    IF t1731 = abap_true.
      DATA t1732 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1733 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1734) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1733 = t1734.
      DATA t1735 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1736) = CAST zlnt_runtime_map__41b3bb94df3d( t1733 ).
      DATA(t1737) = |val|.
      DATA t1738 TYPE REF TO zcl_lnt_any_type.
      DATA t1739 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1739.
      t1738 = zcl_lnt_any_type=>get_db65( i_input_967e = t1739 ).
      t1735 = t1736->set( p0 = t1737 p1 = t1738 ).
      DATA(t1740) = CAST zlnt_runtime_map__41b3bb94df3d( t1733 ).
      t1732 = t1740.
      t1730 = t1732.
    ELSE.
      DATA t1741 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1741.
      t1730 = t1741.
    ENDIF.
    DATA t1742 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1742.
    DATA t1743 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1743.
    DATA(t1744) = abap_true.
    IF t1744 = abap_true.
      DATA t1745 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1745.
      DATA t1746 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1746.
      DATA t1747 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1747.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1747 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1748) = |v740sp02|.
      t1746 = t1747->get( p0 = t1748 ).
      t1745 = t1746.
      t1743 = t1745.
    ELSE.
      DATA t1749 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1749.
      t1743 = t1749.
    ENDIF.
    DATA t1750 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1750.
    DATA t1751 TYPE REF TO zcl_lnt_integer_type.
    DATA t1752 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1752.
    t1751 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1752 ).
    DATA t1753 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1753.
    t1722 = NEW zcl_lnt_ibuiltin_method( i_counter = t1723 i_mandatory = t1730 i_optional = t1742 i_release_7928 = t1743 i_predicate = t1750 i_return_fa63 = t1751 i_cache = t1753 ).
    t1719 = t1720->set( p0 = t1721 p1 = t1722 ).
    DATA t1754 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1754.
    DATA(t1755) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1756) = |LINES|.
    DATA t1757 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1757.
    DATA(t1758) = VALUE int8( ).
    DATA(t1759) = VALUE int8( ).
    DATA(t1760) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1760 = zcl_lnt_built_in=>counter.
    t1759 = t1760.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1761 TYPE int8.
    DATA(t1762) = t1759.
    DATA(t1763) = CONV int8( 1 ).
    t1761 = t1762 + t1763.
    IF t1761 < range_int8_bound_min OR t1761 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1761.
    DATA(t1764) = t1759.
    t1758 = t1764.
    DATA t1765 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1765.
    DATA(t1766) = abap_true.
    IF t1766 = abap_true.
      DATA t1767 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1768 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1769) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1768 = t1769.
      DATA t1770 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1771) = CAST zlnt_runtime_map__41b3bb94df3d( t1768 ).
      DATA(t1772) = |val|.
      DATA t1773 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t1774 TYPE REF TO zcl_lnt_any_type.
      DATA t1775 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1775.
      t1774 = zcl_lnt_any_type=>get_db65( i_input_967e = t1775 ).
      DATA t1776 TYPE REF TO zcl_lnt_itable_options.
      DATA(t1777) = abap_false.
      DATA(t1778) = |USER|.
      DATA t1779 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t1779.
      DATA t1780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1780.
      t1776 = NEW zcl_lnt_itable_options( i_with_header = t1777 i_key_type = t1778 i_primary_key = t1779 i_secondary = t1780 ).
      DATA t1781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1781.
      DATA t1782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1782.
      t1773 = NEW zcl_lnt_ty_table_type( i_row_type = t1774 i_options = t1776 i_qualified_name = t1781 i_description = t1782 ).
      t1770 = t1771->set( p0 = t1772 p1 = t1773 ).
      DATA(t1783) = CAST zlnt_runtime_map__41b3bb94df3d( t1768 ).
      t1767 = t1783.
      t1765 = t1767.
    ELSE.
      DATA t1784 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1784.
      t1765 = t1784.
    ENDIF.
    DATA t1785 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1785.
    DATA t1786 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1786.
    DATA t1787 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1787.
    DATA t1788 TYPE REF TO zcl_lnt_integer_type.
    DATA t1789 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1789.
    t1788 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1789 ).
    DATA t1790 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1790.
    t1757 = NEW zcl_lnt_ibuiltin_method( i_counter = t1758 i_mandatory = t1765 i_optional = t1785 i_release_7928 = t1786 i_predicate = t1787 i_return_fa63 = t1788 i_cache = t1790 ).
    t1754 = t1755->set( p0 = t1756 p1 = t1757 ).
    DATA t1791 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1791.
    DATA(t1792) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1793) = |LOG|.
    DATA t1794 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1794.
    DATA(t1795) = VALUE int8( ).
    DATA(t1796) = VALUE int8( ).
    DATA(t1797) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1797 = zcl_lnt_built_in=>counter.
    t1796 = t1797.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1798 TYPE int8.
    DATA(t1799) = t1796.
    DATA(t1800) = CONV int8( 1 ).
    t1798 = t1799 + t1800.
    IF t1798 < range_int8_bound_min OR t1798 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1798.
    DATA(t1801) = t1796.
    t1795 = t1801.
    DATA t1802 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1802.
    DATA(t1803) = abap_true.
    IF t1803 = abap_true.
      DATA t1804 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1805 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1806) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1805 = t1806.
      DATA t1807 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1808) = CAST zlnt_runtime_map__41b3bb94df3d( t1805 ).
      DATA(t1809) = |val|.
      DATA t1810 TYPE REF TO zcl_lnt_float_type.
      DATA t1811 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1811.
      t1810 = NEW zcl_lnt_float_type( i_input_967e = t1811 ).
      t1807 = t1808->set( p0 = t1809 p1 = t1810 ).
      DATA(t1812) = CAST zlnt_runtime_map__41b3bb94df3d( t1805 ).
      t1804 = t1812.
      t1802 = t1804.
    ELSE.
      DATA t1813 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1813.
      t1802 = t1813.
    ENDIF.
    DATA t1814 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1814.
    DATA t1815 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1815.
    DATA t1816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1816.
    DATA t1817 TYPE REF TO zcl_lnt_float_type.
    DATA t1818 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1818.
    t1817 = NEW zcl_lnt_float_type( i_input_967e = t1818 ).
    DATA t1819 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1819.
    t1794 = NEW zcl_lnt_ibuiltin_method( i_counter = t1795 i_mandatory = t1802 i_optional = t1814 i_release_7928 = t1815 i_predicate = t1816 i_return_fa63 = t1817 i_cache = t1819 ).
    t1791 = t1792->set( p0 = t1793 p1 = t1794 ).
    DATA t1820 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1820.
    DATA(t1821) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1822) = |LOG10|.
    DATA t1823 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1823.
    DATA(t1824) = VALUE int8( ).
    DATA(t1825) = VALUE int8( ).
    DATA(t1826) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1826 = zcl_lnt_built_in=>counter.
    t1825 = t1826.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1827 TYPE int8.
    DATA(t1828) = t1825.
    DATA(t1829) = CONV int8( 1 ).
    t1827 = t1828 + t1829.
    IF t1827 < range_int8_bound_min OR t1827 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1827.
    DATA(t1830) = t1825.
    t1824 = t1830.
    DATA t1831 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1831.
    DATA(t1832) = abap_true.
    IF t1832 = abap_true.
      DATA t1833 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1834 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1835) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1834 = t1835.
      DATA t1836 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1837) = CAST zlnt_runtime_map__41b3bb94df3d( t1834 ).
      DATA(t1838) = |val|.
      DATA t1839 TYPE REF TO zcl_lnt_float_type.
      DATA t1840 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1840.
      t1839 = NEW zcl_lnt_float_type( i_input_967e = t1840 ).
      t1836 = t1837->set( p0 = t1838 p1 = t1839 ).
      DATA(t1841) = CAST zlnt_runtime_map__41b3bb94df3d( t1834 ).
      t1833 = t1841.
      t1831 = t1833.
    ELSE.
      DATA t1842 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1842.
      t1831 = t1842.
    ENDIF.
    DATA t1843 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1843.
    DATA t1844 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1844.
    DATA t1845 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1845.
    DATA t1846 TYPE REF TO zcl_lnt_float_type.
    DATA t1847 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1847.
    t1846 = NEW zcl_lnt_float_type( i_input_967e = t1847 ).
    DATA t1848 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1848.
    t1823 = NEW zcl_lnt_ibuiltin_method( i_counter = t1824 i_mandatory = t1831 i_optional = t1843 i_release_7928 = t1844 i_predicate = t1845 i_return_fa63 = t1846 i_cache = t1848 ).
    t1820 = t1821->set( p0 = t1822 p1 = t1823 ).
    DATA t1849 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1849.
    DATA(t1850) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1851) = |MATCH|.
    DATA t1852 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1852.
    DATA(t1853) = VALUE int8( ).
    DATA(t1854) = VALUE int8( ).
    DATA(t1855) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1855 = zcl_lnt_built_in=>counter.
    t1854 = t1855.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1856 TYPE int8.
    DATA(t1857) = t1854.
    DATA(t1858) = CONV int8( 1 ).
    t1856 = t1857 + t1858.
    IF t1856 < range_int8_bound_min OR t1856 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1856.
    DATA(t1859) = t1854.
    t1853 = t1859.
    DATA t1860 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1860.
    DATA(t1861) = abap_true.
    IF t1861 = abap_true.
      DATA t1862 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1863 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1864) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1863 = t1864.
      DATA t1865 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1866) = CAST zlnt_runtime_map__41b3bb94df3d( t1863 ).
      DATA(t1867) = |val|.
      DATA(t1868) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1865 = t1866->set( p0 = t1867 p1 = t1868 ).
      DATA(t1869) = CAST zlnt_runtime_map__41b3bb94df3d( t1863 ).
      t1862 = t1869.
      t1860 = t1862.
    ELSE.
      DATA t1870 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1870.
      t1860 = t1870.
    ENDIF.
    DATA t1871 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1871.
    DATA(t1872) = abap_true.
    IF t1872 = abap_true.
      DATA t1873 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1874 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1875) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1874 = t1875.
      DATA t1876 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1877) = CAST zlnt_runtime_map__41b3bb94df3d( t1874 ).
      DATA(t1878) = |case|.
      DATA t1879 TYPE REF TO zcl_lnt_character_type.
      DATA(t1880) = CONV int8( 1 ).
      DATA t1881 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1881.
      t1879 = NEW zcl_lnt_character_type( i_length = t1880 i_extra = t1881 ).
      t1876 = t1877->set( p0 = t1878 p1 = t1879 ).
      DATA t1882 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1883) = CAST zlnt_runtime_map__41b3bb94df3d( t1874 ).
      DATA(t1884) = |regex|.
      DATA(t1885) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1882 = t1883->set( p0 = t1884 p1 = t1885 ).
      DATA t1886 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1887) = CAST zlnt_runtime_map__41b3bb94df3d( t1874 ).
      DATA(t1888) = |pcre|.
      DATA(t1889) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1886 = t1887->set( p0 = t1888 p1 = t1889 ).
      DATA t1890 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1891) = CAST zlnt_runtime_map__41b3bb94df3d( t1874 ).
      DATA(t1892) = |occ|.
      DATA t1893 TYPE REF TO zcl_lnt_integer_type.
      DATA t1894 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1894.
      t1893 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1894 ).
      t1890 = t1891->set( p0 = t1892 p1 = t1893 ).
      DATA(t1895) = CAST zlnt_runtime_map__41b3bb94df3d( t1874 ).
      t1873 = t1895.
      t1871 = t1873.
    ELSE.
      DATA t1896 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1896.
      t1871 = t1896.
    ENDIF.
    DATA t1897 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1897.
    DATA(t1898) = abap_true.
    IF t1898 = abap_true.
      DATA t1899 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1899.
      DATA t1900 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1900.
      DATA t1901 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1901.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1901 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1902) = |v702|.
      t1900 = t1901->get( p0 = t1902 ).
      t1899 = t1900.
      t1897 = t1899.
    ELSE.
      DATA t1903 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1903.
      t1897 = t1903.
    ENDIF.
    DATA t1904 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1904.
    DATA t1905 TYPE REF TO zcl_lnt_string_type.
    DATA t1906 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1906.
    t1905 = zcl_lnt_string_type=>get_db65( i_input_967e = t1906 ).
    DATA t1907 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1907.
    t1852 = NEW zcl_lnt_ibuiltin_method( i_counter = t1853 i_mandatory = t1860 i_optional = t1871 i_release_7928 = t1897 i_predicate = t1904 i_return_fa63 = t1905 i_cache = t1907 ).
    t1849 = t1850->set( p0 = t1851 p1 = t1852 ).
    DATA t1908 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1908.
    DATA(t1909) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1910) = |MATCHES|.
    DATA t1911 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1911.
    DATA(t1912) = VALUE int8( ).
    DATA(t1913) = VALUE int8( ).
    DATA(t1914) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1914 = zcl_lnt_built_in=>counter.
    t1913 = t1914.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1915 TYPE int8.
    DATA(t1916) = t1913.
    DATA(t1917) = CONV int8( 1 ).
    t1915 = t1916 + t1917.
    IF t1915 < range_int8_bound_min OR t1915 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1915.
    DATA(t1918) = t1913.
    t1912 = t1918.
    DATA t1919 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1919.
    DATA(t1920) = abap_true.
    IF t1920 = abap_true.
      DATA t1921 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1922 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1923) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1922 = t1923.
      DATA t1924 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1925) = CAST zlnt_runtime_map__41b3bb94df3d( t1922 ).
      DATA(t1926) = |val|.
      DATA(t1927) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1924 = t1925->set( p0 = t1926 p1 = t1927 ).
      DATA(t1928) = CAST zlnt_runtime_map__41b3bb94df3d( t1922 ).
      t1921 = t1928.
      t1919 = t1921.
    ELSE.
      DATA t1929 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1929.
      t1919 = t1929.
    ENDIF.
    DATA t1930 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1930.
    DATA(t1931) = abap_true.
    IF t1931 = abap_true.
      DATA t1932 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1933 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1934) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1933 = t1934.
      DATA t1935 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1936) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      DATA(t1937) = |case|.
      DATA t1938 TYPE REF TO zcl_lnt_character_type.
      DATA(t1939) = CONV int8( 1 ).
      DATA t1940 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1940.
      t1938 = NEW zcl_lnt_character_type( i_length = t1939 i_extra = t1940 ).
      t1935 = t1936->set( p0 = t1937 p1 = t1938 ).
      DATA t1941 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1942) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      DATA(t1943) = |regex|.
      DATA(t1944) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1941 = t1942->set( p0 = t1943 p1 = t1944 ).
      DATA t1945 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1946) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      DATA(t1947) = |pcre|.
      DATA(t1948) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t1945 = t1946->set( p0 = t1947 p1 = t1948 ).
      DATA t1949 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1950) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      DATA(t1951) = |off|.
      DATA t1952 TYPE REF TO zcl_lnt_integer_type.
      DATA t1953 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1953.
      t1952 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1953 ).
      t1949 = t1950->set( p0 = t1951 p1 = t1952 ).
      DATA t1954 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1955) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      DATA(t1956) = |len|.
      DATA t1957 TYPE REF TO zcl_lnt_integer_type.
      DATA t1958 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t1958.
      t1957 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1958 ).
      t1954 = t1955->set( p0 = t1956 p1 = t1957 ).
      DATA(t1959) = CAST zlnt_runtime_map__41b3bb94df3d( t1933 ).
      t1932 = t1959.
      t1930 = t1932.
    ELSE.
      DATA t1960 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t1960.
      t1930 = t1960.
    ENDIF.
    DATA t1961 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1961.
    DATA(t1962) = abap_true.
    IF t1962 = abap_true.
      DATA t1963 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1963.
      DATA t1964 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1964.
      DATA t1965 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t1965.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t1965 = zcl_lnt_version_module=>release_b8cd.
      DATA(t1966) = |v702|.
      t1964 = t1965->get( p0 = t1966 ).
      t1963 = t1964.
      t1961 = t1963.
    ELSE.
      DATA t1967 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t1967.
      t1961 = t1967.
    ENDIF.
    DATA t1968 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t1968.
    DATA(t1969) = abap_true.
    IF t1969 = abap_true.
      DATA(t1970) = abap_true.
      DATA(t1971) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t1971->has = abap_true.
      t1971->value = t1970.
      t1968 = t1971.
    ELSE.
      DATA t1972 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1972.
      t1968 = t1972.
    ENDIF.
    DATA t1973 TYPE REF TO zcl_lnt_character_type.
    DATA(t1974) = CONV int8( 1 ).
    DATA t1975 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1975.
    t1973 = NEW zcl_lnt_character_type( i_length = t1974 i_extra = t1975 ).
    DATA t1976 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t1976.
    t1911 = NEW zcl_lnt_ibuiltin_method( i_counter = t1912 i_mandatory = t1919 i_optional = t1930 i_release_7928 = t1961 i_predicate = t1968 i_return_fa63 = t1973 i_cache = t1976 ).
    t1908 = t1909->set( p0 = t1910 p1 = t1911 ).
    DATA t1977 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t1977.
    DATA(t1978) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t1979) = |NMAX|.
    DATA t1980 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t1980.
    DATA(t1981) = VALUE int8( ).
    DATA(t1982) = VALUE int8( ).
    DATA(t1983) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1983 = zcl_lnt_built_in=>counter.
    t1982 = t1983.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1984 TYPE int8.
    DATA(t1985) = t1982.
    DATA(t1986) = CONV int8( 1 ).
    t1984 = t1985 + t1986.
    IF t1984 < range_int8_bound_min OR t1984 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t1984.
    DATA(t1987) = t1982.
    t1981 = t1987.
    DATA t1988 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t1988.
    DATA(t1989) = abap_true.
    IF t1989 = abap_true.
      DATA t1990 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t1991 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1992) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t1991 = t1992.
      DATA t1993 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1994) = CAST zlnt_runtime_map__41b3bb94df3d( t1991 ).
      DATA(t1995) = |val1|.
      DATA(t1996) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t1993 = t1994->set( p0 = t1995 p1 = t1996 ).
      DATA t1997 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t1998) = CAST zlnt_runtime_map__41b3bb94df3d( t1991 ).
      DATA(t1999) = |val2|.
      DATA(t2000) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t1997 = t1998->set( p0 = t1999 p1 = t2000 ).
      DATA(t2001) = CAST zlnt_runtime_map__41b3bb94df3d( t1991 ).
      t1990 = t2001.
      t1988 = t1990.
    ELSE.
      DATA t2002 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2002.
      t1988 = t2002.
    ENDIF.
    DATA t2003 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2003.
    DATA(t2004) = abap_true.
    IF t2004 = abap_true.
      DATA t2005 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2006 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2007) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2006 = t2007.
      DATA t2008 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2009) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2010) = |val3|.
      DATA(t2011) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2008 = t2009->set( p0 = t2010 p1 = t2011 ).
      DATA t2012 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2013) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2014) = |val4|.
      DATA(t2015) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2012 = t2013->set( p0 = t2014 p1 = t2015 ).
      DATA t2016 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2017) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2018) = |val5|.
      DATA(t2019) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2016 = t2017->set( p0 = t2018 p1 = t2019 ).
      DATA t2020 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2021) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2022) = |val6|.
      DATA(t2023) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2020 = t2021->set( p0 = t2022 p1 = t2023 ).
      DATA t2024 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2025) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2026) = |val7|.
      DATA(t2027) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2024 = t2025->set( p0 = t2026 p1 = t2027 ).
      DATA t2028 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2029) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2030) = |val8|.
      DATA(t2031) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2028 = t2029->set( p0 = t2030 p1 = t2031 ).
      DATA t2032 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2033) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      DATA(t2034) = |val9|.
      DATA(t2035) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2032 = t2033->set( p0 = t2034 p1 = t2035 ).
      DATA(t2036) = CAST zlnt_runtime_map__41b3bb94df3d( t2006 ).
      t2005 = t2036.
      t2003 = t2005.
    ELSE.
      DATA t2037 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2037.
      t2003 = t2037.
    ENDIF.
    DATA t2038 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2038.
    DATA(t2039) = abap_true.
    IF t2039 = abap_true.
      DATA t2040 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2040.
      DATA t2041 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2041.
      DATA t2042 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2042.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2042 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2043) = |v702|.
      t2041 = t2042->get( p0 = t2043 ).
      t2040 = t2041.
      t2038 = t2040.
    ELSE.
      DATA t2044 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2044.
      t2038 = t2044.
    ENDIF.
    DATA t2045 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2045.
    DATA t2046 TYPE REF TO zcl_lnt_integer_type.
    DATA t2047 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2047.
    t2046 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2047 ).
    DATA t2048 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2048.
    t1980 = NEW zcl_lnt_ibuiltin_method( i_counter = t1981 i_mandatory = t1988 i_optional = t2003 i_release_7928 = t2038 i_predicate = t2045 i_return_fa63 = t2046 i_cache = t2048 ).
    t1977 = t1978->set( p0 = t1979 p1 = t1980 ).
    DATA t2049 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2049.
    DATA(t2050) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2051) = |NMIN|.
    DATA t2052 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2052.
    DATA(t2053) = VALUE int8( ).
    DATA(t2054) = VALUE int8( ).
    DATA(t2055) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2055 = zcl_lnt_built_in=>counter.
    t2054 = t2055.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2056 TYPE int8.
    DATA(t2057) = t2054.
    DATA(t2058) = CONV int8( 1 ).
    t2056 = t2057 + t2058.
    IF t2056 < range_int8_bound_min OR t2056 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2056.
    DATA(t2059) = t2054.
    t2053 = t2059.
    DATA t2060 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2060.
    DATA(t2061) = abap_true.
    IF t2061 = abap_true.
      DATA t2062 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2063 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2064) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2063 = t2064.
      DATA t2065 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2066) = CAST zlnt_runtime_map__41b3bb94df3d( t2063 ).
      DATA(t2067) = |val1|.
      DATA(t2068) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2065 = t2066->set( p0 = t2067 p1 = t2068 ).
      DATA t2069 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2070) = CAST zlnt_runtime_map__41b3bb94df3d( t2063 ).
      DATA(t2071) = |val2|.
      DATA(t2072) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2069 = t2070->set( p0 = t2071 p1 = t2072 ).
      DATA(t2073) = CAST zlnt_runtime_map__41b3bb94df3d( t2063 ).
      t2062 = t2073.
      t2060 = t2062.
    ELSE.
      DATA t2074 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2074.
      t2060 = t2074.
    ENDIF.
    DATA t2075 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2075.
    DATA(t2076) = abap_true.
    IF t2076 = abap_true.
      DATA t2077 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2078 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2079) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2078 = t2079.
      DATA t2080 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2081) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2082) = |val3|.
      DATA(t2083) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2080 = t2081->set( p0 = t2082 p1 = t2083 ).
      DATA t2084 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2085) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2086) = |val4|.
      DATA(t2087) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2084 = t2085->set( p0 = t2086 p1 = t2087 ).
      DATA t2088 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2089) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2090) = |val5|.
      DATA(t2091) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2088 = t2089->set( p0 = t2090 p1 = t2091 ).
      DATA t2092 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2093) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2094) = |val6|.
      DATA(t2095) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2092 = t2093->set( p0 = t2094 p1 = t2095 ).
      DATA t2096 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2097) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2098) = |val7|.
      DATA(t2099) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2096 = t2097->set( p0 = t2098 p1 = t2099 ).
      DATA t2100 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2101) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2102) = |val8|.
      DATA(t2103) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2100 = t2101->set( p0 = t2102 p1 = t2103 ).
      DATA t2104 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2105) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      DATA(t2106) = |val9|.
      DATA(t2107) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2104 = t2105->set( p0 = t2106 p1 = t2107 ).
      DATA(t2108) = CAST zlnt_runtime_map__41b3bb94df3d( t2078 ).
      t2077 = t2108.
      t2075 = t2077.
    ELSE.
      DATA t2109 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2109.
      t2075 = t2109.
    ENDIF.
    DATA t2110 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2110.
    DATA(t2111) = abap_true.
    IF t2111 = abap_true.
      DATA t2112 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2112.
      DATA t2113 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2113.
      DATA t2114 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2114.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2114 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2115) = |v702|.
      t2113 = t2114->get( p0 = t2115 ).
      t2112 = t2113.
      t2110 = t2112.
    ELSE.
      DATA t2116 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2116.
      t2110 = t2116.
    ENDIF.
    DATA t2117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2117.
    DATA t2118 TYPE REF TO zcl_lnt_integer_type.
    DATA t2119 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2119.
    t2118 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2119 ).
    DATA t2120 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2120.
    t2052 = NEW zcl_lnt_ibuiltin_method( i_counter = t2053 i_mandatory = t2060 i_optional = t2075 i_release_7928 = t2110 i_predicate = t2117 i_return_fa63 = t2118 i_cache = t2120 ).
    t2049 = t2050->set( p0 = t2051 p1 = t2052 ).
    DATA t2121 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2121.
    DATA(t2122) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2123) = |NUMOFCHAR|.
    DATA t2124 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2124.
    DATA(t2125) = VALUE int8( ).
    DATA(t2126) = VALUE int8( ).
    DATA(t2127) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2127 = zcl_lnt_built_in=>counter.
    t2126 = t2127.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2128 TYPE int8.
    DATA(t2129) = t2126.
    DATA(t2130) = CONV int8( 1 ).
    t2128 = t2129 + t2130.
    IF t2128 < range_int8_bound_min OR t2128 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2128.
    DATA(t2131) = t2126.
    t2125 = t2131.
    DATA t2132 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2132.
    DATA(t2133) = abap_true.
    IF t2133 = abap_true.
      DATA t2134 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2135 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2136) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2135 = t2136.
      DATA t2137 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2138) = CAST zlnt_runtime_map__41b3bb94df3d( t2135 ).
      DATA(t2139) = |val|.
      DATA(t2140) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2137 = t2138->set( p0 = t2139 p1 = t2140 ).
      DATA(t2141) = CAST zlnt_runtime_map__41b3bb94df3d( t2135 ).
      t2134 = t2141.
      t2132 = t2134.
    ELSE.
      DATA t2142 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2142.
      t2132 = t2142.
    ENDIF.
    DATA t2143 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2143.
    DATA t2144 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2144.
    DATA t2145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2145.
    DATA t2146 TYPE REF TO zcl_lnt_integer_type.
    DATA t2147 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2147.
    t2146 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2147 ).
    DATA t2148 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2148.
    t2124 = NEW zcl_lnt_ibuiltin_method( i_counter = t2125 i_mandatory = t2132 i_optional = t2143 i_release_7928 = t2144 i_predicate = t2145 i_return_fa63 = t2146 i_cache = t2148 ).
    t2121 = t2122->set( p0 = t2123 p1 = t2124 ).
    DATA t2149 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2149.
    DATA(t2150) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2151) = |REPEAT|.
    DATA t2152 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2152.
    DATA(t2153) = VALUE int8( ).
    DATA(t2154) = VALUE int8( ).
    DATA(t2155) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2155 = zcl_lnt_built_in=>counter.
    t2154 = t2155.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2156 TYPE int8.
    DATA(t2157) = t2154.
    DATA(t2158) = CONV int8( 1 ).
    t2156 = t2157 + t2158.
    IF t2156 < range_int8_bound_min OR t2156 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2156.
    DATA(t2159) = t2154.
    t2153 = t2159.
    DATA t2160 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2160.
    DATA(t2161) = abap_true.
    IF t2161 = abap_true.
      DATA t2162 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2163 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2164) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2163 = t2164.
      DATA t2165 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2166) = CAST zlnt_runtime_map__41b3bb94df3d( t2163 ).
      DATA(t2167) = |val|.
      DATA(t2168) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2165 = t2166->set( p0 = t2167 p1 = t2168 ).
      DATA t2169 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2170) = CAST zlnt_runtime_map__41b3bb94df3d( t2163 ).
      DATA(t2171) = |occ|.
      DATA(t2172) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
      t2169 = t2170->set( p0 = t2171 p1 = t2172 ).
      DATA(t2173) = CAST zlnt_runtime_map__41b3bb94df3d( t2163 ).
      t2162 = t2173.
      t2160 = t2162.
    ELSE.
      DATA t2174 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2174.
      t2160 = t2174.
    ENDIF.
    DATA t2175 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2175.
    DATA t2176 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2176.
    DATA(t2177) = abap_true.
    IF t2177 = abap_true.
      DATA t2178 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2178.
      DATA t2179 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2179.
      DATA t2180 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2180.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2180 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2181) = |v702|.
      t2179 = t2180->get( p0 = t2181 ).
      t2178 = t2179.
      t2176 = t2178.
    ELSE.
      DATA t2182 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2182.
      t2176 = t2182.
    ENDIF.
    DATA t2183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2183.
    DATA t2184 TYPE REF TO zcl_lnt_string_type.
    DATA t2185 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2185.
    t2184 = zcl_lnt_string_type=>get_db65( i_input_967e = t2185 ).
    DATA t2186 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2186.
    t2152 = NEW zcl_lnt_ibuiltin_method( i_counter = t2153 i_mandatory = t2160 i_optional = t2175 i_release_7928 = t2176 i_predicate = t2183 i_return_fa63 = t2184 i_cache = t2186 ).
    t2149 = t2150->set( p0 = t2151 p1 = t2152 ).
    DATA t2187 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2187.
    DATA(t2188) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2189) = |REPLACE|.
    DATA t2190 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2190.
    DATA(t2191) = VALUE int8( ).
    DATA(t2192) = VALUE int8( ).
    DATA(t2193) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2193 = zcl_lnt_built_in=>counter.
    t2192 = t2193.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2194 TYPE int8.
    DATA(t2195) = t2192.
    DATA(t2196) = CONV int8( 1 ).
    t2194 = t2195 + t2196.
    IF t2194 < range_int8_bound_min OR t2194 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2194.
    DATA(t2197) = t2192.
    t2191 = t2197.
    DATA t2198 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2198.
    DATA(t2199) = abap_true.
    IF t2199 = abap_true.
      DATA t2200 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2202) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2201 = t2202.
      DATA t2203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2204) = CAST zlnt_runtime_map__41b3bb94df3d( t2201 ).
      DATA(t2205) = |val|.
      DATA(t2206) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2203 = t2204->set( p0 = t2205 p1 = t2206 ).
      DATA t2207 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2208) = CAST zlnt_runtime_map__41b3bb94df3d( t2201 ).
      DATA(t2209) = |with|.
      DATA(t2210) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2207 = t2208->set( p0 = t2209 p1 = t2210 ).
      DATA(t2211) = CAST zlnt_runtime_map__41b3bb94df3d( t2201 ).
      t2200 = t2211.
      t2198 = t2200.
    ELSE.
      DATA t2212 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2212.
      t2198 = t2212.
    ENDIF.
    DATA t2213 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2213.
    DATA(t2214) = abap_true.
    IF t2214 = abap_true.
      DATA t2215 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2216 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2217) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2216 = t2217.
      DATA t2218 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2219) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2220) = |sub|.
      DATA(t2221) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2218 = t2219->set( p0 = t2220 p1 = t2221 ).
      DATA t2222 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2223) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2224) = |regex|.
      DATA(t2225) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2222 = t2223->set( p0 = t2224 p1 = t2225 ).
      DATA t2226 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2227) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2228) = |pcre|.
      DATA(t2229) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2226 = t2227->set( p0 = t2228 p1 = t2229 ).
      DATA t2230 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2231) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2232) = |case|.
      DATA t2233 TYPE REF TO zcl_lnt_character_type.
      DATA(t2234) = CONV int8( 1 ).
      DATA t2235 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2235.
      t2233 = NEW zcl_lnt_character_type( i_length = t2234 i_extra = t2235 ).
      t2230 = t2231->set( p0 = t2232 p1 = t2233 ).
      DATA t2236 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2237) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2238) = |off|.
      DATA t2239 TYPE REF TO zcl_lnt_integer_type.
      DATA t2240 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2240.
      t2239 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2240 ).
      t2236 = t2237->set( p0 = t2238 p1 = t2239 ).
      DATA t2241 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2242) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2243) = |len|.
      DATA t2244 TYPE REF TO zcl_lnt_integer_type.
      DATA t2245 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2245.
      t2244 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2245 ).
      t2241 = t2242->set( p0 = t2243 p1 = t2244 ).
      DATA t2246 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2247) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      DATA(t2248) = |occ|.
      DATA t2249 TYPE REF TO zcl_lnt_integer_type.
      DATA t2250 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2250.
      t2249 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2250 ).
      t2246 = t2247->set( p0 = t2248 p1 = t2249 ).
      DATA(t2251) = CAST zlnt_runtime_map__41b3bb94df3d( t2216 ).
      t2215 = t2251.
      t2213 = t2215.
    ELSE.
      DATA t2252 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2252.
      t2213 = t2252.
    ENDIF.
    DATA t2253 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2253.
    DATA(t2254) = abap_true.
    IF t2254 = abap_true.
      DATA t2255 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2255.
      DATA t2256 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2256.
      DATA t2257 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2257.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2257 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2258) = |v702|.
      t2256 = t2257->get( p0 = t2258 ).
      t2255 = t2256.
      t2253 = t2255.
    ELSE.
      DATA t2259 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2259.
      t2253 = t2259.
    ENDIF.
    DATA t2260 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2260.
    DATA t2261 TYPE REF TO zcl_lnt_string_type.
    DATA t2262 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2262.
    t2261 = zcl_lnt_string_type=>get_db65( i_input_967e = t2262 ).
    DATA t2263 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2263.
    t2190 = NEW zcl_lnt_ibuiltin_method( i_counter = t2191 i_mandatory = t2198 i_optional = t2213 i_release_7928 = t2253 i_predicate = t2260 i_return_fa63 = t2261 i_cache = t2263 ).
    t2187 = t2188->set( p0 = t2189 p1 = t2190 ).
    DATA t2264 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2264.
    DATA(t2265) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2266) = |RESCALE|.
    DATA t2267 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2267.
    DATA(t2268) = VALUE int8( ).
    DATA(t2269) = VALUE int8( ).
    DATA(t2270) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2270 = zcl_lnt_built_in=>counter.
    t2269 = t2270.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2271 TYPE int8.
    DATA(t2272) = t2269.
    DATA(t2273) = CONV int8( 1 ).
    t2271 = t2272 + t2273.
    IF t2271 < range_int8_bound_min OR t2271 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2271.
    DATA(t2274) = t2269.
    t2268 = t2274.
    DATA t2275 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2275.
    DATA(t2276) = abap_true.
    IF t2276 = abap_true.
      DATA t2277 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2278 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2279) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2278 = t2279.
      DATA t2280 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2281) = CAST zlnt_runtime_map__41b3bb94df3d( t2278 ).
      DATA(t2282) = |val|.
      DATA t2283 TYPE REF TO zcl_lnt_float_type.
      DATA t2284 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2284.
      t2283 = NEW zcl_lnt_float_type( i_input_967e = t2284 ).
      t2280 = t2281->set( p0 = t2282 p1 = t2283 ).
      DATA(t2285) = CAST zlnt_runtime_map__41b3bb94df3d( t2278 ).
      t2277 = t2285.
      t2275 = t2277.
    ELSE.
      DATA t2286 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2286.
      t2275 = t2286.
    ENDIF.
    DATA t2287 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2287.
    DATA(t2288) = abap_true.
    IF t2288 = abap_true.
      DATA t2289 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2290 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2291) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2290 = t2291.
      DATA t2292 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2293) = CAST zlnt_runtime_map__41b3bb94df3d( t2290 ).
      DATA(t2294) = |dec|.
      DATA t2295 TYPE REF TO zcl_lnt_integer_type.
      DATA t2296 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2296.
      t2295 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2296 ).
      t2292 = t2293->set( p0 = t2294 p1 = t2295 ).
      DATA t2297 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2298) = CAST zlnt_runtime_map__41b3bb94df3d( t2290 ).
      DATA(t2299) = |prec|.
      DATA t2300 TYPE REF TO zcl_lnt_integer_type.
      DATA t2301 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2301.
      t2300 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2301 ).
      t2297 = t2298->set( p0 = t2299 p1 = t2300 ).
      DATA t2302 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2303) = CAST zlnt_runtime_map__41b3bb94df3d( t2290 ).
      DATA(t2304) = |mode|.
      DATA t2305 TYPE REF TO zcl_lnt_integer_type.
      DATA t2306 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2306.
      t2305 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2306 ).
      t2302 = t2303->set( p0 = t2304 p1 = t2305 ).
      DATA(t2307) = CAST zlnt_runtime_map__41b3bb94df3d( t2290 ).
      t2289 = t2307.
      t2287 = t2289.
    ELSE.
      DATA t2308 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2308.
      t2287 = t2308.
    ENDIF.
    DATA t2309 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2309.
    DATA(t2310) = abap_true.
    IF t2310 = abap_true.
      DATA t2311 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2311.
      DATA t2312 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2312.
      DATA t2313 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2313.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2313 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2314) = |v702|.
      t2312 = t2313->get( p0 = t2314 ).
      t2311 = t2312.
      t2309 = t2311.
    ELSE.
      DATA t2315 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2315.
      t2309 = t2315.
    ENDIF.
    DATA t2316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2316.
    DATA t2317 TYPE REF TO zcl_lnt_float_type.
    DATA t2318 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2318.
    t2317 = NEW zcl_lnt_float_type( i_input_967e = t2318 ).
    DATA t2319 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2319.
    t2267 = NEW zcl_lnt_ibuiltin_method( i_counter = t2268 i_mandatory = t2275 i_optional = t2287 i_release_7928 = t2309 i_predicate = t2316 i_return_fa63 = t2317 i_cache = t2319 ).
    t2264 = t2265->set( p0 = t2266 p1 = t2267 ).
    DATA t2320 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2320.
    DATA(t2321) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2322) = |REVERSE|.
    DATA t2323 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2323.
    DATA(t2324) = VALUE int8( ).
    DATA(t2325) = VALUE int8( ).
    DATA(t2326) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2326 = zcl_lnt_built_in=>counter.
    t2325 = t2326.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2327 TYPE int8.
    DATA(t2328) = t2325.
    DATA(t2329) = CONV int8( 1 ).
    t2327 = t2328 + t2329.
    IF t2327 < range_int8_bound_min OR t2327 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2327.
    DATA(t2330) = t2325.
    t2324 = t2330.
    DATA t2331 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2331.
    DATA(t2332) = abap_true.
    IF t2332 = abap_true.
      DATA t2333 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2334 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2335) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2334 = t2335.
      DATA t2336 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2337) = CAST zlnt_runtime_map__41b3bb94df3d( t2334 ).
      DATA(t2338) = |val|.
      DATA(t2339) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2336 = t2337->set( p0 = t2338 p1 = t2339 ).
      DATA(t2340) = CAST zlnt_runtime_map__41b3bb94df3d( t2334 ).
      t2333 = t2340.
      t2331 = t2333.
    ELSE.
      DATA t2341 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2341.
      t2331 = t2341.
    ENDIF.
    DATA t2342 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2342.
    DATA t2343 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2343.
    DATA(t2344) = abap_true.
    IF t2344 = abap_true.
      DATA t2345 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2345.
      DATA t2346 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2346.
      DATA t2347 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2347.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2347 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2348) = |v702|.
      t2346 = t2347->get( p0 = t2348 ).
      t2345 = t2346.
      t2343 = t2345.
    ELSE.
      DATA t2349 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2349.
      t2343 = t2349.
    ENDIF.
    DATA t2350 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2350.
    DATA t2351 TYPE REF TO zcl_lnt_string_type.
    DATA t2352 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2352.
    t2351 = zcl_lnt_string_type=>get_db65( i_input_967e = t2352 ).
    DATA t2353 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2353.
    t2323 = NEW zcl_lnt_ibuiltin_method( i_counter = t2324 i_mandatory = t2331 i_optional = t2342 i_release_7928 = t2343 i_predicate = t2350 i_return_fa63 = t2351 i_cache = t2353 ).
    t2320 = t2321->set( p0 = t2322 p1 = t2323 ).
    DATA t2354 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2354.
    DATA(t2355) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2356) = |ROUND|.
    DATA t2357 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2357.
    DATA(t2358) = VALUE int8( ).
    DATA(t2359) = VALUE int8( ).
    DATA(t2360) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2360 = zcl_lnt_built_in=>counter.
    t2359 = t2360.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2361 TYPE int8.
    DATA(t2362) = t2359.
    DATA(t2363) = CONV int8( 1 ).
    t2361 = t2362 + t2363.
    IF t2361 < range_int8_bound_min OR t2361 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2361.
    DATA(t2364) = t2359.
    t2358 = t2364.
    DATA t2365 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2365.
    DATA(t2366) = abap_true.
    IF t2366 = abap_true.
      DATA t2367 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2368 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2369) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2368 = t2369.
      DATA t2370 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2371) = CAST zlnt_runtime_map__41b3bb94df3d( t2368 ).
      DATA(t2372) = |val|.
      DATA t2373 TYPE REF TO zcl_lnt_float_type.
      DATA t2374 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2374.
      t2373 = NEW zcl_lnt_float_type( i_input_967e = t2374 ).
      t2370 = t2371->set( p0 = t2372 p1 = t2373 ).
      DATA(t2375) = CAST zlnt_runtime_map__41b3bb94df3d( t2368 ).
      t2367 = t2375.
      t2365 = t2367.
    ELSE.
      DATA t2376 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2376.
      t2365 = t2376.
    ENDIF.
    DATA t2377 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2377.
    DATA(t2378) = abap_true.
    IF t2378 = abap_true.
      DATA t2379 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2380 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2381) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2380 = t2381.
      DATA t2382 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2383) = CAST zlnt_runtime_map__41b3bb94df3d( t2380 ).
      DATA(t2384) = |dec|.
      DATA t2385 TYPE REF TO zcl_lnt_integer_type.
      DATA t2386 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2386.
      t2385 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2386 ).
      t2382 = t2383->set( p0 = t2384 p1 = t2385 ).
      DATA t2387 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2388) = CAST zlnt_runtime_map__41b3bb94df3d( t2380 ).
      DATA(t2389) = |prec|.
      DATA t2390 TYPE REF TO zcl_lnt_integer_type.
      DATA t2391 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2391.
      t2390 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2391 ).
      t2387 = t2388->set( p0 = t2389 p1 = t2390 ).
      DATA t2392 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2393) = CAST zlnt_runtime_map__41b3bb94df3d( t2380 ).
      DATA(t2394) = |mode|.
      DATA t2395 TYPE REF TO zcl_lnt_integer_type.
      DATA t2396 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2396.
      t2395 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2396 ).
      t2392 = t2393->set( p0 = t2394 p1 = t2395 ).
      DATA(t2397) = CAST zlnt_runtime_map__41b3bb94df3d( t2380 ).
      t2379 = t2397.
      t2377 = t2379.
    ELSE.
      DATA t2398 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2398.
      t2377 = t2398.
    ENDIF.
    DATA t2399 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2399.
    DATA(t2400) = abap_true.
    IF t2400 = abap_true.
      DATA t2401 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2401.
      DATA t2402 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2402.
      DATA t2403 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2403.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2403 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2404) = |v702|.
      t2402 = t2403->get( p0 = t2404 ).
      t2401 = t2402.
      t2399 = t2401.
    ELSE.
      DATA t2405 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2405.
      t2399 = t2405.
    ENDIF.
    DATA t2406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2406.
    DATA t2407 TYPE REF TO zcl_lnt_integer_type.
    DATA t2408 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2408.
    t2407 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2408 ).
    DATA t2409 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2409.
    t2357 = NEW zcl_lnt_ibuiltin_method( i_counter = t2358 i_mandatory = t2365 i_optional = t2377 i_release_7928 = t2399 i_predicate = t2406 i_return_fa63 = t2407 i_cache = t2409 ).
    t2354 = t2355->set( p0 = t2356 p1 = t2357 ).
    DATA t2410 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2410.
    DATA(t2411) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2412) = |SEGMENT|.
    DATA t2413 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2413.
    DATA(t2414) = VALUE int8( ).
    DATA(t2415) = VALUE int8( ).
    DATA(t2416) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2416 = zcl_lnt_built_in=>counter.
    t2415 = t2416.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2417 TYPE int8.
    DATA(t2418) = t2415.
    DATA(t2419) = CONV int8( 1 ).
    t2417 = t2418 + t2419.
    IF t2417 < range_int8_bound_min OR t2417 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2417.
    DATA(t2420) = t2415.
    t2414 = t2420.
    DATA t2421 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2421.
    DATA(t2422) = abap_true.
    IF t2422 = abap_true.
      DATA t2423 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2425) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2424 = t2425.
      DATA t2426 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2427) = CAST zlnt_runtime_map__41b3bb94df3d( t2424 ).
      DATA(t2428) = |val|.
      DATA(t2429) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2426 = t2427->set( p0 = t2428 p1 = t2429 ).
      DATA t2430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2431) = CAST zlnt_runtime_map__41b3bb94df3d( t2424 ).
      DATA(t2432) = |index|.
      DATA t2433 TYPE REF TO zcl_lnt_integer_type.
      DATA t2434 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2434.
      t2433 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2434 ).
      t2430 = t2431->set( p0 = t2432 p1 = t2433 ).
      DATA(t2435) = CAST zlnt_runtime_map__41b3bb94df3d( t2424 ).
      t2423 = t2435.
      t2421 = t2423.
    ELSE.
      DATA t2436 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2436.
      t2421 = t2436.
    ENDIF.
    DATA t2437 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2437.
    DATA(t2438) = abap_true.
    IF t2438 = abap_true.
      DATA t2439 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2441) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2440 = t2441.
      DATA t2442 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2443) = CAST zlnt_runtime_map__41b3bb94df3d( t2440 ).
      DATA(t2444) = |sep|.
      DATA(t2445) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2442 = t2443->set( p0 = t2444 p1 = t2445 ).
      DATA t2446 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2447) = CAST zlnt_runtime_map__41b3bb94df3d( t2440 ).
      DATA(t2448) = |space|.
      DATA(t2449) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2446 = t2447->set( p0 = t2448 p1 = t2449 ).
      DATA(t2450) = CAST zlnt_runtime_map__41b3bb94df3d( t2440 ).
      t2439 = t2450.
      t2437 = t2439.
    ELSE.
      DATA t2451 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2451.
      t2437 = t2451.
    ENDIF.
    DATA t2452 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2452.
    DATA(t2453) = abap_true.
    IF t2453 = abap_true.
      DATA t2454 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2454.
      DATA t2455 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2455.
      DATA t2456 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2456.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2456 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2457) = |v702|.
      t2455 = t2456->get( p0 = t2457 ).
      t2454 = t2455.
      t2452 = t2454.
    ELSE.
      DATA t2458 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2458.
      t2452 = t2458.
    ENDIF.
    DATA t2459 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2459.
    DATA t2460 TYPE REF TO zcl_lnt_string_type.
    DATA t2461 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2461.
    t2460 = zcl_lnt_string_type=>get_db65( i_input_967e = t2461 ).
    DATA t2462 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2462.
    t2413 = NEW zcl_lnt_ibuiltin_method( i_counter = t2414 i_mandatory = t2421 i_optional = t2437 i_release_7928 = t2452 i_predicate = t2459 i_return_fa63 = t2460 i_cache = t2462 ).
    t2410 = t2411->set( p0 = t2412 p1 = t2413 ).
    DATA t2463 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2463.
    DATA(t2464) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2465) = |SHIFT_LEFT|.
    DATA t2466 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2466.
    DATA(t2467) = VALUE int8( ).
    DATA(t2468) = VALUE int8( ).
    DATA(t2469) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2469 = zcl_lnt_built_in=>counter.
    t2468 = t2469.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2470 TYPE int8.
    DATA(t2471) = t2468.
    DATA(t2472) = CONV int8( 1 ).
    t2470 = t2471 + t2472.
    IF t2470 < range_int8_bound_min OR t2470 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2470.
    DATA(t2473) = t2468.
    t2467 = t2473.
    DATA t2474 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2474.
    DATA(t2475) = abap_true.
    IF t2475 = abap_true.
      DATA t2476 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2477 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2478) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2477 = t2478.
      DATA t2479 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2480) = CAST zlnt_runtime_map__41b3bb94df3d( t2477 ).
      DATA(t2481) = |val|.
      DATA(t2482) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2479 = t2480->set( p0 = t2481 p1 = t2482 ).
      DATA(t2483) = CAST zlnt_runtime_map__41b3bb94df3d( t2477 ).
      t2476 = t2483.
      t2474 = t2476.
    ELSE.
      DATA t2484 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2484.
      t2474 = t2484.
    ENDIF.
    DATA t2485 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2485.
    DATA(t2486) = abap_true.
    IF t2486 = abap_true.
      DATA t2487 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2488 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2489) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2488 = t2489.
      DATA t2490 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2491) = CAST zlnt_runtime_map__41b3bb94df3d( t2488 ).
      DATA(t2492) = |sub|.
      DATA(t2493) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2490 = t2491->set( p0 = t2492 p1 = t2493 ).
      DATA t2494 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2495) = CAST zlnt_runtime_map__41b3bb94df3d( t2488 ).
      DATA(t2496) = |places|.
      DATA t2497 TYPE REF TO zcl_lnt_integer_type.
      DATA t2498 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2498.
      t2497 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2498 ).
      t2494 = t2495->set( p0 = t2496 p1 = t2497 ).
      DATA t2499 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2500) = CAST zlnt_runtime_map__41b3bb94df3d( t2488 ).
      DATA(t2501) = |circular|.
      DATA t2502 TYPE REF TO zcl_lnt_integer_type.
      DATA t2503 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2503.
      t2502 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2503 ).
      t2499 = t2500->set( p0 = t2501 p1 = t2502 ).
      DATA(t2504) = CAST zlnt_runtime_map__41b3bb94df3d( t2488 ).
      t2487 = t2504.
      t2485 = t2487.
    ELSE.
      DATA t2505 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2505.
      t2485 = t2505.
    ENDIF.
    DATA t2506 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2506.
    DATA(t2507) = abap_true.
    IF t2507 = abap_true.
      DATA t2508 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2508.
      DATA t2509 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2509.
      DATA t2510 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2510.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2510 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2511) = |v702|.
      t2509 = t2510->get( p0 = t2511 ).
      t2508 = t2509.
      t2506 = t2508.
    ELSE.
      DATA t2512 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2512.
      t2506 = t2512.
    ENDIF.
    DATA t2513 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2513.
    DATA t2514 TYPE REF TO zcl_lnt_string_type.
    DATA t2515 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2515.
    t2514 = zcl_lnt_string_type=>get_db65( i_input_967e = t2515 ).
    DATA t2516 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2516.
    t2466 = NEW zcl_lnt_ibuiltin_method( i_counter = t2467 i_mandatory = t2474 i_optional = t2485 i_release_7928 = t2506 i_predicate = t2513 i_return_fa63 = t2514 i_cache = t2516 ).
    t2463 = t2464->set( p0 = t2465 p1 = t2466 ).
    DATA t2517 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2517.
    DATA(t2518) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2519) = |SHIFT_RIGHT|.
    DATA t2520 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2520.
    DATA(t2521) = VALUE int8( ).
    DATA(t2522) = VALUE int8( ).
    DATA(t2523) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2523 = zcl_lnt_built_in=>counter.
    t2522 = t2523.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2524 TYPE int8.
    DATA(t2525) = t2522.
    DATA(t2526) = CONV int8( 1 ).
    t2524 = t2525 + t2526.
    IF t2524 < range_int8_bound_min OR t2524 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2524.
    DATA(t2527) = t2522.
    t2521 = t2527.
    DATA t2528 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2528.
    DATA(t2529) = abap_true.
    IF t2529 = abap_true.
      DATA t2530 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2531 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2532) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2531 = t2532.
      DATA t2533 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2534) = CAST zlnt_runtime_map__41b3bb94df3d( t2531 ).
      DATA(t2535) = |val|.
      DATA(t2536) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2533 = t2534->set( p0 = t2535 p1 = t2536 ).
      DATA(t2537) = CAST zlnt_runtime_map__41b3bb94df3d( t2531 ).
      t2530 = t2537.
      t2528 = t2530.
    ELSE.
      DATA t2538 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2538.
      t2528 = t2538.
    ENDIF.
    DATA t2539 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2539.
    DATA(t2540) = abap_true.
    IF t2540 = abap_true.
      DATA t2541 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2542 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2543) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2542 = t2543.
      DATA t2544 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2545) = CAST zlnt_runtime_map__41b3bb94df3d( t2542 ).
      DATA(t2546) = |sub|.
      DATA(t2547) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2544 = t2545->set( p0 = t2546 p1 = t2547 ).
      DATA t2548 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2549) = CAST zlnt_runtime_map__41b3bb94df3d( t2542 ).
      DATA(t2550) = |places|.
      DATA t2551 TYPE REF TO zcl_lnt_integer_type.
      DATA t2552 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2552.
      t2551 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2552 ).
      t2548 = t2549->set( p0 = t2550 p1 = t2551 ).
      DATA t2553 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2554) = CAST zlnt_runtime_map__41b3bb94df3d( t2542 ).
      DATA(t2555) = |circular|.
      DATA t2556 TYPE REF TO zcl_lnt_integer_type.
      DATA t2557 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2557.
      t2556 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2557 ).
      t2553 = t2554->set( p0 = t2555 p1 = t2556 ).
      DATA(t2558) = CAST zlnt_runtime_map__41b3bb94df3d( t2542 ).
      t2541 = t2558.
      t2539 = t2541.
    ELSE.
      DATA t2559 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2559.
      t2539 = t2559.
    ENDIF.
    DATA t2560 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2560.
    DATA(t2561) = abap_true.
    IF t2561 = abap_true.
      DATA t2562 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2562.
      DATA t2563 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2563.
      DATA t2564 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2564.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2564 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2565) = |v702|.
      t2563 = t2564->get( p0 = t2565 ).
      t2562 = t2563.
      t2560 = t2562.
    ELSE.
      DATA t2566 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2566.
      t2560 = t2566.
    ENDIF.
    DATA t2567 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2567.
    DATA t2568 TYPE REF TO zcl_lnt_string_type.
    DATA t2569 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2569.
    t2568 = zcl_lnt_string_type=>get_db65( i_input_967e = t2569 ).
    DATA t2570 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2570.
    t2520 = NEW zcl_lnt_ibuiltin_method( i_counter = t2521 i_mandatory = t2528 i_optional = t2539 i_release_7928 = t2560 i_predicate = t2567 i_return_fa63 = t2568 i_cache = t2570 ).
    t2517 = t2518->set( p0 = t2519 p1 = t2520 ).
    DATA t2571 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2571.
    DATA(t2572) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2573) = |SIGN|.
    DATA t2574 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2574.
    DATA(t2575) = VALUE int8( ).
    DATA(t2576) = VALUE int8( ).
    DATA(t2577) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2577 = zcl_lnt_built_in=>counter.
    t2576 = t2577.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2578 TYPE int8.
    DATA(t2579) = t2576.
    DATA(t2580) = CONV int8( 1 ).
    t2578 = t2579 + t2580.
    IF t2578 < range_int8_bound_min OR t2578 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2578.
    DATA(t2581) = t2576.
    t2575 = t2581.
    DATA t2582 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2582.
    DATA(t2583) = abap_true.
    IF t2583 = abap_true.
      DATA t2584 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2585 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2586) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2585 = t2586.
      DATA t2587 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2588) = CAST zlnt_runtime_map__41b3bb94df3d( t2585 ).
      DATA(t2589) = |val|.
      DATA t2590 TYPE REF TO zcl_lnt_float_type.
      DATA t2591 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2591.
      t2590 = NEW zcl_lnt_float_type( i_input_967e = t2591 ).
      t2587 = t2588->set( p0 = t2589 p1 = t2590 ).
      DATA(t2592) = CAST zlnt_runtime_map__41b3bb94df3d( t2585 ).
      t2584 = t2592.
      t2582 = t2584.
    ELSE.
      DATA t2593 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2593.
      t2582 = t2593.
    ENDIF.
    DATA t2594 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2594.
    DATA t2595 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2595.
    DATA t2596 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2596.
    DATA t2597 TYPE REF TO zcl_lnt_integer_type.
    DATA t2598 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2598.
    t2597 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2598 ).
    DATA t2599 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2599.
    t2574 = NEW zcl_lnt_ibuiltin_method( i_counter = t2575 i_mandatory = t2582 i_optional = t2594 i_release_7928 = t2595 i_predicate = t2596 i_return_fa63 = t2597 i_cache = t2599 ).
    t2571 = t2572->set( p0 = t2573 p1 = t2574 ).
    DATA t2600 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2600.
    DATA(t2601) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2602) = |SIN|.
    DATA t2603 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2603.
    DATA(t2604) = VALUE int8( ).
    DATA(t2605) = VALUE int8( ).
    DATA(t2606) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2606 = zcl_lnt_built_in=>counter.
    t2605 = t2606.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2607 TYPE int8.
    DATA(t2608) = t2605.
    DATA(t2609) = CONV int8( 1 ).
    t2607 = t2608 + t2609.
    IF t2607 < range_int8_bound_min OR t2607 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2607.
    DATA(t2610) = t2605.
    t2604 = t2610.
    DATA t2611 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2611.
    DATA(t2612) = abap_true.
    IF t2612 = abap_true.
      DATA t2613 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2614 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2615) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2614 = t2615.
      DATA t2616 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2617) = CAST zlnt_runtime_map__41b3bb94df3d( t2614 ).
      DATA(t2618) = |val|.
      DATA t2619 TYPE REF TO zcl_lnt_float_type.
      DATA t2620 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2620.
      t2619 = NEW zcl_lnt_float_type( i_input_967e = t2620 ).
      t2616 = t2617->set( p0 = t2618 p1 = t2619 ).
      DATA(t2621) = CAST zlnt_runtime_map__41b3bb94df3d( t2614 ).
      t2613 = t2621.
      t2611 = t2613.
    ELSE.
      DATA t2622 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2622.
      t2611 = t2622.
    ENDIF.
    DATA t2623 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2623.
    DATA t2624 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2624.
    DATA t2625 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2625.
    DATA t2626 TYPE REF TO zcl_lnt_float_type.
    DATA t2627 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2627.
    t2626 = NEW zcl_lnt_float_type( i_input_967e = t2627 ).
    DATA t2628 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2628.
    t2603 = NEW zcl_lnt_ibuiltin_method( i_counter = t2604 i_mandatory = t2611 i_optional = t2623 i_release_7928 = t2624 i_predicate = t2625 i_return_fa63 = t2626 i_cache = t2628 ).
    t2600 = t2601->set( p0 = t2602 p1 = t2603 ).
    DATA t2629 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2629.
    DATA(t2630) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2631) = |SINH|.
    DATA t2632 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2632.
    DATA(t2633) = VALUE int8( ).
    DATA(t2634) = VALUE int8( ).
    DATA(t2635) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2635 = zcl_lnt_built_in=>counter.
    t2634 = t2635.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2636 TYPE int8.
    DATA(t2637) = t2634.
    DATA(t2638) = CONV int8( 1 ).
    t2636 = t2637 + t2638.
    IF t2636 < range_int8_bound_min OR t2636 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2636.
    DATA(t2639) = t2634.
    t2633 = t2639.
    DATA t2640 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2640.
    DATA(t2641) = abap_true.
    IF t2641 = abap_true.
      DATA t2642 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2643 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2644) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2643 = t2644.
      DATA t2645 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2646) = CAST zlnt_runtime_map__41b3bb94df3d( t2643 ).
      DATA(t2647) = |val|.
      DATA t2648 TYPE REF TO zcl_lnt_float_type.
      DATA t2649 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2649.
      t2648 = NEW zcl_lnt_float_type( i_input_967e = t2649 ).
      t2645 = t2646->set( p0 = t2647 p1 = t2648 ).
      DATA(t2650) = CAST zlnt_runtime_map__41b3bb94df3d( t2643 ).
      t2642 = t2650.
      t2640 = t2642.
    ELSE.
      DATA t2651 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2651.
      t2640 = t2651.
    ENDIF.
    DATA t2652 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2652.
    DATA t2653 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2653.
    DATA t2654 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2654.
    DATA t2655 TYPE REF TO zcl_lnt_float_type.
    DATA t2656 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2656.
    t2655 = NEW zcl_lnt_float_type( i_input_967e = t2656 ).
    DATA t2657 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2657.
    t2632 = NEW zcl_lnt_ibuiltin_method( i_counter = t2633 i_mandatory = t2640 i_optional = t2652 i_release_7928 = t2653 i_predicate = t2654 i_return_fa63 = t2655 i_cache = t2657 ).
    t2629 = t2630->set( p0 = t2631 p1 = t2632 ).
    DATA t2658 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2658.
    DATA(t2659) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2660) = |SQRT|.
    DATA t2661 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2661.
    DATA(t2662) = VALUE int8( ).
    DATA(t2663) = VALUE int8( ).
    DATA(t2664) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2664 = zcl_lnt_built_in=>counter.
    t2663 = t2664.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2665 TYPE int8.
    DATA(t2666) = t2663.
    DATA(t2667) = CONV int8( 1 ).
    t2665 = t2666 + t2667.
    IF t2665 < range_int8_bound_min OR t2665 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2665.
    DATA(t2668) = t2663.
    t2662 = t2668.
    DATA t2669 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2669.
    DATA(t2670) = abap_true.
    IF t2670 = abap_true.
      DATA t2671 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2672 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2673) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2672 = t2673.
      DATA t2674 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2675) = CAST zlnt_runtime_map__41b3bb94df3d( t2672 ).
      DATA(t2676) = |val|.
      DATA t2677 TYPE REF TO zcl_lnt_float_type.
      DATA t2678 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2678.
      t2677 = NEW zcl_lnt_float_type( i_input_967e = t2678 ).
      t2674 = t2675->set( p0 = t2676 p1 = t2677 ).
      DATA(t2679) = CAST zlnt_runtime_map__41b3bb94df3d( t2672 ).
      t2671 = t2679.
      t2669 = t2671.
    ELSE.
      DATA t2680 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2680.
      t2669 = t2680.
    ENDIF.
    DATA t2681 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2681.
    DATA t2682 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2682.
    DATA t2683 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2683.
    DATA t2684 TYPE REF TO zcl_lnt_float_type.
    DATA t2685 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2685.
    t2684 = NEW zcl_lnt_float_type( i_input_967e = t2685 ).
    DATA t2686 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2686.
    t2661 = NEW zcl_lnt_ibuiltin_method( i_counter = t2662 i_mandatory = t2669 i_optional = t2681 i_release_7928 = t2682 i_predicate = t2683 i_return_fa63 = t2684 i_cache = t2686 ).
    t2658 = t2659->set( p0 = t2660 p1 = t2661 ).
    DATA t2687 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2687.
    DATA(t2688) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2689) = |STRLEN|.
    DATA t2690 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2690.
    DATA(t2691) = VALUE int8( ).
    DATA(t2692) = VALUE int8( ).
    DATA(t2693) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2693 = zcl_lnt_built_in=>counter.
    t2692 = t2693.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2694 TYPE int8.
    DATA(t2695) = t2692.
    DATA(t2696) = CONV int8( 1 ).
    t2694 = t2695 + t2696.
    IF t2694 < range_int8_bound_min OR t2694 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2694.
    DATA(t2697) = t2692.
    t2691 = t2697.
    DATA t2698 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2698.
    DATA(t2699) = abap_true.
    IF t2699 = abap_true.
      DATA t2700 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2701 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2702) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2701 = t2702.
      DATA t2703 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2704) = CAST zlnt_runtime_map__41b3bb94df3d( t2701 ).
      DATA(t2705) = |val|.
      DATA(t2706) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2703 = t2704->set( p0 = t2705 p1 = t2706 ).
      DATA(t2707) = CAST zlnt_runtime_map__41b3bb94df3d( t2701 ).
      t2700 = t2707.
      t2698 = t2700.
    ELSE.
      DATA t2708 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2708.
      t2698 = t2708.
    ENDIF.
    DATA t2709 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2709.
    DATA t2710 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2710.
    DATA t2711 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2711.
    DATA t2712 TYPE REF TO zcl_lnt_integer_type.
    DATA t2713 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2713.
    t2712 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2713 ).
    DATA t2714 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2714.
    t2690 = NEW zcl_lnt_ibuiltin_method( i_counter = t2691 i_mandatory = t2698 i_optional = t2709 i_release_7928 = t2710 i_predicate = t2711 i_return_fa63 = t2712 i_cache = t2714 ).
    t2687 = t2688->set( p0 = t2689 p1 = t2690 ).
    DATA t2715 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2715.
    DATA(t2716) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2717) = |SUBSTRING|.
    DATA t2718 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2718.
    DATA(t2719) = VALUE int8( ).
    DATA(t2720) = VALUE int8( ).
    DATA(t2721) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2721 = zcl_lnt_built_in=>counter.
    t2720 = t2721.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2722 TYPE int8.
    DATA(t2723) = t2720.
    DATA(t2724) = CONV int8( 1 ).
    t2722 = t2723 + t2724.
    IF t2722 < range_int8_bound_min OR t2722 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2722.
    DATA(t2725) = t2720.
    t2719 = t2725.
    DATA t2726 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2726.
    DATA(t2727) = abap_true.
    IF t2727 = abap_true.
      DATA t2728 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2729 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2730) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2729 = t2730.
      DATA t2731 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2732) = CAST zlnt_runtime_map__41b3bb94df3d( t2729 ).
      DATA(t2733) = |val|.
      DATA(t2734) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2731 = t2732->set( p0 = t2733 p1 = t2734 ).
      DATA(t2735) = CAST zlnt_runtime_map__41b3bb94df3d( t2729 ).
      t2728 = t2735.
      t2726 = t2728.
    ELSE.
      DATA t2736 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2736.
      t2726 = t2736.
    ENDIF.
    DATA t2737 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2737.
    DATA(t2738) = abap_true.
    IF t2738 = abap_true.
      DATA t2739 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2740 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2741) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2740 = t2741.
      DATA t2742 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2743) = CAST zlnt_runtime_map__41b3bb94df3d( t2740 ).
      DATA(t2744) = |off|.
      DATA t2745 TYPE REF TO zcl_lnt_integer_type.
      DATA t2746 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2746.
      t2745 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2746 ).
      t2742 = t2743->set( p0 = t2744 p1 = t2745 ).
      DATA t2747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2748) = CAST zlnt_runtime_map__41b3bb94df3d( t2740 ).
      DATA(t2749) = |len|.
      DATA t2750 TYPE REF TO zcl_lnt_integer_type.
      DATA t2751 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2751.
      t2750 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2751 ).
      t2747 = t2748->set( p0 = t2749 p1 = t2750 ).
      DATA(t2752) = CAST zlnt_runtime_map__41b3bb94df3d( t2740 ).
      t2739 = t2752.
      t2737 = t2739.
    ELSE.
      DATA t2753 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2753.
      t2737 = t2753.
    ENDIF.
    DATA t2754 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2754.
    DATA(t2755) = abap_true.
    IF t2755 = abap_true.
      DATA t2756 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2756.
      DATA t2757 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2757.
      DATA t2758 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2758.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2758 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2759) = |v702|.
      t2757 = t2758->get( p0 = t2759 ).
      t2756 = t2757.
      t2754 = t2756.
    ELSE.
      DATA t2760 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2760.
      t2754 = t2760.
    ENDIF.
    DATA t2761 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2761.
    DATA t2762 TYPE REF TO zcl_lnt_string_type.
    DATA t2763 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2763.
    t2762 = zcl_lnt_string_type=>get_db65( i_input_967e = t2763 ).
    DATA t2764 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2764.
    t2718 = NEW zcl_lnt_ibuiltin_method( i_counter = t2719 i_mandatory = t2726 i_optional = t2737 i_release_7928 = t2754 i_predicate = t2761 i_return_fa63 = t2762 i_cache = t2764 ).
    t2715 = t2716->set( p0 = t2717 p1 = t2718 ).
    DATA t2765 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2765.
    DATA(t2766) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2767) = |SUBSTRING_AFTER|.
    DATA t2768 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2768.
    DATA(t2769) = VALUE int8( ).
    DATA(t2770) = VALUE int8( ).
    DATA(t2771) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2771 = zcl_lnt_built_in=>counter.
    t2770 = t2771.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2772 TYPE int8.
    DATA(t2773) = t2770.
    DATA(t2774) = CONV int8( 1 ).
    t2772 = t2773 + t2774.
    IF t2772 < range_int8_bound_min OR t2772 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2772.
    DATA(t2775) = t2770.
    t2769 = t2775.
    DATA t2776 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2776.
    DATA(t2777) = abap_true.
    IF t2777 = abap_true.
      DATA t2778 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2779 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2780) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2779 = t2780.
      DATA t2781 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2782) = CAST zlnt_runtime_map__41b3bb94df3d( t2779 ).
      DATA(t2783) = |val|.
      DATA(t2784) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2781 = t2782->set( p0 = t2783 p1 = t2784 ).
      DATA(t2785) = CAST zlnt_runtime_map__41b3bb94df3d( t2779 ).
      t2778 = t2785.
      t2776 = t2778.
    ELSE.
      DATA t2786 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2786.
      t2776 = t2786.
    ENDIF.
    DATA t2787 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2787.
    DATA(t2788) = abap_true.
    IF t2788 = abap_true.
      DATA t2789 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2790 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2791) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2790 = t2791.
      DATA t2792 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2793) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2794) = |sub|.
      DATA(t2795) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2792 = t2793->set( p0 = t2794 p1 = t2795 ).
      DATA t2796 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2797) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2798) = |regex|.
      DATA(t2799) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2796 = t2797->set( p0 = t2798 p1 = t2799 ).
      DATA t2800 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2801) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2802) = |pcre|.
      DATA(t2803) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2800 = t2801->set( p0 = t2802 p1 = t2803 ).
      DATA t2804 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2805) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2806) = |case|.
      DATA t2807 TYPE REF TO zcl_lnt_character_type.
      DATA(t2808) = CONV int8( 1 ).
      DATA t2809 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2809.
      t2807 = NEW zcl_lnt_character_type( i_length = t2808 i_extra = t2809 ).
      t2804 = t2805->set( p0 = t2806 p1 = t2807 ).
      DATA t2810 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2811) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2812) = |len|.
      DATA t2813 TYPE REF TO zcl_lnt_integer_type.
      DATA t2814 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2814.
      t2813 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2814 ).
      t2810 = t2811->set( p0 = t2812 p1 = t2813 ).
      DATA t2815 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2816) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      DATA(t2817) = |occ|.
      DATA t2818 TYPE REF TO zcl_lnt_integer_type.
      DATA t2819 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2819.
      t2818 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2819 ).
      t2815 = t2816->set( p0 = t2817 p1 = t2818 ).
      DATA(t2820) = CAST zlnt_runtime_map__41b3bb94df3d( t2790 ).
      t2789 = t2820.
      t2787 = t2789.
    ELSE.
      DATA t2821 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2821.
      t2787 = t2821.
    ENDIF.
    DATA t2822 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2822.
    DATA(t2823) = abap_true.
    IF t2823 = abap_true.
      DATA t2824 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2824.
      DATA t2825 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2825.
      DATA t2826 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2826.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2826 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2827) = |v702|.
      t2825 = t2826->get( p0 = t2827 ).
      t2824 = t2825.
      t2822 = t2824.
    ELSE.
      DATA t2828 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2828.
      t2822 = t2828.
    ENDIF.
    DATA t2829 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2829.
    DATA t2830 TYPE REF TO zcl_lnt_string_type.
    DATA t2831 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2831.
    t2830 = zcl_lnt_string_type=>get_db65( i_input_967e = t2831 ).
    DATA t2832 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2832.
    t2768 = NEW zcl_lnt_ibuiltin_method( i_counter = t2769 i_mandatory = t2776 i_optional = t2787 i_release_7928 = t2822 i_predicate = t2829 i_return_fa63 = t2830 i_cache = t2832 ).
    t2765 = t2766->set( p0 = t2767 p1 = t2768 ).
    DATA t2833 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2833.
    DATA(t2834) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2835) = |SUBSTRING_BEFORE|.
    DATA t2836 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2836.
    DATA(t2837) = VALUE int8( ).
    DATA(t2838) = VALUE int8( ).
    DATA(t2839) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2839 = zcl_lnt_built_in=>counter.
    t2838 = t2839.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2840 TYPE int8.
    DATA(t2841) = t2838.
    DATA(t2842) = CONV int8( 1 ).
    t2840 = t2841 + t2842.
    IF t2840 < range_int8_bound_min OR t2840 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2840.
    DATA(t2843) = t2838.
    t2837 = t2843.
    DATA t2844 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2844.
    DATA(t2845) = abap_true.
    IF t2845 = abap_true.
      DATA t2846 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2847 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2848) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2847 = t2848.
      DATA t2849 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2850) = CAST zlnt_runtime_map__41b3bb94df3d( t2847 ).
      DATA(t2851) = |val|.
      DATA(t2852) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2849 = t2850->set( p0 = t2851 p1 = t2852 ).
      DATA(t2853) = CAST zlnt_runtime_map__41b3bb94df3d( t2847 ).
      t2846 = t2853.
      t2844 = t2846.
    ELSE.
      DATA t2854 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2854.
      t2844 = t2854.
    ENDIF.
    DATA t2855 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2855.
    DATA(t2856) = abap_true.
    IF t2856 = abap_true.
      DATA t2857 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2858 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2859) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2858 = t2859.
      DATA t2860 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2861) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2862) = |sub|.
      DATA(t2863) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2860 = t2861->set( p0 = t2862 p1 = t2863 ).
      DATA t2864 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2865) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2866) = |regex|.
      DATA(t2867) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2864 = t2865->set( p0 = t2866 p1 = t2867 ).
      DATA t2868 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2869) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2870) = |pcre|.
      DATA(t2871) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2868 = t2869->set( p0 = t2870 p1 = t2871 ).
      DATA t2872 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2873) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2874) = |case|.
      DATA t2875 TYPE REF TO zcl_lnt_character_type.
      DATA(t2876) = CONV int8( 1 ).
      DATA t2877 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2877.
      t2875 = NEW zcl_lnt_character_type( i_length = t2876 i_extra = t2877 ).
      t2872 = t2873->set( p0 = t2874 p1 = t2875 ).
      DATA t2878 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2879) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2880) = |len|.
      DATA t2881 TYPE REF TO zcl_lnt_integer_type.
      DATA t2882 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2882.
      t2881 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2882 ).
      t2878 = t2879->set( p0 = t2880 p1 = t2881 ).
      DATA t2883 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2884) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      DATA(t2885) = |occ|.
      DATA t2886 TYPE REF TO zcl_lnt_integer_type.
      DATA t2887 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2887.
      t2886 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2887 ).
      t2883 = t2884->set( p0 = t2885 p1 = t2886 ).
      DATA(t2888) = CAST zlnt_runtime_map__41b3bb94df3d( t2858 ).
      t2857 = t2888.
      t2855 = t2857.
    ELSE.
      DATA t2889 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2889.
      t2855 = t2889.
    ENDIF.
    DATA t2890 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2890.
    DATA(t2891) = abap_true.
    IF t2891 = abap_true.
      DATA t2892 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2892.
      DATA t2893 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2893.
      DATA t2894 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2894.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2894 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2895) = |v702|.
      t2893 = t2894->get( p0 = t2895 ).
      t2892 = t2893.
      t2890 = t2892.
    ELSE.
      DATA t2896 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2896.
      t2890 = t2896.
    ENDIF.
    DATA t2897 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2897.
    DATA t2898 TYPE REF TO zcl_lnt_string_type.
    DATA t2899 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2899.
    t2898 = zcl_lnt_string_type=>get_db65( i_input_967e = t2899 ).
    DATA t2900 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2900.
    t2836 = NEW zcl_lnt_ibuiltin_method( i_counter = t2837 i_mandatory = t2844 i_optional = t2855 i_release_7928 = t2890 i_predicate = t2897 i_return_fa63 = t2898 i_cache = t2900 ).
    t2833 = t2834->set( p0 = t2835 p1 = t2836 ).
    DATA t2901 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2901.
    DATA(t2902) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2903) = |SUBSTRING_FROM|.
    DATA t2904 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2904.
    DATA(t2905) = VALUE int8( ).
    DATA(t2906) = VALUE int8( ).
    DATA(t2907) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2907 = zcl_lnt_built_in=>counter.
    t2906 = t2907.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2908 TYPE int8.
    DATA(t2909) = t2906.
    DATA(t2910) = CONV int8( 1 ).
    t2908 = t2909 + t2910.
    IF t2908 < range_int8_bound_min OR t2908 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2908.
    DATA(t2911) = t2906.
    t2905 = t2911.
    DATA t2912 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2912.
    DATA(t2913) = abap_true.
    IF t2913 = abap_true.
      DATA t2914 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2915 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2916) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2915 = t2916.
      DATA t2917 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2918) = CAST zlnt_runtime_map__41b3bb94df3d( t2915 ).
      DATA(t2919) = |val|.
      DATA(t2920) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2917 = t2918->set( p0 = t2919 p1 = t2920 ).
      DATA(t2921) = CAST zlnt_runtime_map__41b3bb94df3d( t2915 ).
      t2914 = t2921.
      t2912 = t2914.
    ELSE.
      DATA t2922 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2922.
      t2912 = t2922.
    ENDIF.
    DATA t2923 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2923.
    DATA(t2924) = abap_true.
    IF t2924 = abap_true.
      DATA t2925 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2926 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2927) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2926 = t2927.
      DATA t2928 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2929) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2930) = |sub|.
      DATA(t2931) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2928 = t2929->set( p0 = t2930 p1 = t2931 ).
      DATA t2932 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2933) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2934) = |regex|.
      DATA(t2935) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2932 = t2933->set( p0 = t2934 p1 = t2935 ).
      DATA t2936 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2937) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2938) = |pcre|.
      DATA(t2939) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2936 = t2937->set( p0 = t2938 p1 = t2939 ).
      DATA t2940 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2941) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2942) = |case|.
      DATA t2943 TYPE REF TO zcl_lnt_character_type.
      DATA(t2944) = CONV int8( 1 ).
      DATA t2945 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2945.
      t2943 = NEW zcl_lnt_character_type( i_length = t2944 i_extra = t2945 ).
      t2940 = t2941->set( p0 = t2942 p1 = t2943 ).
      DATA t2946 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2947) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2948) = |len|.
      DATA t2949 TYPE REF TO zcl_lnt_integer_type.
      DATA t2950 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2950.
      t2949 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2950 ).
      t2946 = t2947->set( p0 = t2948 p1 = t2949 ).
      DATA t2951 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2952) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      DATA(t2953) = |occ|.
      DATA t2954 TYPE REF TO zcl_lnt_integer_type.
      DATA t2955 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t2955.
      t2954 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2955 ).
      t2951 = t2952->set( p0 = t2953 p1 = t2954 ).
      DATA(t2956) = CAST zlnt_runtime_map__41b3bb94df3d( t2926 ).
      t2925 = t2956.
      t2923 = t2925.
    ELSE.
      DATA t2957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2957.
      t2923 = t2957.
    ENDIF.
    DATA t2958 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2958.
    DATA(t2959) = abap_true.
    IF t2959 = abap_true.
      DATA t2960 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2960.
      DATA t2961 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2961.
      DATA t2962 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t2962.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t2962 = zcl_lnt_version_module=>release_b8cd.
      DATA(t2963) = |v702|.
      t2961 = t2962->get( p0 = t2963 ).
      t2960 = t2961.
      t2958 = t2960.
    ELSE.
      DATA t2964 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2964.
      t2958 = t2964.
    ENDIF.
    DATA t2965 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t2965.
    DATA t2966 TYPE REF TO zcl_lnt_string_type.
    DATA t2967 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2967.
    t2966 = zcl_lnt_string_type=>get_db65( i_input_967e = t2967 ).
    DATA t2968 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t2968.
    t2904 = NEW zcl_lnt_ibuiltin_method( i_counter = t2905 i_mandatory = t2912 i_optional = t2923 i_release_7928 = t2958 i_predicate = t2965 i_return_fa63 = t2966 i_cache = t2968 ).
    t2901 = t2902->set( p0 = t2903 p1 = t2904 ).
    DATA t2969 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t2969.
    DATA(t2970) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t2971) = |SUBSTRING_TO|.
    DATA t2972 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t2972.
    DATA(t2973) = VALUE int8( ).
    DATA(t2974) = VALUE int8( ).
    DATA(t2975) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2975 = zcl_lnt_built_in=>counter.
    t2974 = t2975.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2976 TYPE int8.
    DATA(t2977) = t2974.
    DATA(t2978) = CONV int8( 1 ).
    t2976 = t2977 + t2978.
    IF t2976 < range_int8_bound_min OR t2976 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t2976.
    DATA(t2979) = t2974.
    t2973 = t2979.
    DATA t2980 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2980.
    DATA(t2981) = abap_true.
    IF t2981 = abap_true.
      DATA t2982 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2983 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2984) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2983 = t2984.
      DATA t2985 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2986) = CAST zlnt_runtime_map__41b3bb94df3d( t2983 ).
      DATA(t2987) = |val|.
      DATA(t2988) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2985 = t2986->set( p0 = t2987 p1 = t2988 ).
      DATA(t2989) = CAST zlnt_runtime_map__41b3bb94df3d( t2983 ).
      t2982 = t2989.
      t2980 = t2982.
    ELSE.
      DATA t2990 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t2990.
      t2980 = t2990.
    ENDIF.
    DATA t2991 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t2991.
    DATA(t2992) = abap_true.
    IF t2992 = abap_true.
      DATA t2993 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t2994 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2995) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t2994 = t2995.
      DATA t2996 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t2997) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t2998) = |sub|.
      DATA(t2999) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t2996 = t2997->set( p0 = t2998 p1 = t2999 ).
      DATA t3000 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3001) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t3002) = |regex|.
      DATA(t3003) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3000 = t3001->set( p0 = t3002 p1 = t3003 ).
      DATA t3004 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3005) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t3006) = |pcre|.
      DATA(t3007) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3004 = t3005->set( p0 = t3006 p1 = t3007 ).
      DATA t3008 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3009) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t3010) = |case|.
      DATA t3011 TYPE REF TO zcl_lnt_character_type.
      DATA(t3012) = CONV int8( 1 ).
      DATA t3013 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3013.
      t3011 = NEW zcl_lnt_character_type( i_length = t3012 i_extra = t3013 ).
      t3008 = t3009->set( p0 = t3010 p1 = t3011 ).
      DATA t3014 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3015) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t3016) = |len|.
      DATA t3017 TYPE REF TO zcl_lnt_integer_type.
      DATA t3018 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3018.
      t3017 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3018 ).
      t3014 = t3015->set( p0 = t3016 p1 = t3017 ).
      DATA t3019 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3020) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      DATA(t3021) = |occ|.
      DATA t3022 TYPE REF TO zcl_lnt_integer_type.
      DATA t3023 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3023.
      t3022 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3023 ).
      t3019 = t3020->set( p0 = t3021 p1 = t3022 ).
      DATA(t3024) = CAST zlnt_runtime_map__41b3bb94df3d( t2994 ).
      t2993 = t3024.
      t2991 = t2993.
    ELSE.
      DATA t3025 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3025.
      t2991 = t3025.
    ENDIF.
    DATA t3026 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3026.
    DATA(t3027) = abap_true.
    IF t3027 = abap_true.
      DATA t3028 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3028.
      DATA t3029 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3029.
      DATA t3030 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3030.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3030 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3031) = |v702|.
      t3029 = t3030->get( p0 = t3031 ).
      t3028 = t3029.
      t3026 = t3028.
    ELSE.
      DATA t3032 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3032.
      t3026 = t3032.
    ENDIF.
    DATA t3033 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3033.
    DATA t3034 TYPE REF TO zcl_lnt_string_type.
    DATA t3035 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3035.
    t3034 = zcl_lnt_string_type=>get_db65( i_input_967e = t3035 ).
    DATA t3036 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3036.
    t2972 = NEW zcl_lnt_ibuiltin_method( i_counter = t2973 i_mandatory = t2980 i_optional = t2991 i_release_7928 = t3026 i_predicate = t3033 i_return_fa63 = t3034 i_cache = t3036 ).
    t2969 = t2970->set( p0 = t2971 p1 = t2972 ).
    DATA t3037 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3037.
    DATA(t3038) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3039) = |TAN|.
    DATA t3040 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3040.
    DATA(t3041) = VALUE int8( ).
    DATA(t3042) = VALUE int8( ).
    DATA(t3043) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3043 = zcl_lnt_built_in=>counter.
    t3042 = t3043.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3044 TYPE int8.
    DATA(t3045) = t3042.
    DATA(t3046) = CONV int8( 1 ).
    t3044 = t3045 + t3046.
    IF t3044 < range_int8_bound_min OR t3044 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3044.
    DATA(t3047) = t3042.
    t3041 = t3047.
    DATA t3048 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3048.
    DATA(t3049) = abap_true.
    IF t3049 = abap_true.
      DATA t3050 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3051 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3052) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3051 = t3052.
      DATA t3053 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3054) = CAST zlnt_runtime_map__41b3bb94df3d( t3051 ).
      DATA(t3055) = |val|.
      DATA t3056 TYPE REF TO zcl_lnt_float_type.
      DATA t3057 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3057.
      t3056 = NEW zcl_lnt_float_type( i_input_967e = t3057 ).
      t3053 = t3054->set( p0 = t3055 p1 = t3056 ).
      DATA(t3058) = CAST zlnt_runtime_map__41b3bb94df3d( t3051 ).
      t3050 = t3058.
      t3048 = t3050.
    ELSE.
      DATA t3059 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3059.
      t3048 = t3059.
    ENDIF.
    DATA t3060 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3060.
    DATA t3061 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3061.
    DATA t3062 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3062.
    DATA t3063 TYPE REF TO zcl_lnt_float_type.
    DATA t3064 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3064.
    t3063 = NEW zcl_lnt_float_type( i_input_967e = t3064 ).
    DATA t3065 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3065.
    t3040 = NEW zcl_lnt_ibuiltin_method( i_counter = t3041 i_mandatory = t3048 i_optional = t3060 i_release_7928 = t3061 i_predicate = t3062 i_return_fa63 = t3063 i_cache = t3065 ).
    t3037 = t3038->set( p0 = t3039 p1 = t3040 ).
    DATA t3066 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3066.
    DATA(t3067) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3068) = |TANH|.
    DATA t3069 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3069.
    DATA(t3070) = VALUE int8( ).
    DATA(t3071) = VALUE int8( ).
    DATA(t3072) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3072 = zcl_lnt_built_in=>counter.
    t3071 = t3072.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3073 TYPE int8.
    DATA(t3074) = t3071.
    DATA(t3075) = CONV int8( 1 ).
    t3073 = t3074 + t3075.
    IF t3073 < range_int8_bound_min OR t3073 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3073.
    DATA(t3076) = t3071.
    t3070 = t3076.
    DATA t3077 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3077.
    DATA(t3078) = abap_true.
    IF t3078 = abap_true.
      DATA t3079 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3080 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3081) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3080 = t3081.
      DATA t3082 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3083) = CAST zlnt_runtime_map__41b3bb94df3d( t3080 ).
      DATA(t3084) = |val|.
      DATA t3085 TYPE REF TO zcl_lnt_float_type.
      DATA t3086 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3086.
      t3085 = NEW zcl_lnt_float_type( i_input_967e = t3086 ).
      t3082 = t3083->set( p0 = t3084 p1 = t3085 ).
      DATA(t3087) = CAST zlnt_runtime_map__41b3bb94df3d( t3080 ).
      t3079 = t3087.
      t3077 = t3079.
    ELSE.
      DATA t3088 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3088.
      t3077 = t3088.
    ENDIF.
    DATA t3089 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3089.
    DATA t3090 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3090.
    DATA t3091 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3091.
    DATA t3092 TYPE REF TO zcl_lnt_float_type.
    DATA t3093 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3093.
    t3092 = NEW zcl_lnt_float_type( i_input_967e = t3093 ).
    DATA t3094 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3094.
    t3069 = NEW zcl_lnt_ibuiltin_method( i_counter = t3070 i_mandatory = t3077 i_optional = t3089 i_release_7928 = t3090 i_predicate = t3091 i_return_fa63 = t3092 i_cache = t3094 ).
    t3066 = t3067->set( p0 = t3068 p1 = t3069 ).
    DATA t3095 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3095.
    DATA(t3096) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3097) = |TO_LOWER|.
    DATA t3098 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3098.
    DATA(t3099) = VALUE int8( ).
    DATA(t3100) = VALUE int8( ).
    DATA(t3101) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3101 = zcl_lnt_built_in=>counter.
    t3100 = t3101.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3102 TYPE int8.
    DATA(t3103) = t3100.
    DATA(t3104) = CONV int8( 1 ).
    t3102 = t3103 + t3104.
    IF t3102 < range_int8_bound_min OR t3102 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3102.
    DATA(t3105) = t3100.
    t3099 = t3105.
    DATA t3106 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3106.
    DATA(t3107) = abap_true.
    IF t3107 = abap_true.
      DATA t3108 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3109 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3110) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3109 = t3110.
      DATA t3111 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3112) = CAST zlnt_runtime_map__41b3bb94df3d( t3109 ).
      DATA(t3113) = |val|.
      DATA(t3114) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3111 = t3112->set( p0 = t3113 p1 = t3114 ).
      DATA(t3115) = CAST zlnt_runtime_map__41b3bb94df3d( t3109 ).
      t3108 = t3115.
      t3106 = t3108.
    ELSE.
      DATA t3116 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3116.
      t3106 = t3116.
    ENDIF.
    DATA t3117 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3117.
    DATA t3118 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3118.
    DATA(t3119) = abap_true.
    IF t3119 = abap_true.
      DATA t3120 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3120.
      DATA t3121 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3121.
      DATA t3122 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3122.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3122 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3123) = |v702|.
      t3121 = t3122->get( p0 = t3123 ).
      t3120 = t3121.
      t3118 = t3120.
    ELSE.
      DATA t3124 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3124.
      t3118 = t3124.
    ENDIF.
    DATA t3125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3125.
    DATA t3126 TYPE REF TO zcl_lnt_string_type.
    DATA t3127 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3127.
    t3126 = zcl_lnt_string_type=>get_db65( i_input_967e = t3127 ).
    DATA t3128 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3128.
    t3098 = NEW zcl_lnt_ibuiltin_method( i_counter = t3099 i_mandatory = t3106 i_optional = t3117 i_release_7928 = t3118 i_predicate = t3125 i_return_fa63 = t3126 i_cache = t3128 ).
    t3095 = t3096->set( p0 = t3097 p1 = t3098 ).
    DATA t3129 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3129.
    DATA(t3130) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3131) = |TO_MIXED|.
    DATA t3132 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3132.
    DATA(t3133) = VALUE int8( ).
    DATA(t3134) = VALUE int8( ).
    DATA(t3135) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3135 = zcl_lnt_built_in=>counter.
    t3134 = t3135.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3136 TYPE int8.
    DATA(t3137) = t3134.
    DATA(t3138) = CONV int8( 1 ).
    t3136 = t3137 + t3138.
    IF t3136 < range_int8_bound_min OR t3136 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3136.
    DATA(t3139) = t3134.
    t3133 = t3139.
    DATA t3140 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3140.
    DATA(t3141) = abap_true.
    IF t3141 = abap_true.
      DATA t3142 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3143 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3144) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3143 = t3144.
      DATA t3145 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3146) = CAST zlnt_runtime_map__41b3bb94df3d( t3143 ).
      DATA(t3147) = |val|.
      DATA(t3148) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3145 = t3146->set( p0 = t3147 p1 = t3148 ).
      DATA(t3149) = CAST zlnt_runtime_map__41b3bb94df3d( t3143 ).
      t3142 = t3149.
      t3140 = t3142.
    ELSE.
      DATA t3150 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3150.
      t3140 = t3150.
    ENDIF.
    DATA t3151 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3151.
    DATA(t3152) = abap_true.
    IF t3152 = abap_true.
      DATA t3153 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3154 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3155) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3154 = t3155.
      DATA t3156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3157) = CAST zlnt_runtime_map__41b3bb94df3d( t3154 ).
      DATA(t3158) = |case|.
      DATA t3159 TYPE REF TO zcl_lnt_character_type.
      DATA(t3160) = CONV int8( 1 ).
      DATA t3161 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3161.
      t3159 = NEW zcl_lnt_character_type( i_length = t3160 i_extra = t3161 ).
      t3156 = t3157->set( p0 = t3158 p1 = t3159 ).
      DATA t3162 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3163) = CAST zlnt_runtime_map__41b3bb94df3d( t3154 ).
      DATA(t3164) = |sep|.
      DATA(t3165) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3162 = t3163->set( p0 = t3164 p1 = t3165 ).
      DATA t3166 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3167) = CAST zlnt_runtime_map__41b3bb94df3d( t3154 ).
      DATA(t3168) = |min|.
      DATA t3169 TYPE REF TO zcl_lnt_integer_type.
      DATA t3170 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3170.
      t3169 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3170 ).
      t3166 = t3167->set( p0 = t3168 p1 = t3169 ).
      DATA(t3171) = CAST zlnt_runtime_map__41b3bb94df3d( t3154 ).
      t3153 = t3171.
      t3151 = t3153.
    ELSE.
      DATA t3172 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3172.
      t3151 = t3172.
    ENDIF.
    DATA t3173 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3173.
    DATA(t3174) = abap_true.
    IF t3174 = abap_true.
      DATA t3175 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3175.
      DATA t3176 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3176.
      DATA t3177 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3177.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3177 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3178) = |v702|.
      t3176 = t3177->get( p0 = t3178 ).
      t3175 = t3176.
      t3173 = t3175.
    ELSE.
      DATA t3179 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3179.
      t3173 = t3179.
    ENDIF.
    DATA t3180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3180.
    DATA t3181 TYPE REF TO zcl_lnt_string_type.
    DATA t3182 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3182.
    t3181 = zcl_lnt_string_type=>get_db65( i_input_967e = t3182 ).
    DATA t3183 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3183.
    t3132 = NEW zcl_lnt_ibuiltin_method( i_counter = t3133 i_mandatory = t3140 i_optional = t3151 i_release_7928 = t3173 i_predicate = t3180 i_return_fa63 = t3181 i_cache = t3183 ).
    t3129 = t3130->set( p0 = t3131 p1 = t3132 ).
    DATA t3184 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3184.
    DATA(t3185) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3186) = |TO_UPPER|.
    DATA t3187 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3187.
    DATA(t3188) = VALUE int8( ).
    DATA(t3189) = VALUE int8( ).
    DATA(t3190) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3190 = zcl_lnt_built_in=>counter.
    t3189 = t3190.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3191 TYPE int8.
    DATA(t3192) = t3189.
    DATA(t3193) = CONV int8( 1 ).
    t3191 = t3192 + t3193.
    IF t3191 < range_int8_bound_min OR t3191 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3191.
    DATA(t3194) = t3189.
    t3188 = t3194.
    DATA t3195 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3195.
    DATA(t3196) = abap_true.
    IF t3196 = abap_true.
      DATA t3197 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3198 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3199) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3198 = t3199.
      DATA t3200 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3201) = CAST zlnt_runtime_map__41b3bb94df3d( t3198 ).
      DATA(t3202) = |val|.
      DATA(t3203) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3200 = t3201->set( p0 = t3202 p1 = t3203 ).
      DATA(t3204) = CAST zlnt_runtime_map__41b3bb94df3d( t3198 ).
      t3197 = t3204.
      t3195 = t3197.
    ELSE.
      DATA t3205 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3205.
      t3195 = t3205.
    ENDIF.
    DATA t3206 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3206.
    DATA t3207 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3207.
    DATA(t3208) = abap_true.
    IF t3208 = abap_true.
      DATA t3209 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3209.
      DATA t3210 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3210.
      DATA t3211 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3211.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3211 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3212) = |v702|.
      t3210 = t3211->get( p0 = t3212 ).
      t3209 = t3210.
      t3207 = t3209.
    ELSE.
      DATA t3213 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3213.
      t3207 = t3213.
    ENDIF.
    DATA t3214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3214.
    DATA t3215 TYPE REF TO zcl_lnt_string_type.
    DATA t3216 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3216.
    t3215 = zcl_lnt_string_type=>get_db65( i_input_967e = t3216 ).
    DATA t3217 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3217.
    t3187 = NEW zcl_lnt_ibuiltin_method( i_counter = t3188 i_mandatory = t3195 i_optional = t3206 i_release_7928 = t3207 i_predicate = t3214 i_return_fa63 = t3215 i_cache = t3217 ).
    t3184 = t3185->set( p0 = t3186 p1 = t3187 ).
    DATA t3218 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3218.
    DATA(t3219) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3220) = |TRANSLATE|.
    DATA t3221 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3221.
    DATA(t3222) = VALUE int8( ).
    DATA(t3223) = VALUE int8( ).
    DATA(t3224) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3224 = zcl_lnt_built_in=>counter.
    t3223 = t3224.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3225 TYPE int8.
    DATA(t3226) = t3223.
    DATA(t3227) = CONV int8( 1 ).
    t3225 = t3226 + t3227.
    IF t3225 < range_int8_bound_min OR t3225 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3225.
    DATA(t3228) = t3223.
    t3222 = t3228.
    DATA t3229 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3229.
    DATA(t3230) = abap_true.
    IF t3230 = abap_true.
      DATA t3231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3232 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3233) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3232 = t3233.
      DATA t3234 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3235) = CAST zlnt_runtime_map__41b3bb94df3d( t3232 ).
      DATA(t3236) = |val|.
      DATA(t3237) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3234 = t3235->set( p0 = t3236 p1 = t3237 ).
      DATA t3238 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3239) = CAST zlnt_runtime_map__41b3bb94df3d( t3232 ).
      DATA(t3240) = |from|.
      DATA(t3241) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3238 = t3239->set( p0 = t3240 p1 = t3241 ).
      DATA t3242 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3243) = CAST zlnt_runtime_map__41b3bb94df3d( t3232 ).
      DATA(t3244) = |to|.
      DATA(t3245) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3242 = t3243->set( p0 = t3244 p1 = t3245 ).
      DATA(t3246) = CAST zlnt_runtime_map__41b3bb94df3d( t3232 ).
      t3231 = t3246.
      t3229 = t3231.
    ELSE.
      DATA t3247 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3247.
      t3229 = t3247.
    ENDIF.
    DATA t3248 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3248.
    DATA t3249 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3249.
    DATA(t3250) = abap_true.
    IF t3250 = abap_true.
      DATA t3251 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3251.
      DATA t3252 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3252.
      DATA t3253 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3253.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3253 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3254) = |v702|.
      t3252 = t3253->get( p0 = t3254 ).
      t3251 = t3252.
      t3249 = t3251.
    ELSE.
      DATA t3255 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3255.
      t3249 = t3255.
    ENDIF.
    DATA t3256 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3256.
    DATA t3257 TYPE REF TO zcl_lnt_string_type.
    DATA t3258 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3258.
    t3257 = zcl_lnt_string_type=>get_db65( i_input_967e = t3258 ).
    DATA t3259 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3259.
    t3221 = NEW zcl_lnt_ibuiltin_method( i_counter = t3222 i_mandatory = t3229 i_optional = t3248 i_release_7928 = t3249 i_predicate = t3256 i_return_fa63 = t3257 i_cache = t3259 ).
    t3218 = t3219->set( p0 = t3220 p1 = t3221 ).
    DATA t3260 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3260.
    DATA(t3261) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3262) = |TRUNC|.
    DATA t3263 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3263.
    DATA(t3264) = VALUE int8( ).
    DATA(t3265) = VALUE int8( ).
    DATA(t3266) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3266 = zcl_lnt_built_in=>counter.
    t3265 = t3266.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3267 TYPE int8.
    DATA(t3268) = t3265.
    DATA(t3269) = CONV int8( 1 ).
    t3267 = t3268 + t3269.
    IF t3267 < range_int8_bound_min OR t3267 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3267.
    DATA(t3270) = t3265.
    t3264 = t3270.
    DATA t3271 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3271.
    DATA(t3272) = abap_true.
    IF t3272 = abap_true.
      DATA t3273 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3274 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3275) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3274 = t3275.
      DATA t3276 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3277) = CAST zlnt_runtime_map__41b3bb94df3d( t3274 ).
      DATA(t3278) = |val|.
      DATA t3279 TYPE REF TO zcl_lnt_float_type.
      DATA t3280 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3280.
      t3279 = NEW zcl_lnt_float_type( i_input_967e = t3280 ).
      t3276 = t3277->set( p0 = t3278 p1 = t3279 ).
      DATA(t3281) = CAST zlnt_runtime_map__41b3bb94df3d( t3274 ).
      t3273 = t3281.
      t3271 = t3273.
    ELSE.
      DATA t3282 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3282.
      t3271 = t3282.
    ENDIF.
    DATA t3283 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3283.
    DATA t3284 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3284.
    DATA t3285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3285.
    DATA t3286 TYPE REF TO zcl_lnt_integer_type.
    DATA t3287 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3287.
    t3286 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3287 ).
    DATA t3288 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3288.
    t3263 = NEW zcl_lnt_ibuiltin_method( i_counter = t3264 i_mandatory = t3271 i_optional = t3283 i_release_7928 = t3284 i_predicate = t3285 i_return_fa63 = t3286 i_cache = t3288 ).
    t3260 = t3261->set( p0 = t3262 p1 = t3263 ).
    DATA t3289 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3289.
    DATA(t3290) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3291) = |UTCLONG_ADD|.
    DATA t3292 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3292.
    DATA(t3293) = VALUE int8( ).
    DATA(t3294) = VALUE int8( ).
    DATA(t3295) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3295 = zcl_lnt_built_in=>counter.
    t3294 = t3295.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3296 TYPE int8.
    DATA(t3297) = t3294.
    DATA(t3298) = CONV int8( 1 ).
    t3296 = t3297 + t3298.
    IF t3296 < range_int8_bound_min OR t3296 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3296.
    DATA(t3299) = t3294.
    t3293 = t3299.
    DATA t3300 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3300.
    DATA(t3301) = abap_true.
    IF t3301 = abap_true.
      DATA t3302 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3303 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3304) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3303 = t3304.
      DATA t3305 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3306) = CAST zlnt_runtime_map__41b3bb94df3d( t3303 ).
      DATA(t3307) = |val|.
      DATA t3308 TYPE REF TO zcl_lnt_utc_long_type.
      DATA t3309 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3309.
      t3308 = NEW zcl_lnt_utc_long_type( i_input_967e = t3309 ).
      t3305 = t3306->set( p0 = t3307 p1 = t3308 ).
      DATA(t3310) = CAST zlnt_runtime_map__41b3bb94df3d( t3303 ).
      t3302 = t3310.
      t3300 = t3302.
    ELSE.
      DATA t3311 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3311.
      t3300 = t3311.
    ENDIF.
    DATA t3312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3312.
    DATA(t3313) = abap_true.
    IF t3313 = abap_true.
      DATA t3314 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3315 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3316) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3315 = t3316.
      DATA t3317 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3318) = CAST zlnt_runtime_map__41b3bb94df3d( t3315 ).
      DATA(t3319) = |days|.
      DATA t3320 TYPE REF TO zcl_lnt_integer_type.
      DATA t3321 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3321.
      t3320 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3321 ).
      t3317 = t3318->set( p0 = t3319 p1 = t3320 ).
      DATA t3322 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3323) = CAST zlnt_runtime_map__41b3bb94df3d( t3315 ).
      DATA(t3324) = |hour|.
      DATA t3325 TYPE REF TO zcl_lnt_integer_type.
      DATA t3326 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3326.
      t3325 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3326 ).
      t3322 = t3323->set( p0 = t3324 p1 = t3325 ).
      DATA t3327 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3328) = CAST zlnt_runtime_map__41b3bb94df3d( t3315 ).
      DATA(t3329) = |minutes|.
      DATA t3330 TYPE REF TO zcl_lnt_integer_type.
      DATA t3331 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3331.
      t3330 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3331 ).
      t3327 = t3328->set( p0 = t3329 p1 = t3330 ).
      DATA t3332 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3333) = CAST zlnt_runtime_map__41b3bb94df3d( t3315 ).
      DATA(t3334) = |seconds|.
      DATA t3335 TYPE REF TO zcl_lnt_float_type.
      DATA t3336 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3336.
      t3335 = NEW zcl_lnt_float_type( i_input_967e = t3336 ).
      t3332 = t3333->set( p0 = t3334 p1 = t3335 ).
      DATA(t3337) = CAST zlnt_runtime_map__41b3bb94df3d( t3315 ).
      t3314 = t3337.
      t3312 = t3314.
    ELSE.
      DATA t3338 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3338.
      t3312 = t3338.
    ENDIF.
    DATA t3339 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3339.
    DATA(t3340) = abap_true.
    IF t3340 = abap_true.
      DATA t3341 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3341.
      DATA t3342 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3342.
      DATA t3343 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3343.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3343 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3344) = |v754|.
      t3342 = t3343->get( p0 = t3344 ).
      t3341 = t3342.
      t3339 = t3341.
    ELSE.
      DATA t3345 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3345.
      t3339 = t3345.
    ENDIF.
    DATA t3346 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3346.
    DATA t3347 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t3348 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3348.
    t3347 = NEW zcl_lnt_utc_long_type( i_input_967e = t3348 ).
    DATA t3349 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3349.
    t3292 = NEW zcl_lnt_ibuiltin_method( i_counter = t3293 i_mandatory = t3300 i_optional = t3312 i_release_7928 = t3339 i_predicate = t3346 i_return_fa63 = t3347 i_cache = t3349 ).
    t3289 = t3290->set( p0 = t3291 p1 = t3292 ).
    DATA t3350 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3350.
    DATA(t3351) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3352) = |UTCLONG_CURRENT|.
    DATA t3353 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3353.
    DATA(t3354) = VALUE int8( ).
    DATA(t3355) = VALUE int8( ).
    DATA(t3356) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3356 = zcl_lnt_built_in=>counter.
    t3355 = t3356.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3357 TYPE int8.
    DATA(t3358) = t3355.
    DATA(t3359) = CONV int8( 1 ).
    t3357 = t3358 + t3359.
    IF t3357 < range_int8_bound_min OR t3357 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3357.
    DATA(t3360) = t3355.
    t3354 = t3360.
    DATA t3361 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3361.
    DATA t3362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3362.
    DATA t3363 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3363.
    DATA(t3364) = abap_true.
    IF t3364 = abap_true.
      DATA t3365 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3365.
      DATA t3366 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3366.
      DATA t3367 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3367.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3367 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3368) = |v754|.
      t3366 = t3367->get( p0 = t3368 ).
      t3365 = t3366.
      t3363 = t3365.
    ELSE.
      DATA t3369 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3369.
      t3363 = t3369.
    ENDIF.
    DATA t3370 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3370.
    DATA t3371 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t3372 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3372.
    t3371 = NEW zcl_lnt_utc_long_type( i_input_967e = t3372 ).
    DATA t3373 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3373.
    t3353 = NEW zcl_lnt_ibuiltin_method( i_counter = t3354 i_mandatory = t3361 i_optional = t3362 i_release_7928 = t3363 i_predicate = t3370 i_return_fa63 = t3371 i_cache = t3373 ).
    t3350 = t3351->set( p0 = t3352 p1 = t3353 ).
    DATA t3374 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3374.
    DATA(t3375) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3376) = |UTCLONG_DIFF|.
    DATA t3377 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3377.
    DATA(t3378) = VALUE int8( ).
    DATA(t3379) = VALUE int8( ).
    DATA(t3380) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3380 = zcl_lnt_built_in=>counter.
    t3379 = t3380.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3381 TYPE int8.
    DATA(t3382) = t3379.
    DATA(t3383) = CONV int8( 1 ).
    t3381 = t3382 + t3383.
    IF t3381 < range_int8_bound_min OR t3381 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3381.
    DATA(t3384) = t3379.
    t3378 = t3384.
    DATA t3385 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3385.
    DATA(t3386) = abap_true.
    IF t3386 = abap_true.
      DATA t3387 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3388 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3389) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3388 = t3389.
      DATA t3390 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3391) = CAST zlnt_runtime_map__41b3bb94df3d( t3388 ).
      DATA(t3392) = |high|.
      DATA t3393 TYPE REF TO zcl_lnt_utc_long_type.
      DATA t3394 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3394.
      t3393 = NEW zcl_lnt_utc_long_type( i_input_967e = t3394 ).
      t3390 = t3391->set( p0 = t3392 p1 = t3393 ).
      DATA t3395 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3396) = CAST zlnt_runtime_map__41b3bb94df3d( t3388 ).
      DATA(t3397) = |low|.
      DATA t3398 TYPE REF TO zcl_lnt_utc_long_type.
      DATA t3399 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3399.
      t3398 = NEW zcl_lnt_utc_long_type( i_input_967e = t3399 ).
      t3395 = t3396->set( p0 = t3397 p1 = t3398 ).
      DATA(t3400) = CAST zlnt_runtime_map__41b3bb94df3d( t3388 ).
      t3387 = t3400.
      t3385 = t3387.
    ELSE.
      DATA t3401 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3401.
      t3385 = t3401.
    ENDIF.
    DATA t3402 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3402.
    DATA t3403 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3403.
    DATA(t3404) = abap_true.
    IF t3404 = abap_true.
      DATA t3405 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3405.
      DATA t3406 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3406.
      DATA t3407 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3407.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3407 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3408) = |v754|.
      t3406 = t3407->get( p0 = t3408 ).
      t3405 = t3406.
      t3403 = t3405.
    ELSE.
      DATA t3409 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3409.
      t3403 = t3409.
    ENDIF.
    DATA t3410 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3410.
    DATA t3411 TYPE REF TO zcl_lnt_float_type.
    DATA t3412 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3412.
    t3411 = NEW zcl_lnt_float_type( i_input_967e = t3412 ).
    DATA t3413 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3413.
    t3377 = NEW zcl_lnt_ibuiltin_method( i_counter = t3378 i_mandatory = t3385 i_optional = t3402 i_release_7928 = t3403 i_predicate = t3410 i_return_fa63 = t3411 i_cache = t3413 ).
    t3374 = t3375->set( p0 = t3376 p1 = t3377 ).
    DATA t3414 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3414.
    DATA(t3415) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3416) = |XSDBOOL|.
    DATA t3417 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3417.
    DATA(t3418) = VALUE int8( ).
    DATA(t3419) = VALUE int8( ).
    DATA(t3420) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3420 = zcl_lnt_built_in=>counter.
    t3419 = t3420.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3421 TYPE int8.
    DATA(t3422) = t3419.
    DATA(t3423) = CONV int8( 1 ).
    t3421 = t3422 + t3423.
    IF t3421 < range_int8_bound_min OR t3421 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3421.
    DATA(t3424) = t3419.
    t3418 = t3424.
    DATA t3425 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3425.
    DATA(t3426) = abap_true.
    IF t3426 = abap_true.
      DATA t3427 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3428 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3429) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3428 = t3429.
      DATA t3430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3431) = CAST zlnt_runtime_map__41b3bb94df3d( t3428 ).
      DATA(t3432) = |val|.
      DATA(t3433) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
      t3430 = t3431->set( p0 = t3432 p1 = t3433 ).
      DATA(t3434) = CAST zlnt_runtime_map__41b3bb94df3d( t3428 ).
      t3427 = t3434.
      t3425 = t3427.
    ELSE.
      DATA t3435 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3435.
      t3425 = t3435.
    ENDIF.
    DATA t3436 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3436.
    DATA t3437 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3437.
    DATA(t3438) = abap_true.
    IF t3438 = abap_true.
      DATA t3439 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3439.
      DATA t3440 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3440.
      DATA t3441 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3441.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3441 = zcl_lnt_version_module=>release_b8cd.
      DATA(t3442) = |v740sp08|.
      t3440 = t3441->get( p0 = t3442 ).
      t3439 = t3440.
      t3437 = t3439.
    ELSE.
      DATA t3443 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3443.
      t3437 = t3443.
    ENDIF.
    DATA t3444 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3444.
    DATA t3445 TYPE REF TO zcl_lnt_character_type.
    DATA(t3446) = CONV int8( 1 ).
    DATA t3447 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3447.
    t3445 = NEW zcl_lnt_character_type( i_length = t3446 i_extra = t3447 ).
    DATA t3448 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3448.
    t3417 = NEW zcl_lnt_ibuiltin_method( i_counter = t3418 i_mandatory = t3425 i_optional = t3436 i_release_7928 = t3437 i_predicate = t3444 i_return_fa63 = t3445 i_cache = t3448 ).
    t3414 = t3415->set( p0 = t3416 p1 = t3417 ).
    DATA t3449 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    CLEAR t3449.
    DATA(t3450) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    DATA(t3451) = |XSTRLEN|.
    DATA t3452 TYPE REF TO zcl_lnt_ibuiltin_method.
    CLEAR t3452.
    DATA(t3453) = VALUE int8( ).
    DATA(t3454) = VALUE int8( ).
    DATA(t3455) = VALUE int8( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3455 = zcl_lnt_built_in=>counter.
    t3454 = t3455.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3456 TYPE int8.
    DATA(t3457) = t3454.
    DATA(t3458) = CONV int8( 1 ).
    t3456 = t3457 + t3458.
    IF t3456 < range_int8_bound_min OR t3456 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    zcl_lnt_built_in=>counter = t3456.
    DATA(t3459) = t3454.
    t3453 = t3459.
    DATA t3460 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3460.
    DATA(t3461) = abap_true.
    IF t3461 = abap_true.
      DATA t3462 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA t3463 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3464) = NEW zlnt_runtime_map__41b3bb94df3d( ).
      t3463 = t3464.
      DATA t3465 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t3466) = CAST zlnt_runtime_map__41b3bb94df3d( t3463 ).
      DATA(t3467) = |val|.
      DATA t3468 TYPE REF TO zcl_lnt_x_sequence_type.
      DATA t3469 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t3469.
      t3468 = NEW zcl_lnt_x_sequence_type( i_input_967e = t3469 ).
      t3465 = t3466->set( p0 = t3467 p1 = t3468 ).
      DATA(t3470) = CAST zlnt_runtime_map__41b3bb94df3d( t3463 ).
      t3462 = t3470.
      t3460 = t3462.
    ELSE.
      DATA t3471 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t3471.
      t3460 = t3471.
    ENDIF.
    DATA t3472 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t3472.
    DATA t3473 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3473.
    DATA t3474 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3474.
    DATA t3475 TYPE REF TO zcl_lnt_integer_type.
    DATA t3476 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3476.
    t3475 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3476 ).
    DATA t3477 TYPE REF TO zcl_lnt_built_in_method.
    CLEAR t3477.
    t3452 = NEW zcl_lnt_ibuiltin_method( i_counter = t3453 i_mandatory = t3460 i_optional = t3472 i_release_7928 = t3473 i_predicate = t3474 i_return_fa63 = t3475 i_cache = t3477 ).
    t3449 = t3450->set( p0 = t3451 p1 = t3452 ).
    DATA(t3478) = CAST zlnt_runtime_map__c27ad0d4c484( t7 ).
    t6 = t3478.
    zcl_lnt_built_in=>methods = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d749_d6fc7bfd346d.
  ENDMETHOD.
ENDCLASS.

* TS: src/abap/5_syntax/_builtin.ts:132:1 BuiltIn
CLASS zcl_lnt_built_in DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CONSTANTS filename TYPE string VALUE `_builtin.prog.abap`.
    CLASS-DATA counter TYPE f.
    CLASS-DATA get_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA types_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA extras_cache_key TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLASS-DATA extras_cache TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA methods TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA row TYPE f.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_built_in IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CONV f( 1 ).
    me->row = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
  ENDMETHOD.

  METHOD build_definition.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_method.
    DATA(t2) = i_name.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_built_in_method.
    t4 = t1->cache.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_built_in_method.
      t7 = t1->cache.
      result = t7.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CONV f( 1 ).
    DATA(t13) = CONV f( 1 ).
    DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t14->has = abap_true.
    t14->value = t13.
    t11 = NEW zcl_lnt_position( i_row = t12 i_col = t14 ).
    t10 = NEW zcl_lnt_lx_identifier( i_start = t11 i_str = t2 ).
    DATA t16 TYPE REF TO zcl_lnt_built_in_method.
    DATA t17 TYPE REF TO zcl_lnt_built_in_method.
    DATA(t19) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t21 TYPE f.
    t21 = t1->counter.
    t17 = NEW zcl_lnt_built_in_method( i_token = t10 i_filename = t19 i_method = t1 i_row = t21 ).
    t16 = t17.
    t1->cache = t16.
    DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `cache`.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cache` p1 = t28 ).
    ENDIF.
    DATA(t29) = |cache|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD search_builtin.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA t11 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA t12 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t12 = zcl_lnt_built_in=>methods.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    t14 = t1->value.
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
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17 = xsdbool( t10 IS INITIAL ).
    IF t17 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_method_definition.
    DATA t28 TYPE REF TO zcl_lnt_ibuiltin_method.
    t28 = t10.
    DATA t30 TYPE string.
    t30 = t1->value.
    t27 = zcl_lnt_built_in=>build_definition( i_method = t28 i_name = t30 ).
    result = t27.

  ENDMETHOD.

  METHOD is_predicate.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA t11 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA t12 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t12 = zcl_lnt_built_in=>methods.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    t14 = t1->value.
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
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17 = xsdbool( t10 IS INITIAL ).
    IF t17 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t26 TYPE REF TO zcl_lnt_ibuiltin_method.
    t26 = t10.
    t25 = t26->predicate.
    result = t25.

  ENDMETHOD.

  METHOD get_types.
    DATA(t1) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3 = zcl_lnt_built_in=>types_cache.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( t3 IS INITIAL ).
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t8 = CAST zlnt_runtime_arra_c22708faf2e3( me->build_sy( ) ).
      DATA t11 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA(t13) = CONV f( 1 ).
      DATA(t14) = CONV f( 1 ).
      DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = NEW zcl_lnt_position( i_row = t13 i_col = t15 ).
      DATA(t16) = |abap_bool|.
      t11 = NEW zcl_lnt_lx_identifier( i_start = t12 i_str = t16 ).
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t20) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t21 TYPE REF TO zcl_lnt_character_type.
      DATA(t22) = CONV f( 1 ).
      DATA t23 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = |ABAP_BOOL|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t26 = t30.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t35) = |ABAP_BOOL|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t32 = t36.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t26 i_conversion_exit = t38 i_derived_from_constant = t40 i_ddic_name = t32 i_rtti_name = t42 i_description = t44 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t46 ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t47 ).
      ENDIF.
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t48) = |qualifiedName|.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
      DATA(t50) = |ddicName|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      t23 = t25.
      t21 = NEW zcl_lnt_character_type( i_length = t22 i_extra = t23 ).
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18 = NEW zcl_lnt_typed_identifier( i_token = t11 i_filename = t20 i_type_9913 = t21 i_meta = t53 i_value = t54 ).
      t8->load( ).
      APPEND t18 TO t8->items.
      t8->save( ).
      DATA t56 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA(t58) = CONV f( 1 ).
      DATA(t59) = CONV f( 1 ).
      DATA(t60) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t60->has = abap_true.
      t60->value = t59.
      t57 = NEW zcl_lnt_position( i_row = t58 i_col = t60 ).
      DATA(t61) = |cursor|.
      t56 = NEW zcl_lnt_lx_identifier( i_start = t57 i_str = t61 ).
      DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t65) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t66 TYPE REF TO zcl_lnt_integer_type.
      DATA t67 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t73) = |CURSOR|.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = t73.
      t70 = t74.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t79) = |CURSOR|.
      DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t80->has = abap_true.
      t80->value = t79.
      t76 = t80.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t69 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t70 i_conversion_exit = t82 i_derived_from_constant = t84 i_ddic_name = t76 i_rtti_name = t86 i_description = t88 ).
      CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
      t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t90 ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t91 ).
      ENDIF.
      CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
      t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t92) = |qualifiedName|.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
      DATA(t94) = |ddicName|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      ENDIF.
      t67 = t69.
      t66 = zcl_lnt_integer_type=>get_db65( i_input_967e = t67 ).
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t63 = NEW zcl_lnt_typed_identifier( i_token = t56 i_filename = t65 i_type_9913 = t66 i_meta = t97 i_value = t98 ).
      t8->load( ).
      APPEND t63 TO t8->items.
      t8->save( ).
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      zcl_lnt_built_in=>types_cache = t8.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t104 = zcl_lnt_built_in=>types_cache.
    result = t104.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = i_extras.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE i( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t6 = zcl_lnt_built_in=>get_cache.
    t6->load( ).
    t5 = lines( t6->items ).
    DATA(t7) = 0.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA(t8) = VALUE i( ).
      DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( me->build_sy( ) ).
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t11 TYPE REF TO object.
      DATA(t12) = VALUE i( ).
      DO.
        t9->load( ).
        IF t12 >= lines( t9->items ).
          EXIT.
        ENDIF.
        CLEAR t11.
        READ TABLE t9->items INDEX t12 + 1 INTO t11.
        t12 = t12 + 1.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t13.
        CLEAR t10.
        IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t13 ?= t11.
          DATA t14 TYPE REF TO object.
          t14 = t13->as_ref( ).
          t10 ?= t14.
        ELSE.
          t10 ?= t11.
        ENDIF.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t15.
        IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
          zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
        ENDIF.
        t15 = zcl_lnt_built_in=>get_cache.
        t15->load( ).
        APPEND t10 TO t15->items.
        t15->save( ).
      ENDDO.
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t18 = zcl_lnt_built_in=>get_cache.
      t18->load( ).
      t17 = lines( t18->items ).
      t8 = t17.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t19 = zcl_lnt_built_in=>get_cache.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t22 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t23 TYPE REF TO zcl_lnt_position.
      DATA t24 TYPE f.
      DATA t25 TYPE REF TO zcl_lnt_built_in.
      t25 = me.
      DATA t27 TYPE f.
      DATA t28 TYPE f.
      t28 = t25->row.
      t27 = t28.
      DATA t31 TYPE f.
      DATA(t33) = CONV f( 1 ).
      t31 = t27 + t33.
      t25->row = t31.
      DELETE t25->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
      t24 = t27.
      DATA(t35) = CONV f( 1 ).
      DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t36->has = abap_true.
      t36->value = t35.
      t23 = NEW zcl_lnt_position( i_row = t24 i_col = t36 ).
      DATA(t37) = |screen|.
      t22 = NEW zcl_lnt_lx_identifier( i_start = t23 i_str = t37 ).
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t40) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t41 TYPE REF TO zcl_lnt_void_type.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = |screen|.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t44.
      t42 = t45.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t41 = zcl_lnt_void_type=>get_db65( i_voided = t42 i_qualified_name = t47 ).
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t52.
      t51 = t52.
      DATA(t54) = |built-in|.
      t51->load( ).
      APPEND t54 TO t51->items.
      t51->save( ).
      t48 = t51.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38 = NEW zcl_lnt_typed_identifier( i_token = t22 i_filename = t40 i_type_9913 = t41 i_meta = t48 i_value = t57 ).
      t20 = t38.
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t58 = zcl_lnt_built_in=>get_cache.
      DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t60) = |%_ENDIAN|.
      DATA t61 TYPE REF TO zcl_lnt_abstract_type.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = me->build_constant( i_name = t60 i_type_9913 = t61 i_value = t62 ).
      t58->load( ).
      APPEND t59 TO t58->items.
      t58->save( ).
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t63 = zcl_lnt_built_in=>get_cache.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t65) = |%_CHARSIZE|.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t64 = me->build_constant( i_name = t65 i_type_9913 = t66 i_value = t67 ).
      t63->load( ).
      APPEND t64 TO t63->items.
      t63->save( ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t68 = zcl_lnt_built_in=>get_cache.
      DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t70) = |%_BACKSPACE|.
      DATA t71 TYPE REF TO zcl_lnt_character_type.
      DATA(t72) = CONV f( 1 ).
      DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
      t71 = NEW zcl_lnt_character_type( i_length = t72 i_extra = t73 ).
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t76) = ||.
      DATA t77 TYPE c LENGTH 1.
      t77 = cl_abap_conv_in_ce=>uccpi( 8 ).
      CONCATENATE t76 t77 INTO t76 RESPECTING BLANKS.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t76.
      t74 = t78.
      t69 = me->build_constant( i_name = t70 i_type_9913 = t71 i_value = t74 ).
      t68->load( ).
      APPEND t69 TO t68->items.
      t68->save( ).
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t80 = zcl_lnt_built_in=>get_cache.
      DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t82) = |%_CR_LF|.
      DATA t83 TYPE REF TO zcl_lnt_character_type.
      DATA(t84) = CONV f( 2 ).
      DATA t85 TYPE REF TO zcl_lnt_abstract_type_data.
      t83 = NEW zcl_lnt_character_type( i_length = t84 i_extra = t85 ).
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t88) = |\r\n|.
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = t88.
      t86 = t89.
      t81 = me->build_constant( i_name = t82 i_type_9913 = t83 i_value = t86 ).
      t80->load( ).
      APPEND t81 TO t80->items.
      t80->save( ).
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t91 = zcl_lnt_built_in=>get_cache.
      DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t93) = |%_FORMFEED|.
      DATA t94 TYPE REF TO zcl_lnt_character_type.
      DATA(t95) = CONV f( 1 ).
      DATA t96 TYPE REF TO zcl_lnt_abstract_type_data.
      t94 = NEW zcl_lnt_character_type( i_length = t95 i_extra = t96 ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = ||.
      DATA t100 TYPE c LENGTH 1.
      t100 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t99 t100 INTO t99 RESPECTING BLANKS.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t99.
      t97 = t101.
      t92 = me->build_constant( i_name = t93 i_type_9913 = t94 i_value = t97 ).
      t91->load( ).
      APPEND t92 TO t91->items.
      t91->save( ).
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t103 = zcl_lnt_built_in=>get_cache.
      DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t105) = |%_HORIZONTAL_TAB|.
      DATA t106 TYPE REF TO zcl_lnt_character_type.
      DATA(t107) = CONV f( 1 ).
      DATA t108 TYPE REF TO zcl_lnt_abstract_type_data.
      t106 = NEW zcl_lnt_character_type( i_length = t107 i_extra = t108 ).
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t111) = |\t|.
      DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t112->has = abap_true.
      t112->value = t111.
      t109 = t112.
      t104 = me->build_constant( i_name = t105 i_type_9913 = t106 i_value = t109 ).
      t103->load( ).
      APPEND t104 TO t103->items.
      t103->save( ).
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t114 = zcl_lnt_built_in=>get_cache.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t116) = |%_MAXCHAR|.
      DATA t117 TYPE REF TO zcl_lnt_character_type.
      DATA(t118) = CONV f( 1 ).
      DATA t119 TYPE REF TO zcl_lnt_abstract_type_data.
      t117 = NEW zcl_lnt_character_type( i_length = t118 i_extra = t119 ).
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t122) = |��|.
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = t122.
      t120 = t123.
      t115 = me->build_constant( i_name = t116 i_type_9913 = t117 i_value = t120 ).
      t114->load( ).
      APPEND t115 TO t114->items.
      t114->save( ).
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t125 = zcl_lnt_built_in=>get_cache.
      DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t127) = |%_MINCHAR|.
      DATA t128 TYPE REF TO zcl_lnt_character_type.
      DATA(t129) = CONV f( 1 ).
      DATA t130 TYPE REF TO zcl_lnt_abstract_type_data.
      t128 = NEW zcl_lnt_character_type( i_length = t129 i_extra = t130 ).
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t133) = ||.
      DATA t134 TYPE c LENGTH 1.
      t134 = cl_abap_conv_in_ce=>uccpi( 0 ).
      CONCATENATE t133 t134 INTO t133 RESPECTING BLANKS.
      DATA t135 TYPE c LENGTH 1.
      t135 = cl_abap_conv_in_ce=>uccpi( 0 ).
      CONCATENATE t133 t135 INTO t133 RESPECTING BLANKS.
      DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t136->has = abap_true.
      t136->value = t133.
      t131 = t136.
      t126 = me->build_constant( i_name = t127 i_type_9913 = t128 i_value = t131 ).
      t125->load( ).
      APPEND t126 TO t125->items.
      t125->save( ).
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t138 = zcl_lnt_built_in=>get_cache.
      DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t140) = |%_NEWLINE|.
      DATA t141 TYPE REF TO zcl_lnt_character_type.
      DATA(t142) = CONV f( 1 ).
      DATA t143 TYPE REF TO zcl_lnt_abstract_type_data.
      t141 = NEW zcl_lnt_character_type( i_length = t142 i_extra = t143 ).
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t146) = |\n|.
      DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t147->has = abap_true.
      t147->value = t146.
      t144 = t147.
      t139 = me->build_constant( i_name = t140 i_type_9913 = t141 i_value = t144 ).
      t138->load( ).
      APPEND t139 TO t138->items.
      t138->save( ).
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t149 = zcl_lnt_built_in=>get_cache.
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t151) = |%_VERTICAL_TAB|.
      DATA t152 TYPE REF TO zcl_lnt_character_type.
      DATA(t153) = CONV f( 1 ).
      DATA t154 TYPE REF TO zcl_lnt_abstract_type_data.
      t152 = NEW zcl_lnt_character_type( i_length = t153 i_extra = t154 ).
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t157) = ||.
      DATA t158 TYPE c LENGTH 1.
      t158 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t157 t158 INTO t157 RESPECTING BLANKS.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = t157.
      t155 = t159.
      t150 = me->build_constant( i_name = t151 i_type_9913 = t152 i_value = t155 ).
      t149->load( ).
      APPEND t150 TO t149->items.
      t149->save( ).
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t161 = zcl_lnt_built_in=>get_cache.
      DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t163) = |abap_false|.
      DATA t164 TYPE REF TO zcl_lnt_character_type.
      DATA(t165) = CONV f( 1 ).
      DATA t166 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t172) = |ABAP_BOOL|.
      DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t173->has = abap_true.
      t173->value = t172.
      t169 = t173.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t178) = |ABAP_BOOL|.
      DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t179->has = abap_true.
      t179->value = t178.
      t175 = t179.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t168 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t169 i_conversion_exit = t181 i_derived_from_constant = t183 i_ddic_name = t175 i_rtti_name = t185 i_description = t187 ).
      CREATE OBJECT t168->zlnt_view_ownkeys_b0e8086400eb.
      t168->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t189 ).
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t190 ).
      ENDIF.
      CREATE OBJECT t168->zlnt_json_ownkeys_70e5fd461788.
      t168->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t191) = |qualifiedName|.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
      DATA(t193) = |ddicName|.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
      ENDIF.
      t166 = t168.
      t164 = NEW zcl_lnt_character_type( i_length = t165 i_extra = t166 ).
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t198) = |' '|.
      DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t199->has = abap_true.
      t199->value = t198.
      t196 = t199.
      t162 = me->build_constant( i_name = t163 i_type_9913 = t164 i_value = t196 ).
      t161->load( ).
      APPEND t162 TO t161->items.
      t161->save( ).
      DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t201 = zcl_lnt_built_in=>get_cache.
      DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t203) = |abap_true|.
      DATA t204 TYPE REF TO zcl_lnt_character_type.
      DATA(t205) = CONV f( 1 ).
      DATA t206 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t208 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t212) = |ABAP_BOOL|.
      DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t213->has = abap_true.
      t213->value = t212.
      t209 = t213.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t218) = |ABAP_BOOL|.
      DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t219->has = abap_true.
      t219->value = t218.
      t215 = t219.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t223 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t208 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t209 i_conversion_exit = t221 i_derived_from_constant = t223 i_ddic_name = t215 i_rtti_name = t225 i_description = t227 ).
      CREATE OBJECT t208->zlnt_view_ownkeys_b0e8086400eb.
      t208->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t229 ).
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t230 ).
      ENDIF.
      CREATE OBJECT t208->zlnt_json_ownkeys_70e5fd461788.
      t208->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t231) = |qualifiedName|.
      DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
      DATA(t233) = |ddicName|.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
      ENDIF.
      t206 = t208.
      t204 = NEW zcl_lnt_character_type( i_length = t205 i_extra = t206 ).
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t238) = |'X'|.
      DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t239->has = abap_true.
      t239->value = t238.
      t236 = t239.
      t202 = me->build_constant( i_name = t203 i_type_9913 = t204 i_value = t236 ).
      t201->load( ).
      APPEND t202 TO t201->items.
      t201->save( ).
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t241 = zcl_lnt_built_in=>get_cache.
      DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t243) = |abap_undefined|.
      DATA t244 TYPE REF TO zcl_lnt_character_type.
      DATA(t245) = CONV f( 1 ).
      DATA t246 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t248 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t252) = |ABAP_BOOL|.
      DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t253->has = abap_true.
      t253->value = t252.
      t249 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t258) = |ABAP_BOOL|.
      DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t259->has = abap_true.
      t259->value = t258.
      t255 = t259.
      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t263 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t248 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t249 i_conversion_exit = t261 i_derived_from_constant = t263 i_ddic_name = t255 i_rtti_name = t265 i_description = t267 ).
      CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
      t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t269 ).
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t270 ).
      ENDIF.
      CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
      t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t271) = |qualifiedName|.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
      DATA(t273) = |ddicName|.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
      ENDIF.
      t246 = t248.
      t244 = NEW zcl_lnt_character_type( i_length = t245 i_extra = t246 ).
      DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t278) = |'-'|.
      DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t279->has = abap_true.
      t279->value = t278.
      t276 = t279.
      t242 = me->build_constant( i_name = t243 i_type_9913 = t244 i_value = t276 ).
      t241->load( ).
      APPEND t242 TO t241->items.
      t241->save( ).
      DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t281 = zcl_lnt_built_in=>get_cache.
      DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t283) = |abap_off|.
      DATA t284 TYPE REF TO zcl_lnt_character_type.
      DATA(t285) = CONV f( 1 ).
      DATA t286 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t292) = |ABAP_BOOL|.
      DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t293->has = abap_true.
      t293->value = t292.
      t289 = t293.
      DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t298) = |ABAP_BOOL|.
      DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t299->has = abap_true.
      t299->value = t298.
      t295 = t299.
      DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t288 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t289 i_conversion_exit = t301 i_derived_from_constant = t303 i_ddic_name = t295 i_rtti_name = t305 i_description = t307 ).
      CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
      t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t309 ).
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t310 ).
      ENDIF.
      CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
      t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t311) = |qualifiedName|.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
      DATA(t313) = |ddicName|.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
      ENDIF.
      t286 = t288.
      t284 = NEW zcl_lnt_character_type( i_length = t285 i_extra = t286 ).
      DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t318) = |' '|.
      DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t319->has = abap_true.
      t319->value = t318.
      t316 = t319.
      t282 = me->build_constant( i_name = t283 i_type_9913 = t284 i_value = t316 ).
      t281->load( ).
      APPEND t282 TO t281->items.
      t281->save( ).
      DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t321 = zcl_lnt_built_in=>get_cache.
      DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t323) = |abap_on|.
      DATA t324 TYPE REF TO zcl_lnt_character_type.
      DATA(t325) = CONV f( 1 ).
      DATA t326 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t328 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t332) = |ABAP_BOOL|.
      DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t333->has = abap_true.
      t333->value = t332.
      t329 = t333.
      DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t338) = |ABAP_BOOL|.
      DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t339->has = abap_true.
      t339->value = t338.
      t335 = t339.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t343 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t328 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t329 i_conversion_exit = t341 i_derived_from_constant = t343 i_ddic_name = t335 i_rtti_name = t345 i_description = t347 ).
      CREATE OBJECT t328->zlnt_view_ownkeys_b0e8086400eb.
      t328->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t349 ).
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t350 ).
      ENDIF.
      CREATE OBJECT t328->zlnt_json_ownkeys_70e5fd461788.
      t328->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t351) = |qualifiedName|.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
      DATA(t353) = |ddicName|.
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
      ENDIF.
      t326 = t328.
      t324 = NEW zcl_lnt_character_type( i_length = t325 i_extra = t326 ).
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t358) = |'X'|.
      DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t359->has = abap_true.
      t359->value = t358.
      t356 = t359.
      t322 = me->build_constant( i_name = t323 i_type_9913 = t324 i_value = t356 ).
      t321->load( ).
      APPEND t322 TO t321->items.
      t321->save( ).
      DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t361 = zcl_lnt_built_in=>get_cache.
      DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t363) = |col_background|.
      DATA t364 TYPE REF TO zcl_lnt_integer_type.
      DATA t365 TYPE REF TO zcl_lnt_abstract_type_data.
      t364 = zcl_lnt_integer_type=>get_db65( i_input_967e = t365 ).
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t368) = |0|.
      DATA(t369) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t369->has = abap_true.
      t369->value = t368.
      t366 = t369.
      t362 = me->build_constant( i_name = t363 i_type_9913 = t364 i_value = t366 ).
      t361->load( ).
      APPEND t362 TO t361->items.
      t361->save( ).
      DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t371 = zcl_lnt_built_in=>get_cache.
      DATA t372 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t373) = |col_heading|.
      DATA t374 TYPE REF TO zcl_lnt_integer_type.
      DATA t375 TYPE REF TO zcl_lnt_abstract_type_data.
      t374 = zcl_lnt_integer_type=>get_db65( i_input_967e = t375 ).
      DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t378) = |1|.
      DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t379->has = abap_true.
      t379->value = t378.
      t376 = t379.
      t372 = me->build_constant( i_name = t373 i_type_9913 = t374 i_value = t376 ).
      t371->load( ).
      APPEND t372 TO t371->items.
      t371->save( ).
      DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t381 = zcl_lnt_built_in=>get_cache.
      DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t383) = |col_key|.
      DATA t384 TYPE REF TO zcl_lnt_integer_type.
      DATA t385 TYPE REF TO zcl_lnt_abstract_type_data.
      t384 = zcl_lnt_integer_type=>get_db65( i_input_967e = t385 ).
      DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t388) = |4|.
      DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t389->has = abap_true.
      t389->value = t388.
      t386 = t389.
      t382 = me->build_constant( i_name = t383 i_type_9913 = t384 i_value = t386 ).
      t381->load( ).
      APPEND t382 TO t381->items.
      t381->save( ).
      DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t391 = zcl_lnt_built_in=>get_cache.
      DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t393) = |col_negative|.
      DATA t394 TYPE REF TO zcl_lnt_integer_type.
      DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
      t394 = zcl_lnt_integer_type=>get_db65( i_input_967e = t395 ).
      DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t398) = |6|.
      DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t399->has = abap_true.
      t399->value = t398.
      t396 = t399.
      t392 = me->build_constant( i_name = t393 i_type_9913 = t394 i_value = t396 ).
      t391->load( ).
      APPEND t392 TO t391->items.
      t391->save( ).
      DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t401 = zcl_lnt_built_in=>get_cache.
      DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t403) = |col_group|.
      DATA t404 TYPE REF TO zcl_lnt_integer_type.
      DATA t405 TYPE REF TO zcl_lnt_abstract_type_data.
      t404 = zcl_lnt_integer_type=>get_db65( i_input_967e = t405 ).
      DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t408) = |7|.
      DATA(t409) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t409->has = abap_true.
      t409->value = t408.
      t406 = t409.
      t402 = me->build_constant( i_name = t403 i_type_9913 = t404 i_value = t406 ).
      t401->load( ).
      APPEND t402 TO t401->items.
      t401->save( ).
      DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t411 = zcl_lnt_built_in=>get_cache.
      DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t413) = |col_normal|.
      DATA t414 TYPE REF TO zcl_lnt_integer_type.
      DATA t415 TYPE REF TO zcl_lnt_abstract_type_data.
      t414 = zcl_lnt_integer_type=>get_db65( i_input_967e = t415 ).
      DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t418) = |2|.
      DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t419->has = abap_true.
      t419->value = t418.
      t416 = t419.
      t412 = me->build_constant( i_name = t413 i_type_9913 = t414 i_value = t416 ).
      t411->load( ).
      APPEND t412 TO t411->items.
      t411->save( ).
      DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t421 = zcl_lnt_built_in=>get_cache.
      DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t423) = |col_positive|.
      DATA t424 TYPE REF TO zcl_lnt_integer_type.
      DATA t425 TYPE REF TO zcl_lnt_abstract_type_data.
      t424 = zcl_lnt_integer_type=>get_db65( i_input_967e = t425 ).
      DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t428) = |5|.
      DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t429->has = abap_true.
      t429->value = t428.
      t426 = t429.
      t422 = me->build_constant( i_name = t423 i_type_9913 = t424 i_value = t426 ).
      t421->load( ).
      APPEND t422 TO t421->items.
      t421->save( ).
      DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t431 = zcl_lnt_built_in=>get_cache.
      DATA t432 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t433) = |col_total|.
      DATA t434 TYPE REF TO zcl_lnt_integer_type.
      DATA t435 TYPE REF TO zcl_lnt_abstract_type_data.
      t434 = zcl_lnt_integer_type=>get_db65( i_input_967e = t435 ).
      DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t438) = |3|.
      DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t439->has = abap_true.
      t439->value = t438.
      t436 = t439.
      t432 = me->build_constant( i_name = t433 i_type_9913 = t434 i_value = t436 ).
      t431->load( ).
      APPEND t432 TO t431->items.
      t431->save( ).
      DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t441 = zcl_lnt_built_in=>get_cache.
      DATA t442 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t443) = |space|.
      DATA t444 TYPE REF TO zcl_lnt_character_type.
      DATA(t445) = CONV f( 1 ).
      DATA t446 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t448 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t449 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t453) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t453->has = abap_true.
      t453->value = abap_true.
      t449 = t453.
      DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t448 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t455 i_conversion_exit = t457 i_derived_from_constant = t449 i_ddic_name = t459 i_rtti_name = t461 i_description = t463 ).
      CREATE OBJECT t448->zlnt_view_ownkeys_b0e8086400eb.
      t448->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t448->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t465 ).
      CREATE OBJECT t448->zlnt_json_ownkeys_70e5fd461788.
      t448->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t466) = |derivedFromConstant|.
      DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t448->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
      t446 = t448.
      t444 = NEW zcl_lnt_character_type( i_length = t445 i_extra = t446 ).
      DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t471) = |' '|.
      DATA(t472) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t472->has = abap_true.
      t472->value = t471.
      t469 = t472.
      t442 = me->build_constant( i_name = t443 i_type_9913 = t444 i_value = t469 ).
      t441->load( ).
      APPEND t442 TO t441->items.
      t441->save( ).
    ENDIF.
    DATA(t474) = VALUE i( ).
    DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t475 = zcl_lnt_built_in=>get_cache.
    DATA t476 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t477 TYPE REF TO object.
    DATA(t478) = VALUE i( ).
    DO.
      t475->load( ).
      IF t478 >= lines( t475->items ).
        EXIT.
      ENDIF.
      CLEAR t477.
      READ TABLE t475->items INDEX t478 + 1 INTO t477.
      t478 = t478 + 1.
      DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t479.
      CLEAR t476.
      IF t477 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t479 ?= t477.
        DATA t480 TYPE REF TO object.
        t480 = t479->as_ref( ).
        t476 ?= t480.
      ELSE.
        t476 ?= t477.
      ENDIF.
      t2->load( ).
      APPEND t476 TO t2->items.
      t2->save( ).
    ENDDO.
    DATA t483 TYPE i.
    t2->load( ).
    t483 = lines( t2->items ).
    t474 = t483.
    DATA t485 TYPE string.
    DATA t486 TYPE string.
    DATA(t488) = |\||.
    DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t489->has = abap_true.
    t489->value = t488.
    t486 = t1->join( p0 = t489 ).
    t485 = t486.
    DATA(t490) = VALUE abap_bool( ).
    DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t494->has = abap_true.
    t494->value = t485.
    t491 = t494.
    DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t496 = zcl_lnt_built_in=>extras_cache_key.
    DATA(t497) = VALUE abap_bool( ).
    DATA(t498) = VALUE abap_bool( ).
    IF t491 IS BOUND.
      t497 = t491->has.
    ENDIF.
    IF t496 IS BOUND.
      t498 = t496->has.
    ENDIF.
    IF t497 = t498.
      IF t497 = abap_false.
        t490 = abap_true.
      ELSEIF t491->value = t496->value.
        t490 = abap_true.
      ENDIF.
    ENDIF.
    IF t490 = abap_true.
      t490 = abap_false.
    ELSE.
      t490 = abap_true.
    ENDIF.
    IF t490 = abap_true.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA(t502) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t502->has = abap_true.
      t502->value = t485.
      zcl_lnt_built_in=>extras_cache_key = t502.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t504.
      zcl_lnt_built_in=>extras_cache = t504.
      DATA(t506) = VALUE string( ).
      t1->dense( ).
      DATA(t507) = VALUE i( ).
      DO.
        t1->load( ).
        IF t507 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t506.
        READ TABLE t1->items INDEX t507 + 1 INTO t506.
        IF t1->has( t507 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t507 = t507 + 1.
        DATA t509 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t510 TYPE REF TO zcl_lnt_position.
        DATA t511 TYPE f.
        DATA t512 TYPE REF TO zcl_lnt_built_in.
        t512 = me.
        DATA t514 TYPE f.
        DATA t515 TYPE f.
        t515 = t512->row.
        t514 = t515.
        DATA t518 TYPE f.
        DATA(t520) = CONV f( 1 ).
        t518 = t514 + t520.
        t512->row = t518.
        DELETE t512->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
        t511 = t514.
        DATA(t522) = CONV f( 1 ).
        DATA(t523) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t523->has = abap_true.
        t523->value = t522.
        t510 = NEW zcl_lnt_position( i_row = t511 i_col = t523 ).
        t509 = NEW zcl_lnt_lx_identifier( i_start = t510 i_str = t506 ).
        DATA t525 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t525.
        IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
          zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
        ENDIF.
        t525 = zcl_lnt_built_in=>extras_cache.
        DATA t526 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t526.
        DATA(t528) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t529 TYPE REF TO zcl_lnt_void_type.
        CLEAR t529.
        DATA t530 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t530.
        DATA(t533) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t533->has = abap_true.
        t533->value = t506.
        t530 = t533.
        DATA t535 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t535.
        t529 = zcl_lnt_void_type=>get_db65( i_voided = t530 i_qualified_name = t535 ).
        DATA t536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t536.
        DATA t539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t540.
        t539 = t540.
        DATA(t542) = |read_only|.
        t539->load( ).
        APPEND t542 TO t539->items.
        t539->save( ).
        DATA(t544) = |built-in|.
        t539->load( ).
        APPEND t544 TO t539->items.
        t539->save( ).
        t536 = t539.
        DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t547.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        DATA(t550) = |'?'|.
        CLEAR t549.
        CREATE OBJECT t549.
        t549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t549->sval = t550.
        t547 = t549.
        t526 = NEW zcl_lnt_typed_identifier( i_token = t509 i_filename = t528 i_type_9913 = t529 i_meta = t536 i_value = t547 ).
        t525->load( ).
        APPEND t526 TO t525->items.
        t525->save( ).
      ENDDO.
    ENDIF.
    DATA(t552) = VALUE i( ).
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t553 = zcl_lnt_built_in=>extras_cache.
    DATA t554 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t555 TYPE REF TO object.
    DATA(t556) = VALUE i( ).
    DO.
      t553->load( ).
      IF t556 >= lines( t553->items ).
        EXIT.
      ENDIF.
      CLEAR t555.
      READ TABLE t553->items INDEX t556 + 1 INTO t555.
      t556 = t556 + 1.
      DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t557.
      CLEAR t554.
      IF t555 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t557 ?= t555.
        DATA t558 TYPE REF TO object.
        t558 = t557->as_ref( ).
        t554 ?= t558.
      ELSE.
        t554 ?= t555.
      ENDIF.
      t2->load( ).
      APPEND t554 TO t2->items.
      t2->save( ).
    ENDDO.
    DATA t561 TYPE i.
    t2->load( ).
    t561 = lines( t2->items ).
    t552 = t561.
    result = t2.

  ENDMETHOD.

  METHOD build_variable.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_built_in.
    t6 = me.
    DATA t8 TYPE f.
    DATA t9 TYPE f.
    t9 = t6->row.
    t8 = t9.
    DATA t12 TYPE f.
    DATA(t14) = CONV f( 1 ).
    t12 = t8 + t14.
    t6->row = t12.
    DELETE t6->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t5 = t8.
    DATA(t16) = CONV f( 1 ).
    DATA(t17) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t17->has = abap_true.
    t17->value = t16.
    t4 = NEW zcl_lnt_position( i_row = t5 i_col = t17 ).
    t3 = NEW zcl_lnt_lx_identifier( i_start = t4 i_str = t1 ).
    DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t21) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t22 TYPE REF TO zcl_lnt_void_type.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t1.
    t23 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t22 = zcl_lnt_void_type=>get_db65( i_voided = t23 i_qualified_name = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t33.
    t32 = t33.
    DATA(t35) = |built-in|.
    t32->load( ).
    APPEND t35 TO t32->items.
    t32->save( ).
    t29 = t32.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t21 i_type_9913 = t22 i_meta = t29 i_value = t38 ).
    result = t19.

  ENDMETHOD.

  METHOD build_sy.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t4 TYPE REF TO zcl_lnt_istructure_component.
    DATA t5 TYPE string.
    t5 = |index|.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA t8 TYPE REF TO zcl_lnt_integer_type.
    DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
    t8 = zcl_lnt_integer_type=>get_db65( i_input_967e = t9 ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = NEW zcl_lnt_istructure_component( i_name = t5 i_type_9913 = t7 i_as_include = t10 i_suffix = t12 ).
    CREATE OBJECT t4->zlnt_view_ownkeys_b0e8086400eb.
    t4->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t4->zlnt_json_ownkeys_70e5fd461788.
    t4->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t16) = |name|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    DATA(t18) = |type|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    t1->load( ).
    APPEND t4 TO t1->items.
    t1->save( ).
    DATA t21 TYPE REF TO zcl_lnt_istructure_component.
    DATA t22 TYPE string.
    t22 = |pagno|.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    DATA t25 TYPE REF TO zcl_lnt_integer_type.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type_data.
    t25 = zcl_lnt_integer_type=>get_db65( i_input_967e = t26 ).
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_istructure_component( i_name = t22 i_type_9913 = t24 i_as_include = t27 i_suffix = t29 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t31 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t32 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t33) = |name|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    DATA(t35) = |type|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    t1->load( ).
    APPEND t21 TO t1->items.
    t1->save( ).
    DATA t38 TYPE REF TO zcl_lnt_istructure_component.
    DATA t39 TYPE string.
    t39 = |tabix|.
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    DATA t42 TYPE REF TO zcl_lnt_integer_type.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
    t42 = zcl_lnt_integer_type=>get_db65( i_input_967e = t43 ).
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t38 = NEW zcl_lnt_istructure_component( i_name = t39 i_type_9913 = t41 i_as_include = t44 i_suffix = t46 ).
    CREATE OBJECT t38->zlnt_view_ownkeys_b0e8086400eb.
    t38->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t38->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t49 ).
    ENDIF.
    CREATE OBJECT t38->zlnt_json_ownkeys_70e5fd461788.
    t38->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t50) = |name|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    DATA(t52) = |type|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    t1->load( ).
    APPEND t38 TO t1->items.
    t1->save( ).
    DATA t55 TYPE REF TO zcl_lnt_istructure_component.
    DATA t56 TYPE string.
    t56 = |tfill|.
    DATA t58 TYPE REF TO zcl_lnt_abstract_type.
    DATA t59 TYPE REF TO zcl_lnt_integer_type.
    DATA t60 TYPE REF TO zcl_lnt_abstract_type_data.
    t59 = zcl_lnt_integer_type=>get_db65( i_input_967e = t60 ).
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t55 = NEW zcl_lnt_istructure_component( i_name = t56 i_type_9913 = t58 i_as_include = t61 i_suffix = t63 ).
    CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
    t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t66 ).
    ENDIF.
    CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
    t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t67) = |name|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    DATA(t69) = |type|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    t1->load( ).
    APPEND t55 TO t1->items.
    t1->save( ).
    DATA t72 TYPE REF TO zcl_lnt_istructure_component.
    DATA t73 TYPE string.
    t73 = |tlopc|.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    DATA t76 TYPE REF TO zcl_lnt_integer_type.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type_data.
    t76 = zcl_lnt_integer_type=>get_db65( i_input_967e = t77 ).
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t72 = NEW zcl_lnt_istructure_component( i_name = t73 i_type_9913 = t75 i_as_include = t78 i_suffix = t80 ).
    CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
    t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t82 ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t83 ).
    ENDIF.
    CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
    t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t84) = |name|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    DATA(t86) = |type|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    t1->load( ).
    APPEND t72 TO t1->items.
    t1->save( ).
    DATA t89 TYPE REF TO zcl_lnt_istructure_component.
    DATA t90 TYPE string.
    t90 = |tmaxl|.
    DATA t92 TYPE REF TO zcl_lnt_abstract_type.
    DATA t93 TYPE REF TO zcl_lnt_integer_type.
    DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
    t93 = zcl_lnt_integer_type=>get_db65( i_input_967e = t94 ).
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t89 = NEW zcl_lnt_istructure_component( i_name = t90 i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t99 ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t100 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t101) = |name|.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
    DATA(t103) = |type|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
    ENDIF.
    t1->load( ).
    APPEND t89 TO t1->items.
    t1->save( ).
    DATA t106 TYPE REF TO zcl_lnt_istructure_component.
    DATA t107 TYPE string.
    t107 = |toccu|.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    DATA t110 TYPE REF TO zcl_lnt_integer_type.
    DATA t111 TYPE REF TO zcl_lnt_abstract_type_data.
    t110 = zcl_lnt_integer_type=>get_db65( i_input_967e = t111 ).
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t106 = NEW zcl_lnt_istructure_component( i_name = t107 i_type_9913 = t109 i_as_include = t112 i_suffix = t114 ).
    CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
    t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t116 ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t117 ).
    ENDIF.
    CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
    t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t118) = |name|.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
    DATA(t120) = |type|.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
    ENDIF.
    t1->load( ).
    APPEND t106 TO t1->items.
    t1->save( ).
    DATA t123 TYPE REF TO zcl_lnt_istructure_component.
    DATA t124 TYPE string.
    t124 = |ttabc|.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type.
    DATA t127 TYPE REF TO zcl_lnt_integer_type.
    DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
    t127 = zcl_lnt_integer_type=>get_db65( i_input_967e = t128 ).
    t126 = t127.
    DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t123 = NEW zcl_lnt_istructure_component( i_name = t124 i_type_9913 = t126 i_as_include = t129 i_suffix = t131 ).
    CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
    t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t134 ).
    ENDIF.
    CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
    t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t135) = |name|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
    DATA(t137) = |type|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
    ENDIF.
    t1->load( ).
    APPEND t123 TO t1->items.
    t1->save( ).
    DATA t140 TYPE REF TO zcl_lnt_istructure_component.
    DATA t141 TYPE string.
    t141 = |tstis|.
    DATA t143 TYPE REF TO zcl_lnt_abstract_type.
    DATA t144 TYPE REF TO zcl_lnt_integer_type.
    DATA t145 TYPE REF TO zcl_lnt_abstract_type_data.
    t144 = zcl_lnt_integer_type=>get_db65( i_input_967e = t145 ).
    t143 = t144.
    DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t140 = NEW zcl_lnt_istructure_component( i_name = t141 i_type_9913 = t143 i_as_include = t146 i_suffix = t148 ).
    CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
    t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t150 ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t151 ).
    ENDIF.
    CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
    t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t152) = |name|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
    DATA(t154) = |type|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    t1->load( ).
    APPEND t140 TO t1->items.
    t1->save( ).
    DATA t157 TYPE REF TO zcl_lnt_istructure_component.
    DATA t158 TYPE string.
    t158 = |ttabi|.
    DATA t160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t161 TYPE REF TO zcl_lnt_integer_type.
    DATA t162 TYPE REF TO zcl_lnt_abstract_type_data.
    t161 = zcl_lnt_integer_type=>get_db65( i_input_967e = t162 ).
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t157 = NEW zcl_lnt_istructure_component( i_name = t158 i_type_9913 = t160 i_as_include = t163 i_suffix = t165 ).
    CREATE OBJECT t157->zlnt_view_ownkeys_b0e8086400eb.
    t157->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t167 ).
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t168 ).
    ENDIF.
    CREATE OBJECT t157->zlnt_json_ownkeys_70e5fd461788.
    t157->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t169) = |name|.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
    DATA(t171) = |type|.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
    ENDIF.
    t1->load( ).
    APPEND t157 TO t1->items.
    t1->save( ).
    DATA t174 TYPE REF TO zcl_lnt_istructure_component.
    DATA t175 TYPE string.
    t175 = |dbcnt|.
    DATA t177 TYPE REF TO zcl_lnt_abstract_type.
    DATA t178 TYPE REF TO zcl_lnt_integer_type.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type_data.
    t178 = zcl_lnt_integer_type=>get_db65( i_input_967e = t179 ).
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t174 = NEW zcl_lnt_istructure_component( i_name = t175 i_type_9913 = t177 i_as_include = t180 i_suffix = t182 ).
    CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
    t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t184 ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t185 ).
    ENDIF.
    CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
    t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t186) = |name|.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
    DATA(t188) = |type|.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
    ENDIF.
    t1->load( ).
    APPEND t174 TO t1->items.
    t1->save( ).
    DATA t191 TYPE REF TO zcl_lnt_istructure_component.
    DATA t192 TYPE string.
    t192 = |fdpos|.
    DATA t194 TYPE REF TO zcl_lnt_abstract_type.
    DATA t195 TYPE REF TO zcl_lnt_integer_type.
    DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
    t195 = zcl_lnt_integer_type=>get_db65( i_input_967e = t196 ).
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t191 = NEW zcl_lnt_istructure_component( i_name = t192 i_type_9913 = t194 i_as_include = t197 i_suffix = t199 ).
    CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
    t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t201 ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t202 ).
    ENDIF.
    CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
    t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t203) = |name|.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
    DATA(t205) = |type|.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
    ENDIF.
    t1->load( ).
    APPEND t191 TO t1->items.
    t1->save( ).
    DATA t208 TYPE REF TO zcl_lnt_istructure_component.
    DATA t209 TYPE string.
    t209 = |colno|.
    DATA t211 TYPE REF TO zcl_lnt_abstract_type.
    DATA t212 TYPE REF TO zcl_lnt_integer_type.
    DATA t213 TYPE REF TO zcl_lnt_abstract_type_data.
    t212 = zcl_lnt_integer_type=>get_db65( i_input_967e = t213 ).
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t208 = NEW zcl_lnt_istructure_component( i_name = t209 i_type_9913 = t211 i_as_include = t214 i_suffix = t216 ).
    CREATE OBJECT t208->zlnt_view_ownkeys_b0e8086400eb.
    t208->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t218 ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t208->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t208->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t219 ).
    ENDIF.
    CREATE OBJECT t208->zlnt_json_ownkeys_70e5fd461788.
    t208->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t220) = |name|.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
    DATA(t222) = |type|.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
    ENDIF.
    t1->load( ).
    APPEND t208 TO t1->items.
    t1->save( ).
    DATA t225 TYPE REF TO zcl_lnt_istructure_component.
    DATA t226 TYPE string.
    t226 = |linct|.
    DATA t228 TYPE REF TO zcl_lnt_abstract_type.
    DATA t229 TYPE REF TO zcl_lnt_integer_type.
    DATA t230 TYPE REF TO zcl_lnt_abstract_type_data.
    t229 = zcl_lnt_integer_type=>get_db65( i_input_967e = t230 ).
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t225 = NEW zcl_lnt_istructure_component( i_name = t226 i_type_9913 = t228 i_as_include = t231 i_suffix = t233 ).
    CREATE OBJECT t225->zlnt_view_ownkeys_b0e8086400eb.
    t225->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t225->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t235 ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t225->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t236 ).
    ENDIF.
    CREATE OBJECT t225->zlnt_json_ownkeys_70e5fd461788.
    t225->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t237) = |name|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t225->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
    DATA(t239) = |type|.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t225->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
    ENDIF.
    t1->load( ).
    APPEND t225 TO t1->items.
    t1->save( ).
    DATA t242 TYPE REF TO zcl_lnt_istructure_component.
    DATA t243 TYPE string.
    t243 = |linno|.
    DATA t245 TYPE REF TO zcl_lnt_abstract_type.
    DATA t246 TYPE REF TO zcl_lnt_integer_type.
    DATA t247 TYPE REF TO zcl_lnt_abstract_type_data.
    t246 = zcl_lnt_integer_type=>get_db65( i_input_967e = t247 ).
    t245 = t246.
    DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t242 = NEW zcl_lnt_istructure_component( i_name = t243 i_type_9913 = t245 i_as_include = t248 i_suffix = t250 ).
    CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
    t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t252 ).
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t253 ).
    ENDIF.
    CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
    t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t254) = |name|.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
    DATA(t256) = |type|.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
    ENDIF.
    t1->load( ).
    APPEND t242 TO t1->items.
    t1->save( ).
    DATA t259 TYPE REF TO zcl_lnt_istructure_component.
    DATA t260 TYPE string.
    t260 = |linsz|.
    DATA t262 TYPE REF TO zcl_lnt_abstract_type.
    DATA t263 TYPE REF TO zcl_lnt_integer_type.
    DATA t264 TYPE REF TO zcl_lnt_abstract_type_data.
    t263 = zcl_lnt_integer_type=>get_db65( i_input_967e = t264 ).
    t262 = t263.
    DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t259 = NEW zcl_lnt_istructure_component( i_name = t260 i_type_9913 = t262 i_as_include = t265 i_suffix = t267 ).
    CREATE OBJECT t259->zlnt_view_ownkeys_b0e8086400eb.
    t259->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t259->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t269 ).
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t259->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t259->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t270 ).
    ENDIF.
    CREATE OBJECT t259->zlnt_json_ownkeys_70e5fd461788.
    t259->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t271) = |name|.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t259->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
    DATA(t273) = |type|.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t259->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t259->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
    ENDIF.
    t1->load( ).
    APPEND t259 TO t1->items.
    t1->save( ).
    DATA t276 TYPE REF TO zcl_lnt_istructure_component.
    DATA t277 TYPE string.
    t277 = |pagct|.
    DATA t279 TYPE REF TO zcl_lnt_abstract_type.
    DATA t280 TYPE REF TO zcl_lnt_integer_type.
    DATA t281 TYPE REF TO zcl_lnt_abstract_type_data.
    t280 = zcl_lnt_integer_type=>get_db65( i_input_967e = t281 ).
    t279 = t280.
    DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t276 = NEW zcl_lnt_istructure_component( i_name = t277 i_type_9913 = t279 i_as_include = t282 i_suffix = t284 ).
    CREATE OBJECT t276->zlnt_view_ownkeys_b0e8086400eb.
    t276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t286 ).
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t287 ).
    ENDIF.
    CREATE OBJECT t276->zlnt_json_ownkeys_70e5fd461788.
    t276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t288) = |name|.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
    DATA(t290) = |type|.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
    ENDIF.
    t1->load( ).
    APPEND t276 TO t1->items.
    t1->save( ).
    DATA t293 TYPE REF TO zcl_lnt_istructure_component.
    DATA t294 TYPE string.
    t294 = |macol|.
    DATA t296 TYPE REF TO zcl_lnt_abstract_type.
    DATA t297 TYPE REF TO zcl_lnt_integer_type.
    DATA t298 TYPE REF TO zcl_lnt_abstract_type_data.
    t297 = zcl_lnt_integer_type=>get_db65( i_input_967e = t298 ).
    t296 = t297.
    DATA t299 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t293 = NEW zcl_lnt_istructure_component( i_name = t294 i_type_9913 = t296 i_as_include = t299 i_suffix = t301 ).
    CREATE OBJECT t293->zlnt_view_ownkeys_b0e8086400eb.
    t293->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t303 ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t304 ).
    ENDIF.
    CREATE OBJECT t293->zlnt_json_ownkeys_70e5fd461788.
    t293->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t305) = |name|.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
    DATA(t307) = |type|.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
    ENDIF.
    t1->load( ).
    APPEND t293 TO t1->items.
    t1->save( ).
    DATA t310 TYPE REF TO zcl_lnt_istructure_component.
    DATA t311 TYPE string.
    t311 = |marow|.
    DATA t313 TYPE REF TO zcl_lnt_abstract_type.
    DATA t314 TYPE REF TO zcl_lnt_integer_type.
    DATA t315 TYPE REF TO zcl_lnt_abstract_type_data.
    t314 = zcl_lnt_integer_type=>get_db65( i_input_967e = t315 ).
    t313 = t314.
    DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t310 = NEW zcl_lnt_istructure_component( i_name = t311 i_type_9913 = t313 i_as_include = t316 i_suffix = t318 ).
    CREATE OBJECT t310->zlnt_view_ownkeys_b0e8086400eb.
    t310->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t310->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t320 ).
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t310->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t321 ).
    ENDIF.
    CREATE OBJECT t310->zlnt_json_ownkeys_70e5fd461788.
    t310->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t322) = |name|.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t310->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
    DATA(t324) = |type|.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t310->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
    ENDIF.
    t1->load( ).
    APPEND t310 TO t1->items.
    t1->save( ).
    DATA t327 TYPE REF TO zcl_lnt_istructure_component.
    DATA t328 TYPE string.
    t328 = |tleng|.
    DATA t330 TYPE REF TO zcl_lnt_abstract_type.
    DATA t331 TYPE REF TO zcl_lnt_integer_type.
    DATA t332 TYPE REF TO zcl_lnt_abstract_type_data.
    t331 = zcl_lnt_integer_type=>get_db65( i_input_967e = t332 ).
    t330 = t331.
    DATA t333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t327 = NEW zcl_lnt_istructure_component( i_name = t328 i_type_9913 = t330 i_as_include = t333 i_suffix = t335 ).
    CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
    t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t337 ).
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t338 ).
    ENDIF.
    CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
    t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t339) = |name|.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t339 p1 = t340 ).
    DATA(t341) = |type|.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t341 p1 = t342 ).
    ENDIF.
    t1->load( ).
    APPEND t327 TO t1->items.
    t1->save( ).
    DATA t344 TYPE REF TO zcl_lnt_istructure_component.
    DATA t345 TYPE string.
    t345 = |sfoff|.
    DATA t347 TYPE REF TO zcl_lnt_abstract_type.
    DATA t348 TYPE REF TO zcl_lnt_integer_type.
    DATA t349 TYPE REF TO zcl_lnt_abstract_type_data.
    t348 = zcl_lnt_integer_type=>get_db65( i_input_967e = t349 ).
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t344 = NEW zcl_lnt_istructure_component( i_name = t345 i_type_9913 = t347 i_as_include = t350 i_suffix = t352 ).
    CREATE OBJECT t344->zlnt_view_ownkeys_b0e8086400eb.
    t344->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t354 ).
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t344->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t355 ).
    ENDIF.
    CREATE OBJECT t344->zlnt_json_ownkeys_70e5fd461788.
    t344->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t356) = |name|.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
    DATA(t358) = |type|.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
    ENDIF.
    t1->load( ).
    APPEND t344 TO t1->items.
    t1->save( ).
    DATA t361 TYPE REF TO zcl_lnt_istructure_component.
    DATA t362 TYPE string.
    t362 = |willi|.
    DATA t364 TYPE REF TO zcl_lnt_abstract_type.
    DATA t365 TYPE REF TO zcl_lnt_integer_type.
    DATA t366 TYPE REF TO zcl_lnt_abstract_type_data.
    t365 = zcl_lnt_integer_type=>get_db65( i_input_967e = t366 ).
    t364 = t365.
    DATA t367 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t361 = NEW zcl_lnt_istructure_component( i_name = t362 i_type_9913 = t364 i_as_include = t367 i_suffix = t369 ).
    CREATE OBJECT t361->zlnt_view_ownkeys_b0e8086400eb.
    t361->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t371 ).
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t372 ).
    ENDIF.
    CREATE OBJECT t361->zlnt_json_ownkeys_70e5fd461788.
    t361->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t373) = |name|.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t373 p1 = t374 ).
    DATA(t375) = |type|.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
    ENDIF.
    t1->load( ).
    APPEND t361 TO t1->items.
    t1->save( ).
    DATA t378 TYPE REF TO zcl_lnt_istructure_component.
    DATA t379 TYPE string.
    t379 = |lilli|.
    DATA t381 TYPE REF TO zcl_lnt_abstract_type.
    DATA t382 TYPE REF TO zcl_lnt_integer_type.
    DATA t383 TYPE REF TO zcl_lnt_abstract_type_data.
    t382 = zcl_lnt_integer_type=>get_db65( i_input_967e = t383 ).
    t381 = t382.
    DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t378 = NEW zcl_lnt_istructure_component( i_name = t379 i_type_9913 = t381 i_as_include = t384 i_suffix = t386 ).
    CREATE OBJECT t378->zlnt_view_ownkeys_b0e8086400eb.
    t378->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t388 ).
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t389 ).
    ENDIF.
    CREATE OBJECT t378->zlnt_json_ownkeys_70e5fd461788.
    t378->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t390) = |name|.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t390 p1 = t391 ).
    DATA(t392) = |type|.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t392 p1 = t393 ).
    ENDIF.
    t1->load( ).
    APPEND t378 TO t1->items.
    t1->save( ).
    DATA t395 TYPE REF TO zcl_lnt_istructure_component.
    DATA t396 TYPE string.
    t396 = |subrc|.
    DATA t398 TYPE REF TO zcl_lnt_abstract_type.
    DATA t399 TYPE REF TO zcl_lnt_integer_type.
    DATA t400 TYPE REF TO zcl_lnt_abstract_type_data.
    t399 = zcl_lnt_integer_type=>get_db65( i_input_967e = t400 ).
    t398 = t399.
    DATA t401 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t395 = NEW zcl_lnt_istructure_component( i_name = t396 i_type_9913 = t398 i_as_include = t401 i_suffix = t403 ).
    CREATE OBJECT t395->zlnt_view_ownkeys_b0e8086400eb.
    t395->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t395->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t405 ).
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t395->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t395->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t406 ).
    ENDIF.
    CREATE OBJECT t395->zlnt_json_ownkeys_70e5fd461788.
    t395->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t407) = |name|.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = t407 p1 = t408 ).
    DATA(t409) = |type|.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t395->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = t409 p1 = t410 ).
    ENDIF.
    t1->load( ).
    APPEND t395 TO t1->items.
    t1->save( ).
    DATA t412 TYPE REF TO zcl_lnt_istructure_component.
    DATA t413 TYPE string.
    t413 = |fleng|.
    DATA t415 TYPE REF TO zcl_lnt_abstract_type.
    DATA t416 TYPE REF TO zcl_lnt_integer_type.
    DATA t417 TYPE REF TO zcl_lnt_abstract_type_data.
    t416 = zcl_lnt_integer_type=>get_db65( i_input_967e = t417 ).
    t415 = t416.
    DATA t418 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t412 = NEW zcl_lnt_istructure_component( i_name = t413 i_type_9913 = t415 i_as_include = t418 i_suffix = t420 ).
    CREATE OBJECT t412->zlnt_view_ownkeys_b0e8086400eb.
    t412->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t422 ).
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t423 ).
    ENDIF.
    CREATE OBJECT t412->zlnt_json_ownkeys_70e5fd461788.
    t412->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t424) = |name|.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t424 p1 = t425 ).
    DATA(t426) = |type|.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
    ENDIF.
    t1->load( ).
    APPEND t412 TO t1->items.
    t1->save( ).
    DATA t429 TYPE REF TO zcl_lnt_istructure_component.
    DATA t430 TYPE string.
    t430 = |cucol|.
    DATA t432 TYPE REF TO zcl_lnt_abstract_type.
    DATA t433 TYPE REF TO zcl_lnt_integer_type.
    DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
    t433 = zcl_lnt_integer_type=>get_db65( i_input_967e = t434 ).
    t432 = t433.
    DATA t435 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t429 = NEW zcl_lnt_istructure_component( i_name = t430 i_type_9913 = t432 i_as_include = t435 i_suffix = t437 ).
    CREATE OBJECT t429->zlnt_view_ownkeys_b0e8086400eb.
    t429->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t439 ).
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t429->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t440 ).
    ENDIF.
    CREATE OBJECT t429->zlnt_json_ownkeys_70e5fd461788.
    t429->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t441) = |name|.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t429->zlnt_json_ownkeys_70e5fd461788->put( p0 = t441 p1 = t442 ).
    DATA(t443) = |type|.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t429->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t429->zlnt_json_ownkeys_70e5fd461788->put( p0 = t443 p1 = t444 ).
    ENDIF.
    t1->load( ).
    APPEND t429 TO t1->items.
    t1->save( ).
    DATA t446 TYPE REF TO zcl_lnt_istructure_component.
    DATA t447 TYPE string.
    t447 = |curow|.
    DATA t449 TYPE REF TO zcl_lnt_abstract_type.
    DATA t450 TYPE REF TO zcl_lnt_integer_type.
    DATA t451 TYPE REF TO zcl_lnt_abstract_type_data.
    t450 = zcl_lnt_integer_type=>get_db65( i_input_967e = t451 ).
    t449 = t450.
    DATA t452 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t446 = NEW zcl_lnt_istructure_component( i_name = t447 i_type_9913 = t449 i_as_include = t452 i_suffix = t454 ).
    CREATE OBJECT t446->zlnt_view_ownkeys_b0e8086400eb.
    t446->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t456 ).
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t446->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t457 ).
    ENDIF.
    CREATE OBJECT t446->zlnt_json_ownkeys_70e5fd461788.
    t446->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t458) = |name|.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t458 p1 = t459 ).
    DATA(t460) = |type|.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t460 p1 = t461 ).
    ENDIF.
    t1->load( ).
    APPEND t446 TO t1->items.
    t1->save( ).
    DATA t463 TYPE REF TO zcl_lnt_istructure_component.
    DATA t464 TYPE string.
    t464 = |lsind|.
    DATA t466 TYPE REF TO zcl_lnt_abstract_type.
    DATA t467 TYPE REF TO zcl_lnt_integer_type.
    DATA t468 TYPE REF TO zcl_lnt_abstract_type_data.
    t467 = zcl_lnt_integer_type=>get_db65( i_input_967e = t468 ).
    t466 = t467.
    DATA t469 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t463 = NEW zcl_lnt_istructure_component( i_name = t464 i_type_9913 = t466 i_as_include = t469 i_suffix = t471 ).
    CREATE OBJECT t463->zlnt_view_ownkeys_b0e8086400eb.
    t463->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t473 ).
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t474 ).
    ENDIF.
    CREATE OBJECT t463->zlnt_json_ownkeys_70e5fd461788.
    t463->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t475) = |name|.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t475 p1 = t476 ).
    DATA(t477) = |type|.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t477 p1 = t478 ).
    ENDIF.
    t1->load( ).
    APPEND t463 TO t1->items.
    t1->save( ).
    DATA t480 TYPE REF TO zcl_lnt_istructure_component.
    DATA t481 TYPE string.
    t481 = |listi|.
    DATA t483 TYPE REF TO zcl_lnt_abstract_type.
    DATA t484 TYPE REF TO zcl_lnt_integer_type.
    DATA t485 TYPE REF TO zcl_lnt_abstract_type_data.
    t484 = zcl_lnt_integer_type=>get_db65( i_input_967e = t485 ).
    t483 = t484.
    DATA t486 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t480 = NEW zcl_lnt_istructure_component( i_name = t481 i_type_9913 = t483 i_as_include = t486 i_suffix = t488 ).
    CREATE OBJECT t480->zlnt_view_ownkeys_b0e8086400eb.
    t480->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t480->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t490 ).
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t480->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t480->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t491 ).
    ENDIF.
    CREATE OBJECT t480->zlnt_json_ownkeys_70e5fd461788.
    t480->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t492) = |name|.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = t492 p1 = t493 ).
    DATA(t494) = |type|.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t480->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = t494 p1 = t495 ).
    ENDIF.
    t1->load( ).
    APPEND t480 TO t1->items.
    t1->save( ).
    DATA t497 TYPE REF TO zcl_lnt_istructure_component.
    DATA t498 TYPE string.
    t498 = |stepl|.
    DATA t500 TYPE REF TO zcl_lnt_abstract_type.
    DATA t501 TYPE REF TO zcl_lnt_integer_type.
    DATA t502 TYPE REF TO zcl_lnt_abstract_type_data.
    t501 = zcl_lnt_integer_type=>get_db65( i_input_967e = t502 ).
    t500 = t501.
    DATA t503 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t497 = NEW zcl_lnt_istructure_component( i_name = t498 i_type_9913 = t500 i_as_include = t503 i_suffix = t505 ).
    CREATE OBJECT t497->zlnt_view_ownkeys_b0e8086400eb.
    t497->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t507 ).
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t508 ).
    ENDIF.
    CREATE OBJECT t497->zlnt_json_ownkeys_70e5fd461788.
    t497->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t509) = |name|.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
    DATA(t511) = |type|.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
    ENDIF.
    t1->load( ).
    APPEND t497 TO t1->items.
    t1->save( ).
    DATA t514 TYPE REF TO zcl_lnt_istructure_component.
    DATA t515 TYPE string.
    t515 = |tpagi|.
    DATA t517 TYPE REF TO zcl_lnt_abstract_type.
    DATA t518 TYPE REF TO zcl_lnt_integer_type.
    DATA t519 TYPE REF TO zcl_lnt_abstract_type_data.
    t518 = zcl_lnt_integer_type=>get_db65( i_input_967e = t519 ).
    t517 = t518.
    DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t514 = NEW zcl_lnt_istructure_component( i_name = t515 i_type_9913 = t517 i_as_include = t520 i_suffix = t522 ).
    CREATE OBJECT t514->zlnt_view_ownkeys_b0e8086400eb.
    t514->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t524 ).
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t525 ).
    ENDIF.
    CREATE OBJECT t514->zlnt_json_ownkeys_70e5fd461788.
    t514->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t526) = |name|.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t526 p1 = t527 ).
    DATA(t528) = |type|.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t528 p1 = t529 ).
    ENDIF.
    t1->load( ).
    APPEND t514 TO t1->items.
    t1->save( ).
    DATA t531 TYPE REF TO zcl_lnt_istructure_component.
    DATA t532 TYPE string.
    t532 = |winx1|.
    DATA t534 TYPE REF TO zcl_lnt_abstract_type.
    DATA t535 TYPE REF TO zcl_lnt_integer_type.
    DATA t536 TYPE REF TO zcl_lnt_abstract_type_data.
    t535 = zcl_lnt_integer_type=>get_db65( i_input_967e = t536 ).
    t534 = t535.
    DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t531 = NEW zcl_lnt_istructure_component( i_name = t532 i_type_9913 = t534 i_as_include = t537 i_suffix = t539 ).
    CREATE OBJECT t531->zlnt_view_ownkeys_b0e8086400eb.
    t531->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t531->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t541 ).
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t531->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t531->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t542 ).
    ENDIF.
    CREATE OBJECT t531->zlnt_json_ownkeys_70e5fd461788.
    t531->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t543) = |name|.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t531->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
    DATA(t545) = |type|.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t531->zlnt_json_ownkeys_70e5fd461788->put( p0 = t545 p1 = t546 ).
    ENDIF.
    t1->load( ).
    APPEND t531 TO t1->items.
    t1->save( ).
    DATA t548 TYPE REF TO zcl_lnt_istructure_component.
    DATA t549 TYPE string.
    t549 = |winy1|.
    DATA t551 TYPE REF TO zcl_lnt_abstract_type.
    DATA t552 TYPE REF TO zcl_lnt_integer_type.
    DATA t553 TYPE REF TO zcl_lnt_abstract_type_data.
    t552 = zcl_lnt_integer_type=>get_db65( i_input_967e = t553 ).
    t551 = t552.
    DATA t554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t548 = NEW zcl_lnt_istructure_component( i_name = t549 i_type_9913 = t551 i_as_include = t554 i_suffix = t556 ).
    CREATE OBJECT t548->zlnt_view_ownkeys_b0e8086400eb.
    t548->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t558 ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t548->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t548->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t559 ).
    ENDIF.
    CREATE OBJECT t548->zlnt_json_ownkeys_70e5fd461788.
    t548->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t560) = |name|.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
    DATA(t562) = |type|.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t548->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
    ENDIF.
    t1->load( ).
    APPEND t548 TO t1->items.
    t1->save( ).
    DATA t565 TYPE REF TO zcl_lnt_istructure_component.
    DATA t566 TYPE string.
    t566 = |winx2|.
    DATA t568 TYPE REF TO zcl_lnt_abstract_type.
    DATA t569 TYPE REF TO zcl_lnt_integer_type.
    DATA t570 TYPE REF TO zcl_lnt_abstract_type_data.
    t569 = zcl_lnt_integer_type=>get_db65( i_input_967e = t570 ).
    t568 = t569.
    DATA t571 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t565 = NEW zcl_lnt_istructure_component( i_name = t566 i_type_9913 = t568 i_as_include = t571 i_suffix = t573 ).
    CREATE OBJECT t565->zlnt_view_ownkeys_b0e8086400eb.
    t565->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t575 ).
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t565->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t576 ).
    ENDIF.
    CREATE OBJECT t565->zlnt_json_ownkeys_70e5fd461788.
    t565->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t577) = |name|.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t577 p1 = t578 ).
    DATA(t579) = |type|.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t565->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t579 p1 = t580 ).
    ENDIF.
    t1->load( ).
    APPEND t565 TO t1->items.
    t1->save( ).
    DATA t582 TYPE REF TO zcl_lnt_istructure_component.
    DATA t583 TYPE string.
    t583 = |winy2|.
    DATA t585 TYPE REF TO zcl_lnt_abstract_type.
    DATA t586 TYPE REF TO zcl_lnt_integer_type.
    DATA t587 TYPE REF TO zcl_lnt_abstract_type_data.
    t586 = zcl_lnt_integer_type=>get_db65( i_input_967e = t587 ).
    t585 = t586.
    DATA t588 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t582 = NEW zcl_lnt_istructure_component( i_name = t583 i_type_9913 = t585 i_as_include = t588 i_suffix = t590 ).
    CREATE OBJECT t582->zlnt_view_ownkeys_b0e8086400eb.
    t582->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t582->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t592 ).
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t582->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t582->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t593 ).
    ENDIF.
    CREATE OBJECT t582->zlnt_json_ownkeys_70e5fd461788.
    t582->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t594) = |name|.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t582->zlnt_json_ownkeys_70e5fd461788->put( p0 = t594 p1 = t595 ).
    DATA(t596) = |type|.
    DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t582->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t582->zlnt_json_ownkeys_70e5fd461788->put( p0 = t596 p1 = t597 ).
    ENDIF.
    t1->load( ).
    APPEND t582 TO t1->items.
    t1->save( ).
    DATA t599 TYPE REF TO zcl_lnt_istructure_component.
    DATA t600 TYPE string.
    t600 = |winco|.
    DATA t602 TYPE REF TO zcl_lnt_abstract_type.
    DATA t603 TYPE REF TO zcl_lnt_integer_type.
    DATA t604 TYPE REF TO zcl_lnt_abstract_type_data.
    t603 = zcl_lnt_integer_type=>get_db65( i_input_967e = t604 ).
    t602 = t603.
    DATA t605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t599 = NEW zcl_lnt_istructure_component( i_name = t600 i_type_9913 = t602 i_as_include = t605 i_suffix = t607 ).
    CREATE OBJECT t599->zlnt_view_ownkeys_b0e8086400eb.
    t599->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t609 ).
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t599->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t599->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t610 ).
    ENDIF.
    CREATE OBJECT t599->zlnt_json_ownkeys_70e5fd461788.
    t599->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t611) = |name|.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t611 p1 = t612 ).
    DATA(t613) = |type|.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t599->zlnt_json_ownkeys_70e5fd461788->put( p0 = t613 p1 = t614 ).
    ENDIF.
    t1->load( ).
    APPEND t599 TO t1->items.
    t1->save( ).
    DATA t616 TYPE REF TO zcl_lnt_istructure_component.
    DATA t617 TYPE string.
    t617 = |winro|.
    DATA t619 TYPE REF TO zcl_lnt_abstract_type.
    DATA t620 TYPE REF TO zcl_lnt_integer_type.
    DATA t621 TYPE REF TO zcl_lnt_abstract_type_data.
    t620 = zcl_lnt_integer_type=>get_db65( i_input_967e = t621 ).
    t619 = t620.
    DATA t622 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t616 = NEW zcl_lnt_istructure_component( i_name = t617 i_type_9913 = t619 i_as_include = t622 i_suffix = t624 ).
    CREATE OBJECT t616->zlnt_view_ownkeys_b0e8086400eb.
    t616->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t616->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t626 ).
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t616->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t616->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t627 ).
    ENDIF.
    CREATE OBJECT t616->zlnt_json_ownkeys_70e5fd461788.
    t616->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t628) = |name|.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t616->zlnt_json_ownkeys_70e5fd461788->put( p0 = t628 p1 = t629 ).
    DATA(t630) = |type|.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t616->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t616->zlnt_json_ownkeys_70e5fd461788->put( p0 = t630 p1 = t631 ).
    ENDIF.
    t1->load( ).
    APPEND t616 TO t1->items.
    t1->save( ).
    DATA t633 TYPE REF TO zcl_lnt_istructure_component.
    DATA t634 TYPE string.
    t634 = |windi|.
    DATA t636 TYPE REF TO zcl_lnt_abstract_type.
    DATA t637 TYPE REF TO zcl_lnt_integer_type.
    DATA t638 TYPE REF TO zcl_lnt_abstract_type_data.
    t637 = zcl_lnt_integer_type=>get_db65( i_input_967e = t638 ).
    t636 = t637.
    DATA t639 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t633 = NEW zcl_lnt_istructure_component( i_name = t634 i_type_9913 = t636 i_as_include = t639 i_suffix = t641 ).
    CREATE OBJECT t633->zlnt_view_ownkeys_b0e8086400eb.
    t633->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t643 ).
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t633->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t644 ).
    ENDIF.
    CREATE OBJECT t633->zlnt_json_ownkeys_70e5fd461788.
    t633->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t645) = |name|.
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = t645 p1 = t646 ).
    DATA(t647) = |type|.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t633->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = t647 p1 = t648 ).
    ENDIF.
    t1->load( ).
    APPEND t633 TO t1->items.
    t1->save( ).
    DATA t650 TYPE REF TO zcl_lnt_istructure_component.
    DATA t651 TYPE string.
    t651 = |srows|.
    DATA t653 TYPE REF TO zcl_lnt_abstract_type.
    DATA t654 TYPE REF TO zcl_lnt_integer_type.
    DATA t655 TYPE REF TO zcl_lnt_abstract_type_data.
    t654 = zcl_lnt_integer_type=>get_db65( i_input_967e = t655 ).
    t653 = t654.
    DATA t656 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t650 = NEW zcl_lnt_istructure_component( i_name = t651 i_type_9913 = t653 i_as_include = t656 i_suffix = t658 ).
    CREATE OBJECT t650->zlnt_view_ownkeys_b0e8086400eb.
    t650->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t650->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t660 ).
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t650->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t650->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t661 ).
    ENDIF.
    CREATE OBJECT t650->zlnt_json_ownkeys_70e5fd461788.
    t650->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t662) = |name|.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t650->zlnt_json_ownkeys_70e5fd461788->put( p0 = t662 p1 = t663 ).
    DATA(t664) = |type|.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t650->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t650->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
    ENDIF.
    t1->load( ).
    APPEND t650 TO t1->items.
    t1->save( ).
    DATA t667 TYPE REF TO zcl_lnt_istructure_component.
    DATA t668 TYPE string.
    t668 = |scols|.
    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
    DATA t671 TYPE REF TO zcl_lnt_integer_type.
    DATA t672 TYPE REF TO zcl_lnt_abstract_type_data.
    t671 = zcl_lnt_integer_type=>get_db65( i_input_967e = t672 ).
    t670 = t671.
    DATA t673 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t667 = NEW zcl_lnt_istructure_component( i_name = t668 i_type_9913 = t670 i_as_include = t673 i_suffix = t675 ).
    CREATE OBJECT t667->zlnt_view_ownkeys_b0e8086400eb.
    t667->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t667->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t677 ).
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t667->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t667->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t678 ).
    ENDIF.
    CREATE OBJECT t667->zlnt_json_ownkeys_70e5fd461788.
    t667->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t679) = |name|.
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t667->zlnt_json_ownkeys_70e5fd461788->put( p0 = t679 p1 = t680 ).
    DATA(t681) = |type|.
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t667->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t667->zlnt_json_ownkeys_70e5fd461788->put( p0 = t681 p1 = t682 ).
    ENDIF.
    t1->load( ).
    APPEND t667 TO t1->items.
    t1->save( ).
    DATA t684 TYPE REF TO zcl_lnt_istructure_component.
    DATA t685 TYPE string.
    t685 = |loopc|.
    DATA t687 TYPE REF TO zcl_lnt_abstract_type.
    DATA t688 TYPE REF TO zcl_lnt_integer_type.
    DATA t689 TYPE REF TO zcl_lnt_abstract_type_data.
    t688 = zcl_lnt_integer_type=>get_db65( i_input_967e = t689 ).
    t687 = t688.
    DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t684 = NEW zcl_lnt_istructure_component( i_name = t685 i_type_9913 = t687 i_as_include = t690 i_suffix = t692 ).
    CREATE OBJECT t684->zlnt_view_ownkeys_b0e8086400eb.
    t684->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t694 ).
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t695 ).
    ENDIF.
    CREATE OBJECT t684->zlnt_json_ownkeys_70e5fd461788.
    t684->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t696) = |name|.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t696 p1 = t697 ).
    DATA(t698) = |type|.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t698 p1 = t699 ).
    ENDIF.
    t1->load( ).
    APPEND t684 TO t1->items.
    t1->save( ).
    DATA t701 TYPE REF TO zcl_lnt_istructure_component.
    DATA t702 TYPE string.
    t702 = |folen|.
    DATA t704 TYPE REF TO zcl_lnt_abstract_type.
    DATA t705 TYPE REF TO zcl_lnt_integer_type.
    DATA t706 TYPE REF TO zcl_lnt_abstract_type_data.
    t705 = zcl_lnt_integer_type=>get_db65( i_input_967e = t706 ).
    t704 = t705.
    DATA t707 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t701 = NEW zcl_lnt_istructure_component( i_name = t702 i_type_9913 = t704 i_as_include = t707 i_suffix = t709 ).
    CREATE OBJECT t701->zlnt_view_ownkeys_b0e8086400eb.
    t701->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t711 ).
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t701->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t712 ).
    ENDIF.
    CREATE OBJECT t701->zlnt_json_ownkeys_70e5fd461788.
    t701->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t713) = |name|.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t713 p1 = t714 ).
    DATA(t715) = |type|.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t701->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t715 p1 = t716 ).
    ENDIF.
    t1->load( ).
    APPEND t701 TO t1->items.
    t1->save( ).
    DATA t718 TYPE REF TO zcl_lnt_istructure_component.
    DATA t719 TYPE string.
    t719 = |fodec|.
    DATA t721 TYPE REF TO zcl_lnt_abstract_type.
    DATA t722 TYPE REF TO zcl_lnt_integer_type.
    DATA t723 TYPE REF TO zcl_lnt_abstract_type_data.
    t722 = zcl_lnt_integer_type=>get_db65( i_input_967e = t723 ).
    t721 = t722.
    DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t718 = NEW zcl_lnt_istructure_component( i_name = t719 i_type_9913 = t721 i_as_include = t724 i_suffix = t726 ).
    CREATE OBJECT t718->zlnt_view_ownkeys_b0e8086400eb.
    t718->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t718->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t728 ).
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t718->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t718->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t729 ).
    ENDIF.
    CREATE OBJECT t718->zlnt_json_ownkeys_70e5fd461788.
    t718->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t730) = |name|.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t718->zlnt_json_ownkeys_70e5fd461788->put( p0 = t730 p1 = t731 ).
    DATA(t732) = |type|.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t718->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t718->zlnt_json_ownkeys_70e5fd461788->put( p0 = t732 p1 = t733 ).
    ENDIF.
    t1->load( ).
    APPEND t718 TO t1->items.
    t1->save( ).
    DATA t735 TYPE REF TO zcl_lnt_istructure_component.
    DATA t736 TYPE string.
    t736 = |tzone|.
    DATA t738 TYPE REF TO zcl_lnt_abstract_type.
    DATA t739 TYPE REF TO zcl_lnt_integer_type.
    DATA t740 TYPE REF TO zcl_lnt_abstract_type_data.
    t739 = zcl_lnt_integer_type=>get_db65( i_input_967e = t740 ).
    t738 = t739.
    DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t735 = NEW zcl_lnt_istructure_component( i_name = t736 i_type_9913 = t738 i_as_include = t741 i_suffix = t743 ).
    CREATE OBJECT t735->zlnt_view_ownkeys_b0e8086400eb.
    t735->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t745 ).
    DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t746 ).
    ENDIF.
    CREATE OBJECT t735->zlnt_json_ownkeys_70e5fd461788.
    t735->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t747) = |name|.
    DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t747 p1 = t748 ).
    DATA(t749) = |type|.
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t749 p1 = t750 ).
    ENDIF.
    t1->load( ).
    APPEND t735 TO t1->items.
    t1->save( ).
    DATA t752 TYPE REF TO zcl_lnt_istructure_component.
    DATA t753 TYPE string.
    t753 = |dayst|.
    DATA t755 TYPE REF TO zcl_lnt_abstract_type.
    DATA t756 TYPE REF TO zcl_lnt_character_type.
    DATA(t757) = CONV f( 1 ).
    DATA t758 TYPE REF TO zcl_lnt_abstract_type_data.
    t756 = NEW zcl_lnt_character_type( i_length = t757 i_extra = t758 ).
    t755 = t756.
    DATA t759 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t752 = NEW zcl_lnt_istructure_component( i_name = t753 i_type_9913 = t755 i_as_include = t759 i_suffix = t761 ).
    CREATE OBJECT t752->zlnt_view_ownkeys_b0e8086400eb.
    t752->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t763 ).
    DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t752->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t764 ).
    ENDIF.
    CREATE OBJECT t752->zlnt_json_ownkeys_70e5fd461788.
    t752->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t765) = |name|.
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = t765 p1 = t766 ).
    DATA(t767) = |type|.
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = t767 p1 = t768 ).
    ENDIF.
    t1->load( ).
    APPEND t752 TO t1->items.
    t1->save( ).
    DATA t770 TYPE REF TO zcl_lnt_istructure_component.
    DATA t771 TYPE string.
    t771 = |ftype|.
    DATA t773 TYPE REF TO zcl_lnt_abstract_type.
    DATA t774 TYPE REF TO zcl_lnt_character_type.
    DATA(t775) = CONV f( 1 ).
    DATA t776 TYPE REF TO zcl_lnt_abstract_type_data.
    t774 = NEW zcl_lnt_character_type( i_length = t775 i_extra = t776 ).
    t773 = t774.
    DATA t777 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t770 = NEW zcl_lnt_istructure_component( i_name = t771 i_type_9913 = t773 i_as_include = t777 i_suffix = t779 ).
    CREATE OBJECT t770->zlnt_view_ownkeys_b0e8086400eb.
    t770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t781 ).
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t782 ).
    ENDIF.
    CREATE OBJECT t770->zlnt_json_ownkeys_70e5fd461788.
    t770->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t783) = |name|.
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t783 p1 = t784 ).
    DATA(t785) = |type|.
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t785 p1 = t786 ).
    ENDIF.
    t1->load( ).
    APPEND t770 TO t1->items.
    t1->save( ).
    DATA t788 TYPE REF TO zcl_lnt_istructure_component.
    DATA t789 TYPE string.
    t789 = |appli|.
    DATA t791 TYPE REF TO zcl_lnt_abstract_type.
    DATA t792 TYPE REF TO zcl_lnt_hex_type.
    DATA(t793) = CONV f( 2 ).
    DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t792 = NEW zcl_lnt_hex_type( i_length = t793 i_qualified_name = t794 ).
    t791 = t792.
    DATA t795 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t788 = NEW zcl_lnt_istructure_component( i_name = t789 i_type_9913 = t791 i_as_include = t795 i_suffix = t797 ).
    CREATE OBJECT t788->zlnt_view_ownkeys_b0e8086400eb.
    t788->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t788->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t799 ).
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t788->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t788->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t800 ).
    ENDIF.
    CREATE OBJECT t788->zlnt_json_ownkeys_70e5fd461788.
    t788->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t801) = |name|.
    DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t788->zlnt_json_ownkeys_70e5fd461788->put( p0 = t801 p1 = t802 ).
    DATA(t803) = |type|.
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t788->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t788->zlnt_json_ownkeys_70e5fd461788->put( p0 = t803 p1 = t804 ).
    ENDIF.
    t1->load( ).
    APPEND t788 TO t1->items.
    t1->save( ).
    DATA t806 TYPE REF TO zcl_lnt_istructure_component.
    DATA t807 TYPE string.
    t807 = |fdayw|.
    DATA t809 TYPE REF TO zcl_lnt_abstract_type.
    DATA t810 TYPE REF TO zcl_lnt_any_type.
    DATA t811 TYPE REF TO zcl_lnt_abstract_type_data.
    t810 = zcl_lnt_any_type=>get_db65( i_input_967e = t811 ).
    t809 = t810.
    DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t806 = NEW zcl_lnt_istructure_component( i_name = t807 i_type_9913 = t809 i_as_include = t812 i_suffix = t814 ).
    CREATE OBJECT t806->zlnt_view_ownkeys_b0e8086400eb.
    t806->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t806->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t816 ).
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t806->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t806->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t817 ).
    ENDIF.
    CREATE OBJECT t806->zlnt_json_ownkeys_70e5fd461788.
    t806->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t818) = |name|.
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t806->zlnt_json_ownkeys_70e5fd461788->put( p0 = t818 p1 = t819 ).
    DATA(t820) = |type|.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t806->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t806->zlnt_json_ownkeys_70e5fd461788->put( p0 = t820 p1 = t821 ).
    ENDIF.
    t1->load( ).
    APPEND t806 TO t1->items.
    t1->save( ).
    DATA t823 TYPE REF TO zcl_lnt_istructure_component.
    DATA t824 TYPE string.
    t824 = |ccurs|.
    DATA t826 TYPE REF TO zcl_lnt_abstract_type.
    DATA t827 TYPE REF TO zcl_lnt_packed_type.
    DATA(t828) = CONV f( 5 ).
    DATA(t829) = CONV f( 0 ).
    DATA t830 TYPE REF TO zcl_lnt_abstract_type_data.
    t827 = NEW zcl_lnt_packed_type( i_length = t828 i_decimals_2eed = t829 i_extra = t830 ).
    t826 = t827.
    DATA t831 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t823 = NEW zcl_lnt_istructure_component( i_name = t824 i_type_9913 = t826 i_as_include = t831 i_suffix = t833 ).
    CREATE OBJECT t823->zlnt_view_ownkeys_b0e8086400eb.
    t823->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t823->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t835 ).
    DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t823->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t823->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t836 ).
    ENDIF.
    CREATE OBJECT t823->zlnt_json_ownkeys_70e5fd461788.
    t823->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t837) = |name|.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t823->zlnt_json_ownkeys_70e5fd461788->put( p0 = t837 p1 = t838 ).
    DATA(t839) = |type|.
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t823->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t823->zlnt_json_ownkeys_70e5fd461788->put( p0 = t839 p1 = t840 ).
    ENDIF.
    t1->load( ).
    APPEND t823 TO t1->items.
    t1->save( ).
    DATA t842 TYPE REF TO zcl_lnt_istructure_component.
    DATA t843 TYPE string.
    t843 = |ccurt|.
    DATA t845 TYPE REF TO zcl_lnt_abstract_type.
    DATA t846 TYPE REF TO zcl_lnt_packed_type.
    DATA(t847) = CONV f( 5 ).
    DATA(t848) = CONV f( 0 ).
    DATA t849 TYPE REF TO zcl_lnt_abstract_type_data.
    t846 = NEW zcl_lnt_packed_type( i_length = t847 i_decimals_2eed = t848 i_extra = t849 ).
    t845 = t846.
    DATA t850 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t842 = NEW zcl_lnt_istructure_component( i_name = t843 i_type_9913 = t845 i_as_include = t850 i_suffix = t852 ).
    CREATE OBJECT t842->zlnt_view_ownkeys_b0e8086400eb.
    t842->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t842->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t854 ).
    DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t842->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t842->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t855 ).
    ENDIF.
    CREATE OBJECT t842->zlnt_json_ownkeys_70e5fd461788.
    t842->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t856) = |name|.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t842->zlnt_json_ownkeys_70e5fd461788->put( p0 = t856 p1 = t857 ).
    DATA(t858) = |type|.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t842->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t842->zlnt_json_ownkeys_70e5fd461788->put( p0 = t858 p1 = t859 ).
    ENDIF.
    t1->load( ).
    APPEND t842 TO t1->items.
    t1->save( ).
    DATA t861 TYPE REF TO zcl_lnt_istructure_component.
    DATA t862 TYPE string.
    t862 = |debug|.
    DATA t864 TYPE REF TO zcl_lnt_abstract_type.
    DATA t865 TYPE REF TO zcl_lnt_character_type.
    DATA(t866) = CONV f( 1 ).
    DATA t867 TYPE REF TO zcl_lnt_abstract_type_data.
    t865 = NEW zcl_lnt_character_type( i_length = t866 i_extra = t867 ).
    t864 = t865.
    DATA t868 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t870 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t861 = NEW zcl_lnt_istructure_component( i_name = t862 i_type_9913 = t864 i_as_include = t868 i_suffix = t870 ).
    CREATE OBJECT t861->zlnt_view_ownkeys_b0e8086400eb.
    t861->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t861->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t872 ).
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t861->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t861->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t873 ).
    ENDIF.
    CREATE OBJECT t861->zlnt_json_ownkeys_70e5fd461788.
    t861->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t874) = |name|.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t861->zlnt_json_ownkeys_70e5fd461788->put( p0 = t874 p1 = t875 ).
    DATA(t876) = |type|.
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t861->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t861->zlnt_json_ownkeys_70e5fd461788->put( p0 = t876 p1 = t877 ).
    ENDIF.
    t1->load( ).
    APPEND t861 TO t1->items.
    t1->save( ).
    DATA t879 TYPE REF TO zcl_lnt_istructure_component.
    DATA t880 TYPE string.
    t880 = |ctype|.
    DATA t882 TYPE REF TO zcl_lnt_abstract_type.
    DATA t883 TYPE REF TO zcl_lnt_character_type.
    DATA(t884) = CONV f( 1 ).
    DATA t885 TYPE REF TO zcl_lnt_abstract_type_data.
    t883 = NEW zcl_lnt_character_type( i_length = t884 i_extra = t885 ).
    t882 = t883.
    DATA t886 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t879 = NEW zcl_lnt_istructure_component( i_name = t880 i_type_9913 = t882 i_as_include = t886 i_suffix = t888 ).
    CREATE OBJECT t879->zlnt_view_ownkeys_b0e8086400eb.
    t879->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t879->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t890 ).
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t879->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t879->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t891 ).
    ENDIF.
    CREATE OBJECT t879->zlnt_json_ownkeys_70e5fd461788.
    t879->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t892) = |name|.
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t879->zlnt_json_ownkeys_70e5fd461788->put( p0 = t892 p1 = t893 ).
    DATA(t894) = |type|.
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t879->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t879->zlnt_json_ownkeys_70e5fd461788->put( p0 = t894 p1 = t895 ).
    ENDIF.
    t1->load( ).
    APPEND t879 TO t1->items.
    t1->save( ).
    DATA t897 TYPE REF TO zcl_lnt_istructure_component.
    DATA t898 TYPE string.
    t898 = |input|.
    DATA t900 TYPE REF TO zcl_lnt_abstract_type.
    DATA t901 TYPE REF TO zcl_lnt_character_type.
    DATA(t902) = CONV f( 1 ).
    DATA t903 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t905 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t909) = |sy-input|.
    DATA(t910) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t910->has = abap_true.
    t910->value = t909.
    t906 = t910.
    DATA t912 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t914 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t905 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t906 i_conversion_exit = t912 i_derived_from_constant = t914 i_ddic_name = t916 i_rtti_name = t918 i_description = t920 ).
    CREATE OBJECT t905->zlnt_view_ownkeys_b0e8086400eb.
    t905->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t905->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t922 ).
    CREATE OBJECT t905->zlnt_json_ownkeys_70e5fd461788.
    t905->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t923) = |qualifiedName|.
    DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t905->zlnt_json_ownkeys_70e5fd461788->put( p0 = t923 p1 = t924 ).
    t903 = t905.
    t901 = NEW zcl_lnt_character_type( i_length = t902 i_extra = t903 ).
    t900 = t901.
    DATA t926 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t928 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t897 = NEW zcl_lnt_istructure_component( i_name = t898 i_type_9913 = t900 i_as_include = t926 i_suffix = t928 ).
    CREATE OBJECT t897->zlnt_view_ownkeys_b0e8086400eb.
    t897->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t897->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t930 ).
    DATA t931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t897->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t897->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t931 ).
    ENDIF.
    CREATE OBJECT t897->zlnt_json_ownkeys_70e5fd461788.
    t897->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t932) = |name|.
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t897->zlnt_json_ownkeys_70e5fd461788->put( p0 = t932 p1 = t933 ).
    DATA(t934) = |type|.
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t897->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t897->zlnt_json_ownkeys_70e5fd461788->put( p0 = t934 p1 = t935 ).
    ENDIF.
    t1->load( ).
    APPEND t897 TO t1->items.
    t1->save( ).
    DATA t937 TYPE REF TO zcl_lnt_istructure_component.
    DATA t938 TYPE string.
    t938 = |langu|.
    DATA t940 TYPE REF TO zcl_lnt_abstract_type.
    DATA t941 TYPE REF TO zcl_lnt_character_type.
    DATA(t942) = CONV f( 1 ).
    DATA t943 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t945 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t949) = |sy-langu|.
    DATA(t950) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t950->has = abap_true.
    t950->value = t949.
    t946 = t950.
    DATA t952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t955) = |ISOLA|.
    DATA(t956) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t956->has = abap_true.
    t956->value = t955.
    t952 = t956.
    DATA t958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t945 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t946 i_conversion_exit = t952 i_derived_from_constant = t958 i_ddic_name = t960 i_rtti_name = t962 i_description = t964 ).
    CREATE OBJECT t945->zlnt_view_ownkeys_b0e8086400eb.
    t945->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t966 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t945->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t966 ).
    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t945->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t945->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t967 ).
    ENDIF.
    CREATE OBJECT t945->zlnt_json_ownkeys_70e5fd461788.
    t945->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t968) = |qualifiedName|.
    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t945->zlnt_json_ownkeys_70e5fd461788->put( p0 = t968 p1 = t969 ).
    DATA(t970) = |conversionExit|.
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t945->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t945->zlnt_json_ownkeys_70e5fd461788->put( p0 = t970 p1 = t971 ).
    ENDIF.
    t943 = t945.
    t941 = NEW zcl_lnt_character_type( i_length = t942 i_extra = t943 ).
    t940 = t941.
    DATA t973 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t937 = NEW zcl_lnt_istructure_component( i_name = t938 i_type_9913 = t940 i_as_include = t973 i_suffix = t975 ).
    CREATE OBJECT t937->zlnt_view_ownkeys_b0e8086400eb.
    t937->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t937->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t977 ).
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t937->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t937->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t978 ).
    ENDIF.
    CREATE OBJECT t937->zlnt_json_ownkeys_70e5fd461788.
    t937->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t979) = |name|.
    DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t937->zlnt_json_ownkeys_70e5fd461788->put( p0 = t979 p1 = t980 ).
    DATA(t981) = |type|.
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t937->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t937->zlnt_json_ownkeys_70e5fd461788->put( p0 = t981 p1 = t982 ).
    ENDIF.
    t1->load( ).
    APPEND t937 TO t1->items.
    t1->save( ).
    DATA t984 TYPE REF TO zcl_lnt_istructure_component.
    DATA t985 TYPE string.
    t985 = |modno|.
    DATA t987 TYPE REF TO zcl_lnt_abstract_type.
    DATA t988 TYPE REF TO zcl_lnt_integer_type.
    DATA t989 TYPE REF TO zcl_lnt_abstract_type_data.
    t988 = zcl_lnt_integer_type=>get_db65( i_input_967e = t989 ).
    t987 = t988.
    DATA t990 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t984 = NEW zcl_lnt_istructure_component( i_name = t985 i_type_9913 = t987 i_as_include = t990 i_suffix = t992 ).
    CREATE OBJECT t984->zlnt_view_ownkeys_b0e8086400eb.
    t984->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t984->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t994 ).
    DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t984->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t984->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t995 ).
    ENDIF.
    CREATE OBJECT t984->zlnt_json_ownkeys_70e5fd461788.
    t984->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t996) = |name|.
    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t984->zlnt_json_ownkeys_70e5fd461788->put( p0 = t996 p1 = t997 ).
    DATA(t998) = |type|.
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t984->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t984->zlnt_json_ownkeys_70e5fd461788->put( p0 = t998 p1 = t999 ).
    ENDIF.
    t1->load( ).
    APPEND t984 TO t1->items.
    t1->save( ).
    DATA t1001 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1002 TYPE string.
    t1002 = |batch|.
    DATA t1004 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1005 TYPE REF TO zcl_lnt_character_type.
    DATA(t1006) = CONV f( 1 ).
    DATA t1007 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1009 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1010 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1013) = |sy-batch|.
    DATA(t1014) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1014->has = abap_true.
    t1014->value = t1013.
    t1010 = t1014.
    DATA t1016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1018 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1020 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1022 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1009 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1010 i_conversion_exit = t1016 i_derived_from_constant = t1018 i_ddic_name = t1020 i_rtti_name = t1022 i_description = t1024 ).
    CREATE OBJECT t1009->zlnt_view_ownkeys_b0e8086400eb.
    t1009->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1009->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1026 ).
    CREATE OBJECT t1009->zlnt_json_ownkeys_70e5fd461788.
    t1009->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1027) = |qualifiedName|.
    DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1009->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1027 p1 = t1028 ).
    t1007 = t1009.
    t1005 = NEW zcl_lnt_character_type( i_length = t1006 i_extra = t1007 ).
    t1004 = t1005.
    DATA t1030 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1001 = NEW zcl_lnt_istructure_component( i_name = t1002 i_type_9913 = t1004 i_as_include = t1030 i_suffix = t1032 ).
    CREATE OBJECT t1001->zlnt_view_ownkeys_b0e8086400eb.
    t1001->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1001->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1034 ).
    DATA t1035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1001->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1001->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1035 ).
    ENDIF.
    CREATE OBJECT t1001->zlnt_json_ownkeys_70e5fd461788.
    t1001->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1036) = |name|.
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1001->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1036 p1 = t1037 ).
    DATA(t1038) = |type|.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1001->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1001->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1038 p1 = t1039 ).
    ENDIF.
    t1->load( ).
    APPEND t1001 TO t1->items.
    t1->save( ).
    DATA t1041 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1042 TYPE string.
    t1042 = |binpt|.
    DATA t1044 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1045 TYPE REF TO zcl_lnt_character_type.
    DATA(t1046) = CONV f( 1 ).
    DATA t1047 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1049 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1053) = |sy-binpt|.
    DATA(t1054) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1054->has = abap_true.
    t1054->value = t1053.
    t1050 = t1054.
    DATA t1056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1058 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1049 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1050 i_conversion_exit = t1056 i_derived_from_constant = t1058 i_ddic_name = t1060 i_rtti_name = t1062 i_description = t1064 ).
    CREATE OBJECT t1049->zlnt_view_ownkeys_b0e8086400eb.
    t1049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1066 ).
    CREATE OBJECT t1049->zlnt_json_ownkeys_70e5fd461788.
    t1049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1067) = |qualifiedName|.
    DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1067 p1 = t1068 ).
    t1047 = t1049.
    t1045 = NEW zcl_lnt_character_type( i_length = t1046 i_extra = t1047 ).
    t1044 = t1045.
    DATA t1070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1041 = NEW zcl_lnt_istructure_component( i_name = t1042 i_type_9913 = t1044 i_as_include = t1070 i_suffix = t1072 ).
    CREATE OBJECT t1041->zlnt_view_ownkeys_b0e8086400eb.
    t1041->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1041->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1074 ).
    DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1041->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1041->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1075 ).
    ENDIF.
    CREATE OBJECT t1041->zlnt_json_ownkeys_70e5fd461788.
    t1041->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1076) = |name|.
    DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1041->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1076 p1 = t1077 ).
    DATA(t1078) = |type|.
    DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1041->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1041->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1078 p1 = t1079 ).
    ENDIF.
    t1->load( ).
    APPEND t1041 TO t1->items.
    t1->save( ).
    DATA t1081 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1082 TYPE string.
    t1082 = |calld|.
    DATA t1084 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1085 TYPE REF TO zcl_lnt_character_type.
    DATA(t1086) = CONV f( 1 ).
    DATA t1087 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1089 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1093) = |sy-calld|.
    DATA(t1094) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1094->has = abap_true.
    t1094->value = t1093.
    t1090 = t1094.
    DATA t1096 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1098 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1089 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1090 i_conversion_exit = t1096 i_derived_from_constant = t1098 i_ddic_name = t1100 i_rtti_name = t1102 i_description = t1104 ).
    CREATE OBJECT t1089->zlnt_view_ownkeys_b0e8086400eb.
    t1089->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1089->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1106 ).
    CREATE OBJECT t1089->zlnt_json_ownkeys_70e5fd461788.
    t1089->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1107) = |qualifiedName|.
    DATA t1108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1089->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1107 p1 = t1108 ).
    t1087 = t1089.
    t1085 = NEW zcl_lnt_character_type( i_length = t1086 i_extra = t1087 ).
    t1084 = t1085.
    DATA t1110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1081 = NEW zcl_lnt_istructure_component( i_name = t1082 i_type_9913 = t1084 i_as_include = t1110 i_suffix = t1112 ).
    CREATE OBJECT t1081->zlnt_view_ownkeys_b0e8086400eb.
    t1081->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1081->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1114 ).
    DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1081->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1081->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1115 ).
    ENDIF.
    CREATE OBJECT t1081->zlnt_json_ownkeys_70e5fd461788.
    t1081->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1116) = |name|.
    DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1081->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1116 p1 = t1117 ).
    DATA(t1118) = |type|.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1081->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1081->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1118 p1 = t1119 ).
    ENDIF.
    t1->load( ).
    APPEND t1081 TO t1->items.
    t1->save( ).
    DATA t1121 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1122 TYPE string.
    t1122 = |dynnr|.
    DATA t1124 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1125 TYPE REF TO zcl_lnt_character_type.
    DATA(t1126) = CONV f( 4 ).
    DATA t1127 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1129 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1133) = |sy-dynnr|.
    DATA(t1134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1134->has = abap_true.
    t1134->value = t1133.
    t1130 = t1134.
    DATA t1136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1129 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1130 i_conversion_exit = t1136 i_derived_from_constant = t1138 i_ddic_name = t1140 i_rtti_name = t1142 i_description = t1144 ).
    CREATE OBJECT t1129->zlnt_view_ownkeys_b0e8086400eb.
    t1129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1146 ).
    CREATE OBJECT t1129->zlnt_json_ownkeys_70e5fd461788.
    t1129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1147) = |qualifiedName|.
    DATA t1148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1147 p1 = t1148 ).
    t1127 = t1129.
    t1125 = NEW zcl_lnt_character_type( i_length = t1126 i_extra = t1127 ).
    t1124 = t1125.
    DATA t1150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1121 = NEW zcl_lnt_istructure_component( i_name = t1122 i_type_9913 = t1124 i_as_include = t1150 i_suffix = t1152 ).
    CREATE OBJECT t1121->zlnt_view_ownkeys_b0e8086400eb.
    t1121->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1154 ).
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1121->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1155 ).
    ENDIF.
    CREATE OBJECT t1121->zlnt_json_ownkeys_70e5fd461788.
    t1121->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1156) = |name|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    DATA(t1158) = |type|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    t1->load( ).
    APPEND t1121 TO t1->items.
    t1->save( ).
    DATA t1161 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1162 TYPE string.
    t1162 = |dyngr|.
    DATA t1164 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1165 TYPE REF TO zcl_lnt_character_type.
    DATA(t1166) = CONV f( 4 ).
    DATA t1167 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1169 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1173) = |sy-dyngr|.
    DATA(t1174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1174->has = abap_true.
    t1174->value = t1173.
    t1170 = t1174.
    DATA t1176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1169 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1170 i_conversion_exit = t1176 i_derived_from_constant = t1178 i_ddic_name = t1180 i_rtti_name = t1182 i_description = t1184 ).
    CREATE OBJECT t1169->zlnt_view_ownkeys_b0e8086400eb.
    t1169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1186 ).
    CREATE OBJECT t1169->zlnt_json_ownkeys_70e5fd461788.
    t1169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1187) = |qualifiedName|.
    DATA t1188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1187 p1 = t1188 ).
    t1167 = t1169.
    t1165 = NEW zcl_lnt_character_type( i_length = t1166 i_extra = t1167 ).
    t1164 = t1165.
    DATA t1190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1161 = NEW zcl_lnt_istructure_component( i_name = t1162 i_type_9913 = t1164 i_as_include = t1190 i_suffix = t1192 ).
    CREATE OBJECT t1161->zlnt_view_ownkeys_b0e8086400eb.
    t1161->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1194 ).
    DATA t1195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1161->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1161->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1195 ).
    ENDIF.
    CREATE OBJECT t1161->zlnt_json_ownkeys_70e5fd461788.
    t1161->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1196) = |name|.
    DATA t1197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1196 p1 = t1197 ).
    DATA(t1198) = |type|.
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1161->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1198 p1 = t1199 ).
    ENDIF.
    t1->load( ).
    APPEND t1161 TO t1->items.
    t1->save( ).
    DATA t1201 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1202 TYPE string.
    t1202 = |newpa|.
    DATA t1204 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1205 TYPE REF TO zcl_lnt_character_type.
    DATA(t1206) = CONV f( 1 ).
    DATA t1207 TYPE REF TO zcl_lnt_abstract_type_data.
    t1205 = NEW zcl_lnt_character_type( i_length = t1206 i_extra = t1207 ).
    t1204 = t1205.
    DATA t1208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1201 = NEW zcl_lnt_istructure_component( i_name = t1202 i_type_9913 = t1204 i_as_include = t1208 i_suffix = t1210 ).
    CREATE OBJECT t1201->zlnt_view_ownkeys_b0e8086400eb.
    t1201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1212 ).
    DATA t1213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1213 ).
    ENDIF.
    CREATE OBJECT t1201->zlnt_json_ownkeys_70e5fd461788.
    t1201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1214) = |name|.
    DATA t1215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1214 p1 = t1215 ).
    DATA(t1216) = |type|.
    DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1216 p1 = t1217 ).
    ENDIF.
    t1->load( ).
    APPEND t1201 TO t1->items.
    t1->save( ).
    DATA t1219 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1220 TYPE string.
    t1220 = |pri40|.
    DATA t1222 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1223 TYPE REF TO zcl_lnt_character_type.
    DATA(t1224) = CONV f( 1 ).
    DATA t1225 TYPE REF TO zcl_lnt_abstract_type_data.
    t1223 = NEW zcl_lnt_character_type( i_length = t1224 i_extra = t1225 ).
    t1222 = t1223.
    DATA t1226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1219 = NEW zcl_lnt_istructure_component( i_name = t1220 i_type_9913 = t1222 i_as_include = t1226 i_suffix = t1228 ).
    CREATE OBJECT t1219->zlnt_view_ownkeys_b0e8086400eb.
    t1219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1230 ).
    DATA t1231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1231 ).
    ENDIF.
    CREATE OBJECT t1219->zlnt_json_ownkeys_70e5fd461788.
    t1219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1232) = |name|.
    DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1232 p1 = t1233 ).
    DATA(t1234) = |type|.
    DATA t1235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1234 p1 = t1235 ).
    ENDIF.
    t1->load( ).
    APPEND t1219 TO t1->items.
    t1->save( ).
    DATA t1237 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1238 TYPE string.
    t1238 = |rstrt|.
    DATA t1240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1241 TYPE REF TO zcl_lnt_character_type.
    DATA(t1242) = CONV f( 1 ).
    DATA t1243 TYPE REF TO zcl_lnt_abstract_type_data.
    t1241 = NEW zcl_lnt_character_type( i_length = t1242 i_extra = t1243 ).
    t1240 = t1241.
    DATA t1244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1237 = NEW zcl_lnt_istructure_component( i_name = t1238 i_type_9913 = t1240 i_as_include = t1244 i_suffix = t1246 ).
    CREATE OBJECT t1237->zlnt_view_ownkeys_b0e8086400eb.
    t1237->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1237->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1248 ).
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1237->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1237->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1249 ).
    ENDIF.
    CREATE OBJECT t1237->zlnt_json_ownkeys_70e5fd461788.
    t1237->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1250) = |name|.
    DATA t1251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1237->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1250 p1 = t1251 ).
    DATA(t1252) = |type|.
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1237->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1237->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1252 p1 = t1253 ).
    ENDIF.
    t1->load( ).
    APPEND t1237 TO t1->items.
    t1->save( ).
    DATA t1255 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1256 TYPE string.
    t1256 = |wtitl|.
    DATA t1258 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1259 TYPE REF TO zcl_lnt_character_type.
    DATA(t1260) = CONV f( 1 ).
    DATA t1261 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1263 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1267) = |sy-wtitl|.
    DATA(t1268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1268->has = abap_true.
    t1268->value = t1267.
    t1264 = t1268.
    DATA t1270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1263 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1264 i_conversion_exit = t1270 i_derived_from_constant = t1272 i_ddic_name = t1274 i_rtti_name = t1276 i_description = t1278 ).
    CREATE OBJECT t1263->zlnt_view_ownkeys_b0e8086400eb.
    t1263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1280 ).
    CREATE OBJECT t1263->zlnt_json_ownkeys_70e5fd461788.
    t1263->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1281) = |qualifiedName|.
    DATA t1282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1281 p1 = t1282 ).
    t1261 = t1263.
    t1259 = NEW zcl_lnt_character_type( i_length = t1260 i_extra = t1261 ).
    t1258 = t1259.
    DATA t1284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1255 = NEW zcl_lnt_istructure_component( i_name = t1256 i_type_9913 = t1258 i_as_include = t1284 i_suffix = t1286 ).
    CREATE OBJECT t1255->zlnt_view_ownkeys_b0e8086400eb.
    t1255->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1288 ).
    DATA t1289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1255->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1255->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1289 ).
    ENDIF.
    CREATE OBJECT t1255->zlnt_json_ownkeys_70e5fd461788.
    t1255->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1290) = |name|.
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1290 p1 = t1291 ).
    DATA(t1292) = |type|.
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1255->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1292 p1 = t1293 ).
    ENDIF.
    t1->load( ).
    APPEND t1255 TO t1->items.
    t1->save( ).
    DATA t1295 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1296 TYPE string.
    t1296 = |cpage|.
    DATA t1298 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1299 TYPE REF TO zcl_lnt_integer_type.
    DATA t1300 TYPE REF TO zcl_lnt_abstract_type_data.
    t1299 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1300 ).
    t1298 = t1299.
    DATA t1301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1295 = NEW zcl_lnt_istructure_component( i_name = t1296 i_type_9913 = t1298 i_as_include = t1301 i_suffix = t1303 ).
    CREATE OBJECT t1295->zlnt_view_ownkeys_b0e8086400eb.
    t1295->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1305 ).
    DATA t1306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1295->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1295->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1306 ).
    ENDIF.
    CREATE OBJECT t1295->zlnt_json_ownkeys_70e5fd461788.
    t1295->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1307) = |name|.
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1307 p1 = t1308 ).
    DATA(t1309) = |type|.
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1309 p1 = t1310 ).
    ENDIF.
    t1->load( ).
    APPEND t1295 TO t1->items.
    t1->save( ).
    DATA t1312 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1313 TYPE string.
    t1313 = |dbnam|.
    DATA t1315 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1316 TYPE REF TO zcl_lnt_character_type.
    DATA(t1317) = CONV f( 20 ).
    DATA t1318 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1320 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1324) = |sy-dbnam|.
    DATA(t1325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1325->has = abap_true.
    t1325->value = t1324.
    t1321 = t1325.
    DATA t1327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1329 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1320 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1321 i_conversion_exit = t1327 i_derived_from_constant = t1329 i_ddic_name = t1331 i_rtti_name = t1333 i_description = t1335 ).
    CREATE OBJECT t1320->zlnt_view_ownkeys_b0e8086400eb.
    t1320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1337 ).
    CREATE OBJECT t1320->zlnt_json_ownkeys_70e5fd461788.
    t1320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1338) = |qualifiedName|.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1338 p1 = t1339 ).
    t1318 = t1320.
    t1316 = NEW zcl_lnt_character_type( i_length = t1317 i_extra = t1318 ).
    t1315 = t1316.
    DATA t1341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1312 = NEW zcl_lnt_istructure_component( i_name = t1313 i_type_9913 = t1315 i_as_include = t1341 i_suffix = t1343 ).
    CREATE OBJECT t1312->zlnt_view_ownkeys_b0e8086400eb.
    t1312->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1345 ).
    DATA t1346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1312->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1312->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1346 ).
    ENDIF.
    CREATE OBJECT t1312->zlnt_json_ownkeys_70e5fd461788.
    t1312->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1347) = |name|.
    DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1347 p1 = t1348 ).
    DATA(t1349) = |type|.
    DATA t1350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1312->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1349 p1 = t1350 ).
    ENDIF.
    t1->load( ).
    APPEND t1312 TO t1->items.
    t1->save( ).
    DATA t1352 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1353 TYPE string.
    t1353 = |mandt|.
    DATA t1355 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1356 TYPE REF TO zcl_lnt_character_type.
    DATA(t1357) = CONV f( 3 ).
    DATA t1358 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1360 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1364) = |sy-mandt|.
    DATA(t1365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1365->has = abap_true.
    t1365->value = t1364.
    t1361 = t1365.
    DATA t1367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1369 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1360 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1361 i_conversion_exit = t1367 i_derived_from_constant = t1369 i_ddic_name = t1371 i_rtti_name = t1373 i_description = t1375 ).
    CREATE OBJECT t1360->zlnt_view_ownkeys_b0e8086400eb.
    t1360->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1360->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1377 ).
    CREATE OBJECT t1360->zlnt_json_ownkeys_70e5fd461788.
    t1360->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1378) = |qualifiedName|.
    DATA t1379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1360->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1378 p1 = t1379 ).
    t1358 = t1360.
    t1356 = NEW zcl_lnt_character_type( i_length = t1357 i_extra = t1358 ).
    t1355 = t1356.
    DATA t1381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1352 = NEW zcl_lnt_istructure_component( i_name = t1353 i_type_9913 = t1355 i_as_include = t1381 i_suffix = t1383 ).
    CREATE OBJECT t1352->zlnt_view_ownkeys_b0e8086400eb.
    t1352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1385 ).
    DATA t1386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1386 ).
    ENDIF.
    CREATE OBJECT t1352->zlnt_json_ownkeys_70e5fd461788.
    t1352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1387) = |name|.
    DATA t1388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1387 p1 = t1388 ).
    DATA(t1389) = |type|.
    DATA t1390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1389 p1 = t1390 ).
    ENDIF.
    t1->load( ).
    APPEND t1352 TO t1->items.
    t1->save( ).
    DATA t1392 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1393 TYPE string.
    t1393 = |prefx|.
    DATA t1395 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1396 TYPE REF TO zcl_lnt_character_type.
    DATA(t1397) = CONV f( 3 ).
    DATA t1398 TYPE REF TO zcl_lnt_abstract_type_data.
    t1396 = NEW zcl_lnt_character_type( i_length = t1397 i_extra = t1398 ).
    t1395 = t1396.
    DATA t1399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1392 = NEW zcl_lnt_istructure_component( i_name = t1393 i_type_9913 = t1395 i_as_include = t1399 i_suffix = t1401 ).
    CREATE OBJECT t1392->zlnt_view_ownkeys_b0e8086400eb.
    t1392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1403 ).
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1404 ).
    ENDIF.
    CREATE OBJECT t1392->zlnt_json_ownkeys_70e5fd461788.
    t1392->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1405) = |name|.
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1405 p1 = t1406 ).
    DATA(t1407) = |type|.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1407 p1 = t1408 ).
    ENDIF.
    t1->load( ).
    APPEND t1392 TO t1->items.
    t1->save( ).
    DATA t1410 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1411 TYPE string.
    t1411 = |fmkey|.
    DATA t1413 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1414 TYPE REF TO zcl_lnt_character_type.
    DATA(t1415) = CONV f( 3 ).
    DATA t1416 TYPE REF TO zcl_lnt_abstract_type_data.
    t1414 = NEW zcl_lnt_character_type( i_length = t1415 i_extra = t1416 ).
    t1413 = t1414.
    DATA t1417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1410 = NEW zcl_lnt_istructure_component( i_name = t1411 i_type_9913 = t1413 i_as_include = t1417 i_suffix = t1419 ).
    CREATE OBJECT t1410->zlnt_view_ownkeys_b0e8086400eb.
    t1410->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1421 ).
    DATA t1422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1410->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1422 ).
    ENDIF.
    CREATE OBJECT t1410->zlnt_json_ownkeys_70e5fd461788.
    t1410->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1423) = |name|.
    DATA t1424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1423 p1 = t1424 ).
    DATA(t1425) = |type|.
    DATA t1426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1425 p1 = t1426 ).
    ENDIF.
    t1->load( ).
    APPEND t1410 TO t1->items.
    t1->save( ).
    DATA t1428 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1429 TYPE string.
    t1429 = |pexpi|.
    DATA t1431 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1432 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t1433) = CONV f( 1 ).
    DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1432 = NEW zcl_lnt_numeric_type( i_length = t1433 i_qualified_name = t1434 ).
    t1431 = t1432.
    DATA t1435 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1428 = NEW zcl_lnt_istructure_component( i_name = t1429 i_type_9913 = t1431 i_as_include = t1435 i_suffix = t1437 ).
    CREATE OBJECT t1428->zlnt_view_ownkeys_b0e8086400eb.
    t1428->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1439 ).
    DATA t1440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1440 ).
    ENDIF.
    CREATE OBJECT t1428->zlnt_json_ownkeys_70e5fd461788.
    t1428->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1441) = |name|.
    DATA t1442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1441 p1 = t1442 ).
    DATA(t1443) = |type|.
    DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1443 p1 = t1444 ).
    ENDIF.
    t1->load( ).
    APPEND t1428 TO t1->items.
    t1->save( ).
    DATA t1446 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1447 TYPE string.
    t1447 = |prini|.
    DATA t1449 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1450 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t1451) = CONV f( 1 ).
    DATA t1452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1450 = NEW zcl_lnt_numeric_type( i_length = t1451 i_qualified_name = t1452 ).
    t1449 = t1450.
    DATA t1453 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1446 = NEW zcl_lnt_istructure_component( i_name = t1447 i_type_9913 = t1449 i_as_include = t1453 i_suffix = t1455 ).
    CREATE OBJECT t1446->zlnt_view_ownkeys_b0e8086400eb.
    t1446->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1457 ).
    DATA t1458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1446->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1458 ).
    ENDIF.
    CREATE OBJECT t1446->zlnt_json_ownkeys_70e5fd461788.
    t1446->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1459) = |name|.
    DATA t1460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1459 p1 = t1460 ).
    DATA(t1461) = |type|.
    DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1461 p1 = t1462 ).
    ENDIF.
    t1->load( ).
    APPEND t1446 TO t1->items.
    t1->save( ).
    DATA t1464 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1465 TYPE string.
    t1465 = |primm|.
    DATA t1467 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1468 TYPE REF TO zcl_lnt_character_type.
    DATA(t1469) = CONV f( 1 ).
    DATA t1470 TYPE REF TO zcl_lnt_abstract_type_data.
    t1468 = NEW zcl_lnt_character_type( i_length = t1469 i_extra = t1470 ).
    t1467 = t1468.
    DATA t1471 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1464 = NEW zcl_lnt_istructure_component( i_name = t1465 i_type_9913 = t1467 i_as_include = t1471 i_suffix = t1473 ).
    CREATE OBJECT t1464->zlnt_view_ownkeys_b0e8086400eb.
    t1464->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1464->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1475 ).
    DATA t1476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1464->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1464->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1476 ).
    ENDIF.
    CREATE OBJECT t1464->zlnt_json_ownkeys_70e5fd461788.
    t1464->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1477) = |name|.
    DATA t1478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1464->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1477 p1 = t1478 ).
    DATA(t1479) = |type|.
    DATA t1480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1464->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1464->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1479 p1 = t1480 ).
    ENDIF.
    t1->load( ).
    APPEND t1464 TO t1->items.
    t1->save( ).
    DATA t1482 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1483 TYPE string.
    t1483 = |prrel|.
    DATA t1485 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1486 TYPE REF TO zcl_lnt_character_type.
    DATA(t1487) = CONV f( 1 ).
    DATA t1488 TYPE REF TO zcl_lnt_abstract_type_data.
    t1486 = NEW zcl_lnt_character_type( i_length = t1487 i_extra = t1488 ).
    t1485 = t1486.
    DATA t1489 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1482 = NEW zcl_lnt_istructure_component( i_name = t1483 i_type_9913 = t1485 i_as_include = t1489 i_suffix = t1491 ).
    CREATE OBJECT t1482->zlnt_view_ownkeys_b0e8086400eb.
    t1482->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1482->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1493 ).
    DATA t1494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1482->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1482->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1494 ).
    ENDIF.
    CREATE OBJECT t1482->zlnt_json_ownkeys_70e5fd461788.
    t1482->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1495) = |name|.
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1482->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1495 p1 = t1496 ).
    DATA(t1497) = |type|.
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1482->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1482->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1497 p1 = t1498 ).
    ENDIF.
    t1->load( ).
    APPEND t1482 TO t1->items.
    t1->save( ).
    DATA t1500 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1501 TYPE string.
    t1501 = |playo|.
    DATA t1503 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1504 TYPE REF TO zcl_lnt_character_type.
    DATA(t1505) = CONV f( 5 ).
    DATA t1506 TYPE REF TO zcl_lnt_abstract_type_data.
    t1504 = NEW zcl_lnt_character_type( i_length = t1505 i_extra = t1506 ).
    t1503 = t1504.
    DATA t1507 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1500 = NEW zcl_lnt_istructure_component( i_name = t1501 i_type_9913 = t1503 i_as_include = t1507 i_suffix = t1509 ).
    CREATE OBJECT t1500->zlnt_view_ownkeys_b0e8086400eb.
    t1500->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1511 ).
    DATA t1512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1512 ).
    ENDIF.
    CREATE OBJECT t1500->zlnt_json_ownkeys_70e5fd461788.
    t1500->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1513) = |name|.
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1513 p1 = t1514 ).
    DATA(t1515) = |type|.
    DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1515 p1 = t1516 ).
    ENDIF.
    t1->load( ).
    APPEND t1500 TO t1->items.
    t1->save( ).
    DATA t1518 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1519 TYPE string.
    t1519 = |prbig|.
    DATA t1521 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1522 TYPE REF TO zcl_lnt_character_type.
    DATA(t1523) = CONV f( 1 ).
    DATA t1524 TYPE REF TO zcl_lnt_abstract_type_data.
    t1522 = NEW zcl_lnt_character_type( i_length = t1523 i_extra = t1524 ).
    t1521 = t1522.
    DATA t1525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1518 = NEW zcl_lnt_istructure_component( i_name = t1519 i_type_9913 = t1521 i_as_include = t1525 i_suffix = t1527 ).
    CREATE OBJECT t1518->zlnt_view_ownkeys_b0e8086400eb.
    t1518->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1529 ).
    DATA t1530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1518->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1530 ).
    ENDIF.
    CREATE OBJECT t1518->zlnt_json_ownkeys_70e5fd461788.
    t1518->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1531) = |name|.
    DATA t1532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1531 p1 = t1532 ).
    DATA(t1533) = |type|.
    DATA t1534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1533 p1 = t1534 ).
    ENDIF.
    t1->load( ).
    APPEND t1518 TO t1->items.
    t1->save( ).
    DATA t1536 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1537 TYPE string.
    t1537 = |playp|.
    DATA t1539 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1540 TYPE REF TO zcl_lnt_character_type.
    DATA(t1541) = CONV f( 1 ).
    DATA t1542 TYPE REF TO zcl_lnt_abstract_type_data.
    t1540 = NEW zcl_lnt_character_type( i_length = t1541 i_extra = t1542 ).
    t1539 = t1540.
    DATA t1543 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1536 = NEW zcl_lnt_istructure_component( i_name = t1537 i_type_9913 = t1539 i_as_include = t1543 i_suffix = t1545 ).
    CREATE OBJECT t1536->zlnt_view_ownkeys_b0e8086400eb.
    t1536->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1536->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1547 ).
    DATA t1548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1536->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1536->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1548 ).
    ENDIF.
    CREATE OBJECT t1536->zlnt_json_ownkeys_70e5fd461788.
    t1536->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1549) = |name|.
    DATA t1550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1536->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1549 p1 = t1550 ).
    DATA(t1551) = |type|.
    DATA t1552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1536->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1536->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1551 p1 = t1552 ).
    ENDIF.
    t1->load( ).
    APPEND t1536 TO t1->items.
    t1->save( ).
    DATA t1554 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1555 TYPE string.
    t1555 = |prnew|.
    DATA t1557 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1558 TYPE REF TO zcl_lnt_character_type.
    DATA(t1559) = CONV f( 1 ).
    DATA t1560 TYPE REF TO zcl_lnt_abstract_type_data.
    t1558 = NEW zcl_lnt_character_type( i_length = t1559 i_extra = t1560 ).
    t1557 = t1558.
    DATA t1561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1554 = NEW zcl_lnt_istructure_component( i_name = t1555 i_type_9913 = t1557 i_as_include = t1561 i_suffix = t1563 ).
    CREATE OBJECT t1554->zlnt_view_ownkeys_b0e8086400eb.
    t1554->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1554->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1565 ).
    DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1554->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1554->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1566 ).
    ENDIF.
    CREATE OBJECT t1554->zlnt_json_ownkeys_70e5fd461788.
    t1554->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1567) = |name|.
    DATA t1568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1554->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1567 p1 = t1568 ).
    DATA(t1569) = |type|.
    DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1554->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1554->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1569 p1 = t1570 ).
    ENDIF.
    t1->load( ).
    APPEND t1554 TO t1->items.
    t1->save( ).
    DATA t1572 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1573 TYPE string.
    t1573 = |prlog|.
    DATA t1575 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1576 TYPE REF TO zcl_lnt_character_type.
    DATA(t1577) = CONV f( 1 ).
    DATA t1578 TYPE REF TO zcl_lnt_abstract_type_data.
    t1576 = NEW zcl_lnt_character_type( i_length = t1577 i_extra = t1578 ).
    t1575 = t1576.
    DATA t1579 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1572 = NEW zcl_lnt_istructure_component( i_name = t1573 i_type_9913 = t1575 i_as_include = t1579 i_suffix = t1581 ).
    CREATE OBJECT t1572->zlnt_view_ownkeys_b0e8086400eb.
    t1572->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1572->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1583 ).
    DATA t1584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1572->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1572->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1584 ).
    ENDIF.
    CREATE OBJECT t1572->zlnt_json_ownkeys_70e5fd461788.
    t1572->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1585) = |name|.
    DATA t1586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1572->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1585 p1 = t1586 ).
    DATA(t1587) = |type|.
    DATA t1588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1572->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1572->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1587 p1 = t1588 ).
    ENDIF.
    t1->load( ).
    APPEND t1572 TO t1->items.
    t1->save( ).
    DATA t1590 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1591 TYPE string.
    t1591 = |pdest|.
    DATA t1593 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1594 TYPE REF TO zcl_lnt_character_type.
    DATA(t1595) = CONV f( 4 ).
    DATA t1596 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1598 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1602) = |sy-pdest|.
    DATA(t1603) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1603->has = abap_true.
    t1603->value = t1602.
    t1599 = t1603.
    DATA t1605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1607 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1598 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1599 i_conversion_exit = t1605 i_derived_from_constant = t1607 i_ddic_name = t1609 i_rtti_name = t1611 i_description = t1613 ).
    CREATE OBJECT t1598->zlnt_view_ownkeys_b0e8086400eb.
    t1598->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1598->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1615 ).
    CREATE OBJECT t1598->zlnt_json_ownkeys_70e5fd461788.
    t1598->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1616) = |qualifiedName|.
    DATA t1617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1598->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1616 p1 = t1617 ).
    t1596 = t1598.
    t1594 = NEW zcl_lnt_character_type( i_length = t1595 i_extra = t1596 ).
    t1593 = t1594.
    DATA t1619 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1590 = NEW zcl_lnt_istructure_component( i_name = t1591 i_type_9913 = t1593 i_as_include = t1619 i_suffix = t1621 ).
    CREATE OBJECT t1590->zlnt_view_ownkeys_b0e8086400eb.
    t1590->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1590->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1623 ).
    DATA t1624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1590->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1590->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1624 ).
    ENDIF.
    CREATE OBJECT t1590->zlnt_json_ownkeys_70e5fd461788.
    t1590->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1625) = |name|.
    DATA t1626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1590->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1625 p1 = t1626 ).
    DATA(t1627) = |type|.
    DATA t1628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1590->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1590->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1627 p1 = t1628 ).
    ENDIF.
    t1->load( ).
    APPEND t1590 TO t1->items.
    t1->save( ).
    DATA t1630 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1631 TYPE string.
    t1631 = |plist|.
    DATA t1633 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1634 TYPE REF TO zcl_lnt_character_type.
    DATA(t1635) = CONV f( 12 ).
    DATA t1636 TYPE REF TO zcl_lnt_abstract_type_data.
    t1634 = NEW zcl_lnt_character_type( i_length = t1635 i_extra = t1636 ).
    t1633 = t1634.
    DATA t1637 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1630 = NEW zcl_lnt_istructure_component( i_name = t1631 i_type_9913 = t1633 i_as_include = t1637 i_suffix = t1639 ).
    CREATE OBJECT t1630->zlnt_view_ownkeys_b0e8086400eb.
    t1630->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1630->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1641 ).
    DATA t1642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1630->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1630->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1642 ).
    ENDIF.
    CREATE OBJECT t1630->zlnt_json_ownkeys_70e5fd461788.
    t1630->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1643) = |name|.
    DATA t1644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1630->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1643 p1 = t1644 ).
    DATA(t1645) = |type|.
    DATA t1646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1630->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1630->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1645 p1 = t1646 ).
    ENDIF.
    t1->load( ).
    APPEND t1630 TO t1->items.
    t1->save( ).
    DATA t1648 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1649 TYPE string.
    t1649 = |pauth|.
    DATA t1651 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1652 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t1653) = CONV f( 2 ).
    DATA t1654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1652 = NEW zcl_lnt_numeric_type( i_length = t1653 i_qualified_name = t1654 ).
    t1651 = t1652.
    DATA t1655 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1648 = NEW zcl_lnt_istructure_component( i_name = t1649 i_type_9913 = t1651 i_as_include = t1655 i_suffix = t1657 ).
    CREATE OBJECT t1648->zlnt_view_ownkeys_b0e8086400eb.
    t1648->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1648->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1659 ).
    DATA t1660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1648->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1648->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1660 ).
    ENDIF.
    CREATE OBJECT t1648->zlnt_json_ownkeys_70e5fd461788.
    t1648->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1661) = |name|.
    DATA t1662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1648->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1661 p1 = t1662 ).
    DATA(t1663) = |type|.
    DATA t1664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1648->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1648->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1663 p1 = t1664 ).
    ENDIF.
    t1->load( ).
    APPEND t1648 TO t1->items.
    t1->save( ).
    DATA t1666 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1667 TYPE string.
    t1667 = |prdsn|.
    DATA t1669 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1670 TYPE REF TO zcl_lnt_character_type.
    DATA(t1671) = CONV f( 6 ).
    DATA t1672 TYPE REF TO zcl_lnt_abstract_type_data.
    t1670 = NEW zcl_lnt_character_type( i_length = t1671 i_extra = t1672 ).
    t1669 = t1670.
    DATA t1673 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1666 = NEW zcl_lnt_istructure_component( i_name = t1667 i_type_9913 = t1669 i_as_include = t1673 i_suffix = t1675 ).
    CREATE OBJECT t1666->zlnt_view_ownkeys_b0e8086400eb.
    t1666->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1666->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1677 ).
    DATA t1678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1666->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1666->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1678 ).
    ENDIF.
    CREATE OBJECT t1666->zlnt_json_ownkeys_70e5fd461788.
    t1666->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1679) = |name|.
    DATA t1680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1666->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1679 p1 = t1680 ).
    DATA(t1681) = |type|.
    DATA t1682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1666->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1666->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1681 p1 = t1682 ).
    ENDIF.
    t1->load( ).
    APPEND t1666 TO t1->items.
    t1->save( ).
    DATA t1684 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1685 TYPE string.
    t1685 = |pnwpa|.
    DATA t1687 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1688 TYPE REF TO zcl_lnt_character_type.
    DATA(t1689) = CONV f( 1 ).
    DATA t1690 TYPE REF TO zcl_lnt_abstract_type_data.
    t1688 = NEW zcl_lnt_character_type( i_length = t1689 i_extra = t1690 ).
    t1687 = t1688.
    DATA t1691 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1684 = NEW zcl_lnt_istructure_component( i_name = t1685 i_type_9913 = t1687 i_as_include = t1691 i_suffix = t1693 ).
    CREATE OBJECT t1684->zlnt_view_ownkeys_b0e8086400eb.
    t1684->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1695 ).
    DATA t1696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1684->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1684->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1696 ).
    ENDIF.
    CREATE OBJECT t1684->zlnt_json_ownkeys_70e5fd461788.
    t1684->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1697) = |name|.
    DATA t1698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1697 p1 = t1698 ).
    DATA(t1699) = |type|.
    DATA t1700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1699 p1 = t1700 ).
    ENDIF.
    t1->load( ).
    APPEND t1684 TO t1->items.
    t1->save( ).
    DATA t1702 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1703 TYPE string.
    t1703 = |callr|.
    DATA t1705 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1706 TYPE REF TO zcl_lnt_character_type.
    DATA(t1707) = CONV f( 8 ).
    DATA t1708 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1710 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t1711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t1714) = |sy-callr|.
    DATA(t1715) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1715->has = abap_true.
    t1715->value = t1714.
    t1711 = t1715.
    DATA t1717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1719 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1710 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1711 i_conversion_exit = t1717 i_derived_from_constant = t1719 i_ddic_name = t1721 i_rtti_name = t1723 i_description = t1725 ).
    CREATE OBJECT t1710->zlnt_view_ownkeys_b0e8086400eb.
    t1710->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1710->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1727 ).
    CREATE OBJECT t1710->zlnt_json_ownkeys_70e5fd461788.
    t1710->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1728) = |qualifiedName|.
    DATA t1729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1710->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1728 p1 = t1729 ).
    t1708 = t1710.
    t1706 = NEW zcl_lnt_character_type( i_length = t1707 i_extra = t1708 ).
    t1705 = t1706.
    DATA t1731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1702 = NEW zcl_lnt_istructure_component( i_name = t1703 i_type_9913 = t1705 i_as_include = t1731 i_suffix = t1733 ).
    CREATE OBJECT t1702->zlnt_view_ownkeys_b0e8086400eb.
    t1702->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1702->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1735 ).
    DATA t1736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1702->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1702->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1736 ).
    ENDIF.
    CREATE OBJECT t1702->zlnt_json_ownkeys_70e5fd461788.
    t1702->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1737) = |name|.
    DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1702->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1737 p1 = t1738 ).
    DATA(t1739) = |type|.
    DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1702->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1702->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1739 p1 = t1740 ).
    ENDIF.
    t1->load( ).
    APPEND t1702 TO t1->items.
    t1->save( ).
    DATA t1742 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1743 TYPE string.
    t1743 = |repi2|.
    DATA t1745 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1746 TYPE REF TO zcl_lnt_character_type.
    DATA(t1747) = CONV f( 40 ).
    DATA t1748 TYPE REF TO zcl_lnt_abstract_type_data.
    t1746 = NEW zcl_lnt_character_type( i_length = t1747 i_extra = t1748 ).
    t1745 = t1746.
    DATA t1749 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1742 = NEW zcl_lnt_istructure_component( i_name = t1743 i_type_9913 = t1745 i_as_include = t1749 i_suffix = t1751 ).
    CREATE OBJECT t1742->zlnt_view_ownkeys_b0e8086400eb.
    t1742->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1753 ).
    DATA t1754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1742->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1754 ).
    ENDIF.
    CREATE OBJECT t1742->zlnt_json_ownkeys_70e5fd461788.
    t1742->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1755) = |name|.
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1755 p1 = t1756 ).
    DATA(t1757) = |type|.
    DATA t1758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1757 p1 = t1758 ).
    ENDIF.
    t1->load( ).
    APPEND t1742 TO t1->items.
    t1->save( ).
    DATA t1760 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1761 TYPE string.
    t1761 = |rtitl|.
    DATA t1763 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1764 TYPE REF TO zcl_lnt_character_type.
    DATA(t1765) = CONV f( 70 ).
    DATA t1766 TYPE REF TO zcl_lnt_abstract_type_data.
    t1764 = NEW zcl_lnt_character_type( i_length = t1765 i_extra = t1766 ).
    t1763 = t1764.
    DATA t1767 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1760 = NEW zcl_lnt_istructure_component( i_name = t1761 i_type_9913 = t1763 i_as_include = t1767 i_suffix = t1769 ).
    CREATE OBJECT t1760->zlnt_view_ownkeys_b0e8086400eb.
    t1760->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1760->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1771 ).
    DATA t1772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1760->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1760->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1772 ).
    ENDIF.
    CREATE OBJECT t1760->zlnt_json_ownkeys_70e5fd461788.
    t1760->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1773) = |name|.
    DATA t1774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1760->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1773 p1 = t1774 ).
    DATA(t1775) = |type|.
    DATA t1776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1760->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1760->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1775 p1 = t1776 ).
    ENDIF.
    t1->load( ).
    APPEND t1760 TO t1->items.
    t1->save( ).
    DATA t1778 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1779 TYPE string.
    t1779 = |prrec|.
    DATA t1781 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1782 TYPE REF TO zcl_lnt_character_type.
    DATA(t1783) = CONV f( 12 ).
    DATA t1784 TYPE REF TO zcl_lnt_abstract_type_data.
    t1782 = NEW zcl_lnt_character_type( i_length = t1783 i_extra = t1784 ).
    t1781 = t1782.
    DATA t1785 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1778 = NEW zcl_lnt_istructure_component( i_name = t1779 i_type_9913 = t1781 i_as_include = t1785 i_suffix = t1787 ).
    CREATE OBJECT t1778->zlnt_view_ownkeys_b0e8086400eb.
    t1778->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1789 ).
    DATA t1790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1778->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1778->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1790 ).
    ENDIF.
    CREATE OBJECT t1778->zlnt_json_ownkeys_70e5fd461788.
    t1778->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1791) = |name|.
    DATA t1792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1791 p1 = t1792 ).
    DATA(t1793) = |type|.
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1793 p1 = t1794 ).
    ENDIF.
    t1->load( ).
    APPEND t1778 TO t1->items.
    t1->save( ).
    DATA t1796 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1797 TYPE string.
    t1797 = |prtxt|.
    DATA t1799 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1800 TYPE REF TO zcl_lnt_character_type.
    DATA(t1801) = CONV f( 68 ).
    DATA t1802 TYPE REF TO zcl_lnt_abstract_type_data.
    t1800 = NEW zcl_lnt_character_type( i_length = t1801 i_extra = t1802 ).
    t1799 = t1800.
    DATA t1803 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1796 = NEW zcl_lnt_istructure_component( i_name = t1797 i_type_9913 = t1799 i_as_include = t1803 i_suffix = t1805 ).
    CREATE OBJECT t1796->zlnt_view_ownkeys_b0e8086400eb.
    t1796->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1796->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1807 ).
    DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1796->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1796->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1808 ).
    ENDIF.
    CREATE OBJECT t1796->zlnt_json_ownkeys_70e5fd461788.
    t1796->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1809) = |name|.
    DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1796->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1809 p1 = t1810 ).
    DATA(t1811) = |type|.
    DATA t1812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1796->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1796->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1811 p1 = t1812 ).
    ENDIF.
    t1->load( ).
    APPEND t1796 TO t1->items.
    t1->save( ).
    DATA t1814 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1815 TYPE string.
    t1815 = |prabt|.
    DATA t1817 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1818 TYPE REF TO zcl_lnt_character_type.
    DATA(t1819) = CONV f( 12 ).
    DATA t1820 TYPE REF TO zcl_lnt_abstract_type_data.
    t1818 = NEW zcl_lnt_character_type( i_length = t1819 i_extra = t1820 ).
    t1817 = t1818.
    DATA t1821 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1814 = NEW zcl_lnt_istructure_component( i_name = t1815 i_type_9913 = t1817 i_as_include = t1821 i_suffix = t1823 ).
    CREATE OBJECT t1814->zlnt_view_ownkeys_b0e8086400eb.
    t1814->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1814->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1825 ).
    DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1814->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1814->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1826 ).
    ENDIF.
    CREATE OBJECT t1814->zlnt_json_ownkeys_70e5fd461788.
    t1814->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1827) = |name|.
    DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1814->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1827 p1 = t1828 ).
    DATA(t1829) = |type|.
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1814->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1814->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1829 p1 = t1830 ).
    ENDIF.
    t1->load( ).
    APPEND t1814 TO t1->items.
    t1->save( ).
    DATA t1832 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1833 TYPE string.
    t1833 = |lpass|.
    DATA t1835 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1836 TYPE REF TO zcl_lnt_character_type.
    DATA(t1837) = CONV f( 4 ).
    DATA t1838 TYPE REF TO zcl_lnt_abstract_type_data.
    t1836 = NEW zcl_lnt_character_type( i_length = t1837 i_extra = t1838 ).
    t1835 = t1836.
    DATA t1839 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1841 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1832 = NEW zcl_lnt_istructure_component( i_name = t1833 i_type_9913 = t1835 i_as_include = t1839 i_suffix = t1841 ).
    CREATE OBJECT t1832->zlnt_view_ownkeys_b0e8086400eb.
    t1832->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1832->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1843 ).
    DATA t1844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1832->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1832->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1844 ).
    ENDIF.
    CREATE OBJECT t1832->zlnt_json_ownkeys_70e5fd461788.
    t1832->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1845) = |name|.
    DATA t1846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1832->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1845 p1 = t1846 ).
    DATA(t1847) = |type|.
    DATA t1848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1832->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1847 p1 = t1848 ).
    ENDIF.
    t1->load( ).
    APPEND t1832 TO t1->items.
    t1->save( ).
    DATA t1850 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1851 TYPE string.
    t1851 = |nrpag|.
    DATA t1853 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1854 TYPE REF TO zcl_lnt_character_type.
    DATA(t1855) = CONV f( 1 ).
    DATA t1856 TYPE REF TO zcl_lnt_abstract_type_data.
    t1854 = NEW zcl_lnt_character_type( i_length = t1855 i_extra = t1856 ).
    t1853 = t1854.
    DATA t1857 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1850 = NEW zcl_lnt_istructure_component( i_name = t1851 i_type_9913 = t1853 i_as_include = t1857 i_suffix = t1859 ).
    CREATE OBJECT t1850->zlnt_view_ownkeys_b0e8086400eb.
    t1850->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1850->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1861 ).
    DATA t1862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1850->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1850->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1862 ).
    ENDIF.
    CREATE OBJECT t1850->zlnt_json_ownkeys_70e5fd461788.
    t1850->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1863) = |name|.
    DATA t1864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1850->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1863 p1 = t1864 ).
    DATA(t1865) = |type|.
    DATA t1866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1850->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1850->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1865 p1 = t1866 ).
    ENDIF.
    t1->load( ).
    APPEND t1850 TO t1->items.
    t1->save( ).
    DATA t1868 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1869 TYPE string.
    t1869 = |paart|.
    DATA t1871 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1872 TYPE REF TO zcl_lnt_character_type.
    DATA(t1873) = CONV f( 16 ).
    DATA t1874 TYPE REF TO zcl_lnt_abstract_type_data.
    t1872 = NEW zcl_lnt_character_type( i_length = t1873 i_extra = t1874 ).
    t1871 = t1872.
    DATA t1875 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1877 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1868 = NEW zcl_lnt_istructure_component( i_name = t1869 i_type_9913 = t1871 i_as_include = t1875 i_suffix = t1877 ).
    CREATE OBJECT t1868->zlnt_view_ownkeys_b0e8086400eb.
    t1868->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1879 ).
    DATA t1880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1868->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1880 ).
    ENDIF.
    CREATE OBJECT t1868->zlnt_json_ownkeys_70e5fd461788.
    t1868->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1881) = |name|.
    DATA t1882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1881 p1 = t1882 ).
    DATA(t1883) = |type|.
    DATA t1884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1883 p1 = t1884 ).
    ENDIF.
    t1->load( ).
    APPEND t1868 TO t1->items.
    t1->save( ).
    DATA t1886 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1887 TYPE string.
    t1887 = |prcop|.
    DATA t1889 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1890 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t1891) = CONV f( 3 ).
    DATA t1892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1890 = NEW zcl_lnt_numeric_type( i_length = t1891 i_qualified_name = t1892 ).
    t1889 = t1890.
    DATA t1893 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1886 = NEW zcl_lnt_istructure_component( i_name = t1887 i_type_9913 = t1889 i_as_include = t1893 i_suffix = t1895 ).
    CREATE OBJECT t1886->zlnt_view_ownkeys_b0e8086400eb.
    t1886->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1886->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1897 ).
    DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1886->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1886->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1898 ).
    ENDIF.
    CREATE OBJECT t1886->zlnt_json_ownkeys_70e5fd461788.
    t1886->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1899) = |name|.
    DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1886->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1899 p1 = t1900 ).
    DATA(t1901) = |type|.
    DATA t1902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1886->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1886->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1901 p1 = t1902 ).
    ENDIF.
    t1->load( ).
    APPEND t1886 TO t1->items.
    t1->save( ).
    DATA t1904 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1905 TYPE string.
    t1905 = |batzs|.
    DATA t1907 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1908 TYPE REF TO zcl_lnt_character_type.
    DATA(t1909) = CONV f( 1 ).
    DATA t1910 TYPE REF TO zcl_lnt_abstract_type_data.
    t1908 = NEW zcl_lnt_character_type( i_length = t1909 i_extra = t1910 ).
    t1907 = t1908.
    DATA t1911 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1904 = NEW zcl_lnt_istructure_component( i_name = t1905 i_type_9913 = t1907 i_as_include = t1911 i_suffix = t1913 ).
    CREATE OBJECT t1904->zlnt_view_ownkeys_b0e8086400eb.
    t1904->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1904->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1915 ).
    DATA t1916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1904->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1904->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1916 ).
    ENDIF.
    CREATE OBJECT t1904->zlnt_json_ownkeys_70e5fd461788.
    t1904->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1917) = |name|.
    DATA t1918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1904->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1917 p1 = t1918 ).
    DATA(t1919) = |type|.
    DATA t1920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1904->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1904->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1919 p1 = t1920 ).
    ENDIF.
    t1->load( ).
    APPEND t1904 TO t1->items.
    t1->save( ).
    DATA t1922 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1923 TYPE string.
    t1923 = |bspld|.
    DATA t1925 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1926 TYPE REF TO zcl_lnt_character_type.
    DATA(t1927) = CONV f( 1 ).
    DATA t1928 TYPE REF TO zcl_lnt_abstract_type_data.
    t1926 = NEW zcl_lnt_character_type( i_length = t1927 i_extra = t1928 ).
    t1925 = t1926.
    DATA t1929 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1922 = NEW zcl_lnt_istructure_component( i_name = t1923 i_type_9913 = t1925 i_as_include = t1929 i_suffix = t1931 ).
    CREATE OBJECT t1922->zlnt_view_ownkeys_b0e8086400eb.
    t1922->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1933 ).
    DATA t1934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1934 ).
    ENDIF.
    CREATE OBJECT t1922->zlnt_json_ownkeys_70e5fd461788.
    t1922->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1935) = |name|.
    DATA t1936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1935 p1 = t1936 ).
    DATA(t1937) = |type|.
    DATA t1938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1937 p1 = t1938 ).
    ENDIF.
    t1->load( ).
    APPEND t1922 TO t1->items.
    t1->save( ).
    DATA t1940 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1941 TYPE string.
    t1941 = |brep4|.
    DATA t1943 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1944 TYPE REF TO zcl_lnt_character_type.
    DATA(t1945) = CONV f( 4 ).
    DATA t1946 TYPE REF TO zcl_lnt_abstract_type_data.
    t1944 = NEW zcl_lnt_character_type( i_length = t1945 i_extra = t1946 ).
    t1943 = t1944.
    DATA t1947 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1940 = NEW zcl_lnt_istructure_component( i_name = t1941 i_type_9913 = t1943 i_as_include = t1947 i_suffix = t1949 ).
    CREATE OBJECT t1940->zlnt_view_ownkeys_b0e8086400eb.
    t1940->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1951 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1940->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1951 ).
    DATA t1952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1940->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1940->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1952 ).
    ENDIF.
    CREATE OBJECT t1940->zlnt_json_ownkeys_70e5fd461788.
    t1940->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1953) = |name|.
    DATA t1954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1940->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1953 p1 = t1954 ).
    DATA(t1955) = |type|.
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1940->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1940->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1955 p1 = t1956 ).
    ENDIF.
    t1->load( ).
    APPEND t1940 TO t1->items.
    t1->save( ).
    DATA t1958 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1959 TYPE string.
    t1959 = |batzo|.
    DATA t1961 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1962 TYPE REF TO zcl_lnt_character_type.
    DATA(t1963) = CONV f( 1 ).
    DATA t1964 TYPE REF TO zcl_lnt_abstract_type_data.
    t1962 = NEW zcl_lnt_character_type( i_length = t1963 i_extra = t1964 ).
    t1961 = t1962.
    DATA t1965 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1958 = NEW zcl_lnt_istructure_component( i_name = t1959 i_type_9913 = t1961 i_as_include = t1965 i_suffix = t1967 ).
    CREATE OBJECT t1958->zlnt_view_ownkeys_b0e8086400eb.
    t1958->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1958->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1969 ).
    DATA t1970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1958->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1958->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1970 ).
    ENDIF.
    CREATE OBJECT t1958->zlnt_json_ownkeys_70e5fd461788.
    t1958->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1971) = |name|.
    DATA t1972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1958->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1971 p1 = t1972 ).
    DATA(t1973) = |type|.
    DATA t1974 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1958->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1958->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1973 p1 = t1974 ).
    ENDIF.
    t1->load( ).
    APPEND t1958 TO t1->items.
    t1->save( ).
    DATA t1976 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1977 TYPE string.
    t1977 = |batzd|.
    DATA t1979 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1980 TYPE REF TO zcl_lnt_character_type.
    DATA(t1981) = CONV f( 1 ).
    DATA t1982 TYPE REF TO zcl_lnt_abstract_type_data.
    t1980 = NEW zcl_lnt_character_type( i_length = t1981 i_extra = t1982 ).
    t1979 = t1980.
    DATA t1983 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1985 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1976 = NEW zcl_lnt_istructure_component( i_name = t1977 i_type_9913 = t1979 i_as_include = t1983 i_suffix = t1985 ).
    CREATE OBJECT t1976->zlnt_view_ownkeys_b0e8086400eb.
    t1976->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1976->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1987 ).
    DATA t1988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1976->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1976->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1988 ).
    ENDIF.
    CREATE OBJECT t1976->zlnt_json_ownkeys_70e5fd461788.
    t1976->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1989) = |name|.
    DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1976->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1989 p1 = t1990 ).
    DATA(t1991) = |type|.
    DATA t1992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1976->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1976->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1991 p1 = t1992 ).
    ENDIF.
    t1->load( ).
    APPEND t1976 TO t1->items.
    t1->save( ).
    DATA t1994 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1995 TYPE string.
    t1995 = |batzw|.
    DATA t1997 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1998 TYPE REF TO zcl_lnt_character_type.
    DATA(t1999) = CONV f( 1 ).
    DATA t2000 TYPE REF TO zcl_lnt_abstract_type_data.
    t1998 = NEW zcl_lnt_character_type( i_length = t1999 i_extra = t2000 ).
    t1997 = t1998.
    DATA t2001 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1994 = NEW zcl_lnt_istructure_component( i_name = t1995 i_type_9913 = t1997 i_as_include = t2001 i_suffix = t2003 ).
    CREATE OBJECT t1994->zlnt_view_ownkeys_b0e8086400eb.
    t1994->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1994->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2005 ).
    DATA t2006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1994->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1994->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2006 ).
    ENDIF.
    CREATE OBJECT t1994->zlnt_json_ownkeys_70e5fd461788.
    t1994->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2007) = |name|.
    DATA t2008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1994->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2007 p1 = t2008 ).
    DATA(t2009) = |type|.
    DATA t2010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1994->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1994->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2009 p1 = t2010 ).
    ENDIF.
    t1->load( ).
    APPEND t1994 TO t1->items.
    t1->save( ).
    DATA t2012 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2013 TYPE string.
    t2013 = |batzm|.
    DATA t2015 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2016 TYPE REF TO zcl_lnt_character_type.
    DATA(t2017) = CONV f( 1 ).
    DATA t2018 TYPE REF TO zcl_lnt_abstract_type_data.
    t2016 = NEW zcl_lnt_character_type( i_length = t2017 i_extra = t2018 ).
    t2015 = t2016.
    DATA t2019 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2021 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2012 = NEW zcl_lnt_istructure_component( i_name = t2013 i_type_9913 = t2015 i_as_include = t2019 i_suffix = t2021 ).
    CREATE OBJECT t2012->zlnt_view_ownkeys_b0e8086400eb.
    t2012->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2023 ).
    DATA t2024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2012->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2012->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2024 ).
    ENDIF.
    CREATE OBJECT t2012->zlnt_json_ownkeys_70e5fd461788.
    t2012->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2025) = |name|.
    DATA t2026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2025 p1 = t2026 ).
    DATA(t2027) = |type|.
    DATA t2028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2012->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2027 p1 = t2028 ).
    ENDIF.
    t1->load( ).
    APPEND t2012 TO t1->items.
    t1->save( ).
    DATA t2030 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2031 TYPE string.
    t2031 = |ctabl|.
    DATA t2033 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2034 TYPE REF TO zcl_lnt_character_type.
    DATA(t2035) = CONV f( 4 ).
    DATA t2036 TYPE REF TO zcl_lnt_abstract_type_data.
    t2034 = NEW zcl_lnt_character_type( i_length = t2035 i_extra = t2036 ).
    t2033 = t2034.
    DATA t2037 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2039 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2030 = NEW zcl_lnt_istructure_component( i_name = t2031 i_type_9913 = t2033 i_as_include = t2037 i_suffix = t2039 ).
    CREATE OBJECT t2030->zlnt_view_ownkeys_b0e8086400eb.
    t2030->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2030->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2041 ).
    DATA t2042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2030->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2030->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2042 ).
    ENDIF.
    CREATE OBJECT t2030->zlnt_json_ownkeys_70e5fd461788.
    t2030->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2043) = |name|.
    DATA t2044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2030->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2043 p1 = t2044 ).
    DATA(t2045) = |type|.
    DATA t2046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2030->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2030->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2045 p1 = t2046 ).
    ENDIF.
    t1->load( ).
    APPEND t2030 TO t1->items.
    t1->save( ).
    DATA t2048 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2049 TYPE string.
    t2049 = |dbsys|.
    DATA t2051 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2052 TYPE REF TO zcl_lnt_character_type.
    DATA(t2053) = CONV f( 10 ).
    DATA t2054 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2056 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2057 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2060) = |sy-dbsys|.
    DATA(t2061) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2061->has = abap_true.
    t2061->value = t2060.
    t2057 = t2061.
    DATA t2063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2065 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2071 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2056 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2057 i_conversion_exit = t2063 i_derived_from_constant = t2065 i_ddic_name = t2067 i_rtti_name = t2069 i_description = t2071 ).
    CREATE OBJECT t2056->zlnt_view_ownkeys_b0e8086400eb.
    t2056->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2056->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2073 ).
    CREATE OBJECT t2056->zlnt_json_ownkeys_70e5fd461788.
    t2056->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2074) = |qualifiedName|.
    DATA t2075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2056->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2074 p1 = t2075 ).
    t2054 = t2056.
    t2052 = NEW zcl_lnt_character_type( i_length = t2053 i_extra = t2054 ).
    t2051 = t2052.
    DATA t2077 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2079 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2048 = NEW zcl_lnt_istructure_component( i_name = t2049 i_type_9913 = t2051 i_as_include = t2077 i_suffix = t2079 ).
    CREATE OBJECT t2048->zlnt_view_ownkeys_b0e8086400eb.
    t2048->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2048->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2081 ).
    DATA t2082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2048->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2048->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2082 ).
    ENDIF.
    CREATE OBJECT t2048->zlnt_json_ownkeys_70e5fd461788.
    t2048->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2083) = |name|.
    DATA t2084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2048->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2083 p1 = t2084 ).
    DATA(t2085) = |type|.
    DATA t2086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2048->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2048->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2085 p1 = t2086 ).
    ENDIF.
    t1->load( ).
    APPEND t2048 TO t1->items.
    t1->save( ).
    DATA t2088 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2089 TYPE string.
    t2089 = |dcsys|.
    DATA t2091 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2092 TYPE REF TO zcl_lnt_character_type.
    DATA(t2093) = CONV f( 4 ).
    DATA t2094 TYPE REF TO zcl_lnt_abstract_type_data.
    t2092 = NEW zcl_lnt_character_type( i_length = t2093 i_extra = t2094 ).
    t2091 = t2092.
    DATA t2095 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2097 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2088 = NEW zcl_lnt_istructure_component( i_name = t2089 i_type_9913 = t2091 i_as_include = t2095 i_suffix = t2097 ).
    CREATE OBJECT t2088->zlnt_view_ownkeys_b0e8086400eb.
    t2088->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2088->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2099 ).
    DATA t2100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2088->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2088->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2100 ).
    ENDIF.
    CREATE OBJECT t2088->zlnt_json_ownkeys_70e5fd461788.
    t2088->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2101) = |name|.
    DATA t2102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2088->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2101 p1 = t2102 ).
    DATA(t2103) = |type|.
    DATA t2104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2088->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2088->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2103 p1 = t2104 ).
    ENDIF.
    t1->load( ).
    APPEND t2088 TO t1->items.
    t1->save( ).
    DATA t2106 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2107 TYPE string.
    t2107 = |macdb|.
    DATA t2109 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2110 TYPE REF TO zcl_lnt_character_type.
    DATA(t2111) = CONV f( 4 ).
    DATA t2112 TYPE REF TO zcl_lnt_abstract_type_data.
    t2110 = NEW zcl_lnt_character_type( i_length = t2111 i_extra = t2112 ).
    t2109 = t2110.
    DATA t2113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2106 = NEW zcl_lnt_istructure_component( i_name = t2107 i_type_9913 = t2109 i_as_include = t2113 i_suffix = t2115 ).
    CREATE OBJECT t2106->zlnt_view_ownkeys_b0e8086400eb.
    t2106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2117 ).
    DATA t2118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2118 ).
    ENDIF.
    CREATE OBJECT t2106->zlnt_json_ownkeys_70e5fd461788.
    t2106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2119) = |name|.
    DATA t2120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2119 p1 = t2120 ).
    DATA(t2121) = |type|.
    DATA t2122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2121 p1 = t2122 ).
    ENDIF.
    t1->load( ).
    APPEND t2106 TO t1->items.
    t1->save( ).
    DATA t2124 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2125 TYPE string.
    t2125 = |sysid|.
    DATA t2127 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2128 TYPE REF TO zcl_lnt_character_type.
    DATA(t2129) = CONV f( 8 ).
    DATA t2130 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2132 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2136) = |sy-sysid|.
    DATA(t2137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2137->has = abap_true.
    t2137->value = t2136.
    t2133 = t2137.
    DATA t2139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2132 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2133 i_conversion_exit = t2139 i_derived_from_constant = t2141 i_ddic_name = t2143 i_rtti_name = t2145 i_description = t2147 ).
    CREATE OBJECT t2132->zlnt_view_ownkeys_b0e8086400eb.
    t2132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2149 ).
    CREATE OBJECT t2132->zlnt_json_ownkeys_70e5fd461788.
    t2132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2150) = |qualifiedName|.
    DATA t2151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2150 p1 = t2151 ).
    t2130 = t2132.
    t2128 = NEW zcl_lnt_character_type( i_length = t2129 i_extra = t2130 ).
    t2127 = t2128.
    DATA t2153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2124 = NEW zcl_lnt_istructure_component( i_name = t2125 i_type_9913 = t2127 i_as_include = t2153 i_suffix = t2155 ).
    CREATE OBJECT t2124->zlnt_view_ownkeys_b0e8086400eb.
    t2124->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2157 ).
    DATA t2158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2124->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2158 ).
    ENDIF.
    CREATE OBJECT t2124->zlnt_json_ownkeys_70e5fd461788.
    t2124->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2159) = |name|.
    DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2159 p1 = t2160 ).
    DATA(t2161) = |type|.
    DATA t2162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2161 p1 = t2162 ).
    ENDIF.
    t1->load( ).
    APPEND t2124 TO t1->items.
    t1->save( ).
    DATA t2164 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2165 TYPE string.
    t2165 = |opsys|.
    DATA t2167 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2168 TYPE REF TO zcl_lnt_character_type.
    DATA(t2169) = CONV f( 10 ).
    DATA t2170 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2172 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2176) = |sy-opsys|.
    DATA(t2177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2177->has = abap_true.
    t2177->value = t2176.
    t2173 = t2177.
    DATA t2179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2181 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2172 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2173 i_conversion_exit = t2179 i_derived_from_constant = t2181 i_ddic_name = t2183 i_rtti_name = t2185 i_description = t2187 ).
    CREATE OBJECT t2172->zlnt_view_ownkeys_b0e8086400eb.
    t2172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2189 ).
    CREATE OBJECT t2172->zlnt_json_ownkeys_70e5fd461788.
    t2172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2190) = |qualifiedName|.
    DATA t2191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2190 p1 = t2191 ).
    t2170 = t2172.
    t2168 = NEW zcl_lnt_character_type( i_length = t2169 i_extra = t2170 ).
    t2167 = t2168.
    DATA t2193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2164 = NEW zcl_lnt_istructure_component( i_name = t2165 i_type_9913 = t2167 i_as_include = t2193 i_suffix = t2195 ).
    CREATE OBJECT t2164->zlnt_view_ownkeys_b0e8086400eb.
    t2164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2197 ).
    DATA t2198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2198 ).
    ENDIF.
    CREATE OBJECT t2164->zlnt_json_ownkeys_70e5fd461788.
    t2164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2199) = |name|.
    DATA t2200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2199 p1 = t2200 ).
    DATA(t2201) = |type|.
    DATA t2202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2201 p1 = t2202 ).
    ENDIF.
    t1->load( ).
    APPEND t2164 TO t1->items.
    t1->save( ).
    DATA t2204 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2205 TYPE string.
    t2205 = |pfkey|.
    DATA t2207 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2208 TYPE REF TO zcl_lnt_character_type.
    DATA(t2209) = CONV f( 20 ).
    DATA t2210 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2212 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2216) = |sy-pfkey|.
    DATA(t2217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2217->has = abap_true.
    t2217->value = t2216.
    t2213 = t2217.
    DATA t2219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2212 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2213 i_conversion_exit = t2219 i_derived_from_constant = t2221 i_ddic_name = t2223 i_rtti_name = t2225 i_description = t2227 ).
    CREATE OBJECT t2212->zlnt_view_ownkeys_b0e8086400eb.
    t2212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2229 ).
    CREATE OBJECT t2212->zlnt_json_ownkeys_70e5fd461788.
    t2212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2230) = |qualifiedName|.
    DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2212->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2230 p1 = t2231 ).
    t2210 = t2212.
    t2208 = NEW zcl_lnt_character_type( i_length = t2209 i_extra = t2210 ).
    t2207 = t2208.
    DATA t2233 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2204 = NEW zcl_lnt_istructure_component( i_name = t2205 i_type_9913 = t2207 i_as_include = t2233 i_suffix = t2235 ).
    CREATE OBJECT t2204->zlnt_view_ownkeys_b0e8086400eb.
    t2204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2237 ).
    DATA t2238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2238 ).
    ENDIF.
    CREATE OBJECT t2204->zlnt_json_ownkeys_70e5fd461788.
    t2204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2239) = |name|.
    DATA t2240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2239 p1 = t2240 ).
    DATA(t2241) = |type|.
    DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2204->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2241 p1 = t2242 ).
    ENDIF.
    t1->load( ).
    APPEND t2204 TO t1->items.
    t1->save( ).
    DATA t2244 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2245 TYPE string.
    t2245 = |saprl|.
    DATA t2247 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2248 TYPE REF TO zcl_lnt_character_type.
    DATA(t2249) = CONV f( 4 ).
    DATA t2250 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2252 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2256) = |sy-saprl|.
    DATA(t2257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2257->has = abap_true.
    t2257->value = t2256.
    t2253 = t2257.
    DATA t2259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2252 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2253 i_conversion_exit = t2259 i_derived_from_constant = t2261 i_ddic_name = t2263 i_rtti_name = t2265 i_description = t2267 ).
    CREATE OBJECT t2252->zlnt_view_ownkeys_b0e8086400eb.
    t2252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2269 ).
    CREATE OBJECT t2252->zlnt_json_ownkeys_70e5fd461788.
    t2252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2270) = |qualifiedName|.
    DATA t2271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2270 p1 = t2271 ).
    t2250 = t2252.
    t2248 = NEW zcl_lnt_character_type( i_length = t2249 i_extra = t2250 ).
    t2247 = t2248.
    DATA t2273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2244 = NEW zcl_lnt_istructure_component( i_name = t2245 i_type_9913 = t2247 i_as_include = t2273 i_suffix = t2275 ).
    CREATE OBJECT t2244->zlnt_view_ownkeys_b0e8086400eb.
    t2244->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2244->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2277 ).
    DATA t2278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2244->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2244->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2278 ).
    ENDIF.
    CREATE OBJECT t2244->zlnt_json_ownkeys_70e5fd461788.
    t2244->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2279) = |name|.
    DATA t2280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2244->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2279 p1 = t2280 ).
    DATA(t2281) = |type|.
    DATA t2282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2244->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2244->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2281 p1 = t2282 ).
    ENDIF.
    t1->load( ).
    APPEND t2244 TO t1->items.
    t1->save( ).
    DATA t2284 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2285 TYPE string.
    t2285 = |tcode|.
    DATA t2287 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2288 TYPE REF TO zcl_lnt_character_type.
    DATA(t2289) = CONV f( 20 ).
    DATA t2290 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2292 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2296) = |sy-tcode|.
    DATA(t2297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2297->has = abap_true.
    t2297->value = t2296.
    t2293 = t2297.
    DATA t2299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2292 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2293 i_conversion_exit = t2299 i_derived_from_constant = t2301 i_ddic_name = t2303 i_rtti_name = t2305 i_description = t2307 ).
    CREATE OBJECT t2292->zlnt_view_ownkeys_b0e8086400eb.
    t2292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2309 ).
    CREATE OBJECT t2292->zlnt_json_ownkeys_70e5fd461788.
    t2292->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2310) = |qualifiedName|.
    DATA t2311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2310 p1 = t2311 ).
    t2290 = t2292.
    t2288 = NEW zcl_lnt_character_type( i_length = t2289 i_extra = t2290 ).
    t2287 = t2288.
    DATA t2313 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2284 = NEW zcl_lnt_istructure_component( i_name = t2285 i_type_9913 = t2287 i_as_include = t2313 i_suffix = t2315 ).
    CREATE OBJECT t2284->zlnt_view_ownkeys_b0e8086400eb.
    t2284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2317 ).
    DATA t2318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2318 ).
    ENDIF.
    CREATE OBJECT t2284->zlnt_json_ownkeys_70e5fd461788.
    t2284->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2319) = |name|.
    DATA t2320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2319 p1 = t2320 ).
    DATA(t2321) = |type|.
    DATA t2322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2321 p1 = t2322 ).
    ENDIF.
    t1->load( ).
    APPEND t2284 TO t1->items.
    t1->save( ).
    DATA t2324 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2325 TYPE string.
    t2325 = |ucomm|.
    DATA t2327 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2328 TYPE REF TO zcl_lnt_character_type.
    DATA(t2329) = CONV f( 70 ).
    DATA t2330 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2332 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2336) = |sy-ucomm|.
    DATA(t2337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2337->has = abap_true.
    t2337->value = t2336.
    t2333 = t2337.
    DATA t2339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2332 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2333 i_conversion_exit = t2339 i_derived_from_constant = t2341 i_ddic_name = t2343 i_rtti_name = t2345 i_description = t2347 ).
    CREATE OBJECT t2332->zlnt_view_ownkeys_b0e8086400eb.
    t2332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2349 ).
    CREATE OBJECT t2332->zlnt_json_ownkeys_70e5fd461788.
    t2332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2350) = |qualifiedName|.
    DATA t2351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2350 p1 = t2351 ).
    t2330 = t2332.
    t2328 = NEW zcl_lnt_character_type( i_length = t2329 i_extra = t2330 ).
    t2327 = t2328.
    DATA t2353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2324 = NEW zcl_lnt_istructure_component( i_name = t2325 i_type_9913 = t2327 i_as_include = t2353 i_suffix = t2355 ).
    CREATE OBJECT t2324->zlnt_view_ownkeys_b0e8086400eb.
    t2324->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2324->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2357 ).
    DATA t2358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2324->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2324->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2358 ).
    ENDIF.
    CREATE OBJECT t2324->zlnt_json_ownkeys_70e5fd461788.
    t2324->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2359) = |name|.
    DATA t2360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2324->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2359 p1 = t2360 ).
    DATA(t2361) = |type|.
    DATA t2362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2324->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2324->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2361 p1 = t2362 ).
    ENDIF.
    t1->load( ).
    APPEND t2324 TO t1->items.
    t1->save( ).
    DATA t2364 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2365 TYPE string.
    t2365 = |cfwae|.
    DATA t2367 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2368 TYPE REF TO zcl_lnt_character_type.
    DATA(t2369) = CONV f( 5 ).
    DATA t2370 TYPE REF TO zcl_lnt_abstract_type_data.
    t2368 = NEW zcl_lnt_character_type( i_length = t2369 i_extra = t2370 ).
    t2367 = t2368.
    DATA t2371 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2364 = NEW zcl_lnt_istructure_component( i_name = t2365 i_type_9913 = t2367 i_as_include = t2371 i_suffix = t2373 ).
    CREATE OBJECT t2364->zlnt_view_ownkeys_b0e8086400eb.
    t2364->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2364->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2375 ).
    DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2364->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2364->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2376 ).
    ENDIF.
    CREATE OBJECT t2364->zlnt_json_ownkeys_70e5fd461788.
    t2364->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2377) = |name|.
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2364->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2377 p1 = t2378 ).
    DATA(t2379) = |type|.
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2364->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2364->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2379 p1 = t2380 ).
    ENDIF.
    t1->load( ).
    APPEND t2364 TO t1->items.
    t1->save( ).
    DATA t2382 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2383 TYPE string.
    t2383 = |chwae|.
    DATA t2385 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2386 TYPE REF TO zcl_lnt_character_type.
    DATA(t2387) = CONV f( 5 ).
    DATA t2388 TYPE REF TO zcl_lnt_abstract_type_data.
    t2386 = NEW zcl_lnt_character_type( i_length = t2387 i_extra = t2388 ).
    t2385 = t2386.
    DATA t2389 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2382 = NEW zcl_lnt_istructure_component( i_name = t2383 i_type_9913 = t2385 i_as_include = t2389 i_suffix = t2391 ).
    CREATE OBJECT t2382->zlnt_view_ownkeys_b0e8086400eb.
    t2382->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2382->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2393 ).
    DATA t2394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2382->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2382->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2394 ).
    ENDIF.
    CREATE OBJECT t2382->zlnt_json_ownkeys_70e5fd461788.
    t2382->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2395) = |name|.
    DATA t2396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2382->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2395 p1 = t2396 ).
    DATA(t2397) = |type|.
    DATA t2398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2382->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2382->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2397 p1 = t2398 ).
    ENDIF.
    t1->load( ).
    APPEND t2382 TO t1->items.
    t1->save( ).
    DATA t2400 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2401 TYPE string.
    t2401 = |spono|.
    DATA t2403 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2404 TYPE REF TO zcl_lnt_character_type.
    DATA(t2405) = CONV f( 10 ).
    DATA t2406 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2408 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2412) = |sy-spono|.
    DATA(t2413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2413->has = abap_true.
    t2413->value = t2412.
    t2409 = t2413.
    DATA t2415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2408 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2409 i_conversion_exit = t2415 i_derived_from_constant = t2417 i_ddic_name = t2419 i_rtti_name = t2421 i_description = t2423 ).
    CREATE OBJECT t2408->zlnt_view_ownkeys_b0e8086400eb.
    t2408->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2408->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2425 ).
    CREATE OBJECT t2408->zlnt_json_ownkeys_70e5fd461788.
    t2408->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2426) = |qualifiedName|.
    DATA t2427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2408->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2426 p1 = t2427 ).
    t2406 = t2408.
    t2404 = NEW zcl_lnt_character_type( i_length = t2405 i_extra = t2406 ).
    t2403 = t2404.
    DATA t2429 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2400 = NEW zcl_lnt_istructure_component( i_name = t2401 i_type_9913 = t2403 i_as_include = t2429 i_suffix = t2431 ).
    CREATE OBJECT t2400->zlnt_view_ownkeys_b0e8086400eb.
    t2400->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2400->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2433 ).
    DATA t2434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2400->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2400->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2434 ).
    ENDIF.
    CREATE OBJECT t2400->zlnt_json_ownkeys_70e5fd461788.
    t2400->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2435) = |name|.
    DATA t2436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2400->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2435 p1 = t2436 ).
    DATA(t2437) = |type|.
    DATA t2438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2400->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2400->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2437 p1 = t2438 ).
    ENDIF.
    t1->load( ).
    APPEND t2400 TO t1->items.
    t1->save( ).
    DATA t2440 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2441 TYPE string.
    t2441 = |sponr|.
    DATA t2443 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2444 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t2445) = CONV f( 10 ).
    DATA t2446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2444 = NEW zcl_lnt_numeric_type( i_length = t2445 i_qualified_name = t2446 ).
    t2443 = t2444.
    DATA t2447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2440 = NEW zcl_lnt_istructure_component( i_name = t2441 i_type_9913 = t2443 i_as_include = t2447 i_suffix = t2449 ).
    CREATE OBJECT t2440->zlnt_view_ownkeys_b0e8086400eb.
    t2440->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2440->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2451 ).
    DATA t2452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2440->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2440->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2452 ).
    ENDIF.
    CREATE OBJECT t2440->zlnt_json_ownkeys_70e5fd461788.
    t2440->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2453) = |name|.
    DATA t2454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2440->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2453 p1 = t2454 ).
    DATA(t2455) = |type|.
    DATA t2456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2440->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2440->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2455 p1 = t2456 ).
    ENDIF.
    t1->load( ).
    APPEND t2440 TO t1->items.
    t1->save( ).
    DATA t2458 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2459 TYPE string.
    t2459 = |waers|.
    DATA t2461 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2462 TYPE REF TO zcl_lnt_character_type.
    DATA(t2463) = CONV f( 5 ).
    DATA t2464 TYPE REF TO zcl_lnt_abstract_type_data.
    t2462 = NEW zcl_lnt_character_type( i_length = t2463 i_extra = t2464 ).
    t2461 = t2462.
    DATA t2465 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2458 = NEW zcl_lnt_istructure_component( i_name = t2459 i_type_9913 = t2461 i_as_include = t2465 i_suffix = t2467 ).
    CREATE OBJECT t2458->zlnt_view_ownkeys_b0e8086400eb.
    t2458->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2458->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2469 ).
    DATA t2470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2458->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2458->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2470 ).
    ENDIF.
    CREATE OBJECT t2458->zlnt_json_ownkeys_70e5fd461788.
    t2458->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2471) = |name|.
    DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2458->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2471 p1 = t2472 ).
    DATA(t2473) = |type|.
    DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2458->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2458->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2473 p1 = t2474 ).
    ENDIF.
    t1->load( ).
    APPEND t2458 TO t1->items.
    t1->save( ).
    DATA t2476 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2477 TYPE string.
    t2477 = |cdate|.
    DATA t2479 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2480 TYPE REF TO zcl_lnt_date_type.
    DATA t2481 TYPE REF TO zcl_lnt_abstract_type_data.
    t2480 = NEW zcl_lnt_date_type( i_input_967e = t2481 ).
    t2479 = t2480.
    DATA t2482 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2476 = NEW zcl_lnt_istructure_component( i_name = t2477 i_type_9913 = t2479 i_as_include = t2482 i_suffix = t2484 ).
    CREATE OBJECT t2476->zlnt_view_ownkeys_b0e8086400eb.
    t2476->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2486 ).
    DATA t2487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2487 ).
    ENDIF.
    CREATE OBJECT t2476->zlnt_json_ownkeys_70e5fd461788.
    t2476->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2488) = |name|.
    DATA t2489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2488 p1 = t2489 ).
    DATA(t2490) = |type|.
    DATA t2491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2476->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2490 p1 = t2491 ).
    ENDIF.
    t1->load( ).
    APPEND t2476 TO t1->items.
    t1->save( ).
    DATA t2493 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2494 TYPE string.
    t2494 = |datum|.
    DATA t2496 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2497 TYPE REF TO zcl_lnt_date_type.
    DATA t2498 TYPE REF TO zcl_lnt_abstract_type_data.
    t2497 = NEW zcl_lnt_date_type( i_input_967e = t2498 ).
    t2496 = t2497.
    DATA t2499 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2493 = NEW zcl_lnt_istructure_component( i_name = t2494 i_type_9913 = t2496 i_as_include = t2499 i_suffix = t2501 ).
    CREATE OBJECT t2493->zlnt_view_ownkeys_b0e8086400eb.
    t2493->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2493->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2503 ).
    DATA t2504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2493->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2493->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2504 ).
    ENDIF.
    CREATE OBJECT t2493->zlnt_json_ownkeys_70e5fd461788.
    t2493->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2505) = |name|.
    DATA t2506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2493->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2505 p1 = t2506 ).
    DATA(t2507) = |type|.
    DATA t2508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2493->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2493->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2507 p1 = t2508 ).
    ENDIF.
    t1->load( ).
    APPEND t2493 TO t1->items.
    t1->save( ).
    DATA t2510 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2511 TYPE string.
    t2511 = |slset|.
    DATA t2513 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2514 TYPE REF TO zcl_lnt_character_type.
    DATA(t2515) = CONV f( 14 ).
    DATA t2516 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2518 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2522) = |sy-slset|.
    DATA(t2523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2523->has = abap_true.
    t2523->value = t2522.
    t2519 = t2523.
    DATA t2525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2527 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2518 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2519 i_conversion_exit = t2525 i_derived_from_constant = t2527 i_ddic_name = t2529 i_rtti_name = t2531 i_description = t2533 ).
    CREATE OBJECT t2518->zlnt_view_ownkeys_b0e8086400eb.
    t2518->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2535 ).
    CREATE OBJECT t2518->zlnt_json_ownkeys_70e5fd461788.
    t2518->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2536) = |qualifiedName|.
    DATA t2537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2518->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2536 p1 = t2537 ).
    t2516 = t2518.
    t2514 = NEW zcl_lnt_character_type( i_length = t2515 i_extra = t2516 ).
    t2513 = t2514.
    DATA t2539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2510 = NEW zcl_lnt_istructure_component( i_name = t2511 i_type_9913 = t2513 i_as_include = t2539 i_suffix = t2541 ).
    CREATE OBJECT t2510->zlnt_view_ownkeys_b0e8086400eb.
    t2510->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2543 ).
    DATA t2544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2544 ).
    ENDIF.
    CREATE OBJECT t2510->zlnt_json_ownkeys_70e5fd461788.
    t2510->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2545) = |name|.
    DATA t2546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2545 p1 = t2546 ).
    DATA(t2547) = |type|.
    DATA t2548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2547 p1 = t2548 ).
    ENDIF.
    t1->load( ).
    APPEND t2510 TO t1->items.
    t1->save( ).
    DATA t2550 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2551 TYPE string.
    t2551 = |subty|.
    DATA t2553 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2554 TYPE REF TO zcl_lnt_hex_type.
    DATA(t2555) = CONV f( 1 ).
    DATA t2556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2554 = NEW zcl_lnt_hex_type( i_length = t2555 i_qualified_name = t2556 ).
    t2553 = t2554.
    DATA t2557 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2550 = NEW zcl_lnt_istructure_component( i_name = t2551 i_type_9913 = t2553 i_as_include = t2557 i_suffix = t2559 ).
    CREATE OBJECT t2550->zlnt_view_ownkeys_b0e8086400eb.
    t2550->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2550->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2561 ).
    DATA t2562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2550->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2550->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2562 ).
    ENDIF.
    CREATE OBJECT t2550->zlnt_json_ownkeys_70e5fd461788.
    t2550->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2563) = |name|.
    DATA t2564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2550->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2563 p1 = t2564 ).
    DATA(t2565) = |type|.
    DATA t2566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2550->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2550->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2565 p1 = t2566 ).
    ENDIF.
    t1->load( ).
    APPEND t2550 TO t1->items.
    t1->save( ).
    DATA t2568 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2569 TYPE string.
    t2569 = |subcs|.
    DATA t2571 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2572 TYPE REF TO zcl_lnt_character_type.
    DATA(t2573) = CONV f( 1 ).
    DATA t2574 TYPE REF TO zcl_lnt_abstract_type_data.
    t2572 = NEW zcl_lnt_character_type( i_length = t2573 i_extra = t2574 ).
    t2571 = t2572.
    DATA t2575 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2568 = NEW zcl_lnt_istructure_component( i_name = t2569 i_type_9913 = t2571 i_as_include = t2575 i_suffix = t2577 ).
    CREATE OBJECT t2568->zlnt_view_ownkeys_b0e8086400eb.
    t2568->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2568->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2579 ).
    DATA t2580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2568->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2568->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2580 ).
    ENDIF.
    CREATE OBJECT t2568->zlnt_json_ownkeys_70e5fd461788.
    t2568->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2581) = |name|.
    DATA t2582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2568->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2581 p1 = t2582 ).
    DATA(t2583) = |type|.
    DATA t2584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2568->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2568->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2583 p1 = t2584 ).
    ENDIF.
    t1->load( ).
    APPEND t2568 TO t1->items.
    t1->save( ).
    DATA t2586 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2587 TYPE string.
    t2587 = |group|.
    DATA t2589 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2590 TYPE REF TO zcl_lnt_character_type.
    DATA(t2591) = CONV f( 1 ).
    DATA t2592 TYPE REF TO zcl_lnt_abstract_type_data.
    t2590 = NEW zcl_lnt_character_type( i_length = t2591 i_extra = t2592 ).
    t2589 = t2590.
    DATA t2593 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2586 = NEW zcl_lnt_istructure_component( i_name = t2587 i_type_9913 = t2589 i_as_include = t2593 i_suffix = t2595 ).
    CREATE OBJECT t2586->zlnt_view_ownkeys_b0e8086400eb.
    t2586->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2586->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2597 ).
    DATA t2598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2586->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2586->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2598 ).
    ENDIF.
    CREATE OBJECT t2586->zlnt_json_ownkeys_70e5fd461788.
    t2586->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2599) = |name|.
    DATA t2600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2586->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2599 p1 = t2600 ).
    DATA(t2601) = |type|.
    DATA t2602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2586->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2586->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2601 p1 = t2602 ).
    ENDIF.
    t1->load( ).
    APPEND t2586 TO t1->items.
    t1->save( ).
    DATA t2604 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2605 TYPE string.
    t2605 = |ffile|.
    DATA t2607 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2608 TYPE REF TO zcl_lnt_character_type.
    DATA(t2609) = CONV f( 8 ).
    DATA t2610 TYPE REF TO zcl_lnt_abstract_type_data.
    t2608 = NEW zcl_lnt_character_type( i_length = t2609 i_extra = t2610 ).
    t2607 = t2608.
    DATA t2611 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2604 = NEW zcl_lnt_istructure_component( i_name = t2605 i_type_9913 = t2607 i_as_include = t2611 i_suffix = t2613 ).
    CREATE OBJECT t2604->zlnt_view_ownkeys_b0e8086400eb.
    t2604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2615 ).
    DATA t2616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2616 ).
    ENDIF.
    CREATE OBJECT t2604->zlnt_json_ownkeys_70e5fd461788.
    t2604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2617) = |name|.
    DATA t2618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2617 p1 = t2618 ).
    DATA(t2619) = |type|.
    DATA t2620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2619 p1 = t2620 ).
    ENDIF.
    t1->load( ).
    APPEND t2604 TO t1->items.
    t1->save( ).
    DATA t2622 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2623 TYPE string.
    t2623 = |uzeit|.
    DATA t2625 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2626 TYPE REF TO zcl_lnt_time_type.
    DATA t2627 TYPE REF TO zcl_lnt_abstract_type_data.
    t2626 = NEW zcl_lnt_time_type( i_input_967e = t2627 ).
    t2625 = t2626.
    DATA t2628 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2622 = NEW zcl_lnt_istructure_component( i_name = t2623 i_type_9913 = t2625 i_as_include = t2628 i_suffix = t2630 ).
    CREATE OBJECT t2622->zlnt_view_ownkeys_b0e8086400eb.
    t2622->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2632 ).
    DATA t2633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2622->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2622->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2633 ).
    ENDIF.
    CREATE OBJECT t2622->zlnt_json_ownkeys_70e5fd461788.
    t2622->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2634) = |name|.
    DATA t2635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2634 p1 = t2635 ).
    DATA(t2636) = |type|.
    DATA t2637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2622->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2636 p1 = t2637 ).
    ENDIF.
    t1->load( ).
    APPEND t2622 TO t1->items.
    t1->save( ).
    DATA t2639 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2640 TYPE string.
    t2640 = |dsnam|.
    DATA t2642 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2643 TYPE REF TO zcl_lnt_character_type.
    DATA(t2644) = CONV f( 8 ).
    DATA t2645 TYPE REF TO zcl_lnt_abstract_type_data.
    t2643 = NEW zcl_lnt_character_type( i_length = t2644 i_extra = t2645 ).
    t2642 = t2643.
    DATA t2646 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2639 = NEW zcl_lnt_istructure_component( i_name = t2640 i_type_9913 = t2642 i_as_include = t2646 i_suffix = t2648 ).
    CREATE OBJECT t2639->zlnt_view_ownkeys_b0e8086400eb.
    t2639->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2639->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2650 ).
    DATA t2651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2639->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2639->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2651 ).
    ENDIF.
    CREATE OBJECT t2639->zlnt_json_ownkeys_70e5fd461788.
    t2639->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2652) = |name|.
    DATA t2653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2639->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2652 p1 = t2653 ).
    DATA(t2654) = |type|.
    DATA t2655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2639->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2639->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2654 p1 = t2655 ).
    ENDIF.
    t1->load( ).
    APPEND t2639 TO t1->items.
    t1->save( ).
    DATA t2657 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2658 TYPE string.
    t2658 = |tabid|.
    DATA t2660 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2661 TYPE REF TO zcl_lnt_character_type.
    DATA(t2662) = CONV f( 8 ).
    DATA t2663 TYPE REF TO zcl_lnt_abstract_type_data.
    t2661 = NEW zcl_lnt_character_type( i_length = t2662 i_extra = t2663 ).
    t2660 = t2661.
    DATA t2664 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2657 = NEW zcl_lnt_istructure_component( i_name = t2658 i_type_9913 = t2660 i_as_include = t2664 i_suffix = t2666 ).
    CREATE OBJECT t2657->zlnt_view_ownkeys_b0e8086400eb.
    t2657->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2668 ).
    DATA t2669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2669 ).
    ENDIF.
    CREATE OBJECT t2657->zlnt_json_ownkeys_70e5fd461788.
    t2657->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2670) = |name|.
    DATA t2671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2670 p1 = t2671 ).
    DATA(t2672) = |type|.
    DATA t2673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2672 p1 = t2673 ).
    ENDIF.
    t1->load( ).
    APPEND t2657 TO t1->items.
    t1->save( ).
    DATA t2675 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2676 TYPE string.
    t2676 = |tfdsn|.
    DATA t2678 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2679 TYPE REF TO zcl_lnt_character_type.
    DATA(t2680) = CONV f( 8 ).
    DATA t2681 TYPE REF TO zcl_lnt_abstract_type_data.
    t2679 = NEW zcl_lnt_character_type( i_length = t2680 i_extra = t2681 ).
    t2678 = t2679.
    DATA t2682 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2675 = NEW zcl_lnt_istructure_component( i_name = t2676 i_type_9913 = t2678 i_as_include = t2682 i_suffix = t2684 ).
    CREATE OBJECT t2675->zlnt_view_ownkeys_b0e8086400eb.
    t2675->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2675->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2686 ).
    DATA t2687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2675->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2675->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2687 ).
    ENDIF.
    CREATE OBJECT t2675->zlnt_json_ownkeys_70e5fd461788.
    t2675->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2688) = |name|.
    DATA t2689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2675->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2688 p1 = t2689 ).
    DATA(t2690) = |type|.
    DATA t2691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2675->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2675->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2690 p1 = t2691 ).
    ENDIF.
    t1->load( ).
    APPEND t2675 TO t1->items.
    t1->save( ).
    DATA t2693 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2694 TYPE string.
    t2694 = |uname|.
    DATA t2696 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2697 TYPE REF TO zcl_lnt_character_type.
    DATA(t2698) = CONV f( 12 ).
    DATA t2699 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2701 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2705) = |sy-uname|.
    DATA(t2706) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2706->has = abap_true.
    t2706->value = t2705.
    t2702 = t2706.
    DATA t2708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2701 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2702 i_conversion_exit = t2708 i_derived_from_constant = t2710 i_ddic_name = t2712 i_rtti_name = t2714 i_description = t2716 ).
    CREATE OBJECT t2701->zlnt_view_ownkeys_b0e8086400eb.
    t2701->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2718 ).
    CREATE OBJECT t2701->zlnt_json_ownkeys_70e5fd461788.
    t2701->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2719) = |qualifiedName|.
    DATA t2720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2701->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2719 p1 = t2720 ).
    t2699 = t2701.
    t2697 = NEW zcl_lnt_character_type( i_length = t2698 i_extra = t2699 ).
    t2696 = t2697.
    DATA t2722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2693 = NEW zcl_lnt_istructure_component( i_name = t2694 i_type_9913 = t2696 i_as_include = t2722 i_suffix = t2724 ).
    CREATE OBJECT t2693->zlnt_view_ownkeys_b0e8086400eb.
    t2693->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2726 ).
    DATA t2727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2693->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2693->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2727 ).
    ENDIF.
    CREATE OBJECT t2693->zlnt_json_ownkeys_70e5fd461788.
    t2693->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2728) = |name|.
    DATA t2729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2693->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2728 p1 = t2729 ).
    DATA(t2730) = |type|.
    DATA t2731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2693->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2693->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2730 p1 = t2731 ).
    ENDIF.
    t1->load( ).
    APPEND t2693 TO t1->items.
    t1->save( ).
    DATA t2733 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2734 TYPE string.
    t2734 = |lstat|.
    DATA t2736 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2737 TYPE REF TO zcl_lnt_character_type.
    DATA(t2738) = CONV f( 16 ).
    DATA t2739 TYPE REF TO zcl_lnt_abstract_type_data.
    t2737 = NEW zcl_lnt_character_type( i_length = t2738 i_extra = t2739 ).
    t2736 = t2737.
    DATA t2740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2733 = NEW zcl_lnt_istructure_component( i_name = t2734 i_type_9913 = t2736 i_as_include = t2740 i_suffix = t2742 ).
    CREATE OBJECT t2733->zlnt_view_ownkeys_b0e8086400eb.
    t2733->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2744 ).
    DATA t2745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2733->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2745 ).
    ENDIF.
    CREATE OBJECT t2733->zlnt_json_ownkeys_70e5fd461788.
    t2733->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2746) = |name|.
    DATA t2747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2746 p1 = t2747 ).
    DATA(t2748) = |type|.
    DATA t2749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2733->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2748 p1 = t2749 ).
    ENDIF.
    t1->load( ).
    APPEND t2733 TO t1->items.
    t1->save( ).
    DATA t2751 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2752 TYPE string.
    t2752 = |abcde|.
    DATA t2754 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2755 TYPE REF TO zcl_lnt_character_type.
    DATA(t2756) = CONV f( 26 ).
    DATA t2757 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2759 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2763) = |sy-abcde|.
    DATA(t2764) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2764->has = abap_true.
    t2764->value = t2763.
    t2760 = t2764.
    DATA t2766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2768 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2759 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2760 i_conversion_exit = t2766 i_derived_from_constant = t2768 i_ddic_name = t2770 i_rtti_name = t2772 i_description = t2774 ).
    CREATE OBJECT t2759->zlnt_view_ownkeys_b0e8086400eb.
    t2759->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2776 ).
    CREATE OBJECT t2759->zlnt_json_ownkeys_70e5fd461788.
    t2759->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2777) = |qualifiedName|.
    DATA t2778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2759->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2777 p1 = t2778 ).
    t2757 = t2759.
    t2755 = NEW zcl_lnt_character_type( i_length = t2756 i_extra = t2757 ).
    t2754 = t2755.
    DATA t2780 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2751 = NEW zcl_lnt_istructure_component( i_name = t2752 i_type_9913 = t2754 i_as_include = t2780 i_suffix = t2782 ).
    CREATE OBJECT t2751->zlnt_view_ownkeys_b0e8086400eb.
    t2751->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2784 ).
    DATA t2785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2751->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2751->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2785 ).
    ENDIF.
    CREATE OBJECT t2751->zlnt_json_ownkeys_70e5fd461788.
    t2751->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2786) = |name|.
    DATA t2787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2786 p1 = t2787 ).
    DATA(t2788) = |type|.
    DATA t2789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2751->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2788 p1 = t2789 ).
    ENDIF.
    t1->load( ).
    APPEND t2751 TO t1->items.
    t1->save( ).
    DATA t2791 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2792 TYPE string.
    t2792 = |marky|.
    DATA t2794 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2795 TYPE REF TO zcl_lnt_character_type.
    DATA(t2796) = CONV f( 1 ).
    DATA t2797 TYPE REF TO zcl_lnt_abstract_type_data.
    t2795 = NEW zcl_lnt_character_type( i_length = t2796 i_extra = t2797 ).
    t2794 = t2795.
    DATA t2798 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2800 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2791 = NEW zcl_lnt_istructure_component( i_name = t2792 i_type_9913 = t2794 i_as_include = t2798 i_suffix = t2800 ).
    CREATE OBJECT t2791->zlnt_view_ownkeys_b0e8086400eb.
    t2791->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2802 ).
    DATA t2803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2791->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2791->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2803 ).
    ENDIF.
    CREATE OBJECT t2791->zlnt_json_ownkeys_70e5fd461788.
    t2791->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2804) = |name|.
    DATA t2805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2804 p1 = t2805 ).
    DATA(t2806) = |type|.
    DATA t2807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2791->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2806 p1 = t2807 ).
    ENDIF.
    t1->load( ).
    APPEND t2791 TO t1->items.
    t1->save( ).
    DATA t2809 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2810 TYPE string.
    t2810 = |sfnam|.
    DATA t2812 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2813 TYPE REF TO zcl_lnt_character_type.
    DATA(t2814) = CONV f( 30 ).
    DATA t2815 TYPE REF TO zcl_lnt_abstract_type_data.
    t2813 = NEW zcl_lnt_character_type( i_length = t2814 i_extra = t2815 ).
    t2812 = t2813.
    DATA t2816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2809 = NEW zcl_lnt_istructure_component( i_name = t2810 i_type_9913 = t2812 i_as_include = t2816 i_suffix = t2818 ).
    CREATE OBJECT t2809->zlnt_view_ownkeys_b0e8086400eb.
    t2809->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2809->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2820 ).
    DATA t2821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2809->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2809->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2821 ).
    ENDIF.
    CREATE OBJECT t2809->zlnt_json_ownkeys_70e5fd461788.
    t2809->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2822) = |name|.
    DATA t2823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2809->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2822 p1 = t2823 ).
    DATA(t2824) = |type|.
    DATA t2825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2809->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2809->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2824 p1 = t2825 ).
    ENDIF.
    t1->load( ).
    APPEND t2809 TO t1->items.
    t1->save( ).
    DATA t2827 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2828 TYPE string.
    t2828 = |tname|.
    DATA t2830 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2831 TYPE REF TO zcl_lnt_character_type.
    DATA(t2832) = CONV f( 30 ).
    DATA t2833 TYPE REF TO zcl_lnt_abstract_type_data.
    t2831 = NEW zcl_lnt_character_type( i_length = t2832 i_extra = t2833 ).
    t2830 = t2831.
    DATA t2834 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2827 = NEW zcl_lnt_istructure_component( i_name = t2828 i_type_9913 = t2830 i_as_include = t2834 i_suffix = t2836 ).
    CREATE OBJECT t2827->zlnt_view_ownkeys_b0e8086400eb.
    t2827->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2827->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2838 ).
    DATA t2839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2827->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2827->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2839 ).
    ENDIF.
    CREATE OBJECT t2827->zlnt_json_ownkeys_70e5fd461788.
    t2827->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2840) = |name|.
    DATA t2841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2827->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2840 p1 = t2841 ).
    DATA(t2842) = |type|.
    DATA t2843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2827->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2827->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2842 p1 = t2843 ).
    ENDIF.
    t1->load( ).
    APPEND t2827 TO t1->items.
    t1->save( ).
    DATA t2845 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2846 TYPE string.
    t2846 = |msgli|.
    DATA t2848 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2849 TYPE REF TO zcl_lnt_character_type.
    DATA(t2850) = CONV f( 60 ).
    DATA t2851 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2853 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2854 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2857) = |sy-msgli|.
    DATA(t2858) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2858->has = abap_true.
    t2858->value = t2857.
    t2854 = t2858.
    DATA t2860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2862 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2853 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2854 i_conversion_exit = t2860 i_derived_from_constant = t2862 i_ddic_name = t2864 i_rtti_name = t2866 i_description = t2868 ).
    CREATE OBJECT t2853->zlnt_view_ownkeys_b0e8086400eb.
    t2853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2870 ).
    CREATE OBJECT t2853->zlnt_json_ownkeys_70e5fd461788.
    t2853->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2871) = |qualifiedName|.
    DATA t2872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2871 p1 = t2872 ).
    t2851 = t2853.
    t2849 = NEW zcl_lnt_character_type( i_length = t2850 i_extra = t2851 ).
    t2848 = t2849.
    DATA t2874 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2845 = NEW zcl_lnt_istructure_component( i_name = t2846 i_type_9913 = t2848 i_as_include = t2874 i_suffix = t2876 ).
    CREATE OBJECT t2845->zlnt_view_ownkeys_b0e8086400eb.
    t2845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2878 ).
    DATA t2879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2879 ).
    ENDIF.
    CREATE OBJECT t2845->zlnt_json_ownkeys_70e5fd461788.
    t2845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2880) = |name|.
    DATA t2881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2880 p1 = t2881 ).
    DATA(t2882) = |type|.
    DATA t2883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2882 p1 = t2883 ).
    ENDIF.
    t1->load( ).
    APPEND t2845 TO t1->items.
    t1->save( ).
    DATA t2885 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2886 TYPE string.
    t2886 = |title|.
    DATA t2888 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2889 TYPE REF TO zcl_lnt_character_type.
    DATA(t2890) = CONV f( 70 ).
    DATA t2891 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2893 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2897) = |sy-title|.
    DATA(t2898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2898->has = abap_true.
    t2898->value = t2897.
    t2894 = t2898.
    DATA t2900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2902 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2893 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2894 i_conversion_exit = t2900 i_derived_from_constant = t2902 i_ddic_name = t2904 i_rtti_name = t2906 i_description = t2908 ).
    CREATE OBJECT t2893->zlnt_view_ownkeys_b0e8086400eb.
    t2893->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2910 ).
    CREATE OBJECT t2893->zlnt_json_ownkeys_70e5fd461788.
    t2893->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2911) = |qualifiedName|.
    DATA t2912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2893->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2911 p1 = t2912 ).
    t2891 = t2893.
    t2889 = NEW zcl_lnt_character_type( i_length = t2890 i_extra = t2891 ).
    t2888 = t2889.
    DATA t2914 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2885 = NEW zcl_lnt_istructure_component( i_name = t2886 i_type_9913 = t2888 i_as_include = t2914 i_suffix = t2916 ).
    CREATE OBJECT t2885->zlnt_view_ownkeys_b0e8086400eb.
    t2885->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2918 ).
    DATA t2919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2885->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2919 ).
    ENDIF.
    CREATE OBJECT t2885->zlnt_json_ownkeys_70e5fd461788.
    t2885->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2920) = |name|.
    DATA t2921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2885->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2920 p1 = t2921 ).
    DATA(t2922) = |type|.
    DATA t2923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2885->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2885->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2922 p1 = t2923 ).
    ENDIF.
    t1->load( ).
    APPEND t2885 TO t1->items.
    t1->save( ).
    DATA t2925 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2926 TYPE string.
    t2926 = |entry|.
    DATA t2928 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2929 TYPE REF TO zcl_lnt_character_type.
    DATA(t2930) = CONV f( 72 ).
    DATA t2931 TYPE REF TO zcl_lnt_abstract_type_data.
    t2929 = NEW zcl_lnt_character_type( i_length = t2930 i_extra = t2931 ).
    t2928 = t2929.
    DATA t2932 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2925 = NEW zcl_lnt_istructure_component( i_name = t2926 i_type_9913 = t2928 i_as_include = t2932 i_suffix = t2934 ).
    CREATE OBJECT t2925->zlnt_view_ownkeys_b0e8086400eb.
    t2925->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2925->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2936 ).
    DATA t2937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2925->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2925->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2937 ).
    ENDIF.
    CREATE OBJECT t2925->zlnt_json_ownkeys_70e5fd461788.
    t2925->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2938) = |name|.
    DATA t2939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2925->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2938 p1 = t2939 ).
    DATA(t2940) = |type|.
    DATA t2941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2925->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2925->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2940 p1 = t2941 ).
    ENDIF.
    t1->load( ).
    APPEND t2925 TO t1->items.
    t1->save( ).
    DATA t2943 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2944 TYPE string.
    t2944 = |lisel|.
    DATA t2946 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2947 TYPE REF TO zcl_lnt_character_type.
    DATA(t2948) = CONV f( 255 ).
    DATA t2949 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2951 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2955) = |sy-lisel|.
    DATA(t2956) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2956->has = abap_true.
    t2956->value = t2955.
    t2952 = t2956.
    DATA t2958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2960 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2951 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2952 i_conversion_exit = t2958 i_derived_from_constant = t2960 i_ddic_name = t2962 i_rtti_name = t2964 i_description = t2966 ).
    CREATE OBJECT t2951->zlnt_view_ownkeys_b0e8086400eb.
    t2951->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2968 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2968 ).
    CREATE OBJECT t2951->zlnt_json_ownkeys_70e5fd461788.
    t2951->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2969) = |qualifiedName|.
    DATA t2970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2969 p1 = t2970 ).
    t2949 = t2951.
    t2947 = NEW zcl_lnt_character_type( i_length = t2948 i_extra = t2949 ).
    t2946 = t2947.
    DATA t2972 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2974 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2943 = NEW zcl_lnt_istructure_component( i_name = t2944 i_type_9913 = t2946 i_as_include = t2972 i_suffix = t2974 ).
    CREATE OBJECT t2943->zlnt_view_ownkeys_b0e8086400eb.
    t2943->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2976 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2976 ).
    DATA t2977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2943->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t2977 ).
    ENDIF.
    CREATE OBJECT t2943->zlnt_json_ownkeys_70e5fd461788.
    t2943->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2978) = |name|.
    DATA t2979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2978 p1 = t2979 ).
    DATA(t2980) = |type|.
    DATA t2981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2943->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2980 p1 = t2981 ).
    ENDIF.
    t1->load( ).
    APPEND t2943 TO t1->items.
    t1->save( ).
    DATA t2983 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2984 TYPE string.
    t2984 = |uline|.
    DATA t2986 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2987 TYPE REF TO zcl_lnt_character_type.
    DATA(t2988) = CONV f( 255 ).
    DATA t2989 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2991 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t2992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t2995) = |sy-uline|.
    DATA(t2996) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2996->has = abap_true.
    t2996->value = t2995.
    t2992 = t2996.
    DATA t2998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3000 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3002 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3004 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2991 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2992 i_conversion_exit = t2998 i_derived_from_constant = t3000 i_ddic_name = t3002 i_rtti_name = t3004 i_description = t3006 ).
    CREATE OBJECT t2991->zlnt_view_ownkeys_b0e8086400eb.
    t2991->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3008 ).
    CREATE OBJECT t2991->zlnt_json_ownkeys_70e5fd461788.
    t2991->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3009) = |qualifiedName|.
    DATA t3010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3009 p1 = t3010 ).
    t2989 = t2991.
    t2987 = NEW zcl_lnt_character_type( i_length = t2988 i_extra = t2989 ).
    t2986 = t2987.
    DATA t3012 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2983 = NEW zcl_lnt_istructure_component( i_name = t2984 i_type_9913 = t2986 i_as_include = t3012 i_suffix = t3014 ).
    CREATE OBJECT t2983->zlnt_view_ownkeys_b0e8086400eb.
    t2983->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2983->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3016 ).
    DATA t3017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2983->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2983->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3017 ).
    ENDIF.
    CREATE OBJECT t2983->zlnt_json_ownkeys_70e5fd461788.
    t2983->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3018) = |name|.
    DATA t3019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2983->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3018 p1 = t3019 ).
    DATA(t3020) = |type|.
    DATA t3021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2983->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2983->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3020 p1 = t3021 ).
    ENDIF.
    t1->load( ).
    APPEND t2983 TO t1->items.
    t1->save( ).
    DATA t3023 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3024 TYPE string.
    t3024 = |xcode|.
    DATA t3026 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3027 TYPE REF TO zcl_lnt_character_type.
    DATA(t3028) = CONV f( 70 ).
    DATA t3029 TYPE REF TO zcl_lnt_abstract_type_data.
    t3027 = NEW zcl_lnt_character_type( i_length = t3028 i_extra = t3029 ).
    t3026 = t3027.
    DATA t3030 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3023 = NEW zcl_lnt_istructure_component( i_name = t3024 i_type_9913 = t3026 i_as_include = t3030 i_suffix = t3032 ).
    CREATE OBJECT t3023->zlnt_view_ownkeys_b0e8086400eb.
    t3023->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3023->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3034 ).
    DATA t3035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3023->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3023->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3035 ).
    ENDIF.
    CREATE OBJECT t3023->zlnt_json_ownkeys_70e5fd461788.
    t3023->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3036) = |name|.
    DATA t3037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3023->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3036 p1 = t3037 ).
    DATA(t3038) = |type|.
    DATA t3039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3023->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3023->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3038 p1 = t3039 ).
    ENDIF.
    t1->load( ).
    APPEND t3023 TO t1->items.
    t1->save( ).
    DATA t3041 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3042 TYPE string.
    t3042 = |cprog|.
    DATA t3044 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3045 TYPE REF TO zcl_lnt_character_type.
    DATA(t3046) = CONV f( 40 ).
    DATA t3047 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3049 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3053) = |sy-cprog|.
    DATA(t3054) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3054->has = abap_true.
    t3054->value = t3053.
    t3050 = t3054.
    DATA t3056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3058 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3049 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3050 i_conversion_exit = t3056 i_derived_from_constant = t3058 i_ddic_name = t3060 i_rtti_name = t3062 i_description = t3064 ).
    CREATE OBJECT t3049->zlnt_view_ownkeys_b0e8086400eb.
    t3049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3066 ).
    CREATE OBJECT t3049->zlnt_json_ownkeys_70e5fd461788.
    t3049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3067) = |qualifiedName|.
    DATA t3068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3067 p1 = t3068 ).
    t3047 = t3049.
    t3045 = NEW zcl_lnt_character_type( i_length = t3046 i_extra = t3047 ).
    t3044 = t3045.
    DATA t3070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3041 = NEW zcl_lnt_istructure_component( i_name = t3042 i_type_9913 = t3044 i_as_include = t3070 i_suffix = t3072 ).
    CREATE OBJECT t3041->zlnt_view_ownkeys_b0e8086400eb.
    t3041->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3041->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3074 ).
    DATA t3075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3041->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3041->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3075 ).
    ENDIF.
    CREATE OBJECT t3041->zlnt_json_ownkeys_70e5fd461788.
    t3041->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3076) = |name|.
    DATA t3077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3041->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3076 p1 = t3077 ).
    DATA(t3078) = |type|.
    DATA t3079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3041->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3041->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3078 p1 = t3079 ).
    ENDIF.
    t1->load( ).
    APPEND t3041 TO t1->items.
    t1->save( ).
    DATA t3081 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3082 TYPE string.
    t3082 = |xprog|.
    DATA t3084 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3085 TYPE REF TO zcl_lnt_character_type.
    DATA(t3086) = CONV f( 40 ).
    DATA t3087 TYPE REF TO zcl_lnt_abstract_type_data.
    t3085 = NEW zcl_lnt_character_type( i_length = t3086 i_extra = t3087 ).
    t3084 = t3085.
    DATA t3088 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3081 = NEW zcl_lnt_istructure_component( i_name = t3082 i_type_9913 = t3084 i_as_include = t3088 i_suffix = t3090 ).
    CREATE OBJECT t3081->zlnt_view_ownkeys_b0e8086400eb.
    t3081->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3081->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3092 ).
    DATA t3093 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3081->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3081->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3093 ).
    ENDIF.
    CREATE OBJECT t3081->zlnt_json_ownkeys_70e5fd461788.
    t3081->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3094) = |name|.
    DATA t3095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3081->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3094 p1 = t3095 ).
    DATA(t3096) = |type|.
    DATA t3097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3081->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3081->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3096 p1 = t3097 ).
    ENDIF.
    t1->load( ).
    APPEND t3081 TO t1->items.
    t1->save( ).
    DATA t3099 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3100 TYPE string.
    t3100 = |xform|.
    DATA t3102 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3103 TYPE REF TO zcl_lnt_character_type.
    DATA(t3104) = CONV f( 30 ).
    DATA t3105 TYPE REF TO zcl_lnt_abstract_type_data.
    t3103 = NEW zcl_lnt_character_type( i_length = t3104 i_extra = t3105 ).
    t3102 = t3103.
    DATA t3106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3099 = NEW zcl_lnt_istructure_component( i_name = t3100 i_type_9913 = t3102 i_as_include = t3106 i_suffix = t3108 ).
    CREATE OBJECT t3099->zlnt_view_ownkeys_b0e8086400eb.
    t3099->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3099->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3110 ).
    DATA t3111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3099->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3099->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3111 ).
    ENDIF.
    CREATE OBJECT t3099->zlnt_json_ownkeys_70e5fd461788.
    t3099->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3112) = |name|.
    DATA t3113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3099->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3112 p1 = t3113 ).
    DATA(t3114) = |type|.
    DATA t3115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3099->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3099->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3114 p1 = t3115 ).
    ENDIF.
    t1->load( ).
    APPEND t3099 TO t1->items.
    t1->save( ).
    DATA t3117 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3118 TYPE string.
    t3118 = |ldbpg|.
    DATA t3120 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3121 TYPE REF TO zcl_lnt_character_type.
    DATA(t3122) = CONV f( 40 ).
    DATA t3123 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3125 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3129) = |sy-ldbpg|.
    DATA(t3130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3130->has = abap_true.
    t3130->value = t3129.
    t3126 = t3130.
    DATA t3132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3125 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3126 i_conversion_exit = t3132 i_derived_from_constant = t3134 i_ddic_name = t3136 i_rtti_name = t3138 i_description = t3140 ).
    CREATE OBJECT t3125->zlnt_view_ownkeys_b0e8086400eb.
    t3125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3142 ).
    CREATE OBJECT t3125->zlnt_json_ownkeys_70e5fd461788.
    t3125->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3143) = |qualifiedName|.
    DATA t3144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3125->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3143 p1 = t3144 ).
    t3123 = t3125.
    t3121 = NEW zcl_lnt_character_type( i_length = t3122 i_extra = t3123 ).
    t3120 = t3121.
    DATA t3146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3117 = NEW zcl_lnt_istructure_component( i_name = t3118 i_type_9913 = t3120 i_as_include = t3146 i_suffix = t3148 ).
    CREATE OBJECT t3117->zlnt_view_ownkeys_b0e8086400eb.
    t3117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3150 ).
    DATA t3151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3151 ).
    ENDIF.
    CREATE OBJECT t3117->zlnt_json_ownkeys_70e5fd461788.
    t3117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3152) = |name|.
    DATA t3153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3152 p1 = t3153 ).
    DATA(t3154) = |type|.
    DATA t3155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3154 p1 = t3155 ).
    ENDIF.
    t1->load( ).
    APPEND t3117 TO t1->items.
    t1->save( ).
    DATA t3157 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3158 TYPE string.
    t3158 = |tvar0|.
    DATA t3160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3161 TYPE REF TO zcl_lnt_character_type.
    DATA(t3162) = CONV f( 20 ).
    DATA t3163 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3165 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3169) = |sy-tvar0|.
    DATA(t3170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3170->has = abap_true.
    t3170->value = t3169.
    t3166 = t3170.
    DATA t3172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3165 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3166 i_conversion_exit = t3172 i_derived_from_constant = t3174 i_ddic_name = t3176 i_rtti_name = t3178 i_description = t3180 ).
    CREATE OBJECT t3165->zlnt_view_ownkeys_b0e8086400eb.
    t3165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3182 ).
    CREATE OBJECT t3165->zlnt_json_ownkeys_70e5fd461788.
    t3165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3183) = |qualifiedName|.
    DATA t3184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3183 p1 = t3184 ).
    t3163 = t3165.
    t3161 = NEW zcl_lnt_character_type( i_length = t3162 i_extra = t3163 ).
    t3160 = t3161.
    DATA t3186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3157 = NEW zcl_lnt_istructure_component( i_name = t3158 i_type_9913 = t3160 i_as_include = t3186 i_suffix = t3188 ).
    CREATE OBJECT t3157->zlnt_view_ownkeys_b0e8086400eb.
    t3157->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3190 ).
    DATA t3191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3157->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3157->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3191 ).
    ENDIF.
    CREATE OBJECT t3157->zlnt_json_ownkeys_70e5fd461788.
    t3157->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3192) = |name|.
    DATA t3193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3192 p1 = t3193 ).
    DATA(t3194) = |type|.
    DATA t3195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3157->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3194 p1 = t3195 ).
    ENDIF.
    t1->load( ).
    APPEND t3157 TO t1->items.
    t1->save( ).
    DATA t3197 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3198 TYPE string.
    t3198 = |tvar1|.
    DATA t3200 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3201 TYPE REF TO zcl_lnt_character_type.
    DATA(t3202) = CONV f( 20 ).
    DATA t3203 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3205 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3209) = |sy-tvar1|.
    DATA(t3210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3210->has = abap_true.
    t3210->value = t3209.
    t3206 = t3210.
    DATA t3212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3205 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3206 i_conversion_exit = t3212 i_derived_from_constant = t3214 i_ddic_name = t3216 i_rtti_name = t3218 i_description = t3220 ).
    CREATE OBJECT t3205->zlnt_view_ownkeys_b0e8086400eb.
    t3205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3222 ).
    CREATE OBJECT t3205->zlnt_json_ownkeys_70e5fd461788.
    t3205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3223) = |qualifiedName|.
    DATA t3224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3205->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3223 p1 = t3224 ).
    t3203 = t3205.
    t3201 = NEW zcl_lnt_character_type( i_length = t3202 i_extra = t3203 ).
    t3200 = t3201.
    DATA t3226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3197 = NEW zcl_lnt_istructure_component( i_name = t3198 i_type_9913 = t3200 i_as_include = t3226 i_suffix = t3228 ).
    CREATE OBJECT t3197->zlnt_view_ownkeys_b0e8086400eb.
    t3197->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3230 ).
    DATA t3231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3231 ).
    ENDIF.
    CREATE OBJECT t3197->zlnt_json_ownkeys_70e5fd461788.
    t3197->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3232) = |name|.
    DATA t3233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3232 p1 = t3233 ).
    DATA(t3234) = |type|.
    DATA t3235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3234 p1 = t3235 ).
    ENDIF.
    t1->load( ).
    APPEND t3197 TO t1->items.
    t1->save( ).
    DATA t3237 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3238 TYPE string.
    t3238 = |tvar2|.
    DATA t3240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3241 TYPE REF TO zcl_lnt_character_type.
    DATA(t3242) = CONV f( 20 ).
    DATA t3243 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3245 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3249) = |sy-tvar2|.
    DATA(t3250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3250->has = abap_true.
    t3250->value = t3249.
    t3246 = t3250.
    DATA t3252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3254 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3245 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3246 i_conversion_exit = t3252 i_derived_from_constant = t3254 i_ddic_name = t3256 i_rtti_name = t3258 i_description = t3260 ).
    CREATE OBJECT t3245->zlnt_view_ownkeys_b0e8086400eb.
    t3245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3262 ).
    CREATE OBJECT t3245->zlnt_json_ownkeys_70e5fd461788.
    t3245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3263) = |qualifiedName|.
    DATA t3264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3263 p1 = t3264 ).
    t3243 = t3245.
    t3241 = NEW zcl_lnt_character_type( i_length = t3242 i_extra = t3243 ).
    t3240 = t3241.
    DATA t3266 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3237 = NEW zcl_lnt_istructure_component( i_name = t3238 i_type_9913 = t3240 i_as_include = t3266 i_suffix = t3268 ).
    CREATE OBJECT t3237->zlnt_view_ownkeys_b0e8086400eb.
    t3237->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3237->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3270 ).
    DATA t3271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3237->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3237->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3271 ).
    ENDIF.
    CREATE OBJECT t3237->zlnt_json_ownkeys_70e5fd461788.
    t3237->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3272) = |name|.
    DATA t3273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3237->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3272 p1 = t3273 ).
    DATA(t3274) = |type|.
    DATA t3275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3237->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3237->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3274 p1 = t3275 ).
    ENDIF.
    t1->load( ).
    APPEND t3237 TO t1->items.
    t1->save( ).
    DATA t3277 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3278 TYPE string.
    t3278 = |tvar3|.
    DATA t3280 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3281 TYPE REF TO zcl_lnt_character_type.
    DATA(t3282) = CONV f( 20 ).
    DATA t3283 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3285 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3289) = |sy-tvar3|.
    DATA(t3290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3290->has = abap_true.
    t3290->value = t3289.
    t3286 = t3290.
    DATA t3292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3294 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3285 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3286 i_conversion_exit = t3292 i_derived_from_constant = t3294 i_ddic_name = t3296 i_rtti_name = t3298 i_description = t3300 ).
    CREATE OBJECT t3285->zlnt_view_ownkeys_b0e8086400eb.
    t3285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3302 ).
    CREATE OBJECT t3285->zlnt_json_ownkeys_70e5fd461788.
    t3285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3303) = |qualifiedName|.
    DATA t3304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3303 p1 = t3304 ).
    t3283 = t3285.
    t3281 = NEW zcl_lnt_character_type( i_length = t3282 i_extra = t3283 ).
    t3280 = t3281.
    DATA t3306 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3277 = NEW zcl_lnt_istructure_component( i_name = t3278 i_type_9913 = t3280 i_as_include = t3306 i_suffix = t3308 ).
    CREATE OBJECT t3277->zlnt_view_ownkeys_b0e8086400eb.
    t3277->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3310 ).
    DATA t3311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3277->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3277->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3311 ).
    ENDIF.
    CREATE OBJECT t3277->zlnt_json_ownkeys_70e5fd461788.
    t3277->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3312) = |name|.
    DATA t3313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3312 p1 = t3313 ).
    DATA(t3314) = |type|.
    DATA t3315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3277->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3314 p1 = t3315 ).
    ENDIF.
    t1->load( ).
    APPEND t3277 TO t1->items.
    t1->save( ).
    DATA t3317 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3318 TYPE string.
    t3318 = |tvar4|.
    DATA t3320 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3321 TYPE REF TO zcl_lnt_character_type.
    DATA(t3322) = CONV f( 20 ).
    DATA t3323 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3325 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3329) = |sy-tvar4|.
    DATA(t3330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3330->has = abap_true.
    t3330->value = t3329.
    t3326 = t3330.
    DATA t3332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3325 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3326 i_conversion_exit = t3332 i_derived_from_constant = t3334 i_ddic_name = t3336 i_rtti_name = t3338 i_description = t3340 ).
    CREATE OBJECT t3325->zlnt_view_ownkeys_b0e8086400eb.
    t3325->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3342 ).
    CREATE OBJECT t3325->zlnt_json_ownkeys_70e5fd461788.
    t3325->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3343) = |qualifiedName|.
    DATA t3344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3343 p1 = t3344 ).
    t3323 = t3325.
    t3321 = NEW zcl_lnt_character_type( i_length = t3322 i_extra = t3323 ).
    t3320 = t3321.
    DATA t3346 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3317 = NEW zcl_lnt_istructure_component( i_name = t3318 i_type_9913 = t3320 i_as_include = t3346 i_suffix = t3348 ).
    CREATE OBJECT t3317->zlnt_view_ownkeys_b0e8086400eb.
    t3317->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3317->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3350 ).
    DATA t3351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3317->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3317->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3351 ).
    ENDIF.
    CREATE OBJECT t3317->zlnt_json_ownkeys_70e5fd461788.
    t3317->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3352) = |name|.
    DATA t3353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3317->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3352 p1 = t3353 ).
    DATA(t3354) = |type|.
    DATA t3355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3317->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3317->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3354 p1 = t3355 ).
    ENDIF.
    t1->load( ).
    APPEND t3317 TO t1->items.
    t1->save( ).
    DATA t3357 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3358 TYPE string.
    t3358 = |tvar5|.
    DATA t3360 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3361 TYPE REF TO zcl_lnt_character_type.
    DATA(t3362) = CONV f( 20 ).
    DATA t3363 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3365 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3369) = |sy-tvar5|.
    DATA(t3370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3370->has = abap_true.
    t3370->value = t3369.
    t3366 = t3370.
    DATA t3372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3374 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3365 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3366 i_conversion_exit = t3372 i_derived_from_constant = t3374 i_ddic_name = t3376 i_rtti_name = t3378 i_description = t3380 ).
    CREATE OBJECT t3365->zlnt_view_ownkeys_b0e8086400eb.
    t3365->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3365->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3382 ).
    CREATE OBJECT t3365->zlnt_json_ownkeys_70e5fd461788.
    t3365->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3383) = |qualifiedName|.
    DATA t3384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3365->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3383 p1 = t3384 ).
    t3363 = t3365.
    t3361 = NEW zcl_lnt_character_type( i_length = t3362 i_extra = t3363 ).
    t3360 = t3361.
    DATA t3386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3357 = NEW zcl_lnt_istructure_component( i_name = t3358 i_type_9913 = t3360 i_as_include = t3386 i_suffix = t3388 ).
    CREATE OBJECT t3357->zlnt_view_ownkeys_b0e8086400eb.
    t3357->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3357->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3390 ).
    DATA t3391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3357->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3357->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3391 ).
    ENDIF.
    CREATE OBJECT t3357->zlnt_json_ownkeys_70e5fd461788.
    t3357->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3392) = |name|.
    DATA t3393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3357->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3392 p1 = t3393 ).
    DATA(t3394) = |type|.
    DATA t3395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3357->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3357->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3394 p1 = t3395 ).
    ENDIF.
    t1->load( ).
    APPEND t3357 TO t1->items.
    t1->save( ).
    DATA t3397 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3398 TYPE string.
    t3398 = |tvar6|.
    DATA t3400 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3401 TYPE REF TO zcl_lnt_character_type.
    DATA(t3402) = CONV f( 20 ).
    DATA t3403 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3405 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3409) = |sy-tvar6|.
    DATA(t3410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3410->has = abap_true.
    t3410->value = t3409.
    t3406 = t3410.
    DATA t3412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3405 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3406 i_conversion_exit = t3412 i_derived_from_constant = t3414 i_ddic_name = t3416 i_rtti_name = t3418 i_description = t3420 ).
    CREATE OBJECT t3405->zlnt_view_ownkeys_b0e8086400eb.
    t3405->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3405->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3422 ).
    CREATE OBJECT t3405->zlnt_json_ownkeys_70e5fd461788.
    t3405->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3423) = |qualifiedName|.
    DATA t3424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3405->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3423 p1 = t3424 ).
    t3403 = t3405.
    t3401 = NEW zcl_lnt_character_type( i_length = t3402 i_extra = t3403 ).
    t3400 = t3401.
    DATA t3426 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3397 = NEW zcl_lnt_istructure_component( i_name = t3398 i_type_9913 = t3400 i_as_include = t3426 i_suffix = t3428 ).
    CREATE OBJECT t3397->zlnt_view_ownkeys_b0e8086400eb.
    t3397->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3430 ).
    DATA t3431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3431 ).
    ENDIF.
    CREATE OBJECT t3397->zlnt_json_ownkeys_70e5fd461788.
    t3397->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3432) = |name|.
    DATA t3433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3432 p1 = t3433 ).
    DATA(t3434) = |type|.
    DATA t3435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3434 p1 = t3435 ).
    ENDIF.
    t1->load( ).
    APPEND t3397 TO t1->items.
    t1->save( ).
    DATA t3437 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3438 TYPE string.
    t3438 = |tvar7|.
    DATA t3440 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3441 TYPE REF TO zcl_lnt_character_type.
    DATA(t3442) = CONV f( 20 ).
    DATA t3443 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3445 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3449) = |sy-tvar7|.
    DATA(t3450) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3450->has = abap_true.
    t3450->value = t3449.
    t3446 = t3450.
    DATA t3452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3454 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3445 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3446 i_conversion_exit = t3452 i_derived_from_constant = t3454 i_ddic_name = t3456 i_rtti_name = t3458 i_description = t3460 ).
    CREATE OBJECT t3445->zlnt_view_ownkeys_b0e8086400eb.
    t3445->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3445->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3462 ).
    CREATE OBJECT t3445->zlnt_json_ownkeys_70e5fd461788.
    t3445->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3463) = |qualifiedName|.
    DATA t3464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3445->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3463 p1 = t3464 ).
    t3443 = t3445.
    t3441 = NEW zcl_lnt_character_type( i_length = t3442 i_extra = t3443 ).
    t3440 = t3441.
    DATA t3466 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3437 = NEW zcl_lnt_istructure_component( i_name = t3438 i_type_9913 = t3440 i_as_include = t3466 i_suffix = t3468 ).
    CREATE OBJECT t3437->zlnt_view_ownkeys_b0e8086400eb.
    t3437->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3470 ).
    DATA t3471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3437->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3437->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3471 ).
    ENDIF.
    CREATE OBJECT t3437->zlnt_json_ownkeys_70e5fd461788.
    t3437->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3472) = |name|.
    DATA t3473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3437->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3472 p1 = t3473 ).
    DATA(t3474) = |type|.
    DATA t3475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3437->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3437->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3474 p1 = t3475 ).
    ENDIF.
    t1->load( ).
    APPEND t3437 TO t1->items.
    t1->save( ).
    DATA t3477 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3478 TYPE string.
    t3478 = |tvar8|.
    DATA t3480 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3481 TYPE REF TO zcl_lnt_character_type.
    DATA(t3482) = CONV f( 20 ).
    DATA t3483 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3485 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3489) = |sy-tvar8|.
    DATA(t3490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3490->has = abap_true.
    t3490->value = t3489.
    t3486 = t3490.
    DATA t3492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3494 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3485 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3486 i_conversion_exit = t3492 i_derived_from_constant = t3494 i_ddic_name = t3496 i_rtti_name = t3498 i_description = t3500 ).
    CREATE OBJECT t3485->zlnt_view_ownkeys_b0e8086400eb.
    t3485->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3502 ).
    CREATE OBJECT t3485->zlnt_json_ownkeys_70e5fd461788.
    t3485->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3503) = |qualifiedName|.
    DATA t3504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3503 p1 = t3504 ).
    t3483 = t3485.
    t3481 = NEW zcl_lnt_character_type( i_length = t3482 i_extra = t3483 ).
    t3480 = t3481.
    DATA t3506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3477 = NEW zcl_lnt_istructure_component( i_name = t3478 i_type_9913 = t3480 i_as_include = t3506 i_suffix = t3508 ).
    CREATE OBJECT t3477->zlnt_view_ownkeys_b0e8086400eb.
    t3477->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3477->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3510 ).
    DATA t3511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3477->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3477->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3511 ).
    ENDIF.
    CREATE OBJECT t3477->zlnt_json_ownkeys_70e5fd461788.
    t3477->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3512) = |name|.
    DATA t3513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3477->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3512 p1 = t3513 ).
    DATA(t3514) = |type|.
    DATA t3515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3477->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3477->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3514 p1 = t3515 ).
    ENDIF.
    t1->load( ).
    APPEND t3477 TO t1->items.
    t1->save( ).
    DATA t3517 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3518 TYPE string.
    t3518 = |tvar9|.
    DATA t3520 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3521 TYPE REF TO zcl_lnt_character_type.
    DATA(t3522) = CONV f( 20 ).
    DATA t3523 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3525 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3529) = |sy-tvar9|.
    DATA(t3530) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3530->has = abap_true.
    t3530->value = t3529.
    t3526 = t3530.
    DATA t3532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3534 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3525 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3526 i_conversion_exit = t3532 i_derived_from_constant = t3534 i_ddic_name = t3536 i_rtti_name = t3538 i_description = t3540 ).
    CREATE OBJECT t3525->zlnt_view_ownkeys_b0e8086400eb.
    t3525->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3525->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3542 ).
    CREATE OBJECT t3525->zlnt_json_ownkeys_70e5fd461788.
    t3525->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3543) = |qualifiedName|.
    DATA t3544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3525->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3543 p1 = t3544 ).
    t3523 = t3525.
    t3521 = NEW zcl_lnt_character_type( i_length = t3522 i_extra = t3523 ).
    t3520 = t3521.
    DATA t3546 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3517 = NEW zcl_lnt_istructure_component( i_name = t3518 i_type_9913 = t3520 i_as_include = t3546 i_suffix = t3548 ).
    CREATE OBJECT t3517->zlnt_view_ownkeys_b0e8086400eb.
    t3517->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3517->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3550 ).
    DATA t3551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3517->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3517->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3551 ).
    ENDIF.
    CREATE OBJECT t3517->zlnt_json_ownkeys_70e5fd461788.
    t3517->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3552) = |name|.
    DATA t3553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3517->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3552 p1 = t3553 ).
    DATA(t3554) = |type|.
    DATA t3555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3517->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3517->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3554 p1 = t3555 ).
    ENDIF.
    t1->load( ).
    APPEND t3517 TO t1->items.
    t1->save( ).
    DATA t3557 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3558 TYPE string.
    t3558 = |msgid|.
    DATA t3560 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3561 TYPE REF TO zcl_lnt_character_type.
    DATA(t3562) = CONV f( 20 ).
    DATA t3563 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3565 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3569) = |sy-msgid|.
    DATA(t3570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3570->has = abap_true.
    t3570->value = t3569.
    t3566 = t3570.
    DATA t3572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3574 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3565 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3566 i_conversion_exit = t3572 i_derived_from_constant = t3574 i_ddic_name = t3576 i_rtti_name = t3578 i_description = t3580 ).
    CREATE OBJECT t3565->zlnt_view_ownkeys_b0e8086400eb.
    t3565->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3582 ).
    CREATE OBJECT t3565->zlnt_json_ownkeys_70e5fd461788.
    t3565->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3583) = |qualifiedName|.
    DATA t3584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3583 p1 = t3584 ).
    t3563 = t3565.
    t3561 = NEW zcl_lnt_character_type( i_length = t3562 i_extra = t3563 ).
    t3560 = t3561.
    DATA t3586 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3557 = NEW zcl_lnt_istructure_component( i_name = t3558 i_type_9913 = t3560 i_as_include = t3586 i_suffix = t3588 ).
    CREATE OBJECT t3557->zlnt_view_ownkeys_b0e8086400eb.
    t3557->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3557->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3590 ).
    DATA t3591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3557->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3557->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3591 ).
    ENDIF.
    CREATE OBJECT t3557->zlnt_json_ownkeys_70e5fd461788.
    t3557->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3592) = |name|.
    DATA t3593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3557->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3592 p1 = t3593 ).
    DATA(t3594) = |type|.
    DATA t3595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3557->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3557->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3594 p1 = t3595 ).
    ENDIF.
    t1->load( ).
    APPEND t3557 TO t1->items.
    t1->save( ).
    DATA t3597 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3598 TYPE string.
    t3598 = |msgty|.
    DATA t3600 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3601 TYPE REF TO zcl_lnt_character_type.
    DATA(t3602) = CONV f( 1 ).
    DATA t3603 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3605 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3609) = |sy-msgty|.
    DATA(t3610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3610->has = abap_true.
    t3610->value = t3609.
    t3606 = t3610.
    DATA t3612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3614 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3605 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3606 i_conversion_exit = t3612 i_derived_from_constant = t3614 i_ddic_name = t3616 i_rtti_name = t3618 i_description = t3620 ).
    CREATE OBJECT t3605->zlnt_view_ownkeys_b0e8086400eb.
    t3605->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3622 ).
    CREATE OBJECT t3605->zlnt_json_ownkeys_70e5fd461788.
    t3605->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3623) = |qualifiedName|.
    DATA t3624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3605->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3623 p1 = t3624 ).
    t3603 = t3605.
    t3601 = NEW zcl_lnt_character_type( i_length = t3602 i_extra = t3603 ).
    t3600 = t3601.
    DATA t3626 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3628 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3597 = NEW zcl_lnt_istructure_component( i_name = t3598 i_type_9913 = t3600 i_as_include = t3626 i_suffix = t3628 ).
    CREATE OBJECT t3597->zlnt_view_ownkeys_b0e8086400eb.
    t3597->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3597->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3630 ).
    DATA t3631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3597->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3597->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3631 ).
    ENDIF.
    CREATE OBJECT t3597->zlnt_json_ownkeys_70e5fd461788.
    t3597->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3632) = |name|.
    DATA t3633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3597->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3632 p1 = t3633 ).
    DATA(t3634) = |type|.
    DATA t3635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3597->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3597->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3634 p1 = t3635 ).
    ENDIF.
    t1->load( ).
    APPEND t3597 TO t1->items.
    t1->save( ).
    DATA t3637 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3638 TYPE string.
    t3638 = |msgno|.
    DATA t3640 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3641 TYPE REF TO zcl_lnt_numeric_type.
    DATA(t3642) = CONV f( 3 ).
    DATA t3643 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3645) = |sy-msgno|.
    DATA(t3646) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3646->has = abap_true.
    t3646->value = t3645.
    t3643 = t3646.
    t3641 = NEW zcl_lnt_numeric_type( i_length = t3642 i_qualified_name = t3643 ).
    t3640 = t3641.
    DATA t3648 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3637 = NEW zcl_lnt_istructure_component( i_name = t3638 i_type_9913 = t3640 i_as_include = t3648 i_suffix = t3650 ).
    CREATE OBJECT t3637->zlnt_view_ownkeys_b0e8086400eb.
    t3637->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3652 ).
    DATA t3653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3653 ).
    ENDIF.
    CREATE OBJECT t3637->zlnt_json_ownkeys_70e5fd461788.
    t3637->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3654) = |name|.
    DATA t3655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3654 p1 = t3655 ).
    DATA(t3656) = |type|.
    DATA t3657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3656 p1 = t3657 ).
    ENDIF.
    t1->load( ).
    APPEND t3637 TO t1->items.
    t1->save( ).
    DATA t3659 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3660 TYPE string.
    t3660 = |msgv1|.
    DATA t3662 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3663 TYPE REF TO zcl_lnt_character_type.
    DATA(t3664) = CONV f( 50 ).
    DATA t3665 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3667 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3671) = |sy-msgv1|.
    DATA(t3672) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3672->has = abap_true.
    t3672->value = t3671.
    t3668 = t3672.
    DATA t3674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3676 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3667 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3668 i_conversion_exit = t3674 i_derived_from_constant = t3676 i_ddic_name = t3678 i_rtti_name = t3680 i_description = t3682 ).
    CREATE OBJECT t3667->zlnt_view_ownkeys_b0e8086400eb.
    t3667->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3667->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3684 ).
    CREATE OBJECT t3667->zlnt_json_ownkeys_70e5fd461788.
    t3667->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3685) = |qualifiedName|.
    DATA t3686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3667->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3685 p1 = t3686 ).
    t3665 = t3667.
    t3663 = NEW zcl_lnt_character_type( i_length = t3664 i_extra = t3665 ).
    t3662 = t3663.
    DATA t3688 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3659 = NEW zcl_lnt_istructure_component( i_name = t3660 i_type_9913 = t3662 i_as_include = t3688 i_suffix = t3690 ).
    CREATE OBJECT t3659->zlnt_view_ownkeys_b0e8086400eb.
    t3659->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3659->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3692 ).
    DATA t3693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3659->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3659->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3693 ).
    ENDIF.
    CREATE OBJECT t3659->zlnt_json_ownkeys_70e5fd461788.
    t3659->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3694) = |name|.
    DATA t3695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3659->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3694 p1 = t3695 ).
    DATA(t3696) = |type|.
    DATA t3697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3659->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3659->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3696 p1 = t3697 ).
    ENDIF.
    t1->load( ).
    APPEND t3659 TO t1->items.
    t1->save( ).
    DATA t3699 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3700 TYPE string.
    t3700 = |msgv2|.
    DATA t3702 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3703 TYPE REF TO zcl_lnt_character_type.
    DATA(t3704) = CONV f( 50 ).
    DATA t3705 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3707 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3711) = |sy-msgv2|.
    DATA(t3712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3712->has = abap_true.
    t3712->value = t3711.
    t3708 = t3712.
    DATA t3714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3707 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3708 i_conversion_exit = t3714 i_derived_from_constant = t3716 i_ddic_name = t3718 i_rtti_name = t3720 i_description = t3722 ).
    CREATE OBJECT t3707->zlnt_view_ownkeys_b0e8086400eb.
    t3707->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3724 ).
    CREATE OBJECT t3707->zlnt_json_ownkeys_70e5fd461788.
    t3707->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3725) = |qualifiedName|.
    DATA t3726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3725 p1 = t3726 ).
    t3705 = t3707.
    t3703 = NEW zcl_lnt_character_type( i_length = t3704 i_extra = t3705 ).
    t3702 = t3703.
    DATA t3728 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3699 = NEW zcl_lnt_istructure_component( i_name = t3700 i_type_9913 = t3702 i_as_include = t3728 i_suffix = t3730 ).
    CREATE OBJECT t3699->zlnt_view_ownkeys_b0e8086400eb.
    t3699->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3732 ).
    DATA t3733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3699->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3699->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3733 ).
    ENDIF.
    CREATE OBJECT t3699->zlnt_json_ownkeys_70e5fd461788.
    t3699->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3734) = |name|.
    DATA t3735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3734 p1 = t3735 ).
    DATA(t3736) = |type|.
    DATA t3737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3699->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3736 p1 = t3737 ).
    ENDIF.
    t1->load( ).
    APPEND t3699 TO t1->items.
    t1->save( ).
    DATA t3739 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3740 TYPE string.
    t3740 = |msgv3|.
    DATA t3742 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3743 TYPE REF TO zcl_lnt_character_type.
    DATA(t3744) = CONV f( 50 ).
    DATA t3745 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3747 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3751) = |sy-msgv3|.
    DATA(t3752) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3752->has = abap_true.
    t3752->value = t3751.
    t3748 = t3752.
    DATA t3754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3756 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3747 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3748 i_conversion_exit = t3754 i_derived_from_constant = t3756 i_ddic_name = t3758 i_rtti_name = t3760 i_description = t3762 ).
    CREATE OBJECT t3747->zlnt_view_ownkeys_b0e8086400eb.
    t3747->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3764 ).
    CREATE OBJECT t3747->zlnt_json_ownkeys_70e5fd461788.
    t3747->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3765) = |qualifiedName|.
    DATA t3766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3747->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3765 p1 = t3766 ).
    t3745 = t3747.
    t3743 = NEW zcl_lnt_character_type( i_length = t3744 i_extra = t3745 ).
    t3742 = t3743.
    DATA t3768 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3739 = NEW zcl_lnt_istructure_component( i_name = t3740 i_type_9913 = t3742 i_as_include = t3768 i_suffix = t3770 ).
    CREATE OBJECT t3739->zlnt_view_ownkeys_b0e8086400eb.
    t3739->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3739->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3772 ).
    DATA t3773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3739->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3739->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3773 ).
    ENDIF.
    CREATE OBJECT t3739->zlnt_json_ownkeys_70e5fd461788.
    t3739->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3774) = |name|.
    DATA t3775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3739->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3774 p1 = t3775 ).
    DATA(t3776) = |type|.
    DATA t3777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3739->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3739->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3776 p1 = t3777 ).
    ENDIF.
    t1->load( ).
    APPEND t3739 TO t1->items.
    t1->save( ).
    DATA t3779 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3780 TYPE string.
    t3780 = |msgv4|.
    DATA t3782 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3783 TYPE REF TO zcl_lnt_character_type.
    DATA(t3784) = CONV f( 50 ).
    DATA t3785 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3787 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3791) = |sy-msgv4|.
    DATA(t3792) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3792->has = abap_true.
    t3792->value = t3791.
    t3788 = t3792.
    DATA t3794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3796 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3800 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3787 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3788 i_conversion_exit = t3794 i_derived_from_constant = t3796 i_ddic_name = t3798 i_rtti_name = t3800 i_description = t3802 ).
    CREATE OBJECT t3787->zlnt_view_ownkeys_b0e8086400eb.
    t3787->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3804 ).
    CREATE OBJECT t3787->zlnt_json_ownkeys_70e5fd461788.
    t3787->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3805) = |qualifiedName|.
    DATA t3806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3805 p1 = t3806 ).
    t3785 = t3787.
    t3783 = NEW zcl_lnt_character_type( i_length = t3784 i_extra = t3785 ).
    t3782 = t3783.
    DATA t3808 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3779 = NEW zcl_lnt_istructure_component( i_name = t3780 i_type_9913 = t3782 i_as_include = t3808 i_suffix = t3810 ).
    CREATE OBJECT t3779->zlnt_view_ownkeys_b0e8086400eb.
    t3779->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3812 ).
    DATA t3813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3779->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3779->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3813 ).
    ENDIF.
    CREATE OBJECT t3779->zlnt_json_ownkeys_70e5fd461788.
    t3779->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3814) = |name|.
    DATA t3815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3814 p1 = t3815 ).
    DATA(t3816) = |type|.
    DATA t3817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3779->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3816 p1 = t3817 ).
    ENDIF.
    t1->load( ).
    APPEND t3779 TO t1->items.
    t1->save( ).
    DATA t3819 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3820 TYPE string.
    t3820 = |oncom|.
    DATA t3822 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3823 TYPE REF TO zcl_lnt_character_type.
    DATA(t3824) = CONV f( 1 ).
    DATA t3825 TYPE REF TO zcl_lnt_abstract_type_data.
    t3823 = NEW zcl_lnt_character_type( i_length = t3824 i_extra = t3825 ).
    t3822 = t3823.
    DATA t3826 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3819 = NEW zcl_lnt_istructure_component( i_name = t3820 i_type_9913 = t3822 i_as_include = t3826 i_suffix = t3828 ).
    CREATE OBJECT t3819->zlnt_view_ownkeys_b0e8086400eb.
    t3819->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3819->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3830 ).
    DATA t3831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3819->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3819->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3831 ).
    ENDIF.
    CREATE OBJECT t3819->zlnt_json_ownkeys_70e5fd461788.
    t3819->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3832) = |name|.
    DATA t3833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3819->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3832 p1 = t3833 ).
    DATA(t3834) = |type|.
    DATA t3835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3819->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3819->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3834 p1 = t3835 ).
    ENDIF.
    t1->load( ).
    APPEND t3819 TO t1->items.
    t1->save( ).
    DATA t3837 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3838 TYPE string.
    t3838 = |vline|.
    DATA t3840 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3841 TYPE REF TO zcl_lnt_character_type.
    DATA(t3842) = CONV f( 1 ).
    DATA t3843 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3845 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3846 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3849) = |sy-vline|.
    DATA(t3850) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3850->has = abap_true.
    t3850->value = t3849.
    t3846 = t3850.
    DATA t3852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3854 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3845 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3846 i_conversion_exit = t3852 i_derived_from_constant = t3854 i_ddic_name = t3856 i_rtti_name = t3858 i_description = t3860 ).
    CREATE OBJECT t3845->zlnt_view_ownkeys_b0e8086400eb.
    t3845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3862 ).
    CREATE OBJECT t3845->zlnt_json_ownkeys_70e5fd461788.
    t3845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3863) = |qualifiedName|.
    DATA t3864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3863 p1 = t3864 ).
    t3843 = t3845.
    t3841 = NEW zcl_lnt_character_type( i_length = t3842 i_extra = t3843 ).
    t3840 = t3841.
    DATA t3866 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3837 = NEW zcl_lnt_istructure_component( i_name = t3838 i_type_9913 = t3840 i_as_include = t3866 i_suffix = t3868 ).
    CREATE OBJECT t3837->zlnt_view_ownkeys_b0e8086400eb.
    t3837->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3837->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3870 ).
    DATA t3871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3837->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3837->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3871 ).
    ENDIF.
    CREATE OBJECT t3837->zlnt_json_ownkeys_70e5fd461788.
    t3837->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3872) = |name|.
    DATA t3873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3837->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3872 p1 = t3873 ).
    DATA(t3874) = |type|.
    DATA t3875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3837->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3837->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3874 p1 = t3875 ).
    ENDIF.
    t1->load( ).
    APPEND t3837 TO t1->items.
    t1->save( ).
    DATA t3877 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3878 TYPE string.
    t3878 = |winsl|.
    DATA t3880 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3881 TYPE REF TO zcl_lnt_character_type.
    DATA(t3882) = CONV f( 79 ).
    DATA t3883 TYPE REF TO zcl_lnt_abstract_type_data.
    t3881 = NEW zcl_lnt_character_type( i_length = t3882 i_extra = t3883 ).
    t3880 = t3881.
    DATA t3884 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3877 = NEW zcl_lnt_istructure_component( i_name = t3878 i_type_9913 = t3880 i_as_include = t3884 i_suffix = t3886 ).
    CREATE OBJECT t3877->zlnt_view_ownkeys_b0e8086400eb.
    t3877->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3877->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3888 ).
    DATA t3889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3877->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3877->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3889 ).
    ENDIF.
    CREATE OBJECT t3877->zlnt_json_ownkeys_70e5fd461788.
    t3877->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3890) = |name|.
    DATA t3891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3877->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3890 p1 = t3891 ).
    DATA(t3892) = |type|.
    DATA t3893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3877->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3877->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3892 p1 = t3893 ).
    ENDIF.
    t1->load( ).
    APPEND t3877 TO t1->items.
    t1->save( ).
    DATA t3895 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3896 TYPE string.
    t3896 = |staco|.
    DATA t3898 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3899 TYPE REF TO zcl_lnt_integer_type.
    DATA t3900 TYPE REF TO zcl_lnt_abstract_type_data.
    t3899 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3900 ).
    t3898 = t3899.
    DATA t3901 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3895 = NEW zcl_lnt_istructure_component( i_name = t3896 i_type_9913 = t3898 i_as_include = t3901 i_suffix = t3903 ).
    CREATE OBJECT t3895->zlnt_view_ownkeys_b0e8086400eb.
    t3895->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3895->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3905 ).
    DATA t3906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3895->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3895->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3906 ).
    ENDIF.
    CREATE OBJECT t3895->zlnt_json_ownkeys_70e5fd461788.
    t3895->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3907) = |name|.
    DATA t3908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3895->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3907 p1 = t3908 ).
    DATA(t3909) = |type|.
    DATA t3910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3895->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3895->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3909 p1 = t3910 ).
    ENDIF.
    t1->load( ).
    APPEND t3895 TO t1->items.
    t1->save( ).
    DATA t3912 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3913 TYPE string.
    t3913 = |staro|.
    DATA t3915 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3916 TYPE REF TO zcl_lnt_integer_type.
    DATA t3917 TYPE REF TO zcl_lnt_abstract_type_data.
    t3916 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3917 ).
    t3915 = t3916.
    DATA t3918 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3912 = NEW zcl_lnt_istructure_component( i_name = t3913 i_type_9913 = t3915 i_as_include = t3918 i_suffix = t3920 ).
    CREATE OBJECT t3912->zlnt_view_ownkeys_b0e8086400eb.
    t3912->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3912->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3922 ).
    DATA t3923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3912->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3912->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3923 ).
    ENDIF.
    CREATE OBJECT t3912->zlnt_json_ownkeys_70e5fd461788.
    t3912->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3924) = |name|.
    DATA t3925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3912->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3924 p1 = t3925 ).
    DATA(t3926) = |type|.
    DATA t3927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3912->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3912->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3926 p1 = t3927 ).
    ENDIF.
    t1->load( ).
    APPEND t3912 TO t1->items.
    t1->save( ).
    DATA t3929 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3930 TYPE string.
    t3930 = |datar|.
    DATA t3932 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3933 TYPE REF TO zcl_lnt_character_type.
    DATA(t3934) = CONV f( 1 ).
    DATA t3935 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3937 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3938 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3941) = |sy-datar|.
    DATA(t3942) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3942->has = abap_true.
    t3942->value = t3941.
    t3938 = t3942.
    DATA t3944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3946 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3937 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3938 i_conversion_exit = t3944 i_derived_from_constant = t3946 i_ddic_name = t3948 i_rtti_name = t3950 i_description = t3952 ).
    CREATE OBJECT t3937->zlnt_view_ownkeys_b0e8086400eb.
    t3937->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3937->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3954 ).
    CREATE OBJECT t3937->zlnt_json_ownkeys_70e5fd461788.
    t3937->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3955) = |qualifiedName|.
    DATA t3956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3937->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3955 p1 = t3956 ).
    t3935 = t3937.
    t3933 = NEW zcl_lnt_character_type( i_length = t3934 i_extra = t3935 ).
    t3932 = t3933.
    DATA t3958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3929 = NEW zcl_lnt_istructure_component( i_name = t3930 i_type_9913 = t3932 i_as_include = t3958 i_suffix = t3960 ).
    CREATE OBJECT t3929->zlnt_view_ownkeys_b0e8086400eb.
    t3929->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t3962 ).
    DATA t3963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3929->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t3963 ).
    ENDIF.
    CREATE OBJECT t3929->zlnt_json_ownkeys_70e5fd461788.
    t3929->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3964) = |name|.
    DATA t3965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3964 p1 = t3965 ).
    DATA(t3966) = |type|.
    DATA t3967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3929->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3966 p1 = t3967 ).
    ENDIF.
    t1->load( ).
    APPEND t3929 TO t1->items.
    t1->save( ).
    DATA t3969 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3970 TYPE string.
    t3970 = |host|.
    DATA t3972 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3973 TYPE REF TO zcl_lnt_character_type.
    DATA(t3974) = CONV f( 32 ).
    DATA t3975 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3977 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t3978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3981) = |sy-host|.
    DATA(t3982) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3982->has = abap_true.
    t3982->value = t3981.
    t3978 = t3982.
    DATA t3984 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3986 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3988 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3990 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3977 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3978 i_conversion_exit = t3984 i_derived_from_constant = t3986 i_ddic_name = t3988 i_rtti_name = t3990 i_description = t3992 ).
    CREATE OBJECT t3977->zlnt_view_ownkeys_b0e8086400eb.
    t3977->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3994 ).
    CREATE OBJECT t3977->zlnt_json_ownkeys_70e5fd461788.
    t3977->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3995) = |qualifiedName|.
    DATA t3996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3995 p1 = t3996 ).
    t3975 = t3977.
    t3973 = NEW zcl_lnt_character_type( i_length = t3974 i_extra = t3975 ).
    t3972 = t3973.
    DATA t3998 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3969 = NEW zcl_lnt_istructure_component( i_name = t3970 i_type_9913 = t3972 i_as_include = t3998 i_suffix = t4000 ).
    CREATE OBJECT t3969->zlnt_view_ownkeys_b0e8086400eb.
    t3969->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3969->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4002 ).
    DATA t4003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3969->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3969->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4003 ).
    ENDIF.
    CREATE OBJECT t3969->zlnt_json_ownkeys_70e5fd461788.
    t3969->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4004) = |name|.
    DATA t4005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3969->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4004 p1 = t4005 ).
    DATA(t4006) = |type|.
    DATA t4007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3969->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3969->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4006 p1 = t4007 ).
    ENDIF.
    t1->load( ).
    APPEND t3969 TO t1->items.
    t1->save( ).
    DATA t4009 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4010 TYPE string.
    t4010 = |locdb|.
    DATA t4012 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4013 TYPE REF TO zcl_lnt_character_type.
    DATA(t4014) = CONV f( 1 ).
    DATA t4015 TYPE REF TO zcl_lnt_abstract_type_data.
    t4013 = NEW zcl_lnt_character_type( i_length = t4014 i_extra = t4015 ).
    t4012 = t4013.
    DATA t4016 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4009 = NEW zcl_lnt_istructure_component( i_name = t4010 i_type_9913 = t4012 i_as_include = t4016 i_suffix = t4018 ).
    CREATE OBJECT t4009->zlnt_view_ownkeys_b0e8086400eb.
    t4009->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4009->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4020 ).
    DATA t4021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4009->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4009->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4021 ).
    ENDIF.
    CREATE OBJECT t4009->zlnt_json_ownkeys_70e5fd461788.
    t4009->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4022) = |name|.
    DATA t4023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4009->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4022 p1 = t4023 ).
    DATA(t4024) = |type|.
    DATA t4025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4009->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4009->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4024 p1 = t4025 ).
    ENDIF.
    t1->load( ).
    APPEND t4009 TO t1->items.
    t1->save( ).
    DATA t4027 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4028 TYPE string.
    t4028 = |locop|.
    DATA t4030 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4031 TYPE REF TO zcl_lnt_character_type.
    DATA(t4032) = CONV f( 1 ).
    DATA t4033 TYPE REF TO zcl_lnt_abstract_type_data.
    t4031 = NEW zcl_lnt_character_type( i_length = t4032 i_extra = t4033 ).
    t4030 = t4031.
    DATA t4034 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4027 = NEW zcl_lnt_istructure_component( i_name = t4028 i_type_9913 = t4030 i_as_include = t4034 i_suffix = t4036 ).
    CREATE OBJECT t4027->zlnt_view_ownkeys_b0e8086400eb.
    t4027->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4027->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4038 ).
    DATA t4039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4027->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4027->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4039 ).
    ENDIF.
    CREATE OBJECT t4027->zlnt_json_ownkeys_70e5fd461788.
    t4027->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4040) = |name|.
    DATA t4041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4027->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4040 p1 = t4041 ).
    DATA(t4042) = |type|.
    DATA t4043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4027->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4027->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4042 p1 = t4043 ).
    ENDIF.
    t1->load( ).
    APPEND t4027 TO t1->items.
    t1->save( ).
    DATA t4045 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4046 TYPE string.
    t4046 = |datlo|.
    DATA t4048 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4049 TYPE REF TO zcl_lnt_date_type.
    DATA t4050 TYPE REF TO zcl_lnt_abstract_type_data.
    t4049 = NEW zcl_lnt_date_type( i_input_967e = t4050 ).
    t4048 = t4049.
    DATA t4051 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4053 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4045 = NEW zcl_lnt_istructure_component( i_name = t4046 i_type_9913 = t4048 i_as_include = t4051 i_suffix = t4053 ).
    CREATE OBJECT t4045->zlnt_view_ownkeys_b0e8086400eb.
    t4045->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4045->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4055 ).
    DATA t4056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4045->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4045->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4056 ).
    ENDIF.
    CREATE OBJECT t4045->zlnt_json_ownkeys_70e5fd461788.
    t4045->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4057) = |name|.
    DATA t4058 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4045->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4057 p1 = t4058 ).
    DATA(t4059) = |type|.
    DATA t4060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4045->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4045->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4059 p1 = t4060 ).
    ENDIF.
    t1->load( ).
    APPEND t4045 TO t1->items.
    t1->save( ).
    DATA t4062 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4063 TYPE string.
    t4063 = |timlo|.
    DATA t4065 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4066 TYPE REF TO zcl_lnt_time_type.
    DATA t4067 TYPE REF TO zcl_lnt_abstract_type_data.
    t4066 = NEW zcl_lnt_time_type( i_input_967e = t4067 ).
    t4065 = t4066.
    DATA t4068 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4062 = NEW zcl_lnt_istructure_component( i_name = t4063 i_type_9913 = t4065 i_as_include = t4068 i_suffix = t4070 ).
    CREATE OBJECT t4062->zlnt_view_ownkeys_b0e8086400eb.
    t4062->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4062->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4072 ).
    DATA t4073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4062->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4062->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4073 ).
    ENDIF.
    CREATE OBJECT t4062->zlnt_json_ownkeys_70e5fd461788.
    t4062->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4074) = |name|.
    DATA t4075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4062->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4074 p1 = t4075 ).
    DATA(t4076) = |type|.
    DATA t4077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4062->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4062->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4076 p1 = t4077 ).
    ENDIF.
    t1->load( ).
    APPEND t4062 TO t1->items.
    t1->save( ).
    DATA t4079 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4080 TYPE string.
    t4080 = |zonlo|.
    DATA t4082 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4083 TYPE REF TO zcl_lnt_character_type.
    DATA(t4084) = CONV f( 6 ).
    DATA t4085 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4087 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4091) = |sy-zonlo|.
    DATA(t4092) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4092->has = abap_true.
    t4092->value = t4091.
    t4088 = t4092.
    DATA t4094 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4096 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4098 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4087 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4088 i_conversion_exit = t4094 i_derived_from_constant = t4096 i_ddic_name = t4098 i_rtti_name = t4100 i_description = t4102 ).
    CREATE OBJECT t4087->zlnt_view_ownkeys_b0e8086400eb.
    t4087->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4087->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4104 ).
    CREATE OBJECT t4087->zlnt_json_ownkeys_70e5fd461788.
    t4087->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4105) = |qualifiedName|.
    DATA t4106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4087->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4105 p1 = t4106 ).
    t4085 = t4087.
    t4083 = NEW zcl_lnt_character_type( i_length = t4084 i_extra = t4085 ).
    t4082 = t4083.
    DATA t4108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4079 = NEW zcl_lnt_istructure_component( i_name = t4080 i_type_9913 = t4082 i_as_include = t4108 i_suffix = t4110 ).
    CREATE OBJECT t4079->zlnt_view_ownkeys_b0e8086400eb.
    t4079->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4079->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t4112 ).
    DATA t4113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4079->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4079->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t4113 ).
    ENDIF.
    CREATE OBJECT t4079->zlnt_json_ownkeys_70e5fd461788.
    t4079->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4114) = |name|.
    DATA t4115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4079->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4114 p1 = t4115 ).
    DATA(t4116) = |type|.
    DATA t4117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4079->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4079->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4116 p1 = t4117 ).
    ENDIF.
    t1->load( ).
    APPEND t4079 TO t1->items.
    t1->save( ).
    DATA t4118 TYPE REF TO zcl_lnt_structure_type.
    DATA t4119 TYPE REF TO zcl_lnt_structure_type.
    DATA t4121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4119 = NEW zcl_lnt_structure_type( i_components = t1 i_qualified_name = t4121 i_ddic_name = t4122 i_description = t4123 ).
    t4118 = t4119.
    DATA t4125 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4126 TYPE REF TO zcl_lnt_position.
    DATA t4127 TYPE f.
    DATA t4128 TYPE REF TO zcl_lnt_built_in.
    t4128 = me.
    DATA t4130 TYPE f.
    DATA t4131 TYPE f.
    t4131 = t4128->row.
    t4130 = t4131.
    DATA t4134 TYPE f.
    DATA(t4136) = CONV f( 1 ).
    t4134 = t4130 + t4136.
    t4128->row = t4134.
    DELETE t4128->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4127 = t4130.
    DATA(t4138) = CONV f( 1 ).
    DATA(t4139) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4139->has = abap_true.
    t4139->value = t4138.
    t4126 = NEW zcl_lnt_position( i_row = t4127 i_col = t4139 ).
    DATA(t4140) = |sy|.
    t4125 = NEW zcl_lnt_lx_identifier( i_start = t4126 i_str = t4140 ).
    DATA t4142 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4144) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4150.
    t4149 = t4150.
    DATA(t4152) = |read_only|.
    t4149->load( ).
    APPEND t4152 TO t4149->items.
    t4149->save( ).
    DATA(t4154) = |built-in|.
    t4149->load( ).
    APPEND t4154 TO t4149->items.
    t4149->save( ).
    t4146 = t4149.
    DATA t4157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4142 = NEW zcl_lnt_typed_identifier( i_token = t4125 i_filename = t4144 i_type_9913 = t4118 i_meta = t4146 i_value = t4157 ).
    DATA t4159 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4160 TYPE REF TO zcl_lnt_position.
    DATA t4161 TYPE f.
    DATA t4162 TYPE REF TO zcl_lnt_built_in.
    t4162 = me.
    DATA t4164 TYPE f.
    DATA t4165 TYPE f.
    t4165 = t4162->row.
    t4164 = t4165.
    DATA t4168 TYPE f.
    DATA(t4170) = CONV f( 1 ).
    t4168 = t4164 + t4170.
    t4162->row = t4168.
    DELETE t4162->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4161 = t4164.
    DATA(t4172) = CONV f( 1 ).
    DATA(t4173) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4173->has = abap_true.
    t4173->value = t4172.
    t4160 = NEW zcl_lnt_position( i_row = t4161 i_col = t4173 ).
    DATA(t4174) = |syst|.
    t4159 = NEW zcl_lnt_lx_identifier( i_start = t4160 i_str = t4174 ).
    DATA t4176 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4178) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4184.
    t4183 = t4184.
    DATA(t4186) = |read_only|.
    t4183->load( ).
    APPEND t4186 TO t4183->items.
    t4183->save( ).
    DATA(t4188) = |built-in|.
    t4183->load( ).
    APPEND t4188 TO t4183->items.
    t4183->save( ).
    t4180 = t4183.
    DATA t4191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4176 = NEW zcl_lnt_typed_identifier( i_token = t4159 i_filename = t4178 i_type_9913 = t4118 i_meta = t4180 i_value = t4191 ).
    DATA t4193 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4194 TYPE REF TO zcl_lnt_position.
    DATA t4195 TYPE f.
    DATA t4196 TYPE REF TO zcl_lnt_built_in.
    t4196 = me.
    DATA t4198 TYPE f.
    DATA t4199 TYPE f.
    t4199 = t4196->row.
    t4198 = t4199.
    DATA t4202 TYPE f.
    DATA(t4204) = CONV f( 1 ).
    t4202 = t4198 + t4204.
    t4196->row = t4202.
    DELETE t4196->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4195 = t4198.
    DATA(t4206) = CONV f( 1 ).
    DATA(t4207) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4207->has = abap_true.
    t4207->value = t4206.
    t4194 = NEW zcl_lnt_position( i_row = t4195 i_col = t4207 ).
    DATA(t4208) = |sy-repid|.
    t4193 = NEW zcl_lnt_lx_identifier( i_start = t4194 i_str = t4208 ).
    DATA t4210 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4212) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4213 TYPE REF TO zcl_lnt_character_type.
    DATA(t4214) = CONV f( 40 ).
    DATA t4215 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4217 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4221) = |sy-repid|.
    DATA(t4222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4222->has = abap_true.
    t4222->value = t4221.
    t4218 = t4222.
    DATA t4224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4217 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4218 i_conversion_exit = t4224 i_derived_from_constant = t4226 i_ddic_name = t4228 i_rtti_name = t4230 i_description = t4232 ).
    CREATE OBJECT t4217->zlnt_view_ownkeys_b0e8086400eb.
    t4217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4234 ).
    CREATE OBJECT t4217->zlnt_json_ownkeys_70e5fd461788.
    t4217->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4235) = |qualifiedName|.
    DATA t4236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4217->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4235 p1 = t4236 ).
    t4215 = t4217.
    t4213 = NEW zcl_lnt_character_type( i_length = t4214 i_extra = t4215 ).
    DATA t4238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4242.
    t4241 = t4242.
    DATA(t4244) = |read_only|.
    t4241->load( ).
    APPEND t4244 TO t4241->items.
    t4241->save( ).
    DATA(t4246) = |built-in|.
    t4241->load( ).
    APPEND t4246 TO t4241->items.
    t4241->save( ).
    t4238 = t4241.
    DATA t4249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4210 = NEW zcl_lnt_typed_identifier( i_token = t4193 i_filename = t4212 i_type_9913 = t4213 i_meta = t4238 i_value = t4249 ).
    DATA t4251 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4252 TYPE REF TO zcl_lnt_position.
    DATA t4253 TYPE f.
    DATA t4254 TYPE REF TO zcl_lnt_built_in.
    t4254 = me.
    DATA t4256 TYPE f.
    DATA t4257 TYPE f.
    t4257 = t4254->row.
    t4256 = t4257.
    DATA t4260 TYPE f.
    DATA(t4262) = CONV f( 1 ).
    t4260 = t4256 + t4262.
    t4254->row = t4260.
    DELETE t4254->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4253 = t4256.
    DATA(t4264) = CONV f( 1 ).
    DATA(t4265) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4265->has = abap_true.
    t4265->value = t4264.
    t4252 = NEW zcl_lnt_position( i_row = t4253 i_col = t4265 ).
    DATA(t4266) = |syst-repid|.
    t4251 = NEW zcl_lnt_lx_identifier( i_start = t4252 i_str = t4266 ).
    DATA t4268 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4270) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4271 TYPE REF TO zcl_lnt_character_type.
    DATA(t4272) = CONV f( 40 ).
    DATA t4273 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4275 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4279) = |syst-repid|.
    DATA(t4280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4280->has = abap_true.
    t4280->value = t4279.
    t4276 = t4280.
    DATA t4282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4275 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4276 i_conversion_exit = t4282 i_derived_from_constant = t4284 i_ddic_name = t4286 i_rtti_name = t4288 i_description = t4290 ).
    CREATE OBJECT t4275->zlnt_view_ownkeys_b0e8086400eb.
    t4275->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4292 ).
    CREATE OBJECT t4275->zlnt_json_ownkeys_70e5fd461788.
    t4275->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4293) = |qualifiedName|.
    DATA t4294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4275->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4293 p1 = t4294 ).
    t4273 = t4275.
    t4271 = NEW zcl_lnt_character_type( i_length = t4272 i_extra = t4273 ).
    DATA t4296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4300.
    t4299 = t4300.
    DATA(t4302) = |read_only|.
    t4299->load( ).
    APPEND t4302 TO t4299->items.
    t4299->save( ).
    DATA(t4304) = |built-in|.
    t4299->load( ).
    APPEND t4304 TO t4299->items.
    t4299->save( ).
    t4296 = t4299.
    DATA t4307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4268 = NEW zcl_lnt_typed_identifier( i_token = t4251 i_filename = t4270 i_type_9913 = t4271 i_meta = t4296 i_value = t4307 ).
    DATA t4309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4310.
    t4309 = t4310.
    t4309->load( ).
    APPEND t4142 TO t4309->items.
    t4309->save( ).
    t4309->load( ).
    APPEND t4176 TO t4309->items.
    t4309->save( ).
    t4309->load( ).
    APPEND t4210 TO t4309->items.
    t4309->save( ).
    t4309->load( ).
    APPEND t4268 TO t4309->items.
    t4309->save( ).
    result = t4309.

  ENDMETHOD.

  METHOD build_constant.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_value.
    DATA t5 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE f.
    DATA t8 TYPE REF TO zcl_lnt_built_in.
    t8 = me.
    DATA t10 TYPE f.
    DATA t11 TYPE f.
    t11 = t8->row.
    t10 = t11.
    DATA t14 TYPE f.
    DATA(t16) = CONV f( 1 ).
    t14 = t10 + t16.
    t8->row = t14.
    DELETE t8->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t7 = t10.
    DATA(t18) = CONV f( 1 ).
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = t18.
    t6 = NEW zcl_lnt_position( i_row = t7 i_col = t19 ).
    t5 = NEW zcl_lnt_lx_identifier( i_start = t6 i_str = t1 ).
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t2 IS INITIAL ).
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_void_type.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t1.
      t29 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t28 = zcl_lnt_void_type=>get_db65( i_voided = t29 i_qualified_name = t34 ).
      t2 = t28.
    ENDIF.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t36 = t3.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = VALUE abap_bool( ).
    IF t36 IS INITIAL.
      t40 = abap_true.
    ELSEIF t36->has = abap_false.
      t40 = abap_true.
    ENDIF.
    t35 = t40.
    IF t35 = abap_true.
      DATA(t44) = |'?'|.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t44.
      t3 = t45.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t49) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    t50 = t2.
    DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t56.
    t55 = t56.
    DATA(t58) = |read_only|.
    t55->load( ).
    APPEND t58 TO t55->items.
    t55->save( ).
    DATA(t60) = |built-in|.
    t55->load( ).
    APPEND t60 TO t55->items.
    t55->save( ).
    t52 = t55.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE string.
    t66 = t3->value.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t63 = t65.
    t47 = NEW zcl_lnt_typed_identifier( i_token = t5 i_filename = t49 i_type_9913 = t50 i_meta = t52 i_value = t63 ).
    result = t47.

  ENDMETHOD.

  METHOD zlnt_builtin_init_97ac0787fc72.
    IF zlnt_builtin_init_d2c53bdf259f = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_d2c53bdf259f = abap_true.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = CONV f( 1 ).
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
    CLEAR zcl_lnt_built_in=>types_cache.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    CLEAR zcl_lnt_built_in=>extras_cache_key.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    zcl_lnt_built_in=>extras_cache = t5.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    t7 = NEW zlnt_runtime_map__c27ad0d4c484( ).
    DATA t9 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t11) = |ABS|.
    DATA t12 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t13) = VALUE f( ).
    DATA(t14) = VALUE f( ).
    DATA(t15) = VALUE f( ).
    DATA(t16) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t16 = zcl_lnt_built_in=>counter.
    t15 = t16.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t17 TYPE f.
    DATA(t19) = CONV f( 1 ).
    t17 = t15 + t19.
    zcl_lnt_built_in=>counter = t17.
    t14 = t15.
    t13 = t14.
    DATA t21 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t25 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t25 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t29) = |val|.
    DATA t30 TYPE REF TO zcl_lnt_float_type.
    DATA t31 TYPE REF TO zcl_lnt_abstract_type_data.
    t30 = NEW zcl_lnt_float_type( i_input_967e = t31 ).
    t27 = t25->set( p0 = t29 p1 = t30 ).
    t21 = t25.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type.
    DATA t35 TYPE REF TO zcl_lnt_integer_type.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type_data.
    t35 = zcl_lnt_integer_type=>get_db65( i_input_967e = t36 ).
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t39 TYPE REF TO zcl_lnt_abap_release.
    DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t43 TYPE REF TO zcl_lnt_built_in_method.
    t12 = NEW zcl_lnt_ibuiltin_method( i_counter = t13 i_mandatory = t21 i_optional = t37 i_release_7928 = t39 i_predicate = t41 i_return_fa63 = t34 i_cache = t43 ).
    CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
    t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t47 ).
    ENDIF.
    CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
    t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t48) = |counter|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    DATA(t50) = |mandatory|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |return|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    t9 = t7->set( p0 = t11 p1 = t12 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t56) = |ACOS|.
    DATA t57 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t58) = VALUE f( ).
    DATA(t59) = VALUE f( ).
    DATA(t60) = VALUE f( ).
    DATA(t61) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t61 = zcl_lnt_built_in=>counter.
    t60 = t61.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t62 TYPE f.
    DATA(t64) = CONV f( 1 ).
    t62 = t60 + t64.
    zcl_lnt_built_in=>counter = t62.
    t59 = t60.
    t58 = t59.
    DATA t66 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t70 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t70 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t72 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t74) = |val|.
    DATA t75 TYPE REF TO zcl_lnt_float_type.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type_data.
    t75 = NEW zcl_lnt_float_type( i_input_967e = t76 ).
    t72 = t70->set( p0 = t74 p1 = t75 ).
    t66 = t70.
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    DATA t80 TYPE REF TO zcl_lnt_float_type.
    DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
    t80 = NEW zcl_lnt_float_type( i_input_967e = t81 ).
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t84 TYPE REF TO zcl_lnt_abap_release.
    DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t88 TYPE REF TO zcl_lnt_built_in_method.
    t57 = NEW zcl_lnt_ibuiltin_method( i_counter = t58 i_mandatory = t66 i_optional = t82 i_release_7928 = t84 i_predicate = t86 i_return_fa63 = t79 i_cache = t88 ).
    CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
    t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t90 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t91 ).
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t92 ).
    ENDIF.
    CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
    t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t93) = |counter|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    DATA(t95) = |mandatory|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    DATA(t97) = |return|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
    ENDIF.
    t54 = t7->set( p0 = t56 p1 = t57 ).
    DATA t99 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t101) = |ASIN|.
    DATA t102 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t103) = VALUE f( ).
    DATA(t104) = VALUE f( ).
    DATA(t105) = VALUE f( ).
    DATA(t106) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t106 = zcl_lnt_built_in=>counter.
    t105 = t106.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t107 TYPE f.
    DATA(t109) = CONV f( 1 ).
    t107 = t105 + t109.
    zcl_lnt_built_in=>counter = t107.
    t104 = t105.
    t103 = t104.
    DATA t111 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t115 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t115 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t117 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t119) = |val|.
    DATA t120 TYPE REF TO zcl_lnt_float_type.
    DATA t121 TYPE REF TO zcl_lnt_abstract_type_data.
    t120 = NEW zcl_lnt_float_type( i_input_967e = t121 ).
    t117 = t115->set( p0 = t119 p1 = t120 ).
    t111 = t115.
    DATA t124 TYPE REF TO zcl_lnt_abstract_type.
    DATA t125 TYPE REF TO zcl_lnt_float_type.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type_data.
    t125 = NEW zcl_lnt_float_type( i_input_967e = t126 ).
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    DATA t131 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t133 TYPE REF TO zcl_lnt_built_in_method.
    t102 = NEW zcl_lnt_ibuiltin_method( i_counter = t103 i_mandatory = t111 i_optional = t127 i_release_7928 = t129 i_predicate = t131 i_return_fa63 = t124 i_cache = t133 ).
    CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
    t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t135 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t136 ).
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t137 ).
    ENDIF.
    CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
    t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t138) = |counter|.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
    DATA(t140) = |mandatory|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
    ENDIF.
    DATA(t142) = |return|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
    ENDIF.
    t99 = t7->set( p0 = t101 p1 = t102 ).
    DATA t144 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t146) = |ATAN|.
    DATA t147 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t148) = VALUE f( ).
    DATA(t149) = VALUE f( ).
    DATA(t150) = VALUE f( ).
    DATA(t151) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t151 = zcl_lnt_built_in=>counter.
    t150 = t151.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t152 TYPE f.
    DATA(t154) = CONV f( 1 ).
    t152 = t150 + t154.
    zcl_lnt_built_in=>counter = t152.
    t149 = t150.
    t148 = t149.
    DATA t156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t160 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t160 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t162 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t164) = |val|.
    DATA t165 TYPE REF TO zcl_lnt_float_type.
    DATA t166 TYPE REF TO zcl_lnt_abstract_type_data.
    t165 = NEW zcl_lnt_float_type( i_input_967e = t166 ).
    t162 = t160->set( p0 = t164 p1 = t165 ).
    t156 = t160.
    DATA t169 TYPE REF TO zcl_lnt_abstract_type.
    DATA t170 TYPE REF TO zcl_lnt_float_type.
    DATA t171 TYPE REF TO zcl_lnt_abstract_type_data.
    t170 = NEW zcl_lnt_float_type( i_input_967e = t171 ).
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t174 TYPE REF TO zcl_lnt_abap_release.
    DATA t176 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t178 TYPE REF TO zcl_lnt_built_in_method.
    t147 = NEW zcl_lnt_ibuiltin_method( i_counter = t148 i_mandatory = t156 i_optional = t172 i_release_7928 = t174 i_predicate = t176 i_return_fa63 = t169 i_cache = t178 ).
    CREATE OBJECT t147->zlnt_view_ownkeys_b0e8086400eb.
    t147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t180 ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t181 ).
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t182 ).
    ENDIF.
    CREATE OBJECT t147->zlnt_json_ownkeys_70e5fd461788.
    t147->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t183) = |counter|.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
    DATA(t185) = |mandatory|.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
    ENDIF.
    DATA(t187) = |return|.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
    ENDIF.
    t144 = t7->set( p0 = t146 p1 = t147 ).
    DATA t189 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t191) = |BIT-SET|.
    DATA t192 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t193) = VALUE f( ).
    DATA(t194) = VALUE f( ).
    DATA(t195) = VALUE f( ).
    DATA(t196) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t196 = zcl_lnt_built_in=>counter.
    t195 = t196.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t197 TYPE f.
    DATA(t199) = CONV f( 1 ).
    t197 = t195 + t199.
    zcl_lnt_built_in=>counter = t197.
    t194 = t195.
    t193 = t194.
    DATA t201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t205 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t205 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t207 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t209) = |val|.
    DATA t210 TYPE REF TO zcl_lnt_integer_type.
    DATA t211 TYPE REF TO zcl_lnt_abstract_type_data.
    t210 = zcl_lnt_integer_type=>get_db65( i_input_967e = t211 ).
    t207 = t205->set( p0 = t209 p1 = t210 ).
    t201 = t205.
    DATA t214 TYPE REF TO zcl_lnt_abstract_type.
    DATA t215 TYPE REF TO zcl_lnt_x_string_type.
    DATA t216 TYPE REF TO zcl_lnt_abstract_type_data.
    t215 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t216 ).
    t214 = t215.
    DATA t217 TYPE REF TO zcl_lnt_abap_release.
    DATA t221 TYPE REF TO zcl_lnt_abap_release.
    DATA t222 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t222 = zcl_lnt_version_module=>release_b8cd.
    DATA(t223) = |v702|.
    t221 = t222->get( p0 = t223 ).
    t217 = t221.
    DATA t225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t229 TYPE REF TO zcl_lnt_built_in_method.
    t192 = NEW zcl_lnt_ibuiltin_method( i_counter = t193 i_mandatory = t201 i_optional = t225 i_release_7928 = t217 i_predicate = t227 i_return_fa63 = t214 i_cache = t229 ).
    CREATE OBJECT t192->zlnt_view_ownkeys_b0e8086400eb.
    t192->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t192->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t231 ).
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t192->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t232 ).
    ENDIF.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t192->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t233 ).
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t192->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t234 ).
    ENDIF.
    CREATE OBJECT t192->zlnt_json_ownkeys_70e5fd461788.
    t192->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t235) = |counter|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
    DATA(t237) = |mandatory|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
    ENDIF.
    DATA(t239) = |return|.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
    ENDIF.
    DATA(t241) = |release|.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
    ENDIF.
    t189 = t7->set( p0 = t191 p1 = t192 ).
    DATA t243 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t245) = |BOOLC|.
    DATA t246 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t247) = VALUE f( ).
    DATA(t248) = VALUE f( ).
    DATA(t249) = VALUE f( ).
    DATA(t250) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t250 = zcl_lnt_built_in=>counter.
    t249 = t250.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t251 TYPE f.
    DATA(t253) = CONV f( 1 ).
    t251 = t249 + t253.
    zcl_lnt_built_in=>counter = t251.
    t248 = t249.
    t247 = t248.
    DATA t255 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t259 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t259 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t261 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t263) = |val|.
    DATA(t264) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t261 = t259->set( p0 = t263 p1 = t264 ).
    t255 = t259.
    DATA t267 TYPE REF TO zcl_lnt_abstract_type.
    DATA t268 TYPE REF TO zcl_lnt_string_type.
    DATA t269 TYPE REF TO zcl_lnt_abstract_type_data.
    t268 = zcl_lnt_string_type=>get_db65( i_input_967e = t269 ).
    t267 = t268.
    DATA t270 TYPE REF TO zcl_lnt_abap_release.
    DATA t274 TYPE REF TO zcl_lnt_abap_release.
    DATA t275 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t275 = zcl_lnt_version_module=>release_b8cd.
    DATA(t276) = |v702|.
    t274 = t275->get( p0 = t276 ).
    t270 = t274.
    DATA t278 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t280 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t282 TYPE REF TO zcl_lnt_built_in_method.
    t246 = NEW zcl_lnt_ibuiltin_method( i_counter = t247 i_mandatory = t255 i_optional = t278 i_release_7928 = t270 i_predicate = t280 i_return_fa63 = t267 i_cache = t282 ).
    CREATE OBJECT t246->zlnt_view_ownkeys_b0e8086400eb.
    t246->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t284 ).
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t285 ).
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t286 ).
    ENDIF.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t246->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t287 ).
    ENDIF.
    CREATE OBJECT t246->zlnt_json_ownkeys_70e5fd461788.
    t246->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t288) = |counter|.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
    DATA(t290) = |mandatory|.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
    ENDIF.
    DATA(t292) = |return|.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
    ENDIF.
    DATA(t294) = |release|.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
    ENDIF.
    t243 = t7->set( p0 = t245 p1 = t246 ).
    DATA t296 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t298) = |BOOLX|.
    DATA t299 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t300) = VALUE f( ).
    DATA(t301) = VALUE f( ).
    DATA(t302) = VALUE f( ).
    DATA(t303) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t303 = zcl_lnt_built_in=>counter.
    t302 = t303.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t304 TYPE f.
    DATA(t306) = CONV f( 1 ).
    t304 = t302 + t306.
    zcl_lnt_built_in=>counter = t304.
    t301 = t302.
    t300 = t301.
    DATA t308 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t312 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t314 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t316) = |bool|.
    DATA(t317) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t314 = t312->set( p0 = t316 p1 = t317 ).
    t308 = t312.
    DATA t320 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t324 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t324 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t326 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t328) = |bit|.
    DATA t329 TYPE REF TO zcl_lnt_integer_type.
    DATA t330 TYPE REF TO zcl_lnt_abstract_type_data.
    t329 = zcl_lnt_integer_type=>get_db65( i_input_967e = t330 ).
    t326 = t324->set( p0 = t328 p1 = t329 ).
    t320 = t324.
    DATA t333 TYPE REF TO zcl_lnt_abstract_type.
    DATA t334 TYPE REF TO zcl_lnt_x_string_type.
    DATA t335 TYPE REF TO zcl_lnt_abstract_type_data.
    t334 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t335 ).
    t333 = t334.
    DATA t336 TYPE REF TO zcl_lnt_abap_release.
    DATA t340 TYPE REF TO zcl_lnt_abap_release.
    DATA t341 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t341 = zcl_lnt_version_module=>release_b8cd.
    DATA(t342) = |v702|.
    t340 = t341->get( p0 = t342 ).
    t336 = t340.
    DATA t344 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t346 TYPE REF TO zcl_lnt_built_in_method.
    t299 = NEW zcl_lnt_ibuiltin_method( i_counter = t300 i_mandatory = t308 i_optional = t320 i_release_7928 = t336 i_predicate = t344 i_return_fa63 = t333 i_cache = t346 ).
    CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
    t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t348 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t349 ).
    ENDIF.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t350 ).
    ENDIF.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t351 ).
    ENDIF.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t352 ).
    ENDIF.
    CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
    t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t353) = |counter|.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
    DATA(t355) = |mandatory|.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
    ENDIF.
    DATA(t357) = |optional|.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
    ENDIF.
    DATA(t359) = |return|.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
    ENDIF.
    DATA(t361) = |release|.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
    ENDIF.
    t296 = t7->set( p0 = t298 p1 = t299 ).
    DATA t363 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t365) = |CEIL|.
    DATA t366 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t367) = VALUE f( ).
    DATA(t368) = VALUE f( ).
    DATA(t369) = VALUE f( ).
    DATA(t370) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t370 = zcl_lnt_built_in=>counter.
    t369 = t370.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t371 TYPE f.
    DATA(t373) = CONV f( 1 ).
    t371 = t369 + t373.
    zcl_lnt_built_in=>counter = t371.
    t368 = t369.
    t367 = t368.
    DATA t375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t379 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t379 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t381 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t383) = |val|.
    DATA t384 TYPE REF TO zcl_lnt_float_type.
    DATA t385 TYPE REF TO zcl_lnt_abstract_type_data.
    t384 = NEW zcl_lnt_float_type( i_input_967e = t385 ).
    t381 = t379->set( p0 = t383 p1 = t384 ).
    t375 = t379.
    DATA t388 TYPE REF TO zcl_lnt_abstract_type.
    DATA t389 TYPE REF TO zcl_lnt_integer_type.
    DATA t390 TYPE REF TO zcl_lnt_abstract_type_data.
    t389 = zcl_lnt_integer_type=>get_db65( i_input_967e = t390 ).
    t388 = t389.
    DATA t391 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t393 TYPE REF TO zcl_lnt_abap_release.
    DATA t395 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t397 TYPE REF TO zcl_lnt_built_in_method.
    t366 = NEW zcl_lnt_ibuiltin_method( i_counter = t367 i_mandatory = t375 i_optional = t391 i_release_7928 = t393 i_predicate = t395 i_return_fa63 = t388 i_cache = t397 ).
    CREATE OBJECT t366->zlnt_view_ownkeys_b0e8086400eb.
    t366->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t399 ).
    DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t400 ).
    ENDIF.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t401 ).
    ENDIF.
    CREATE OBJECT t366->zlnt_json_ownkeys_70e5fd461788.
    t366->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t402) = |counter|.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t402 p1 = t403 ).
    DATA(t404) = |mandatory|.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t404 p1 = t405 ).
    ENDIF.
    DATA(t406) = |return|.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t406 p1 = t407 ).
    ENDIF.
    t363 = t7->set( p0 = t365 p1 = t366 ).
    DATA t408 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t410) = |CHAR_OFF|.
    DATA t411 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t412) = VALUE f( ).
    DATA(t413) = VALUE f( ).
    DATA(t414) = VALUE f( ).
    DATA(t415) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t415 = zcl_lnt_built_in=>counter.
    t414 = t415.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t416 TYPE f.
    DATA(t418) = CONV f( 1 ).
    t416 = t414 + t418.
    zcl_lnt_built_in=>counter = t416.
    t413 = t414.
    t412 = t413.
    DATA t420 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t424 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t426 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t428) = |val|.
    DATA(t429) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t426 = t424->set( p0 = t428 p1 = t429 ).
    DATA t430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t432) = |add|.
    DATA t433 TYPE REF TO zcl_lnt_integer_type.
    DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
    t433 = zcl_lnt_integer_type=>get_db65( i_input_967e = t434 ).
    t430 = t424->set( p0 = t432 p1 = t433 ).
    t420 = t424.
    DATA t437 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t441 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t441 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t443 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t445) = |off|.
    DATA t446 TYPE REF TO zcl_lnt_integer_type.
    DATA t447 TYPE REF TO zcl_lnt_abstract_type_data.
    t446 = zcl_lnt_integer_type=>get_db65( i_input_967e = t447 ).
    t443 = t441->set( p0 = t445 p1 = t446 ).
    t437 = t441.
    DATA t450 TYPE REF TO zcl_lnt_abstract_type.
    DATA t451 TYPE REF TO zcl_lnt_integer_type.
    DATA t452 TYPE REF TO zcl_lnt_abstract_type_data.
    t451 = zcl_lnt_integer_type=>get_db65( i_input_967e = t452 ).
    t450 = t451.
    DATA t453 TYPE REF TO zcl_lnt_abap_release.
    DATA t457 TYPE REF TO zcl_lnt_abap_release.
    DATA t458 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t458 = zcl_lnt_version_module=>release_b8cd.
    DATA(t459) = |v702|.
    t457 = t458->get( p0 = t459 ).
    t453 = t457.
    DATA t461 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t463 TYPE REF TO zcl_lnt_built_in_method.
    t411 = NEW zcl_lnt_ibuiltin_method( i_counter = t412 i_mandatory = t420 i_optional = t437 i_release_7928 = t453 i_predicate = t461 i_return_fa63 = t450 i_cache = t463 ).
    CREATE OBJECT t411->zlnt_view_ownkeys_b0e8086400eb.
    t411->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t465 ).
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t466 ).
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t467 ).
    ENDIF.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t468 ).
    ENDIF.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t469 ).
    ENDIF.
    CREATE OBJECT t411->zlnt_json_ownkeys_70e5fd461788.
    t411->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t470) = |counter|.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
    DATA(t472) = |mandatory|.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
    ENDIF.
    DATA(t474) = |optional|.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
    ENDIF.
    DATA(t476) = |return|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
    ENDIF.
    DATA(t478) = |release|.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
    ENDIF.
    t408 = t7->set( p0 = t410 p1 = t411 ).
    DATA t480 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t482) = |CHARLEN|.
    DATA t483 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t484) = VALUE f( ).
    DATA(t485) = VALUE f( ).
    DATA(t486) = VALUE f( ).
    DATA(t487) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t487 = zcl_lnt_built_in=>counter.
    t486 = t487.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t488 TYPE f.
    DATA(t490) = CONV f( 1 ).
    t488 = t486 + t490.
    zcl_lnt_built_in=>counter = t488.
    t485 = t486.
    t484 = t485.
    DATA t492 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t496 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t496 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t498 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t500) = |val|.
    DATA(t501) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t498 = t496->set( p0 = t500 p1 = t501 ).
    t492 = t496.
    DATA t504 TYPE REF TO zcl_lnt_abstract_type.
    DATA t505 TYPE REF TO zcl_lnt_integer_type.
    DATA t506 TYPE REF TO zcl_lnt_abstract_type_data.
    t505 = zcl_lnt_integer_type=>get_db65( i_input_967e = t506 ).
    t504 = t505.
    DATA t507 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t509 TYPE REF TO zcl_lnt_abap_release.
    DATA t511 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t513 TYPE REF TO zcl_lnt_built_in_method.
    t483 = NEW zcl_lnt_ibuiltin_method( i_counter = t484 i_mandatory = t492 i_optional = t507 i_release_7928 = t509 i_predicate = t511 i_return_fa63 = t504 i_cache = t513 ).
    CREATE OBJECT t483->zlnt_view_ownkeys_b0e8086400eb.
    t483->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t515 ).
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t516 ).
    ENDIF.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t483->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t517 ).
    ENDIF.
    CREATE OBJECT t483->zlnt_json_ownkeys_70e5fd461788.
    t483->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t518) = |counter|.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t518 p1 = t519 ).
    DATA(t520) = |mandatory|.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t520 p1 = t521 ).
    ENDIF.
    DATA(t522) = |return|.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = t522 p1 = t523 ).
    ENDIF.
    t480 = t7->set( p0 = t482 p1 = t483 ).
    DATA t524 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t526) = |CMAX|.
    DATA t527 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t528) = VALUE f( ).
    DATA(t529) = VALUE f( ).
    DATA(t530) = VALUE f( ).
    DATA(t531) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t531 = zcl_lnt_built_in=>counter.
    t530 = t531.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t532 TYPE f.
    DATA(t534) = CONV f( 1 ).
    t532 = t530 + t534.
    zcl_lnt_built_in=>counter = t532.
    t529 = t530.
    t528 = t529.
    DATA t536 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t540 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t540 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t542 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t544) = |val1|.
    DATA(t545) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t542 = t540->set( p0 = t544 p1 = t545 ).
    DATA t546 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t548) = |val2|.
    DATA(t549) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t546 = t540->set( p0 = t548 p1 = t549 ).
    t536 = t540.
    DATA t552 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t556 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t556 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t558 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t560) = |val3|.
    DATA(t561) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t558 = t556->set( p0 = t560 p1 = t561 ).
    DATA t562 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t564) = |val4|.
    DATA(t565) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t562 = t556->set( p0 = t564 p1 = t565 ).
    DATA t566 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t568) = |val5|.
    DATA(t569) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t566 = t556->set( p0 = t568 p1 = t569 ).
    DATA t570 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t572) = |val6|.
    DATA(t573) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t570 = t556->set( p0 = t572 p1 = t573 ).
    DATA t574 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t576) = |val7|.
    DATA(t577) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t574 = t556->set( p0 = t576 p1 = t577 ).
    DATA t578 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t580) = |val9|.
    DATA(t581) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t578 = t556->set( p0 = t580 p1 = t581 ).
    t552 = t556.
    DATA t584 TYPE REF TO zcl_lnt_abstract_type.
    DATA t585 TYPE REF TO zcl_lnt_string_type.
    DATA t586 TYPE REF TO zcl_lnt_abstract_type_data.
    t585 = zcl_lnt_string_type=>get_db65( i_input_967e = t586 ).
    t584 = t585.
    DATA t587 TYPE REF TO zcl_lnt_abap_release.
    DATA t591 TYPE REF TO zcl_lnt_abap_release.
    DATA t592 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t592 = zcl_lnt_version_module=>release_b8cd.
    DATA(t593) = |v702|.
    t591 = t592->get( p0 = t593 ).
    t587 = t591.
    DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t597 TYPE REF TO zcl_lnt_built_in_method.
    t527 = NEW zcl_lnt_ibuiltin_method( i_counter = t528 i_mandatory = t536 i_optional = t552 i_release_7928 = t587 i_predicate = t595 i_return_fa63 = t584 i_cache = t597 ).
    CREATE OBJECT t527->zlnt_view_ownkeys_b0e8086400eb.
    t527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t599 ).
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t600 ).
    ENDIF.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t601 ).
    ENDIF.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t602 ).
    ENDIF.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t603 ).
    ENDIF.
    CREATE OBJECT t527->zlnt_json_ownkeys_70e5fd461788.
    t527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t604) = |counter|.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
    DATA(t606) = |mandatory|.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t606 p1 = t607 ).
    ENDIF.
    DATA(t608) = |optional|.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t608 p1 = t609 ).
    ENDIF.
    DATA(t610) = |return|.
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t610 p1 = t611 ).
    ENDIF.
    DATA(t612) = |release|.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t612 p1 = t613 ).
    ENDIF.
    t524 = t7->set( p0 = t526 p1 = t527 ).
    DATA t614 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t616) = |CMIN|.
    DATA t617 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t618) = VALUE f( ).
    DATA(t619) = VALUE f( ).
    DATA(t620) = VALUE f( ).
    DATA(t621) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t621 = zcl_lnt_built_in=>counter.
    t620 = t621.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t622 TYPE f.
    DATA(t624) = CONV f( 1 ).
    t622 = t620 + t624.
    zcl_lnt_built_in=>counter = t622.
    t619 = t620.
    t618 = t619.
    DATA t626 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t630 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t630 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t632 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t634) = |val1|.
    DATA(t635) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t632 = t630->set( p0 = t634 p1 = t635 ).
    DATA t636 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t638) = |val2|.
    DATA(t639) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t636 = t630->set( p0 = t638 p1 = t639 ).
    t626 = t630.
    DATA t642 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t646 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t646 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t648 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t650) = |val3|.
    DATA(t651) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t648 = t646->set( p0 = t650 p1 = t651 ).
    DATA t652 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t654) = |val4|.
    DATA(t655) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t652 = t646->set( p0 = t654 p1 = t655 ).
    DATA t656 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t658) = |val5|.
    DATA(t659) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t656 = t646->set( p0 = t658 p1 = t659 ).
    DATA t660 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t662) = |val6|.
    DATA(t663) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t660 = t646->set( p0 = t662 p1 = t663 ).
    DATA t664 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t666) = |val7|.
    DATA(t667) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t664 = t646->set( p0 = t666 p1 = t667 ).
    DATA t668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t670) = |val9|.
    DATA(t671) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t668 = t646->set( p0 = t670 p1 = t671 ).
    t642 = t646.
    DATA t674 TYPE REF TO zcl_lnt_abstract_type.
    DATA t675 TYPE REF TO zcl_lnt_string_type.
    DATA t676 TYPE REF TO zcl_lnt_abstract_type_data.
    t675 = zcl_lnt_string_type=>get_db65( i_input_967e = t676 ).
    t674 = t675.
    DATA t677 TYPE REF TO zcl_lnt_abap_release.
    DATA t681 TYPE REF TO zcl_lnt_abap_release.
    DATA t682 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t682 = zcl_lnt_version_module=>release_b8cd.
    DATA(t683) = |v702|.
    t681 = t682->get( p0 = t683 ).
    t677 = t681.
    DATA t685 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t687 TYPE REF TO zcl_lnt_built_in_method.
    t617 = NEW zcl_lnt_ibuiltin_method( i_counter = t618 i_mandatory = t626 i_optional = t642 i_release_7928 = t677 i_predicate = t685 i_return_fa63 = t674 i_cache = t687 ).
    CREATE OBJECT t617->zlnt_view_ownkeys_b0e8086400eb.
    t617->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t617->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t689 ).
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t617->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t690 ).
    ENDIF.
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t617->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t691 ).
    ENDIF.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t617->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t692 ).
    ENDIF.
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t617->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t693 ).
    ENDIF.
    CREATE OBJECT t617->zlnt_json_ownkeys_70e5fd461788.
    t617->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t694) = |counter|.
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = t694 p1 = t695 ).
    DATA(t696) = |mandatory|.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = t696 p1 = t697 ).
    ENDIF.
    DATA(t698) = |optional|.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = t698 p1 = t699 ).
    ENDIF.
    DATA(t700) = |return|.
    DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = t700 p1 = t701 ).
    ENDIF.
    DATA(t702) = |release|.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = t702 p1 = t703 ).
    ENDIF.
    t614 = t7->set( p0 = t616 p1 = t617 ).
    DATA t704 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t706) = |CONCAT_LINES_OF|.
    DATA t707 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t708) = VALUE f( ).
    DATA(t709) = VALUE f( ).
    DATA(t710) = VALUE f( ).
    DATA(t711) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t711 = zcl_lnt_built_in=>counter.
    t710 = t711.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t712 TYPE f.
    DATA(t714) = CONV f( 1 ).
    t712 = t710 + t714.
    zcl_lnt_built_in=>counter = t712.
    t709 = t710.
    t708 = t709.
    DATA t716 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t720 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t720 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t722 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t724) = |table|.
    DATA t725 TYPE REF TO zcl_lnt_ty_table_type.
    DATA t726 TYPE REF TO zcl_lnt_any_type.
    DATA t727 TYPE REF TO zcl_lnt_abstract_type_data.
    t726 = zcl_lnt_any_type=>get_db65( i_input_967e = t727 ).
    DATA t728 TYPE REF TO zcl_lnt_itable_options.
    DATA t729 TYPE abap_bool.
    t729 = abap_false.
    DATA t731 TYPE string.
    t731 = |USER|.
    DATA t733 TYPE REF TO zcl_lnt_itable_key.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t728 = NEW zcl_lnt_itable_options( i_with_header = t729 i_key_type = t731 i_primary_key = t733 i_secondary = t735 ).
    CREATE OBJECT t728->zlnt_view_ownkeys_b0e8086400eb.
    t728->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t728->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t737 ).
    DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t728->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t728->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t738 ).
    ENDIF.
    CREATE OBJECT t728->zlnt_json_ownkeys_70e5fd461788.
    t728->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t739) = |withHeader|.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = t739 p1 = t740 ).
    DATA(t741) = |keyType|.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t728->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = t741 p1 = t742 ).
    ENDIF.
    DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t725 = NEW zcl_lnt_ty_table_type( i_row_type = t726 i_options = t728 i_qualified_name = t743 i_description = t744 ).
    t722 = t720->set( p0 = t724 p1 = t725 ).
    t716 = t720.
    DATA t747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t751 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t751 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t753 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t755) = |sep|.
    DATA(t756) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t753 = t751->set( p0 = t755 p1 = t756 ).
    t747 = t751.
    DATA t759 TYPE REF TO zcl_lnt_abstract_type.
    DATA t760 TYPE REF TO zcl_lnt_string_type.
    DATA t761 TYPE REF TO zcl_lnt_abstract_type_data.
    t760 = zcl_lnt_string_type=>get_db65( i_input_967e = t761 ).
    t759 = t760.
    DATA t762 TYPE REF TO zcl_lnt_abap_release.
    DATA t766 TYPE REF TO zcl_lnt_abap_release.
    DATA t767 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t767 = zcl_lnt_version_module=>release_b8cd.
    DATA(t768) = |v702|.
    t766 = t767->get( p0 = t768 ).
    t762 = t766.
    DATA t770 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t772 TYPE REF TO zcl_lnt_built_in_method.
    t707 = NEW zcl_lnt_ibuiltin_method( i_counter = t708 i_mandatory = t716 i_optional = t747 i_release_7928 = t762 i_predicate = t770 i_return_fa63 = t759 i_cache = t772 ).
    CREATE OBJECT t707->zlnt_view_ownkeys_b0e8086400eb.
    t707->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t774 ).
    DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t775 ).
    ENDIF.
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t776 ).
    ENDIF.
    DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t777 ).
    ENDIF.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t778 ).
    ENDIF.
    CREATE OBJECT t707->zlnt_json_ownkeys_70e5fd461788.
    t707->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t779) = |counter|.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t779 p1 = t780 ).
    DATA(t781) = |mandatory|.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t781 p1 = t782 ).
    ENDIF.
    DATA(t783) = |optional|.
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t783 p1 = t784 ).
    ENDIF.
    DATA(t785) = |return|.
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t785 p1 = t786 ).
    ENDIF.
    DATA(t787) = |release|.
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = t787 p1 = t788 ).
    ENDIF.
    t704 = t7->set( p0 = t706 p1 = t707 ).
    DATA t789 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t791) = |CONDENSE|.
    DATA t792 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t793) = VALUE f( ).
    DATA(t794) = VALUE f( ).
    DATA(t795) = VALUE f( ).
    DATA(t796) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t796 = zcl_lnt_built_in=>counter.
    t795 = t796.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t797 TYPE f.
    DATA(t799) = CONV f( 1 ).
    t797 = t795 + t799.
    zcl_lnt_built_in=>counter = t797.
    t794 = t795.
    t793 = t794.
    DATA t801 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t805 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t805 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t807 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t809) = |val|.
    DATA(t810) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t807 = t805->set( p0 = t809 p1 = t810 ).
    t801 = t805.
    DATA t813 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t817 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t817 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t819 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t821) = |del|.
    DATA(t822) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t819 = t817->set( p0 = t821 p1 = t822 ).
    DATA t823 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t825) = |from|.
    DATA(t826) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t823 = t817->set( p0 = t825 p1 = t826 ).
    DATA t827 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t829) = |to|.
    DATA(t830) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t827 = t817->set( p0 = t829 p1 = t830 ).
    t813 = t817.
    DATA t833 TYPE REF TO zcl_lnt_abstract_type.
    DATA t834 TYPE REF TO zcl_lnt_string_type.
    DATA t835 TYPE REF TO zcl_lnt_abstract_type_data.
    t834 = zcl_lnt_string_type=>get_db65( i_input_967e = t835 ).
    t833 = t834.
    DATA t836 TYPE REF TO zcl_lnt_abap_release.
    DATA t840 TYPE REF TO zcl_lnt_abap_release.
    DATA t841 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t841 = zcl_lnt_version_module=>release_b8cd.
    DATA(t842) = |v702|.
    t840 = t841->get( p0 = t842 ).
    t836 = t840.
    DATA t844 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t846 TYPE REF TO zcl_lnt_built_in_method.
    t792 = NEW zcl_lnt_ibuiltin_method( i_counter = t793 i_mandatory = t801 i_optional = t813 i_release_7928 = t836 i_predicate = t844 i_return_fa63 = t833 i_cache = t846 ).
    CREATE OBJECT t792->zlnt_view_ownkeys_b0e8086400eb.
    t792->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t792->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t848 ).
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t792->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t849 ).
    ENDIF.
    DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t792->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t850 ).
    ENDIF.
    DATA t851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t792->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t851 ).
    ENDIF.
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t792->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t852 ).
    ENDIF.
    CREATE OBJECT t792->zlnt_json_ownkeys_70e5fd461788.
    t792->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t853) = |counter|.
    DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = t853 p1 = t854 ).
    DATA(t855) = |mandatory|.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = t855 p1 = t856 ).
    ENDIF.
    DATA(t857) = |optional|.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = t857 p1 = t858 ).
    ENDIF.
    DATA(t859) = |return|.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = t859 p1 = t860 ).
    ENDIF.
    DATA(t861) = |release|.
    DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = t861 p1 = t862 ).
    ENDIF.
    t789 = t7->set( p0 = t791 p1 = t792 ).
    DATA t863 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t865) = |CONTAINS|.
    DATA t866 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t867) = VALUE f( ).
    DATA(t868) = VALUE f( ).
    DATA(t869) = VALUE f( ).
    DATA(t870) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t870 = zcl_lnt_built_in=>counter.
    t869 = t870.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t871 TYPE f.
    DATA(t873) = CONV f( 1 ).
    t871 = t869 + t873.
    zcl_lnt_built_in=>counter = t871.
    t868 = t869.
    t867 = t868.
    DATA t875 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t879 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t879 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t881 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t883) = |val|.
    DATA(t884) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t881 = t879->set( p0 = t883 p1 = t884 ).
    t875 = t879.
    DATA t887 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t891 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t891 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t893 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t895) = |sub|.
    DATA(t896) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t893 = t891->set( p0 = t895 p1 = t896 ).
    DATA t897 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t899) = |start|.
    DATA(t900) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t897 = t891->set( p0 = t899 p1 = t900 ).
    DATA t901 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t903) = |end|.
    DATA(t904) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t901 = t891->set( p0 = t903 p1 = t904 ).
    DATA t905 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t907) = |regex|.
    DATA(t908) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t905 = t891->set( p0 = t907 p1 = t908 ).
    DATA t909 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t911) = |pcre|.
    DATA(t912) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t909 = t891->set( p0 = t911 p1 = t912 ).
    DATA t913 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t915) = |case|.
    DATA t916 TYPE REF TO zcl_lnt_character_type.
    DATA(t917) = CONV f( 1 ).
    DATA t918 TYPE REF TO zcl_lnt_abstract_type_data.
    t916 = NEW zcl_lnt_character_type( i_length = t917 i_extra = t918 ).
    t913 = t891->set( p0 = t915 p1 = t916 ).
    DATA t919 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t921) = |off|.
    DATA t922 TYPE REF TO zcl_lnt_integer_type.
    DATA t923 TYPE REF TO zcl_lnt_abstract_type_data.
    t922 = zcl_lnt_integer_type=>get_db65( i_input_967e = t923 ).
    t919 = t891->set( p0 = t921 p1 = t922 ).
    DATA t924 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t926) = |len|.
    DATA t927 TYPE REF TO zcl_lnt_integer_type.
    DATA t928 TYPE REF TO zcl_lnt_abstract_type_data.
    t927 = zcl_lnt_integer_type=>get_db65( i_input_967e = t928 ).
    t924 = t891->set( p0 = t926 p1 = t927 ).
    DATA t929 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t931) = |occ|.
    DATA t932 TYPE REF TO zcl_lnt_integer_type.
    DATA t933 TYPE REF TO zcl_lnt_abstract_type_data.
    t932 = zcl_lnt_integer_type=>get_db65( i_input_967e = t933 ).
    t929 = t891->set( p0 = t931 p1 = t932 ).
    t887 = t891.
    DATA t936 TYPE REF TO zcl_lnt_abstract_type.
    DATA t937 TYPE REF TO zcl_lnt_character_type.
    DATA(t938) = CONV f( 1 ).
    DATA t939 TYPE REF TO zcl_lnt_abstract_type_data.
    t937 = NEW zcl_lnt_character_type( i_length = t938 i_extra = t939 ).
    t936 = t937.
    DATA t940 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t944) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t944->has = abap_true.
    t944->value = abap_true.
    t940 = t944.
    DATA t946 TYPE REF TO zcl_lnt_abap_release.
    DATA t950 TYPE REF TO zcl_lnt_abap_release.
    DATA t951 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t951 = zcl_lnt_version_module=>release_b8cd.
    DATA(t952) = |v702|.
    t950 = t951->get( p0 = t952 ).
    t946 = t950.
    DATA t954 TYPE REF TO zcl_lnt_built_in_method.
    t866 = NEW zcl_lnt_ibuiltin_method( i_counter = t867 i_mandatory = t875 i_optional = t887 i_release_7928 = t946 i_predicate = t940 i_return_fa63 = t936 i_cache = t954 ).
    CREATE OBJECT t866->zlnt_view_ownkeys_b0e8086400eb.
    t866->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t956 ).
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t957 ).
    ENDIF.
    DATA t958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t958 ).
    ENDIF.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t959 ).
    ENDIF.
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t960 ).
    ENDIF.
    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t866->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t961 ).
    ENDIF.
    CREATE OBJECT t866->zlnt_json_ownkeys_70e5fd461788.
    t866->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t962) = |counter|.
    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t962 p1 = t963 ).
    DATA(t964) = |mandatory|.
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t964 p1 = t965 ).
    ENDIF.
    DATA(t966) = |optional|.
    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t966 p1 = t967 ).
    ENDIF.
    DATA(t968) = |return|.
    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t968 p1 = t969 ).
    ENDIF.
    DATA(t970) = |predicate|.
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t970 p1 = t971 ).
    ENDIF.
    DATA(t972) = |release|.
    DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = t972 p1 = t973 ).
    ENDIF.
    t863 = t7->set( p0 = t865 p1 = t866 ).
    DATA t974 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t976) = |CONTAINS_ANY_NOT_OF|.
    DATA t977 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t978) = VALUE f( ).
    DATA(t979) = VALUE f( ).
    DATA(t980) = VALUE f( ).
    DATA(t981) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t981 = zcl_lnt_built_in=>counter.
    t980 = t981.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t982 TYPE f.
    DATA(t984) = CONV f( 1 ).
    t982 = t980 + t984.
    zcl_lnt_built_in=>counter = t982.
    t979 = t980.
    t978 = t979.
    DATA t986 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t990 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t990 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t992 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t994) = |val|.
    DATA(t995) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t992 = t990->set( p0 = t994 p1 = t995 ).
    t986 = t990.
    DATA t998 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1002 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1002 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1004 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1006) = |sub|.
    DATA(t1007) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1004 = t1002->set( p0 = t1006 p1 = t1007 ).
    DATA t1008 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1010) = |start|.
    DATA(t1011) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1008 = t1002->set( p0 = t1010 p1 = t1011 ).
    DATA t1012 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1014) = |end|.
    DATA(t1015) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1012 = t1002->set( p0 = t1014 p1 = t1015 ).
    DATA t1016 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1018) = |off|.
    DATA t1019 TYPE REF TO zcl_lnt_integer_type.
    DATA t1020 TYPE REF TO zcl_lnt_abstract_type_data.
    t1019 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1020 ).
    t1016 = t1002->set( p0 = t1018 p1 = t1019 ).
    DATA t1021 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1023) = |len|.
    DATA t1024 TYPE REF TO zcl_lnt_integer_type.
    DATA t1025 TYPE REF TO zcl_lnt_abstract_type_data.
    t1024 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1025 ).
    t1021 = t1002->set( p0 = t1023 p1 = t1024 ).
    DATA t1026 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1028) = |occ|.
    DATA t1029 TYPE REF TO zcl_lnt_integer_type.
    DATA t1030 TYPE REF TO zcl_lnt_abstract_type_data.
    t1029 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1030 ).
    t1026 = t1002->set( p0 = t1028 p1 = t1029 ).
    t998 = t1002.
    DATA t1033 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1037) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1037->has = abap_true.
    t1037->value = abap_true.
    t1033 = t1037.
    DATA t1039 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1040 TYPE REF TO zcl_lnt_character_type.
    DATA(t1041) = CONV f( 1 ).
    DATA t1042 TYPE REF TO zcl_lnt_abstract_type_data.
    t1040 = NEW zcl_lnt_character_type( i_length = t1041 i_extra = t1042 ).
    t1039 = t1040.
    DATA t1043 TYPE REF TO zcl_lnt_abap_release.
    DATA t1047 TYPE REF TO zcl_lnt_abap_release.
    DATA t1048 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1048 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1049) = |v702|.
    t1047 = t1048->get( p0 = t1049 ).
    t1043 = t1047.
    DATA t1051 TYPE REF TO zcl_lnt_built_in_method.
    t977 = NEW zcl_lnt_ibuiltin_method( i_counter = t978 i_mandatory = t986 i_optional = t998 i_release_7928 = t1043 i_predicate = t1033 i_return_fa63 = t1039 i_cache = t1051 ).
    CREATE OBJECT t977->zlnt_view_ownkeys_b0e8086400eb.
    t977->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1053 ).
    DATA t1054 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1054 ).
    ENDIF.
    DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1055 ).
    ENDIF.
    DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t1056 ).
    ENDIF.
    DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1057 ).
    ENDIF.
    DATA t1058 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1058 ).
    ENDIF.
    CREATE OBJECT t977->zlnt_json_ownkeys_70e5fd461788.
    t977->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1059) = |counter|.
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1059 p1 = t1060 ).
    DATA(t1061) = |mandatory|.
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1061 p1 = t1062 ).
    ENDIF.
    DATA(t1063) = |optional|.
    DATA t1064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1063 p1 = t1064 ).
    ENDIF.
    DATA(t1065) = |predicate|.
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1065 p1 = t1066 ).
    ENDIF.
    DATA(t1067) = |return|.
    DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1067 p1 = t1068 ).
    ENDIF.
    DATA(t1069) = |release|.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1069 p1 = t1070 ).
    ENDIF.
    t974 = t7->set( p0 = t976 p1 = t977 ).
    DATA t1071 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1073) = |CONTAINS_ANY_OF|.
    DATA t1074 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1075) = VALUE f( ).
    DATA(t1076) = VALUE f( ).
    DATA(t1077) = VALUE f( ).
    DATA(t1078) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1078 = zcl_lnt_built_in=>counter.
    t1077 = t1078.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1079 TYPE f.
    DATA(t1081) = CONV f( 1 ).
    t1079 = t1077 + t1081.
    zcl_lnt_built_in=>counter = t1079.
    t1076 = t1077.
    t1075 = t1076.
    DATA t1083 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1087 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1087 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1089 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1091) = |val|.
    DATA(t1092) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1089 = t1087->set( p0 = t1091 p1 = t1092 ).
    t1083 = t1087.
    DATA t1095 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1099 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1099 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1101 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1103) = |sub|.
    DATA(t1104) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1101 = t1099->set( p0 = t1103 p1 = t1104 ).
    DATA t1105 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1107) = |start|.
    DATA(t1108) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1105 = t1099->set( p0 = t1107 p1 = t1108 ).
    DATA t1109 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1111) = |end|.
    DATA(t1112) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1109 = t1099->set( p0 = t1111 p1 = t1112 ).
    DATA t1113 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1115) = |off|.
    DATA t1116 TYPE REF TO zcl_lnt_integer_type.
    DATA t1117 TYPE REF TO zcl_lnt_abstract_type_data.
    t1116 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1117 ).
    t1113 = t1099->set( p0 = t1115 p1 = t1116 ).
    DATA t1118 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1120) = |len|.
    DATA t1121 TYPE REF TO zcl_lnt_integer_type.
    DATA t1122 TYPE REF TO zcl_lnt_abstract_type_data.
    t1121 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1122 ).
    t1118 = t1099->set( p0 = t1120 p1 = t1121 ).
    DATA t1123 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1125) = |occ|.
    DATA t1126 TYPE REF TO zcl_lnt_integer_type.
    DATA t1127 TYPE REF TO zcl_lnt_abstract_type_data.
    t1126 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1127 ).
    t1123 = t1099->set( p0 = t1125 p1 = t1126 ).
    t1095 = t1099.
    DATA t1130 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1131 TYPE REF TO zcl_lnt_character_type.
    DATA(t1132) = CONV f( 1 ).
    DATA t1133 TYPE REF TO zcl_lnt_abstract_type_data.
    t1131 = NEW zcl_lnt_character_type( i_length = t1132 i_extra = t1133 ).
    t1130 = t1131.
    DATA t1134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1138) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1138->has = abap_true.
    t1138->value = abap_true.
    t1134 = t1138.
    DATA t1140 TYPE REF TO zcl_lnt_abap_release.
    DATA t1144 TYPE REF TO zcl_lnt_abap_release.
    DATA t1145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1145 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1146) = |v702|.
    t1144 = t1145->get( p0 = t1146 ).
    t1140 = t1144.
    DATA t1148 TYPE REF TO zcl_lnt_built_in_method.
    t1074 = NEW zcl_lnt_ibuiltin_method( i_counter = t1075 i_mandatory = t1083 i_optional = t1095 i_release_7928 = t1140 i_predicate = t1134 i_return_fa63 = t1130 i_cache = t1148 ).
    CREATE OBJECT t1074->zlnt_view_ownkeys_b0e8086400eb.
    t1074->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1150 ).
    DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1151 ).
    ENDIF.
    DATA t1152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1152 ).
    ENDIF.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1153 ).
    ENDIF.
    DATA t1154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t1154 ).
    ENDIF.
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1074->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1155 ).
    ENDIF.
    CREATE OBJECT t1074->zlnt_json_ownkeys_70e5fd461788.
    t1074->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1156) = |counter|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    DATA(t1158) = |mandatory|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    DATA(t1160) = |optional|.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1160 p1 = t1161 ).
    ENDIF.
    DATA(t1162) = |return|.
    DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1162 p1 = t1163 ).
    ENDIF.
    DATA(t1164) = |predicate|.
    DATA t1165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1164 p1 = t1165 ).
    ENDIF.
    DATA(t1166) = |release|.
    DATA t1167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1166 p1 = t1167 ).
    ENDIF.
    t1071 = t7->set( p0 = t1073 p1 = t1074 ).
    DATA t1168 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1170) = |COS|.
    DATA t1171 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1172) = VALUE f( ).
    DATA(t1173) = VALUE f( ).
    DATA(t1174) = VALUE f( ).
    DATA(t1175) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1175 = zcl_lnt_built_in=>counter.
    t1174 = t1175.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1176 TYPE f.
    DATA(t1178) = CONV f( 1 ).
    t1176 = t1174 + t1178.
    zcl_lnt_built_in=>counter = t1176.
    t1173 = t1174.
    t1172 = t1173.
    DATA t1180 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1184 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1184 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1186 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1188) = |val|.
    DATA t1189 TYPE REF TO zcl_lnt_float_type.
    DATA t1190 TYPE REF TO zcl_lnt_abstract_type_data.
    t1189 = NEW zcl_lnt_float_type( i_input_967e = t1190 ).
    t1186 = t1184->set( p0 = t1188 p1 = t1189 ).
    t1180 = t1184.
    DATA t1193 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1194 TYPE REF TO zcl_lnt_float_type.
    DATA t1195 TYPE REF TO zcl_lnt_abstract_type_data.
    t1194 = NEW zcl_lnt_float_type( i_input_967e = t1195 ).
    t1193 = t1194.
    DATA t1196 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1198 TYPE REF TO zcl_lnt_abap_release.
    DATA t1200 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1202 TYPE REF TO zcl_lnt_built_in_method.
    t1171 = NEW zcl_lnt_ibuiltin_method( i_counter = t1172 i_mandatory = t1180 i_optional = t1196 i_release_7928 = t1198 i_predicate = t1200 i_return_fa63 = t1193 i_cache = t1202 ).
    CREATE OBJECT t1171->zlnt_view_ownkeys_b0e8086400eb.
    t1171->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1204 ).
    DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1205 ).
    ENDIF.
    DATA t1206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1171->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1206 ).
    ENDIF.
    CREATE OBJECT t1171->zlnt_json_ownkeys_70e5fd461788.
    t1171->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1207) = |counter|.
    DATA t1208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1207 p1 = t1208 ).
    DATA(t1209) = |mandatory|.
    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1209 p1 = t1210 ).
    ENDIF.
    DATA(t1211) = |return|.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1211 p1 = t1212 ).
    ENDIF.
    t1168 = t7->set( p0 = t1170 p1 = t1171 ).
    DATA t1213 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1215) = |COSH|.
    DATA t1216 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1217) = VALUE f( ).
    DATA(t1218) = VALUE f( ).
    DATA(t1219) = VALUE f( ).
    DATA(t1220) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1220 = zcl_lnt_built_in=>counter.
    t1219 = t1220.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1221 TYPE f.
    DATA(t1223) = CONV f( 1 ).
    t1221 = t1219 + t1223.
    zcl_lnt_built_in=>counter = t1221.
    t1218 = t1219.
    t1217 = t1218.
    DATA t1225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1229 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1229 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1233) = |val|.
    DATA t1234 TYPE REF TO zcl_lnt_float_type.
    DATA t1235 TYPE REF TO zcl_lnt_abstract_type_data.
    t1234 = NEW zcl_lnt_float_type( i_input_967e = t1235 ).
    t1231 = t1229->set( p0 = t1233 p1 = t1234 ).
    t1225 = t1229.
    DATA t1238 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1239 TYPE REF TO zcl_lnt_float_type.
    DATA t1240 TYPE REF TO zcl_lnt_abstract_type_data.
    t1239 = NEW zcl_lnt_float_type( i_input_967e = t1240 ).
    t1238 = t1239.
    DATA t1241 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1243 TYPE REF TO zcl_lnt_abap_release.
    DATA t1245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1247 TYPE REF TO zcl_lnt_built_in_method.
    t1216 = NEW zcl_lnt_ibuiltin_method( i_counter = t1217 i_mandatory = t1225 i_optional = t1241 i_release_7928 = t1243 i_predicate = t1245 i_return_fa63 = t1238 i_cache = t1247 ).
    CREATE OBJECT t1216->zlnt_view_ownkeys_b0e8086400eb.
    t1216->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1249 ).
    DATA t1250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1250 ).
    ENDIF.
    DATA t1251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1251 ).
    ENDIF.
    CREATE OBJECT t1216->zlnt_json_ownkeys_70e5fd461788.
    t1216->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1252) = |counter|.
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1252 p1 = t1253 ).
    DATA(t1254) = |mandatory|.
    DATA t1255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1254 p1 = t1255 ).
    ENDIF.
    DATA(t1256) = |return|.
    DATA t1257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1256 p1 = t1257 ).
    ENDIF.
    t1213 = t7->set( p0 = t1215 p1 = t1216 ).
    DATA t1258 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1260) = |COUNT|.
    DATA t1261 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1262) = VALUE f( ).
    DATA(t1263) = VALUE f( ).
    DATA(t1264) = VALUE f( ).
    DATA(t1265) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1265 = zcl_lnt_built_in=>counter.
    t1264 = t1265.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1266 TYPE f.
    DATA(t1268) = CONV f( 1 ).
    t1266 = t1264 + t1268.
    zcl_lnt_built_in=>counter = t1266.
    t1263 = t1264.
    t1262 = t1263.
    DATA t1270 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1274 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1274 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1276 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1278) = |val|.
    DATA(t1279) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1276 = t1274->set( p0 = t1278 p1 = t1279 ).
    t1270 = t1274.
    DATA t1282 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1286 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1286 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1288 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1290) = |sub|.
    DATA(t1291) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1288 = t1286->set( p0 = t1290 p1 = t1291 ).
    DATA t1292 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1294) = |regex|.
    DATA(t1295) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1292 = t1286->set( p0 = t1294 p1 = t1295 ).
    DATA t1296 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1298) = |pcre|.
    DATA(t1299) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1296 = t1286->set( p0 = t1298 p1 = t1299 ).
    DATA t1300 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1302) = |case|.
    DATA t1303 TYPE REF TO zcl_lnt_character_type.
    DATA(t1304) = CONV f( 1 ).
    DATA t1305 TYPE REF TO zcl_lnt_abstract_type_data.
    t1303 = NEW zcl_lnt_character_type( i_length = t1304 i_extra = t1305 ).
    t1300 = t1286->set( p0 = t1302 p1 = t1303 ).
    DATA t1306 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1308) = |off|.
    DATA t1309 TYPE REF TO zcl_lnt_integer_type.
    DATA t1310 TYPE REF TO zcl_lnt_abstract_type_data.
    t1309 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1310 ).
    t1306 = t1286->set( p0 = t1308 p1 = t1309 ).
    DATA t1311 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1313) = |len|.
    DATA t1314 TYPE REF TO zcl_lnt_integer_type.
    DATA t1315 TYPE REF TO zcl_lnt_abstract_type_data.
    t1314 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1315 ).
    t1311 = t1286->set( p0 = t1313 p1 = t1314 ).
    t1282 = t1286.
    DATA t1318 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1319 TYPE REF TO zcl_lnt_integer_type.
    DATA t1320 TYPE REF TO zcl_lnt_abstract_type_data.
    t1319 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1320 ).
    t1318 = t1319.
    DATA t1321 TYPE REF TO zcl_lnt_abap_release.
    DATA t1325 TYPE REF TO zcl_lnt_abap_release.
    DATA t1326 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1326 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1327) = |v702|.
    t1325 = t1326->get( p0 = t1327 ).
    t1321 = t1325.
    DATA t1329 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1331 TYPE REF TO zcl_lnt_built_in_method.
    t1261 = NEW zcl_lnt_ibuiltin_method( i_counter = t1262 i_mandatory = t1270 i_optional = t1282 i_release_7928 = t1321 i_predicate = t1329 i_return_fa63 = t1318 i_cache = t1331 ).
    CREATE OBJECT t1261->zlnt_view_ownkeys_b0e8086400eb.
    t1261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1333 ).
    DATA t1334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1334 ).
    ENDIF.
    DATA t1335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1335 ).
    ENDIF.
    DATA t1336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1336 ).
    ENDIF.
    DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1337 ).
    ENDIF.
    CREATE OBJECT t1261->zlnt_json_ownkeys_70e5fd461788.
    t1261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1338) = |counter|.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1338 p1 = t1339 ).
    DATA(t1340) = |mandatory|.
    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1340 p1 = t1341 ).
    ENDIF.
    DATA(t1342) = |optional|.
    DATA t1343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1342 p1 = t1343 ).
    ENDIF.
    DATA(t1344) = |return|.
    DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1344 p1 = t1345 ).
    ENDIF.
    DATA(t1346) = |release|.
    DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1346 p1 = t1347 ).
    ENDIF.
    t1258 = t7->set( p0 = t1260 p1 = t1261 ).
    DATA t1348 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1350) = |COUNT_ANY_NOT_OF|.
    DATA t1351 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1352) = VALUE f( ).
    DATA(t1353) = VALUE f( ).
    DATA(t1354) = VALUE f( ).
    DATA(t1355) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1355 = zcl_lnt_built_in=>counter.
    t1354 = t1355.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1356 TYPE f.
    DATA(t1358) = CONV f( 1 ).
    t1356 = t1354 + t1358.
    zcl_lnt_built_in=>counter = t1356.
    t1353 = t1354.
    t1352 = t1353.
    DATA t1360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1364 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1364 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1368) = |val|.
    DATA(t1369) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1366 = t1364->set( p0 = t1368 p1 = t1369 ).
    t1360 = t1364.
    DATA t1372 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1376 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1376 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1378 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1380) = |sub|.
    DATA(t1381) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1378 = t1376->set( p0 = t1380 p1 = t1381 ).
    DATA t1382 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1384) = |regex|.
    DATA(t1385) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1382 = t1376->set( p0 = t1384 p1 = t1385 ).
    DATA t1386 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1388) = |pcre|.
    DATA(t1389) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1386 = t1376->set( p0 = t1388 p1 = t1389 ).
    DATA t1390 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1392) = |case|.
    DATA t1393 TYPE REF TO zcl_lnt_character_type.
    DATA(t1394) = CONV f( 1 ).
    DATA t1395 TYPE REF TO zcl_lnt_abstract_type_data.
    t1393 = NEW zcl_lnt_character_type( i_length = t1394 i_extra = t1395 ).
    t1390 = t1376->set( p0 = t1392 p1 = t1393 ).
    DATA t1396 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1398) = |off|.
    DATA t1399 TYPE REF TO zcl_lnt_integer_type.
    DATA t1400 TYPE REF TO zcl_lnt_abstract_type_data.
    t1399 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1400 ).
    t1396 = t1376->set( p0 = t1398 p1 = t1399 ).
    DATA t1401 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1403) = |len|.
    DATA t1404 TYPE REF TO zcl_lnt_integer_type.
    DATA t1405 TYPE REF TO zcl_lnt_abstract_type_data.
    t1404 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1405 ).
    t1401 = t1376->set( p0 = t1403 p1 = t1404 ).
    t1372 = t1376.
    DATA t1408 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1409 TYPE REF TO zcl_lnt_integer_type.
    DATA t1410 TYPE REF TO zcl_lnt_abstract_type_data.
    t1409 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1410 ).
    t1408 = t1409.
    DATA t1411 TYPE REF TO zcl_lnt_abap_release.
    DATA t1415 TYPE REF TO zcl_lnt_abap_release.
    DATA t1416 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1416 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1417) = |v702|.
    t1415 = t1416->get( p0 = t1417 ).
    t1411 = t1415.
    DATA t1419 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1421 TYPE REF TO zcl_lnt_built_in_method.
    t1351 = NEW zcl_lnt_ibuiltin_method( i_counter = t1352 i_mandatory = t1360 i_optional = t1372 i_release_7928 = t1411 i_predicate = t1419 i_return_fa63 = t1408 i_cache = t1421 ).
    CREATE OBJECT t1351->zlnt_view_ownkeys_b0e8086400eb.
    t1351->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1423 ).
    DATA t1424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1424 ).
    ENDIF.
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1425 ).
    ENDIF.
    DATA t1426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1426 ).
    ENDIF.
    DATA t1427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1427 ).
    ENDIF.
    CREATE OBJECT t1351->zlnt_json_ownkeys_70e5fd461788.
    t1351->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1428) = |counter|.
    DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1428 p1 = t1429 ).
    DATA(t1430) = |mandatory|.
    DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1430 p1 = t1431 ).
    ENDIF.
    DATA(t1432) = |optional|.
    DATA t1433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1432 p1 = t1433 ).
    ENDIF.
    DATA(t1434) = |return|.
    DATA t1435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1434 p1 = t1435 ).
    ENDIF.
    DATA(t1436) = |release|.
    DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1436 p1 = t1437 ).
    ENDIF.
    t1348 = t7->set( p0 = t1350 p1 = t1351 ).
    DATA t1438 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1440) = |COUNT_ANY_OF|.
    DATA t1441 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1442) = VALUE f( ).
    DATA(t1443) = VALUE f( ).
    DATA(t1444) = VALUE f( ).
    DATA(t1445) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1445 = zcl_lnt_built_in=>counter.
    t1444 = t1445.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1446 TYPE f.
    DATA(t1448) = CONV f( 1 ).
    t1446 = t1444 + t1448.
    zcl_lnt_built_in=>counter = t1446.
    t1443 = t1444.
    t1442 = t1443.
    DATA t1450 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1454 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1454 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1456 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1458) = |val|.
    DATA(t1459) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1456 = t1454->set( p0 = t1458 p1 = t1459 ).
    t1450 = t1454.
    DATA t1462 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1466 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1466 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1468 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1470) = |sub|.
    DATA(t1471) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1468 = t1466->set( p0 = t1470 p1 = t1471 ).
    DATA t1472 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1474) = |regex|.
    DATA(t1475) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1472 = t1466->set( p0 = t1474 p1 = t1475 ).
    DATA t1476 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1478) = |pcre|.
    DATA(t1479) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1476 = t1466->set( p0 = t1478 p1 = t1479 ).
    DATA t1480 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1482) = |case|.
    DATA t1483 TYPE REF TO zcl_lnt_character_type.
    DATA(t1484) = CONV f( 1 ).
    DATA t1485 TYPE REF TO zcl_lnt_abstract_type_data.
    t1483 = NEW zcl_lnt_character_type( i_length = t1484 i_extra = t1485 ).
    t1480 = t1466->set( p0 = t1482 p1 = t1483 ).
    DATA t1486 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1488) = |off|.
    DATA t1489 TYPE REF TO zcl_lnt_integer_type.
    DATA t1490 TYPE REF TO zcl_lnt_abstract_type_data.
    t1489 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1490 ).
    t1486 = t1466->set( p0 = t1488 p1 = t1489 ).
    DATA t1491 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1493) = |len|.
    DATA t1494 TYPE REF TO zcl_lnt_integer_type.
    DATA t1495 TYPE REF TO zcl_lnt_abstract_type_data.
    t1494 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1495 ).
    t1491 = t1466->set( p0 = t1493 p1 = t1494 ).
    t1462 = t1466.
    DATA t1498 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1499 TYPE REF TO zcl_lnt_integer_type.
    DATA t1500 TYPE REF TO zcl_lnt_abstract_type_data.
    t1499 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1500 ).
    t1498 = t1499.
    DATA t1501 TYPE REF TO zcl_lnt_abap_release.
    DATA t1505 TYPE REF TO zcl_lnt_abap_release.
    DATA t1506 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1506 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1507) = |v702|.
    t1505 = t1506->get( p0 = t1507 ).
    t1501 = t1505.
    DATA t1509 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1511 TYPE REF TO zcl_lnt_built_in_method.
    t1441 = NEW zcl_lnt_ibuiltin_method( i_counter = t1442 i_mandatory = t1450 i_optional = t1462 i_release_7928 = t1501 i_predicate = t1509 i_return_fa63 = t1498 i_cache = t1511 ).
    CREATE OBJECT t1441->zlnt_view_ownkeys_b0e8086400eb.
    t1441->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1513 ).
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1514 ).
    ENDIF.
    DATA t1515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1515 ).
    ENDIF.
    DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1516 ).
    ENDIF.
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1517 ).
    ENDIF.
    CREATE OBJECT t1441->zlnt_json_ownkeys_70e5fd461788.
    t1441->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1518) = |counter|.
    DATA t1519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1518 p1 = t1519 ).
    DATA(t1520) = |mandatory|.
    DATA t1521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1520 p1 = t1521 ).
    ENDIF.
    DATA(t1522) = |optional|.
    DATA t1523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1522 p1 = t1523 ).
    ENDIF.
    DATA(t1524) = |return|.
    DATA t1525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1524 p1 = t1525 ).
    ENDIF.
    DATA(t1526) = |release|.
    DATA t1527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1526 p1 = t1527 ).
    ENDIF.
    t1438 = t7->set( p0 = t1440 p1 = t1441 ).
    DATA t1528 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1530) = |DBMAXLEN|.
    DATA t1531 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1532) = VALUE f( ).
    DATA(t1533) = VALUE f( ).
    DATA(t1534) = VALUE f( ).
    DATA(t1535) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1535 = zcl_lnt_built_in=>counter.
    t1534 = t1535.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1536 TYPE f.
    DATA(t1538) = CONV f( 1 ).
    t1536 = t1534 + t1538.
    zcl_lnt_built_in=>counter = t1536.
    t1533 = t1534.
    t1532 = t1533.
    DATA t1540 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1544 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1544 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1546 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1548) = |val|.
    DATA(t1549) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1546 = t1544->set( p0 = t1548 p1 = t1549 ).
    t1540 = t1544.
    DATA t1552 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1553 TYPE REF TO zcl_lnt_integer_type.
    DATA t1554 TYPE REF TO zcl_lnt_abstract_type_data.
    t1553 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1554 ).
    t1552 = t1553.
    DATA t1555 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1557 TYPE REF TO zcl_lnt_abap_release.
    DATA t1559 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1561 TYPE REF TO zcl_lnt_built_in_method.
    t1531 = NEW zcl_lnt_ibuiltin_method( i_counter = t1532 i_mandatory = t1540 i_optional = t1555 i_release_7928 = t1557 i_predicate = t1559 i_return_fa63 = t1552 i_cache = t1561 ).
    CREATE OBJECT t1531->zlnt_view_ownkeys_b0e8086400eb.
    t1531->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1531->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1563 ).
    DATA t1564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1531->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1564 ).
    ENDIF.
    DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1531->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1565 ).
    ENDIF.
    CREATE OBJECT t1531->zlnt_json_ownkeys_70e5fd461788.
    t1531->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1566) = |counter|.
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1566 p1 = t1567 ).
    DATA(t1568) = |mandatory|.
    DATA t1569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1568 p1 = t1569 ).
    ENDIF.
    DATA(t1570) = |return|.
    DATA t1571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1570 p1 = t1571 ).
    ENDIF.
    t1528 = t7->set( p0 = t1530 p1 = t1531 ).
    DATA t1572 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1574) = |DISTANCE|.
    DATA t1575 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1576) = VALUE f( ).
    DATA(t1577) = VALUE f( ).
    DATA(t1578) = VALUE f( ).
    DATA(t1579) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1579 = zcl_lnt_built_in=>counter.
    t1578 = t1579.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1580 TYPE f.
    DATA(t1582) = CONV f( 1 ).
    t1580 = t1578 + t1582.
    zcl_lnt_built_in=>counter = t1580.
    t1577 = t1578.
    t1576 = t1577.
    DATA t1584 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1588 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1588 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1590 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1592) = |val1|.
    DATA(t1593) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1590 = t1588->set( p0 = t1592 p1 = t1593 ).
    DATA t1594 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1596) = |val2|.
    DATA(t1597) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1594 = t1588->set( p0 = t1596 p1 = t1597 ).
    t1584 = t1588.
    DATA t1600 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1601 TYPE REF TO zcl_lnt_integer_type.
    DATA t1602 TYPE REF TO zcl_lnt_abstract_type_data.
    t1601 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1602 ).
    t1600 = t1601.
    DATA t1603 TYPE REF TO zcl_lnt_abap_release.
    DATA t1607 TYPE REF TO zcl_lnt_abap_release.
    DATA t1608 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1608 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1609) = |v702|.
    t1607 = t1608->get( p0 = t1609 ).
    t1603 = t1607.
    DATA t1611 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1615 TYPE REF TO zcl_lnt_built_in_method.
    t1575 = NEW zcl_lnt_ibuiltin_method( i_counter = t1576 i_mandatory = t1584 i_optional = t1611 i_release_7928 = t1603 i_predicate = t1613 i_return_fa63 = t1600 i_cache = t1615 ).
    CREATE OBJECT t1575->zlnt_view_ownkeys_b0e8086400eb.
    t1575->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1575->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1617 ).
    DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1575->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1618 ).
    ENDIF.
    DATA t1619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1575->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1619 ).
    ENDIF.
    DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1575->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1620 ).
    ENDIF.
    CREATE OBJECT t1575->zlnt_json_ownkeys_70e5fd461788.
    t1575->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1621) = |counter|.
    DATA t1622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1621 p1 = t1622 ).
    DATA(t1623) = |mandatory|.
    DATA t1624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1623 p1 = t1624 ).
    ENDIF.
    DATA(t1625) = |return|.
    DATA t1626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1625 p1 = t1626 ).
    ENDIF.
    DATA(t1627) = |release|.
    DATA t1628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1627 p1 = t1628 ).
    ENDIF.
    t1572 = t7->set( p0 = t1574 p1 = t1575 ).
    DATA t1629 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1631) = |ESCAPE|.
    DATA t1632 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1633) = VALUE f( ).
    DATA(t1634) = VALUE f( ).
    DATA(t1635) = VALUE f( ).
    DATA(t1636) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1636 = zcl_lnt_built_in=>counter.
    t1635 = t1636.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1637 TYPE f.
    DATA(t1639) = CONV f( 1 ).
    t1637 = t1635 + t1639.
    zcl_lnt_built_in=>counter = t1637.
    t1634 = t1635.
    t1633 = t1634.
    DATA t1641 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1645 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1645 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1647 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1649) = |val|.
    DATA(t1650) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1647 = t1645->set( p0 = t1649 p1 = t1650 ).
    DATA t1651 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1653) = |format|.
    DATA(t1654) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t1651 = t1645->set( p0 = t1653 p1 = t1654 ).
    t1641 = t1645.
    DATA t1657 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1658 TYPE REF TO zcl_lnt_string_type.
    DATA t1659 TYPE REF TO zcl_lnt_abstract_type_data.
    t1658 = zcl_lnt_string_type=>get_db65( i_input_967e = t1659 ).
    t1657 = t1658.
    DATA t1660 TYPE REF TO zcl_lnt_abap_release.
    DATA t1664 TYPE REF TO zcl_lnt_abap_release.
    DATA t1665 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1665 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1666) = |v702|.
    t1664 = t1665->get( p0 = t1666 ).
    t1660 = t1664.
    DATA t1668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1670 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1672 TYPE REF TO zcl_lnt_built_in_method.
    t1632 = NEW zcl_lnt_ibuiltin_method( i_counter = t1633 i_mandatory = t1641 i_optional = t1668 i_release_7928 = t1660 i_predicate = t1670 i_return_fa63 = t1657 i_cache = t1672 ).
    CREATE OBJECT t1632->zlnt_view_ownkeys_b0e8086400eb.
    t1632->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1632->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1674 ).
    DATA t1675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1632->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1675 ).
    ENDIF.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1632->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1676 ).
    ENDIF.
    DATA t1677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1632->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1677 ).
    ENDIF.
    CREATE OBJECT t1632->zlnt_json_ownkeys_70e5fd461788.
    t1632->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1678) = |counter|.
    DATA t1679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1678 p1 = t1679 ).
    DATA(t1680) = |mandatory|.
    DATA t1681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1680 p1 = t1681 ).
    ENDIF.
    DATA(t1682) = |return|.
    DATA t1683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1682 p1 = t1683 ).
    ENDIF.
    DATA(t1684) = |release|.
    DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1684 p1 = t1685 ).
    ENDIF.
    t1629 = t7->set( p0 = t1631 p1 = t1632 ).
    DATA t1686 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1688) = |EXP|.
    DATA t1689 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1690) = VALUE f( ).
    DATA(t1691) = VALUE f( ).
    DATA(t1692) = VALUE f( ).
    DATA(t1693) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1693 = zcl_lnt_built_in=>counter.
    t1692 = t1693.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1694 TYPE f.
    DATA(t1696) = CONV f( 1 ).
    t1694 = t1692 + t1696.
    zcl_lnt_built_in=>counter = t1694.
    t1691 = t1692.
    t1690 = t1691.
    DATA t1698 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1702 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1704 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1706) = |val|.
    DATA t1707 TYPE REF TO zcl_lnt_float_type.
    DATA t1708 TYPE REF TO zcl_lnt_abstract_type_data.
    t1707 = NEW zcl_lnt_float_type( i_input_967e = t1708 ).
    t1704 = t1702->set( p0 = t1706 p1 = t1707 ).
    t1698 = t1702.
    DATA t1711 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1712 TYPE REF TO zcl_lnt_float_type.
    DATA t1713 TYPE REF TO zcl_lnt_abstract_type_data.
    t1712 = NEW zcl_lnt_float_type( i_input_967e = t1713 ).
    t1711 = t1712.
    DATA t1714 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1716 TYPE REF TO zcl_lnt_abap_release.
    DATA t1718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1720 TYPE REF TO zcl_lnt_built_in_method.
    t1689 = NEW zcl_lnt_ibuiltin_method( i_counter = t1690 i_mandatory = t1698 i_optional = t1714 i_release_7928 = t1716 i_predicate = t1718 i_return_fa63 = t1711 i_cache = t1720 ).
    CREATE OBJECT t1689->zlnt_view_ownkeys_b0e8086400eb.
    t1689->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1722 ).
    DATA t1723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1723 ).
    ENDIF.
    DATA t1724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1689->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1724 ).
    ENDIF.
    CREATE OBJECT t1689->zlnt_json_ownkeys_70e5fd461788.
    t1689->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1725) = |counter|.
    DATA t1726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1725 p1 = t1726 ).
    DATA(t1727) = |mandatory|.
    DATA t1728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1727 p1 = t1728 ).
    ENDIF.
    DATA(t1729) = |return|.
    DATA t1730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1729 p1 = t1730 ).
    ENDIF.
    t1686 = t7->set( p0 = t1688 p1 = t1689 ).
    DATA t1731 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1733) = |FIND|.
    DATA t1734 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1735) = VALUE f( ).
    DATA(t1736) = VALUE f( ).
    DATA(t1737) = VALUE f( ).
    DATA(t1738) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1738 = zcl_lnt_built_in=>counter.
    t1737 = t1738.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1739 TYPE f.
    DATA(t1741) = CONV f( 1 ).
    t1739 = t1737 + t1741.
    zcl_lnt_built_in=>counter = t1739.
    t1736 = t1737.
    t1735 = t1736.
    DATA t1743 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1747 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1749 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1751) = |val|.
    DATA(t1752) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1749 = t1747->set( p0 = t1751 p1 = t1752 ).
    t1743 = t1747.
    DATA t1755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1759 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1759 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1761 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1763) = |sub|.
    DATA(t1764) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1761 = t1759->set( p0 = t1763 p1 = t1764 ).
    DATA t1765 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1767) = |regex|.
    DATA(t1768) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1765 = t1759->set( p0 = t1767 p1 = t1768 ).
    DATA t1769 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1771) = |pcre|.
    DATA(t1772) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1769 = t1759->set( p0 = t1771 p1 = t1772 ).
    DATA t1773 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1775) = |case|.
    DATA t1776 TYPE REF TO zcl_lnt_character_type.
    DATA(t1777) = CONV f( 1 ).
    DATA t1778 TYPE REF TO zcl_lnt_abstract_type_data.
    t1776 = NEW zcl_lnt_character_type( i_length = t1777 i_extra = t1778 ).
    t1773 = t1759->set( p0 = t1775 p1 = t1776 ).
    DATA t1779 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1781) = |off|.
    DATA t1782 TYPE REF TO zcl_lnt_integer_type.
    DATA t1783 TYPE REF TO zcl_lnt_abstract_type_data.
    t1782 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1783 ).
    t1779 = t1759->set( p0 = t1781 p1 = t1782 ).
    DATA t1784 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1786) = |len|.
    DATA t1787 TYPE REF TO zcl_lnt_integer_type.
    DATA t1788 TYPE REF TO zcl_lnt_abstract_type_data.
    t1787 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1788 ).
    t1784 = t1759->set( p0 = t1786 p1 = t1787 ).
    DATA t1789 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1791) = |occ|.
    DATA t1792 TYPE REF TO zcl_lnt_integer_type.
    DATA t1793 TYPE REF TO zcl_lnt_abstract_type_data.
    t1792 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1793 ).
    t1789 = t1759->set( p0 = t1791 p1 = t1792 ).
    t1755 = t1759.
    DATA t1796 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1797 TYPE REF TO zcl_lnt_integer_type.
    DATA t1798 TYPE REF TO zcl_lnt_abstract_type_data.
    t1797 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1798 ).
    t1796 = t1797.
    DATA t1799 TYPE REF TO zcl_lnt_abap_release.
    DATA t1803 TYPE REF TO zcl_lnt_abap_release.
    DATA t1804 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1804 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1805) = |v702|.
    t1803 = t1804->get( p0 = t1805 ).
    t1799 = t1803.
    DATA t1807 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1809 TYPE REF TO zcl_lnt_built_in_method.
    t1734 = NEW zcl_lnt_ibuiltin_method( i_counter = t1735 i_mandatory = t1743 i_optional = t1755 i_release_7928 = t1799 i_predicate = t1807 i_return_fa63 = t1796 i_cache = t1809 ).
    CREATE OBJECT t1734->zlnt_view_ownkeys_b0e8086400eb.
    t1734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1811 ).
    DATA t1812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1812 ).
    ENDIF.
    DATA t1813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1813 ).
    ENDIF.
    DATA t1814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1814 ).
    ENDIF.
    DATA t1815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1815 ).
    ENDIF.
    CREATE OBJECT t1734->zlnt_json_ownkeys_70e5fd461788.
    t1734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1816) = |counter|.
    DATA t1817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1816 p1 = t1817 ).
    DATA(t1818) = |mandatory|.
    DATA t1819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1818 p1 = t1819 ).
    ENDIF.
    DATA(t1820) = |optional|.
    DATA t1821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1820 p1 = t1821 ).
    ENDIF.
    DATA(t1822) = |return|.
    DATA t1823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1822 p1 = t1823 ).
    ENDIF.
    DATA(t1824) = |release|.
    DATA t1825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1824 p1 = t1825 ).
    ENDIF.
    t1731 = t7->set( p0 = t1733 p1 = t1734 ).
    DATA t1826 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1828) = |FIND_ANY_NOT_OF|.
    DATA t1829 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1830) = VALUE f( ).
    DATA(t1831) = VALUE f( ).
    DATA(t1832) = VALUE f( ).
    DATA(t1833) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1833 = zcl_lnt_built_in=>counter.
    t1832 = t1833.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1834 TYPE f.
    DATA(t1836) = CONV f( 1 ).
    t1834 = t1832 + t1836.
    zcl_lnt_built_in=>counter = t1834.
    t1831 = t1832.
    t1830 = t1831.
    DATA t1838 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1842 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1842 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1844 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1846) = |val|.
    DATA(t1847) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1844 = t1842->set( p0 = t1846 p1 = t1847 ).
    t1838 = t1842.
    DATA t1850 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1854 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1854 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1856 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1858) = |sub|.
    DATA(t1859) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1856 = t1854->set( p0 = t1858 p1 = t1859 ).
    DATA t1860 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1862) = |off|.
    DATA t1863 TYPE REF TO zcl_lnt_integer_type.
    DATA t1864 TYPE REF TO zcl_lnt_abstract_type_data.
    t1863 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1864 ).
    t1860 = t1854->set( p0 = t1862 p1 = t1863 ).
    DATA t1865 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1867) = |len|.
    DATA t1868 TYPE REF TO zcl_lnt_integer_type.
    DATA t1869 TYPE REF TO zcl_lnt_abstract_type_data.
    t1868 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1869 ).
    t1865 = t1854->set( p0 = t1867 p1 = t1868 ).
    DATA t1870 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1872) = |occ|.
    DATA t1873 TYPE REF TO zcl_lnt_integer_type.
    DATA t1874 TYPE REF TO zcl_lnt_abstract_type_data.
    t1873 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1874 ).
    t1870 = t1854->set( p0 = t1872 p1 = t1873 ).
    t1850 = t1854.
    DATA t1877 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1878 TYPE REF TO zcl_lnt_integer_type.
    DATA t1879 TYPE REF TO zcl_lnt_abstract_type_data.
    t1878 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1879 ).
    t1877 = t1878.
    DATA t1880 TYPE REF TO zcl_lnt_abap_release.
    DATA t1884 TYPE REF TO zcl_lnt_abap_release.
    DATA t1885 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1885 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1886) = |v702|.
    t1884 = t1885->get( p0 = t1886 ).
    t1880 = t1884.
    DATA t1888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1890 TYPE REF TO zcl_lnt_built_in_method.
    t1829 = NEW zcl_lnt_ibuiltin_method( i_counter = t1830 i_mandatory = t1838 i_optional = t1850 i_release_7928 = t1880 i_predicate = t1888 i_return_fa63 = t1877 i_cache = t1890 ).
    CREATE OBJECT t1829->zlnt_view_ownkeys_b0e8086400eb.
    t1829->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1892 ).
    DATA t1893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1893 ).
    ENDIF.
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1894 ).
    ENDIF.
    DATA t1895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1895 ).
    ENDIF.
    DATA t1896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1896 ).
    ENDIF.
    CREATE OBJECT t1829->zlnt_json_ownkeys_70e5fd461788.
    t1829->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1897) = |counter|.
    DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1897 p1 = t1898 ).
    DATA(t1899) = |mandatory|.
    DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1899 p1 = t1900 ).
    ENDIF.
    DATA(t1901) = |optional|.
    DATA t1902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1901 p1 = t1902 ).
    ENDIF.
    DATA(t1903) = |return|.
    DATA t1904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1903 p1 = t1904 ).
    ENDIF.
    DATA(t1905) = |release|.
    DATA t1906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1905 p1 = t1906 ).
    ENDIF.
    t1826 = t7->set( p0 = t1828 p1 = t1829 ).
    DATA t1907 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1909) = |FIND_ANY_OF|.
    DATA t1910 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1911) = VALUE f( ).
    DATA(t1912) = VALUE f( ).
    DATA(t1913) = VALUE f( ).
    DATA(t1914) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1914 = zcl_lnt_built_in=>counter.
    t1913 = t1914.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1915 TYPE f.
    DATA(t1917) = CONV f( 1 ).
    t1915 = t1913 + t1917.
    zcl_lnt_built_in=>counter = t1915.
    t1912 = t1913.
    t1911 = t1912.
    DATA t1919 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1923 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1923 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1925 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1927) = |val|.
    DATA(t1928) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1925 = t1923->set( p0 = t1927 p1 = t1928 ).
    t1919 = t1923.
    DATA t1931 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1935 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1935 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1937 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1939) = |sub|.
    DATA(t1940) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t1937 = t1935->set( p0 = t1939 p1 = t1940 ).
    DATA t1941 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1943) = |off|.
    DATA t1944 TYPE REF TO zcl_lnt_integer_type.
    DATA t1945 TYPE REF TO zcl_lnt_abstract_type_data.
    t1944 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1945 ).
    t1941 = t1935->set( p0 = t1943 p1 = t1944 ).
    DATA t1946 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1948) = |len|.
    DATA t1949 TYPE REF TO zcl_lnt_integer_type.
    DATA t1950 TYPE REF TO zcl_lnt_abstract_type_data.
    t1949 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1950 ).
    t1946 = t1935->set( p0 = t1948 p1 = t1949 ).
    DATA t1951 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t1953) = |occ|.
    DATA t1954 TYPE REF TO zcl_lnt_integer_type.
    DATA t1955 TYPE REF TO zcl_lnt_abstract_type_data.
    t1954 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1955 ).
    t1951 = t1935->set( p0 = t1953 p1 = t1954 ).
    t1931 = t1935.
    DATA t1958 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1959 TYPE REF TO zcl_lnt_integer_type.
    DATA t1960 TYPE REF TO zcl_lnt_abstract_type_data.
    t1959 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1960 ).
    t1958 = t1959.
    DATA t1961 TYPE REF TO zcl_lnt_abap_release.
    DATA t1965 TYPE REF TO zcl_lnt_abap_release.
    DATA t1966 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1966 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1967) = |v702|.
    t1965 = t1966->get( p0 = t1967 ).
    t1961 = t1965.
    DATA t1969 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1971 TYPE REF TO zcl_lnt_built_in_method.
    t1910 = NEW zcl_lnt_ibuiltin_method( i_counter = t1911 i_mandatory = t1919 i_optional = t1931 i_release_7928 = t1961 i_predicate = t1969 i_return_fa63 = t1958 i_cache = t1971 ).
    CREATE OBJECT t1910->zlnt_view_ownkeys_b0e8086400eb.
    t1910->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1910->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t1973 ).
    DATA t1974 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1910->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t1974 ).
    ENDIF.
    DATA t1975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1910->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t1975 ).
    ENDIF.
    DATA t1976 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1910->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t1976 ).
    ENDIF.
    DATA t1977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1910->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t1977 ).
    ENDIF.
    CREATE OBJECT t1910->zlnt_json_ownkeys_70e5fd461788.
    t1910->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1978) = |counter|.
    DATA t1979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1978 p1 = t1979 ).
    DATA(t1980) = |mandatory|.
    DATA t1981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1980 p1 = t1981 ).
    ENDIF.
    DATA(t1982) = |optional|.
    DATA t1983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1982 p1 = t1983 ).
    ENDIF.
    DATA(t1984) = |return|.
    DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1984 p1 = t1985 ).
    ENDIF.
    DATA(t1986) = |release|.
    DATA t1987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1986 p1 = t1987 ).
    ENDIF.
    t1907 = t7->set( p0 = t1909 p1 = t1910 ).
    DATA t1988 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t1990) = |FIND_END|.
    DATA t1991 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1992) = VALUE f( ).
    DATA(t1993) = VALUE f( ).
    DATA(t1994) = VALUE f( ).
    DATA(t1995) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1995 = zcl_lnt_built_in=>counter.
    t1994 = t1995.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t1996 TYPE f.
    DATA(t1998) = CONV f( 1 ).
    t1996 = t1994 + t1998.
    zcl_lnt_built_in=>counter = t1996.
    t1993 = t1994.
    t1992 = t1993.
    DATA t2000 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2004 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2004 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2006 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2008) = |val|.
    DATA(t2009) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2006 = t2004->set( p0 = t2008 p1 = t2009 ).
    t2000 = t2004.
    DATA t2012 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2016 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2016 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2018 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2020) = |sub|.
    DATA(t2021) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2018 = t2016->set( p0 = t2020 p1 = t2021 ).
    DATA t2022 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2024) = |regex|.
    DATA(t2025) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2022 = t2016->set( p0 = t2024 p1 = t2025 ).
    DATA t2026 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2028) = |pcre|.
    DATA(t2029) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2026 = t2016->set( p0 = t2028 p1 = t2029 ).
    DATA t2030 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2032) = |case|.
    DATA t2033 TYPE REF TO zcl_lnt_character_type.
    DATA(t2034) = CONV f( 1 ).
    DATA t2035 TYPE REF TO zcl_lnt_abstract_type_data.
    t2033 = NEW zcl_lnt_character_type( i_length = t2034 i_extra = t2035 ).
    t2030 = t2016->set( p0 = t2032 p1 = t2033 ).
    DATA t2036 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2038) = |off|.
    DATA t2039 TYPE REF TO zcl_lnt_integer_type.
    DATA t2040 TYPE REF TO zcl_lnt_abstract_type_data.
    t2039 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2040 ).
    t2036 = t2016->set( p0 = t2038 p1 = t2039 ).
    DATA t2041 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2043) = |len|.
    DATA t2044 TYPE REF TO zcl_lnt_integer_type.
    DATA t2045 TYPE REF TO zcl_lnt_abstract_type_data.
    t2044 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2045 ).
    t2041 = t2016->set( p0 = t2043 p1 = t2044 ).
    DATA t2046 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2048) = |occ|.
    DATA t2049 TYPE REF TO zcl_lnt_integer_type.
    DATA t2050 TYPE REF TO zcl_lnt_abstract_type_data.
    t2049 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2050 ).
    t2046 = t2016->set( p0 = t2048 p1 = t2049 ).
    t2012 = t2016.
    DATA t2053 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2054 TYPE REF TO zcl_lnt_integer_type.
    DATA t2055 TYPE REF TO zcl_lnt_abstract_type_data.
    t2054 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2055 ).
    t2053 = t2054.
    DATA t2056 TYPE REF TO zcl_lnt_abap_release.
    DATA t2060 TYPE REF TO zcl_lnt_abap_release.
    DATA t2061 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2061 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2062) = |v702|.
    t2060 = t2061->get( p0 = t2062 ).
    t2056 = t2060.
    DATA t2064 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2066 TYPE REF TO zcl_lnt_built_in_method.
    t1991 = NEW zcl_lnt_ibuiltin_method( i_counter = t1992 i_mandatory = t2000 i_optional = t2012 i_release_7928 = t2056 i_predicate = t2064 i_return_fa63 = t2053 i_cache = t2066 ).
    CREATE OBJECT t1991->zlnt_view_ownkeys_b0e8086400eb.
    t1991->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2068 ).
    DATA t2069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2069 ).
    ENDIF.
    DATA t2070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2070 ).
    ENDIF.
    DATA t2071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2071 ).
    ENDIF.
    DATA t2072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2072 ).
    ENDIF.
    CREATE OBJECT t1991->zlnt_json_ownkeys_70e5fd461788.
    t1991->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2073) = |counter|.
    DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2073 p1 = t2074 ).
    DATA(t2075) = |mandatory|.
    DATA t2076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2075 p1 = t2076 ).
    ENDIF.
    DATA(t2077) = |optional|.
    DATA t2078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2077 p1 = t2078 ).
    ENDIF.
    DATA(t2079) = |return|.
    DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2079 p1 = t2080 ).
    ENDIF.
    DATA(t2081) = |release|.
    DATA t2082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2081 p1 = t2082 ).
    ENDIF.
    t1988 = t7->set( p0 = t1990 p1 = t1991 ).
    DATA t2083 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2085) = |FLOOR|.
    DATA t2086 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2087) = VALUE f( ).
    DATA(t2088) = VALUE f( ).
    DATA(t2089) = VALUE f( ).
    DATA(t2090) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2090 = zcl_lnt_built_in=>counter.
    t2089 = t2090.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2091 TYPE f.
    DATA(t2093) = CONV f( 1 ).
    t2091 = t2089 + t2093.
    zcl_lnt_built_in=>counter = t2091.
    t2088 = t2089.
    t2087 = t2088.
    DATA t2095 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2099 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2099 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2101 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2103) = |val|.
    DATA t2104 TYPE REF TO zcl_lnt_float_type.
    DATA t2105 TYPE REF TO zcl_lnt_abstract_type_data.
    t2104 = NEW zcl_lnt_float_type( i_input_967e = t2105 ).
    t2101 = t2099->set( p0 = t2103 p1 = t2104 ).
    t2095 = t2099.
    DATA t2108 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2109 TYPE REF TO zcl_lnt_integer_type.
    DATA t2110 TYPE REF TO zcl_lnt_abstract_type_data.
    t2109 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2110 ).
    t2108 = t2109.
    DATA t2111 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2113 TYPE REF TO zcl_lnt_abap_release.
    DATA t2115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2117 TYPE REF TO zcl_lnt_built_in_method.
    t2086 = NEW zcl_lnt_ibuiltin_method( i_counter = t2087 i_mandatory = t2095 i_optional = t2111 i_release_7928 = t2113 i_predicate = t2115 i_return_fa63 = t2108 i_cache = t2117 ).
    CREATE OBJECT t2086->zlnt_view_ownkeys_b0e8086400eb.
    t2086->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2119 ).
    DATA t2120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2120 ).
    ENDIF.
    DATA t2121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2086->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2121 ).
    ENDIF.
    CREATE OBJECT t2086->zlnt_json_ownkeys_70e5fd461788.
    t2086->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2122) = |counter|.
    DATA t2123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2122 p1 = t2123 ).
    DATA(t2124) = |mandatory|.
    DATA t2125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2124 p1 = t2125 ).
    ENDIF.
    DATA(t2126) = |return|.
    DATA t2127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2126 p1 = t2127 ).
    ENDIF.
    t2083 = t7->set( p0 = t2085 p1 = t2086 ).
    DATA t2128 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2130) = |FRAC|.
    DATA t2131 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2132) = VALUE f( ).
    DATA(t2133) = VALUE f( ).
    DATA(t2134) = VALUE f( ).
    DATA(t2135) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2135 = zcl_lnt_built_in=>counter.
    t2134 = t2135.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2136 TYPE f.
    DATA(t2138) = CONV f( 1 ).
    t2136 = t2134 + t2138.
    zcl_lnt_built_in=>counter = t2136.
    t2133 = t2134.
    t2132 = t2133.
    DATA t2140 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2144 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2144 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2146 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2148) = |val|.
    DATA t2149 TYPE REF TO zcl_lnt_float_type.
    DATA t2150 TYPE REF TO zcl_lnt_abstract_type_data.
    t2149 = NEW zcl_lnt_float_type( i_input_967e = t2150 ).
    t2146 = t2144->set( p0 = t2148 p1 = t2149 ).
    t2140 = t2144.
    DATA t2153 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2154 TYPE REF TO zcl_lnt_integer_type.
    DATA t2155 TYPE REF TO zcl_lnt_abstract_type_data.
    t2154 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2155 ).
    t2153 = t2154.
    DATA t2156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2158 TYPE REF TO zcl_lnt_abap_release.
    DATA t2160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2162 TYPE REF TO zcl_lnt_built_in_method.
    t2131 = NEW zcl_lnt_ibuiltin_method( i_counter = t2132 i_mandatory = t2140 i_optional = t2156 i_release_7928 = t2158 i_predicate = t2160 i_return_fa63 = t2153 i_cache = t2162 ).
    CREATE OBJECT t2131->zlnt_view_ownkeys_b0e8086400eb.
    t2131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2164 ).
    DATA t2165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2165 ).
    ENDIF.
    DATA t2166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2166 ).
    ENDIF.
    CREATE OBJECT t2131->zlnt_json_ownkeys_70e5fd461788.
    t2131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2167) = |counter|.
    DATA t2168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2167 p1 = t2168 ).
    DATA(t2169) = |mandatory|.
    DATA t2170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2169 p1 = t2170 ).
    ENDIF.
    DATA(t2171) = |return|.
    DATA t2172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2171 p1 = t2172 ).
    ENDIF.
    t2128 = t7->set( p0 = t2130 p1 = t2131 ).
    DATA t2173 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2175) = |FROM_MIXED|.
    DATA t2176 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2177) = VALUE f( ).
    DATA(t2178) = VALUE f( ).
    DATA(t2179) = VALUE f( ).
    DATA(t2180) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2180 = zcl_lnt_built_in=>counter.
    t2179 = t2180.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2181 TYPE f.
    DATA(t2183) = CONV f( 1 ).
    t2181 = t2179 + t2183.
    zcl_lnt_built_in=>counter = t2181.
    t2178 = t2179.
    t2177 = t2178.
    DATA t2185 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2189 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2189 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2191 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2193) = |val|.
    DATA(t2194) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2191 = t2189->set( p0 = t2193 p1 = t2194 ).
    t2185 = t2189.
    DATA t2197 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2201 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2205) = |case|.
    DATA t2206 TYPE REF TO zcl_lnt_character_type.
    DATA(t2207) = CONV f( 1 ).
    DATA t2208 TYPE REF TO zcl_lnt_abstract_type_data.
    t2206 = NEW zcl_lnt_character_type( i_length = t2207 i_extra = t2208 ).
    t2203 = t2201->set( p0 = t2205 p1 = t2206 ).
    DATA t2209 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2211) = |sep|.
    DATA t2212 TYPE REF TO zcl_lnt_integer_type.
    DATA t2213 TYPE REF TO zcl_lnt_abstract_type_data.
    t2212 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2213 ).
    t2209 = t2201->set( p0 = t2211 p1 = t2212 ).
    DATA t2214 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2216) = |min|.
    DATA t2217 TYPE REF TO zcl_lnt_integer_type.
    DATA t2218 TYPE REF TO zcl_lnt_abstract_type_data.
    t2217 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2218 ).
    t2214 = t2201->set( p0 = t2216 p1 = t2217 ).
    t2197 = t2201.
    DATA t2221 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2222 TYPE REF TO zcl_lnt_string_type.
    DATA t2223 TYPE REF TO zcl_lnt_abstract_type_data.
    t2222 = zcl_lnt_string_type=>get_db65( i_input_967e = t2223 ).
    t2221 = t2222.
    DATA t2224 TYPE REF TO zcl_lnt_abap_release.
    DATA t2228 TYPE REF TO zcl_lnt_abap_release.
    DATA t2229 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2229 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2230) = |v702|.
    t2228 = t2229->get( p0 = t2230 ).
    t2224 = t2228.
    DATA t2232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2234 TYPE REF TO zcl_lnt_built_in_method.
    t2176 = NEW zcl_lnt_ibuiltin_method( i_counter = t2177 i_mandatory = t2185 i_optional = t2197 i_release_7928 = t2224 i_predicate = t2232 i_return_fa63 = t2221 i_cache = t2234 ).
    CREATE OBJECT t2176->zlnt_view_ownkeys_b0e8086400eb.
    t2176->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2236 ).
    DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2237 ).
    ENDIF.
    DATA t2238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2238 ).
    ENDIF.
    DATA t2239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2239 ).
    ENDIF.
    DATA t2240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2176->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2240 ).
    ENDIF.
    CREATE OBJECT t2176->zlnt_json_ownkeys_70e5fd461788.
    t2176->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2241) = |counter|.
    DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2241 p1 = t2242 ).
    DATA(t2243) = |mandatory|.
    DATA t2244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2243 p1 = t2244 ).
    ENDIF.
    DATA(t2245) = |optional|.
    DATA t2246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2245 p1 = t2246 ).
    ENDIF.
    DATA(t2247) = |return|.
    DATA t2248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2247 p1 = t2248 ).
    ENDIF.
    DATA(t2249) = |release|.
    DATA t2250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2249 p1 = t2250 ).
    ENDIF.
    t2173 = t7->set( p0 = t2175 p1 = t2176 ).
    DATA t2251 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2253) = |INSERT|.
    DATA t2254 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2255) = VALUE f( ).
    DATA(t2256) = VALUE f( ).
    DATA(t2257) = VALUE f( ).
    DATA(t2258) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2258 = zcl_lnt_built_in=>counter.
    t2257 = t2258.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2259 TYPE f.
    DATA(t2261) = CONV f( 1 ).
    t2259 = t2257 + t2261.
    zcl_lnt_built_in=>counter = t2259.
    t2256 = t2257.
    t2255 = t2256.
    DATA t2263 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2267 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2267 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2269 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2271) = |val|.
    DATA(t2272) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2269 = t2267->set( p0 = t2271 p1 = t2272 ).
    DATA t2273 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2275) = |sub|.
    DATA(t2276) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2273 = t2267->set( p0 = t2275 p1 = t2276 ).
    t2263 = t2267.
    DATA t2279 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2283 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2283 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2285 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2287) = |off|.
    DATA t2288 TYPE REF TO zcl_lnt_integer_type.
    DATA t2289 TYPE REF TO zcl_lnt_abstract_type_data.
    t2288 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2289 ).
    t2285 = t2283->set( p0 = t2287 p1 = t2288 ).
    t2279 = t2283.
    DATA t2292 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2293 TYPE REF TO zcl_lnt_string_type.
    DATA t2294 TYPE REF TO zcl_lnt_abstract_type_data.
    t2293 = zcl_lnt_string_type=>get_db65( i_input_967e = t2294 ).
    t2292 = t2293.
    DATA t2295 TYPE REF TO zcl_lnt_abap_release.
    DATA t2299 TYPE REF TO zcl_lnt_abap_release.
    DATA t2300 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2300 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2301) = |v702|.
    t2299 = t2300->get( p0 = t2301 ).
    t2295 = t2299.
    DATA t2303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2305 TYPE REF TO zcl_lnt_built_in_method.
    t2254 = NEW zcl_lnt_ibuiltin_method( i_counter = t2255 i_mandatory = t2263 i_optional = t2279 i_release_7928 = t2295 i_predicate = t2303 i_return_fa63 = t2292 i_cache = t2305 ).
    CREATE OBJECT t2254->zlnt_view_ownkeys_b0e8086400eb.
    t2254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2307 ).
    DATA t2308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2308 ).
    ENDIF.
    DATA t2309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2309 ).
    ENDIF.
    DATA t2310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2310 ).
    ENDIF.
    DATA t2311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2311 ).
    ENDIF.
    CREATE OBJECT t2254->zlnt_json_ownkeys_70e5fd461788.
    t2254->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2312) = |counter|.
    DATA t2313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2312 p1 = t2313 ).
    DATA(t2314) = |mandatory|.
    DATA t2315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2314 p1 = t2315 ).
    ENDIF.
    DATA(t2316) = |optional|.
    DATA t2317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2316 p1 = t2317 ).
    ENDIF.
    DATA(t2318) = |return|.
    DATA t2319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2318 p1 = t2319 ).
    ENDIF.
    DATA(t2320) = |release|.
    DATA t2321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2320 p1 = t2321 ).
    ENDIF.
    t2251 = t7->set( p0 = t2253 p1 = t2254 ).
    DATA t2322 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2324) = |IPOW|.
    DATA t2325 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2326) = VALUE f( ).
    DATA(t2327) = VALUE f( ).
    DATA(t2328) = VALUE f( ).
    DATA(t2329) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2329 = zcl_lnt_built_in=>counter.
    t2328 = t2329.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2330 TYPE f.
    DATA(t2332) = CONV f( 1 ).
    t2330 = t2328 + t2332.
    zcl_lnt_built_in=>counter = t2330.
    t2327 = t2328.
    t2326 = t2327.
    DATA t2334 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2338 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2338 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2340 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2342) = |base|.
    DATA t2343 TYPE REF TO zcl_lnt_float_type.
    DATA t2344 TYPE REF TO zcl_lnt_abstract_type_data.
    t2343 = NEW zcl_lnt_float_type( i_input_967e = t2344 ).
    t2340 = t2338->set( p0 = t2342 p1 = t2343 ).
    DATA t2345 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2347) = |exp|.
    DATA t2348 TYPE REF TO zcl_lnt_float_type.
    DATA t2349 TYPE REF TO zcl_lnt_abstract_type_data.
    t2348 = NEW zcl_lnt_float_type( i_input_967e = t2349 ).
    t2345 = t2338->set( p0 = t2347 p1 = t2348 ).
    t2334 = t2338.
    DATA t2352 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2353 TYPE REF TO zcl_lnt_integer_type.
    DATA t2354 TYPE REF TO zcl_lnt_abstract_type_data.
    t2353 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2354 ).
    t2352 = t2353.
    DATA t2355 TYPE REF TO zcl_lnt_abap_release.
    DATA t2359 TYPE REF TO zcl_lnt_abap_release.
    DATA t2360 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2360 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2361) = |v740sp02|.
    t2359 = t2360->get( p0 = t2361 ).
    t2355 = t2359.
    DATA t2363 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2365 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2367 TYPE REF TO zcl_lnt_built_in_method.
    t2325 = NEW zcl_lnt_ibuiltin_method( i_counter = t2326 i_mandatory = t2334 i_optional = t2363 i_release_7928 = t2355 i_predicate = t2365 i_return_fa63 = t2352 i_cache = t2367 ).
    CREATE OBJECT t2325->zlnt_view_ownkeys_b0e8086400eb.
    t2325->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2369 ).
    DATA t2370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2370 ).
    ENDIF.
    DATA t2371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2371 ).
    ENDIF.
    DATA t2372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2372 ).
    ENDIF.
    CREATE OBJECT t2325->zlnt_json_ownkeys_70e5fd461788.
    t2325->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2373) = |counter|.
    DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2373 p1 = t2374 ).
    DATA(t2375) = |mandatory|.
    DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2375 p1 = t2376 ).
    ENDIF.
    DATA(t2377) = |return|.
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2377 p1 = t2378 ).
    ENDIF.
    DATA(t2379) = |release|.
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2379 p1 = t2380 ).
    ENDIF.
    t2322 = t7->set( p0 = t2324 p1 = t2325 ).
    DATA t2381 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2383) = |LINE_EXISTS|.
    DATA t2384 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2385) = VALUE f( ).
    DATA(t2386) = VALUE f( ).
    DATA(t2387) = VALUE f( ).
    DATA(t2388) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2388 = zcl_lnt_built_in=>counter.
    t2387 = t2388.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2389 TYPE f.
    DATA(t2391) = CONV f( 1 ).
    t2389 = t2387 + t2391.
    zcl_lnt_built_in=>counter = t2389.
    t2386 = t2387.
    t2385 = t2386.
    DATA t2393 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2397 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2397 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2399 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2401) = |val|.
    DATA t2402 TYPE REF TO zcl_lnt_any_type.
    DATA t2403 TYPE REF TO zcl_lnt_abstract_type_data.
    t2402 = zcl_lnt_any_type=>get_db65( i_input_967e = t2403 ).
    t2399 = t2397->set( p0 = t2401 p1 = t2402 ).
    t2393 = t2397.
    DATA t2406 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2407 TYPE REF TO zcl_lnt_character_type.
    DATA(t2408) = CONV f( 1 ).
    DATA t2409 TYPE REF TO zcl_lnt_abstract_type_data.
    t2407 = NEW zcl_lnt_character_type( i_length = t2408 i_extra = t2409 ).
    t2406 = t2407.
    DATA t2410 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t2414) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2414->has = abap_true.
    t2414->value = abap_true.
    t2410 = t2414.
    DATA t2416 TYPE REF TO zcl_lnt_abap_release.
    DATA t2420 TYPE REF TO zcl_lnt_abap_release.
    DATA t2421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2421 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2422) = |v740sp02|.
    t2420 = t2421->get( p0 = t2422 ).
    t2416 = t2420.
    DATA t2424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2426 TYPE REF TO zcl_lnt_built_in_method.
    t2384 = NEW zcl_lnt_ibuiltin_method( i_counter = t2385 i_mandatory = t2393 i_optional = t2424 i_release_7928 = t2416 i_predicate = t2410 i_return_fa63 = t2406 i_cache = t2426 ).
    CREATE OBJECT t2384->zlnt_view_ownkeys_b0e8086400eb.
    t2384->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2428 ).
    DATA t2429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2429 ).
    ENDIF.
    DATA t2430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2430 ).
    ENDIF.
    DATA t2431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t2431 ).
    ENDIF.
    DATA t2432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2384->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2432 ).
    ENDIF.
    CREATE OBJECT t2384->zlnt_json_ownkeys_70e5fd461788.
    t2384->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2433) = |counter|.
    DATA t2434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2433 p1 = t2434 ).
    DATA(t2435) = |mandatory|.
    DATA t2436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2435 p1 = t2436 ).
    ENDIF.
    DATA(t2437) = |return|.
    DATA t2438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2437 p1 = t2438 ).
    ENDIF.
    DATA(t2439) = |predicate|.
    DATA t2440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2439 p1 = t2440 ).
    ENDIF.
    DATA(t2441) = |release|.
    DATA t2442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2441 p1 = t2442 ).
    ENDIF.
    t2381 = t7->set( p0 = t2383 p1 = t2384 ).
    DATA t2443 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2445) = |LINE_INDEX|.
    DATA t2446 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2447) = VALUE f( ).
    DATA(t2448) = VALUE f( ).
    DATA(t2449) = VALUE f( ).
    DATA(t2450) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2450 = zcl_lnt_built_in=>counter.
    t2449 = t2450.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2451 TYPE f.
    DATA(t2453) = CONV f( 1 ).
    t2451 = t2449 + t2453.
    zcl_lnt_built_in=>counter = t2451.
    t2448 = t2449.
    t2447 = t2448.
    DATA t2455 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2459 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2459 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2461 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2463) = |val|.
    DATA t2464 TYPE REF TO zcl_lnt_any_type.
    DATA t2465 TYPE REF TO zcl_lnt_abstract_type_data.
    t2464 = zcl_lnt_any_type=>get_db65( i_input_967e = t2465 ).
    t2461 = t2459->set( p0 = t2463 p1 = t2464 ).
    t2455 = t2459.
    DATA t2468 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2469 TYPE REF TO zcl_lnt_integer_type.
    DATA t2470 TYPE REF TO zcl_lnt_abstract_type_data.
    t2469 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2470 ).
    t2468 = t2469.
    DATA t2471 TYPE REF TO zcl_lnt_abap_release.
    DATA t2475 TYPE REF TO zcl_lnt_abap_release.
    DATA t2476 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2476 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2477) = |v740sp02|.
    t2475 = t2476->get( p0 = t2477 ).
    t2471 = t2475.
    DATA t2479 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2481 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2483 TYPE REF TO zcl_lnt_built_in_method.
    t2446 = NEW zcl_lnt_ibuiltin_method( i_counter = t2447 i_mandatory = t2455 i_optional = t2479 i_release_7928 = t2471 i_predicate = t2481 i_return_fa63 = t2468 i_cache = t2483 ).
    CREATE OBJECT t2446->zlnt_view_ownkeys_b0e8086400eb.
    t2446->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2485 ).
    DATA t2486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2486 ).
    ENDIF.
    DATA t2487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2487 ).
    ENDIF.
    DATA t2488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2446->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2488 ).
    ENDIF.
    CREATE OBJECT t2446->zlnt_json_ownkeys_70e5fd461788.
    t2446->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2489) = |counter|.
    DATA t2490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2489 p1 = t2490 ).
    DATA(t2491) = |mandatory|.
    DATA t2492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2491 p1 = t2492 ).
    ENDIF.
    DATA(t2493) = |return|.
    DATA t2494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2493 p1 = t2494 ).
    ENDIF.
    DATA(t2495) = |release|.
    DATA t2496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2495 p1 = t2496 ).
    ENDIF.
    t2443 = t7->set( p0 = t2445 p1 = t2446 ).
    DATA t2497 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2499) = |LINES|.
    DATA t2500 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2501) = VALUE f( ).
    DATA(t2502) = VALUE f( ).
    DATA(t2503) = VALUE f( ).
    DATA(t2504) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2504 = zcl_lnt_built_in=>counter.
    t2503 = t2504.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2505 TYPE f.
    DATA(t2507) = CONV f( 1 ).
    t2505 = t2503 + t2507.
    zcl_lnt_built_in=>counter = t2505.
    t2502 = t2503.
    t2501 = t2502.
    DATA t2509 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2513 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2513 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2515 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2517) = |val|.
    DATA t2518 TYPE REF TO zcl_lnt_ty_table_type.
    DATA t2519 TYPE REF TO zcl_lnt_any_type.
    DATA t2520 TYPE REF TO zcl_lnt_abstract_type_data.
    t2519 = zcl_lnt_any_type=>get_db65( i_input_967e = t2520 ).
    DATA t2521 TYPE REF TO zcl_lnt_itable_options.
    DATA t2522 TYPE abap_bool.
    t2522 = abap_false.
    DATA t2524 TYPE string.
    t2524 = |USER|.
    DATA t2526 TYPE REF TO zcl_lnt_itable_key.
    DATA t2528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2521 = NEW zcl_lnt_itable_options( i_with_header = t2522 i_key_type = t2524 i_primary_key = t2526 i_secondary = t2528 ).
    CREATE OBJECT t2521->zlnt_view_ownkeys_b0e8086400eb.
    t2521->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2521->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t2530 ).
    DATA t2531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2521->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2521->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t2531 ).
    ENDIF.
    CREATE OBJECT t2521->zlnt_json_ownkeys_70e5fd461788.
    t2521->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2532) = |withHeader|.
    DATA t2533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2521->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2532 p1 = t2533 ).
    DATA(t2534) = |keyType|.
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2521->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2521->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2534 p1 = t2535 ).
    ENDIF.
    DATA t2536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2518 = NEW zcl_lnt_ty_table_type( i_row_type = t2519 i_options = t2521 i_qualified_name = t2536 i_description = t2537 ).
    t2515 = t2513->set( p0 = t2517 p1 = t2518 ).
    t2509 = t2513.
    DATA t2540 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2541 TYPE REF TO zcl_lnt_integer_type.
    DATA t2542 TYPE REF TO zcl_lnt_abstract_type_data.
    t2541 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2542 ).
    t2540 = t2541.
    DATA t2543 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2545 TYPE REF TO zcl_lnt_abap_release.
    DATA t2547 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2549 TYPE REF TO zcl_lnt_built_in_method.
    t2500 = NEW zcl_lnt_ibuiltin_method( i_counter = t2501 i_mandatory = t2509 i_optional = t2543 i_release_7928 = t2545 i_predicate = t2547 i_return_fa63 = t2540 i_cache = t2549 ).
    CREATE OBJECT t2500->zlnt_view_ownkeys_b0e8086400eb.
    t2500->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2551 ).
    DATA t2552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2552 ).
    ENDIF.
    DATA t2553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2553 ).
    ENDIF.
    CREATE OBJECT t2500->zlnt_json_ownkeys_70e5fd461788.
    t2500->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2554) = |counter|.
    DATA t2555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2554 p1 = t2555 ).
    DATA(t2556) = |mandatory|.
    DATA t2557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2556 p1 = t2557 ).
    ENDIF.
    DATA(t2558) = |return|.
    DATA t2559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2558 p1 = t2559 ).
    ENDIF.
    t2497 = t7->set( p0 = t2499 p1 = t2500 ).
    DATA t2560 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2562) = |LOG|.
    DATA t2563 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2564) = VALUE f( ).
    DATA(t2565) = VALUE f( ).
    DATA(t2566) = VALUE f( ).
    DATA(t2567) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2567 = zcl_lnt_built_in=>counter.
    t2566 = t2567.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2568 TYPE f.
    DATA(t2570) = CONV f( 1 ).
    t2568 = t2566 + t2570.
    zcl_lnt_built_in=>counter = t2568.
    t2565 = t2566.
    t2564 = t2565.
    DATA t2572 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2576 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2576 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2578 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2580) = |val|.
    DATA t2581 TYPE REF TO zcl_lnt_float_type.
    DATA t2582 TYPE REF TO zcl_lnt_abstract_type_data.
    t2581 = NEW zcl_lnt_float_type( i_input_967e = t2582 ).
    t2578 = t2576->set( p0 = t2580 p1 = t2581 ).
    t2572 = t2576.
    DATA t2585 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2586 TYPE REF TO zcl_lnt_float_type.
    DATA t2587 TYPE REF TO zcl_lnt_abstract_type_data.
    t2586 = NEW zcl_lnt_float_type( i_input_967e = t2587 ).
    t2585 = t2586.
    DATA t2588 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2590 TYPE REF TO zcl_lnt_abap_release.
    DATA t2592 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2594 TYPE REF TO zcl_lnt_built_in_method.
    t2563 = NEW zcl_lnt_ibuiltin_method( i_counter = t2564 i_mandatory = t2572 i_optional = t2588 i_release_7928 = t2590 i_predicate = t2592 i_return_fa63 = t2585 i_cache = t2594 ).
    CREATE OBJECT t2563->zlnt_view_ownkeys_b0e8086400eb.
    t2563->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2596 ).
    DATA t2597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2597 ).
    ENDIF.
    DATA t2598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2563->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2598 ).
    ENDIF.
    CREATE OBJECT t2563->zlnt_json_ownkeys_70e5fd461788.
    t2563->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2599) = |counter|.
    DATA t2600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2599 p1 = t2600 ).
    DATA(t2601) = |mandatory|.
    DATA t2602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2601 p1 = t2602 ).
    ENDIF.
    DATA(t2603) = |return|.
    DATA t2604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2603 p1 = t2604 ).
    ENDIF.
    t2560 = t7->set( p0 = t2562 p1 = t2563 ).
    DATA t2605 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2607) = |LOG10|.
    DATA t2608 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2609) = VALUE f( ).
    DATA(t2610) = VALUE f( ).
    DATA(t2611) = VALUE f( ).
    DATA(t2612) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2612 = zcl_lnt_built_in=>counter.
    t2611 = t2612.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2613 TYPE f.
    DATA(t2615) = CONV f( 1 ).
    t2613 = t2611 + t2615.
    zcl_lnt_built_in=>counter = t2613.
    t2610 = t2611.
    t2609 = t2610.
    DATA t2617 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2621 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2621 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2623 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2625) = |val|.
    DATA t2626 TYPE REF TO zcl_lnt_float_type.
    DATA t2627 TYPE REF TO zcl_lnt_abstract_type_data.
    t2626 = NEW zcl_lnt_float_type( i_input_967e = t2627 ).
    t2623 = t2621->set( p0 = t2625 p1 = t2626 ).
    t2617 = t2621.
    DATA t2630 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2631 TYPE REF TO zcl_lnt_float_type.
    DATA t2632 TYPE REF TO zcl_lnt_abstract_type_data.
    t2631 = NEW zcl_lnt_float_type( i_input_967e = t2632 ).
    t2630 = t2631.
    DATA t2633 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2635 TYPE REF TO zcl_lnt_abap_release.
    DATA t2637 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2639 TYPE REF TO zcl_lnt_built_in_method.
    t2608 = NEW zcl_lnt_ibuiltin_method( i_counter = t2609 i_mandatory = t2617 i_optional = t2633 i_release_7928 = t2635 i_predicate = t2637 i_return_fa63 = t2630 i_cache = t2639 ).
    CREATE OBJECT t2608->zlnt_view_ownkeys_b0e8086400eb.
    t2608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2641 ).
    DATA t2642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2642 ).
    ENDIF.
    DATA t2643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2643 ).
    ENDIF.
    CREATE OBJECT t2608->zlnt_json_ownkeys_70e5fd461788.
    t2608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2644) = |counter|.
    DATA t2645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2644 p1 = t2645 ).
    DATA(t2646) = |mandatory|.
    DATA t2647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2646 p1 = t2647 ).
    ENDIF.
    DATA(t2648) = |return|.
    DATA t2649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2648 p1 = t2649 ).
    ENDIF.
    t2605 = t7->set( p0 = t2607 p1 = t2608 ).
    DATA t2650 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2652) = |MATCH|.
    DATA t2653 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2654) = VALUE f( ).
    DATA(t2655) = VALUE f( ).
    DATA(t2656) = VALUE f( ).
    DATA(t2657) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2657 = zcl_lnt_built_in=>counter.
    t2656 = t2657.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2658 TYPE f.
    DATA(t2660) = CONV f( 1 ).
    t2658 = t2656 + t2660.
    zcl_lnt_built_in=>counter = t2658.
    t2655 = t2656.
    t2654 = t2655.
    DATA t2662 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2666 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2666 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2670) = |val|.
    DATA(t2671) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2668 = t2666->set( p0 = t2670 p1 = t2671 ).
    t2662 = t2666.
    DATA t2674 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2678 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2678 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2680 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2682) = |case|.
    DATA t2683 TYPE REF TO zcl_lnt_character_type.
    DATA(t2684) = CONV f( 1 ).
    DATA t2685 TYPE REF TO zcl_lnt_abstract_type_data.
    t2683 = NEW zcl_lnt_character_type( i_length = t2684 i_extra = t2685 ).
    t2680 = t2678->set( p0 = t2682 p1 = t2683 ).
    DATA t2686 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2688) = |regex|.
    DATA(t2689) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2686 = t2678->set( p0 = t2688 p1 = t2689 ).
    DATA t2690 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2692) = |pcre|.
    DATA(t2693) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2690 = t2678->set( p0 = t2692 p1 = t2693 ).
    DATA t2694 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2696) = |occ|.
    DATA t2697 TYPE REF TO zcl_lnt_integer_type.
    DATA t2698 TYPE REF TO zcl_lnt_abstract_type_data.
    t2697 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2698 ).
    t2694 = t2678->set( p0 = t2696 p1 = t2697 ).
    t2674 = t2678.
    DATA t2701 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2702 TYPE REF TO zcl_lnt_string_type.
    DATA t2703 TYPE REF TO zcl_lnt_abstract_type_data.
    t2702 = zcl_lnt_string_type=>get_db65( i_input_967e = t2703 ).
    t2701 = t2702.
    DATA t2704 TYPE REF TO zcl_lnt_abap_release.
    DATA t2708 TYPE REF TO zcl_lnt_abap_release.
    DATA t2709 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2709 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2710) = |v702|.
    t2708 = t2709->get( p0 = t2710 ).
    t2704 = t2708.
    DATA t2712 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2714 TYPE REF TO zcl_lnt_built_in_method.
    t2653 = NEW zcl_lnt_ibuiltin_method( i_counter = t2654 i_mandatory = t2662 i_optional = t2674 i_release_7928 = t2704 i_predicate = t2712 i_return_fa63 = t2701 i_cache = t2714 ).
    CREATE OBJECT t2653->zlnt_view_ownkeys_b0e8086400eb.
    t2653->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2653->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2716 ).
    DATA t2717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2653->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2717 ).
    ENDIF.
    DATA t2718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2653->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2718 ).
    ENDIF.
    DATA t2719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2653->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2719 ).
    ENDIF.
    DATA t2720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2653->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2720 ).
    ENDIF.
    CREATE OBJECT t2653->zlnt_json_ownkeys_70e5fd461788.
    t2653->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2721) = |counter|.
    DATA t2722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2721 p1 = t2722 ).
    DATA(t2723) = |mandatory|.
    DATA t2724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2723 p1 = t2724 ).
    ENDIF.
    DATA(t2725) = |optional|.
    DATA t2726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2725 p1 = t2726 ).
    ENDIF.
    DATA(t2727) = |return|.
    DATA t2728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2727 p1 = t2728 ).
    ENDIF.
    DATA(t2729) = |release|.
    DATA t2730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2729 p1 = t2730 ).
    ENDIF.
    t2650 = t7->set( p0 = t2652 p1 = t2653 ).
    DATA t2731 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2733) = |MATCHES|.
    DATA t2734 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2735) = VALUE f( ).
    DATA(t2736) = VALUE f( ).
    DATA(t2737) = VALUE f( ).
    DATA(t2738) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2738 = zcl_lnt_built_in=>counter.
    t2737 = t2738.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2739 TYPE f.
    DATA(t2741) = CONV f( 1 ).
    t2739 = t2737 + t2741.
    zcl_lnt_built_in=>counter = t2739.
    t2736 = t2737.
    t2735 = t2736.
    DATA t2743 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2747 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2749 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2751) = |val|.
    DATA(t2752) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2749 = t2747->set( p0 = t2751 p1 = t2752 ).
    t2743 = t2747.
    DATA t2755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2759 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2759 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2761 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2763) = |case|.
    DATA t2764 TYPE REF TO zcl_lnt_character_type.
    DATA(t2765) = CONV f( 1 ).
    DATA t2766 TYPE REF TO zcl_lnt_abstract_type_data.
    t2764 = NEW zcl_lnt_character_type( i_length = t2765 i_extra = t2766 ).
    t2761 = t2759->set( p0 = t2763 p1 = t2764 ).
    DATA t2767 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2769) = |regex|.
    DATA(t2770) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2767 = t2759->set( p0 = t2769 p1 = t2770 ).
    DATA t2771 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2773) = |pcre|.
    DATA(t2774) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t2771 = t2759->set( p0 = t2773 p1 = t2774 ).
    DATA t2775 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2777) = |off|.
    DATA t2778 TYPE REF TO zcl_lnt_integer_type.
    DATA t2779 TYPE REF TO zcl_lnt_abstract_type_data.
    t2778 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2779 ).
    t2775 = t2759->set( p0 = t2777 p1 = t2778 ).
    DATA t2780 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2782) = |len|.
    DATA t2783 TYPE REF TO zcl_lnt_integer_type.
    DATA t2784 TYPE REF TO zcl_lnt_abstract_type_data.
    t2783 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2784 ).
    t2780 = t2759->set( p0 = t2782 p1 = t2783 ).
    t2755 = t2759.
    DATA t2787 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2788 TYPE REF TO zcl_lnt_character_type.
    DATA(t2789) = CONV f( 1 ).
    DATA t2790 TYPE REF TO zcl_lnt_abstract_type_data.
    t2788 = NEW zcl_lnt_character_type( i_length = t2789 i_extra = t2790 ).
    t2787 = t2788.
    DATA t2791 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t2795) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2795->has = abap_true.
    t2795->value = abap_true.
    t2791 = t2795.
    DATA t2797 TYPE REF TO zcl_lnt_abap_release.
    DATA t2801 TYPE REF TO zcl_lnt_abap_release.
    DATA t2802 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2802 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2803) = |v702|.
    t2801 = t2802->get( p0 = t2803 ).
    t2797 = t2801.
    DATA t2805 TYPE REF TO zcl_lnt_built_in_method.
    t2734 = NEW zcl_lnt_ibuiltin_method( i_counter = t2735 i_mandatory = t2743 i_optional = t2755 i_release_7928 = t2797 i_predicate = t2791 i_return_fa63 = t2787 i_cache = t2805 ).
    CREATE OBJECT t2734->zlnt_view_ownkeys_b0e8086400eb.
    t2734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2807 ).
    DATA t2808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2808 ).
    ENDIF.
    DATA t2809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2809 ).
    ENDIF.
    DATA t2810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2810 ).
    ENDIF.
    DATA t2811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t2811 ).
    ENDIF.
    DATA t2812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2812 ).
    ENDIF.
    CREATE OBJECT t2734->zlnt_json_ownkeys_70e5fd461788.
    t2734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2813) = |counter|.
    DATA t2814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2813 p1 = t2814 ).
    DATA(t2815) = |mandatory|.
    DATA t2816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2815 p1 = t2816 ).
    ENDIF.
    DATA(t2817) = |optional|.
    DATA t2818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2817 p1 = t2818 ).
    ENDIF.
    DATA(t2819) = |return|.
    DATA t2820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2819 p1 = t2820 ).
    ENDIF.
    DATA(t2821) = |predicate|.
    DATA t2822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2821 p1 = t2822 ).
    ENDIF.
    DATA(t2823) = |release|.
    DATA t2824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2823 p1 = t2824 ).
    ENDIF.
    t2731 = t7->set( p0 = t2733 p1 = t2734 ).
    DATA t2825 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2827) = |NMAX|.
    DATA t2828 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2829) = VALUE f( ).
    DATA(t2830) = VALUE f( ).
    DATA(t2831) = VALUE f( ).
    DATA(t2832) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2832 = zcl_lnt_built_in=>counter.
    t2831 = t2832.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2833 TYPE f.
    DATA(t2835) = CONV f( 1 ).
    t2833 = t2831 + t2835.
    zcl_lnt_built_in=>counter = t2833.
    t2830 = t2831.
    t2829 = t2830.
    DATA t2837 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2841 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2841 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2843 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2845) = |val1|.
    DATA(t2846) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2843 = t2841->set( p0 = t2845 p1 = t2846 ).
    DATA t2847 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2849) = |val2|.
    DATA(t2850) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2847 = t2841->set( p0 = t2849 p1 = t2850 ).
    t2837 = t2841.
    DATA t2853 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2857 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2857 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2859 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2861) = |val3|.
    DATA(t2862) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2859 = t2857->set( p0 = t2861 p1 = t2862 ).
    DATA t2863 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2865) = |val4|.
    DATA(t2866) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2863 = t2857->set( p0 = t2865 p1 = t2866 ).
    DATA t2867 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2869) = |val5|.
    DATA(t2870) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2867 = t2857->set( p0 = t2869 p1 = t2870 ).
    DATA t2871 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2873) = |val6|.
    DATA(t2874) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2871 = t2857->set( p0 = t2873 p1 = t2874 ).
    DATA t2875 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2877) = |val7|.
    DATA(t2878) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2875 = t2857->set( p0 = t2877 p1 = t2878 ).
    DATA t2879 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2881) = |val8|.
    DATA(t2882) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2879 = t2857->set( p0 = t2881 p1 = t2882 ).
    DATA t2883 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2885) = |val9|.
    DATA(t2886) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2883 = t2857->set( p0 = t2885 p1 = t2886 ).
    t2853 = t2857.
    DATA t2889 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2890 TYPE REF TO zcl_lnt_integer_type.
    DATA t2891 TYPE REF TO zcl_lnt_abstract_type_data.
    t2890 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2891 ).
    t2889 = t2890.
    DATA t2892 TYPE REF TO zcl_lnt_abap_release.
    DATA t2896 TYPE REF TO zcl_lnt_abap_release.
    DATA t2897 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2897 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2898) = |v702|.
    t2896 = t2897->get( p0 = t2898 ).
    t2892 = t2896.
    DATA t2900 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2902 TYPE REF TO zcl_lnt_built_in_method.
    t2828 = NEW zcl_lnt_ibuiltin_method( i_counter = t2829 i_mandatory = t2837 i_optional = t2853 i_release_7928 = t2892 i_predicate = t2900 i_return_fa63 = t2889 i_cache = t2902 ).
    CREATE OBJECT t2828->zlnt_view_ownkeys_b0e8086400eb.
    t2828->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2828->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2904 ).
    DATA t2905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2828->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2905 ).
    ENDIF.
    DATA t2906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2828->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t2906 ).
    ENDIF.
    DATA t2907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2828->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t2907 ).
    ENDIF.
    DATA t2908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2828->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t2908 ).
    ENDIF.
    CREATE OBJECT t2828->zlnt_json_ownkeys_70e5fd461788.
    t2828->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2909) = |counter|.
    DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2909 p1 = t2910 ).
    DATA(t2911) = |mandatory|.
    DATA t2912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2911 p1 = t2912 ).
    ENDIF.
    DATA(t2913) = |optional|.
    DATA t2914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2913 p1 = t2914 ).
    ENDIF.
    DATA(t2915) = |return|.
    DATA t2916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2915 p1 = t2916 ).
    ENDIF.
    DATA(t2917) = |release|.
    DATA t2918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2917 p1 = t2918 ).
    ENDIF.
    t2825 = t7->set( p0 = t2827 p1 = t2828 ).
    DATA t2919 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t2921) = |NMIN|.
    DATA t2922 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2923) = VALUE f( ).
    DATA(t2924) = VALUE f( ).
    DATA(t2925) = VALUE f( ).
    DATA(t2926) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2926 = zcl_lnt_built_in=>counter.
    t2925 = t2926.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t2927 TYPE f.
    DATA(t2929) = CONV f( 1 ).
    t2927 = t2925 + t2929.
    zcl_lnt_built_in=>counter = t2927.
    t2924 = t2925.
    t2923 = t2924.
    DATA t2931 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2935 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2935 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2937 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2939) = |val1|.
    DATA(t2940) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2937 = t2935->set( p0 = t2939 p1 = t2940 ).
    DATA t2941 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2943) = |val2|.
    DATA(t2944) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2941 = t2935->set( p0 = t2943 p1 = t2944 ).
    t2931 = t2935.
    DATA t2947 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2951 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2951 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2953 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2955) = |val3|.
    DATA(t2956) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2953 = t2951->set( p0 = t2955 p1 = t2956 ).
    DATA t2957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2959) = |val4|.
    DATA(t2960) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2957 = t2951->set( p0 = t2959 p1 = t2960 ).
    DATA t2961 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2963) = |val5|.
    DATA(t2964) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2961 = t2951->set( p0 = t2963 p1 = t2964 ).
    DATA t2965 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2967) = |val6|.
    DATA(t2968) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2965 = t2951->set( p0 = t2967 p1 = t2968 ).
    DATA t2969 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2971) = |val7|.
    DATA(t2972) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2969 = t2951->set( p0 = t2971 p1 = t2972 ).
    DATA t2973 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2975) = |val8|.
    DATA(t2976) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2973 = t2951->set( p0 = t2975 p1 = t2976 ).
    DATA t2977 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t2979) = |val9|.
    DATA(t2980) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t2977 = t2951->set( p0 = t2979 p1 = t2980 ).
    t2947 = t2951.
    DATA t2983 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2984 TYPE REF TO zcl_lnt_integer_type.
    DATA t2985 TYPE REF TO zcl_lnt_abstract_type_data.
    t2984 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2985 ).
    t2983 = t2984.
    DATA t2986 TYPE REF TO zcl_lnt_abap_release.
    DATA t2990 TYPE REF TO zcl_lnt_abap_release.
    DATA t2991 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2991 = zcl_lnt_version_module=>release_b8cd.
    DATA(t2992) = |v702|.
    t2990 = t2991->get( p0 = t2992 ).
    t2986 = t2990.
    DATA t2994 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2996 TYPE REF TO zcl_lnt_built_in_method.
    t2922 = NEW zcl_lnt_ibuiltin_method( i_counter = t2923 i_mandatory = t2931 i_optional = t2947 i_release_7928 = t2986 i_predicate = t2994 i_return_fa63 = t2983 i_cache = t2996 ).
    CREATE OBJECT t2922->zlnt_view_ownkeys_b0e8086400eb.
    t2922->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t2998 ).
    DATA t2999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t2999 ).
    ENDIF.
    DATA t3000 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3000 ).
    ENDIF.
    DATA t3001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3001 ).
    ENDIF.
    DATA t3002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3002 ).
    ENDIF.
    CREATE OBJECT t2922->zlnt_json_ownkeys_70e5fd461788.
    t2922->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3003) = |counter|.
    DATA t3004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3003 p1 = t3004 ).
    DATA(t3005) = |mandatory|.
    DATA t3006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3005 p1 = t3006 ).
    ENDIF.
    DATA(t3007) = |optional|.
    DATA t3008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3007 p1 = t3008 ).
    ENDIF.
    DATA(t3009) = |return|.
    DATA t3010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3009 p1 = t3010 ).
    ENDIF.
    DATA(t3011) = |release|.
    DATA t3012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3011 p1 = t3012 ).
    ENDIF.
    t2919 = t7->set( p0 = t2921 p1 = t2922 ).
    DATA t3013 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3015) = |NUMOFCHAR|.
    DATA t3016 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3017) = VALUE f( ).
    DATA(t3018) = VALUE f( ).
    DATA(t3019) = VALUE f( ).
    DATA(t3020) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3020 = zcl_lnt_built_in=>counter.
    t3019 = t3020.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3021 TYPE f.
    DATA(t3023) = CONV f( 1 ).
    t3021 = t3019 + t3023.
    zcl_lnt_built_in=>counter = t3021.
    t3018 = t3019.
    t3017 = t3018.
    DATA t3025 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3029 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3029 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3031 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3033) = |val|.
    DATA(t3034) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3031 = t3029->set( p0 = t3033 p1 = t3034 ).
    t3025 = t3029.
    DATA t3037 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3038 TYPE REF TO zcl_lnt_integer_type.
    DATA t3039 TYPE REF TO zcl_lnt_abstract_type_data.
    t3038 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3039 ).
    t3037 = t3038.
    DATA t3040 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3042 TYPE REF TO zcl_lnt_abap_release.
    DATA t3044 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3046 TYPE REF TO zcl_lnt_built_in_method.
    t3016 = NEW zcl_lnt_ibuiltin_method( i_counter = t3017 i_mandatory = t3025 i_optional = t3040 i_release_7928 = t3042 i_predicate = t3044 i_return_fa63 = t3037 i_cache = t3046 ).
    CREATE OBJECT t3016->zlnt_view_ownkeys_b0e8086400eb.
    t3016->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3016->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3048 ).
    DATA t3049 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3016->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3049 ).
    ENDIF.
    DATA t3050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3016->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3050 ).
    ENDIF.
    CREATE OBJECT t3016->zlnt_json_ownkeys_70e5fd461788.
    t3016->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3051) = |counter|.
    DATA t3052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3051 p1 = t3052 ).
    DATA(t3053) = |mandatory|.
    DATA t3054 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3053 p1 = t3054 ).
    ENDIF.
    DATA(t3055) = |return|.
    DATA t3056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3055 p1 = t3056 ).
    ENDIF.
    t3013 = t7->set( p0 = t3015 p1 = t3016 ).
    DATA t3057 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3059) = |REPEAT|.
    DATA t3060 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3061) = VALUE f( ).
    DATA(t3062) = VALUE f( ).
    DATA(t3063) = VALUE f( ).
    DATA(t3064) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3064 = zcl_lnt_built_in=>counter.
    t3063 = t3064.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3065 TYPE f.
    DATA(t3067) = CONV f( 1 ).
    t3065 = t3063 + t3067.
    zcl_lnt_built_in=>counter = t3065.
    t3062 = t3063.
    t3061 = t3062.
    DATA t3069 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3073 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3073 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3075 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3077) = |val|.
    DATA(t3078) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3075 = t3073->set( p0 = t3077 p1 = t3078 ).
    DATA t3079 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3081) = |occ|.
    DATA(t3082) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
    t3079 = t3073->set( p0 = t3081 p1 = t3082 ).
    t3069 = t3073.
    DATA t3085 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3086 TYPE REF TO zcl_lnt_string_type.
    DATA t3087 TYPE REF TO zcl_lnt_abstract_type_data.
    t3086 = zcl_lnt_string_type=>get_db65( i_input_967e = t3087 ).
    t3085 = t3086.
    DATA t3088 TYPE REF TO zcl_lnt_abap_release.
    DATA t3092 TYPE REF TO zcl_lnt_abap_release.
    DATA t3093 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3093 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3094) = |v702|.
    t3092 = t3093->get( p0 = t3094 ).
    t3088 = t3092.
    DATA t3096 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3098 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3100 TYPE REF TO zcl_lnt_built_in_method.
    t3060 = NEW zcl_lnt_ibuiltin_method( i_counter = t3061 i_mandatory = t3069 i_optional = t3096 i_release_7928 = t3088 i_predicate = t3098 i_return_fa63 = t3085 i_cache = t3100 ).
    CREATE OBJECT t3060->zlnt_view_ownkeys_b0e8086400eb.
    t3060->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3060->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3102 ).
    DATA t3103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3060->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3103 ).
    ENDIF.
    DATA t3104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3060->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3104 ).
    ENDIF.
    DATA t3105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3060->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3105 ).
    ENDIF.
    CREATE OBJECT t3060->zlnt_json_ownkeys_70e5fd461788.
    t3060->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3106) = |counter|.
    DATA t3107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3106 p1 = t3107 ).
    DATA(t3108) = |mandatory|.
    DATA t3109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3108 p1 = t3109 ).
    ENDIF.
    DATA(t3110) = |return|.
    DATA t3111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3110 p1 = t3111 ).
    ENDIF.
    DATA(t3112) = |release|.
    DATA t3113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3112 p1 = t3113 ).
    ENDIF.
    t3057 = t7->set( p0 = t3059 p1 = t3060 ).
    DATA t3114 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3116) = |REPLACE|.
    DATA t3117 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3118) = VALUE f( ).
    DATA(t3119) = VALUE f( ).
    DATA(t3120) = VALUE f( ).
    DATA(t3121) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3121 = zcl_lnt_built_in=>counter.
    t3120 = t3121.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3122 TYPE f.
    DATA(t3124) = CONV f( 1 ).
    t3122 = t3120 + t3124.
    zcl_lnt_built_in=>counter = t3122.
    t3119 = t3120.
    t3118 = t3119.
    DATA t3126 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3130 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3130 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3132 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3134) = |val|.
    DATA(t3135) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3132 = t3130->set( p0 = t3134 p1 = t3135 ).
    DATA t3136 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3138) = |with|.
    DATA(t3139) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3136 = t3130->set( p0 = t3138 p1 = t3139 ).
    t3126 = t3130.
    DATA t3142 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3146 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3146 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3148 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3150) = |sub|.
    DATA(t3151) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3148 = t3146->set( p0 = t3150 p1 = t3151 ).
    DATA t3152 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3154) = |regex|.
    DATA(t3155) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3152 = t3146->set( p0 = t3154 p1 = t3155 ).
    DATA t3156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3158) = |pcre|.
    DATA(t3159) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3156 = t3146->set( p0 = t3158 p1 = t3159 ).
    DATA t3160 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3162) = |case|.
    DATA t3163 TYPE REF TO zcl_lnt_character_type.
    DATA(t3164) = CONV f( 1 ).
    DATA t3165 TYPE REF TO zcl_lnt_abstract_type_data.
    t3163 = NEW zcl_lnt_character_type( i_length = t3164 i_extra = t3165 ).
    t3160 = t3146->set( p0 = t3162 p1 = t3163 ).
    DATA t3166 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3168) = |off|.
    DATA t3169 TYPE REF TO zcl_lnt_integer_type.
    DATA t3170 TYPE REF TO zcl_lnt_abstract_type_data.
    t3169 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3170 ).
    t3166 = t3146->set( p0 = t3168 p1 = t3169 ).
    DATA t3171 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3173) = |len|.
    DATA t3174 TYPE REF TO zcl_lnt_integer_type.
    DATA t3175 TYPE REF TO zcl_lnt_abstract_type_data.
    t3174 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3175 ).
    t3171 = t3146->set( p0 = t3173 p1 = t3174 ).
    DATA t3176 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3178) = |occ|.
    DATA t3179 TYPE REF TO zcl_lnt_integer_type.
    DATA t3180 TYPE REF TO zcl_lnt_abstract_type_data.
    t3179 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3180 ).
    t3176 = t3146->set( p0 = t3178 p1 = t3179 ).
    t3142 = t3146.
    DATA t3183 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3184 TYPE REF TO zcl_lnt_string_type.
    DATA t3185 TYPE REF TO zcl_lnt_abstract_type_data.
    t3184 = zcl_lnt_string_type=>get_db65( i_input_967e = t3185 ).
    t3183 = t3184.
    DATA t3186 TYPE REF TO zcl_lnt_abap_release.
    DATA t3190 TYPE REF TO zcl_lnt_abap_release.
    DATA t3191 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3191 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3192) = |v702|.
    t3190 = t3191->get( p0 = t3192 ).
    t3186 = t3190.
    DATA t3194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3196 TYPE REF TO zcl_lnt_built_in_method.
    t3117 = NEW zcl_lnt_ibuiltin_method( i_counter = t3118 i_mandatory = t3126 i_optional = t3142 i_release_7928 = t3186 i_predicate = t3194 i_return_fa63 = t3183 i_cache = t3196 ).
    CREATE OBJECT t3117->zlnt_view_ownkeys_b0e8086400eb.
    t3117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3198 ).
    DATA t3199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3199 ).
    ENDIF.
    DATA t3200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3200 ).
    ENDIF.
    DATA t3201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3201 ).
    ENDIF.
    DATA t3202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3202 ).
    ENDIF.
    CREATE OBJECT t3117->zlnt_json_ownkeys_70e5fd461788.
    t3117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3203) = |counter|.
    DATA t3204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3203 p1 = t3204 ).
    DATA(t3205) = |mandatory|.
    DATA t3206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3205 p1 = t3206 ).
    ENDIF.
    DATA(t3207) = |optional|.
    DATA t3208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3207 p1 = t3208 ).
    ENDIF.
    DATA(t3209) = |return|.
    DATA t3210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3209 p1 = t3210 ).
    ENDIF.
    DATA(t3211) = |release|.
    DATA t3212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3211 p1 = t3212 ).
    ENDIF.
    t3114 = t7->set( p0 = t3116 p1 = t3117 ).
    DATA t3213 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3215) = |RESCALE|.
    DATA t3216 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3217) = VALUE f( ).
    DATA(t3218) = VALUE f( ).
    DATA(t3219) = VALUE f( ).
    DATA(t3220) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3220 = zcl_lnt_built_in=>counter.
    t3219 = t3220.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3221 TYPE f.
    DATA(t3223) = CONV f( 1 ).
    t3221 = t3219 + t3223.
    zcl_lnt_built_in=>counter = t3221.
    t3218 = t3219.
    t3217 = t3218.
    DATA t3225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3229 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3229 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3233) = |val|.
    DATA t3234 TYPE REF TO zcl_lnt_float_type.
    DATA t3235 TYPE REF TO zcl_lnt_abstract_type_data.
    t3234 = NEW zcl_lnt_float_type( i_input_967e = t3235 ).
    t3231 = t3229->set( p0 = t3233 p1 = t3234 ).
    t3225 = t3229.
    DATA t3238 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3242 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3242 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3244 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3246) = |dec|.
    DATA t3247 TYPE REF TO zcl_lnt_integer_type.
    DATA t3248 TYPE REF TO zcl_lnt_abstract_type_data.
    t3247 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3248 ).
    t3244 = t3242->set( p0 = t3246 p1 = t3247 ).
    DATA t3249 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3251) = |prec|.
    DATA t3252 TYPE REF TO zcl_lnt_integer_type.
    DATA t3253 TYPE REF TO zcl_lnt_abstract_type_data.
    t3252 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3253 ).
    t3249 = t3242->set( p0 = t3251 p1 = t3252 ).
    DATA t3254 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3256) = |mode|.
    DATA t3257 TYPE REF TO zcl_lnt_integer_type.
    DATA t3258 TYPE REF TO zcl_lnt_abstract_type_data.
    t3257 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3258 ).
    t3254 = t3242->set( p0 = t3256 p1 = t3257 ).
    t3238 = t3242.
    DATA t3261 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3262 TYPE REF TO zcl_lnt_float_type.
    DATA t3263 TYPE REF TO zcl_lnt_abstract_type_data.
    t3262 = NEW zcl_lnt_float_type( i_input_967e = t3263 ).
    t3261 = t3262.
    DATA t3264 TYPE REF TO zcl_lnt_abap_release.
    DATA t3268 TYPE REF TO zcl_lnt_abap_release.
    DATA t3269 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3269 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3270) = |v702|.
    t3268 = t3269->get( p0 = t3270 ).
    t3264 = t3268.
    DATA t3272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3274 TYPE REF TO zcl_lnt_built_in_method.
    t3216 = NEW zcl_lnt_ibuiltin_method( i_counter = t3217 i_mandatory = t3225 i_optional = t3238 i_release_7928 = t3264 i_predicate = t3272 i_return_fa63 = t3261 i_cache = t3274 ).
    CREATE OBJECT t3216->zlnt_view_ownkeys_b0e8086400eb.
    t3216->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3276 ).
    DATA t3277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3277 ).
    ENDIF.
    DATA t3278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3278 ).
    ENDIF.
    DATA t3279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3279 ).
    ENDIF.
    DATA t3280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3280 ).
    ENDIF.
    CREATE OBJECT t3216->zlnt_json_ownkeys_70e5fd461788.
    t3216->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3281) = |counter|.
    DATA t3282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3281 p1 = t3282 ).
    DATA(t3283) = |mandatory|.
    DATA t3284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3283 p1 = t3284 ).
    ENDIF.
    DATA(t3285) = |optional|.
    DATA t3286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3285 p1 = t3286 ).
    ENDIF.
    DATA(t3287) = |return|.
    DATA t3288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3287 p1 = t3288 ).
    ENDIF.
    DATA(t3289) = |release|.
    DATA t3290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3289 p1 = t3290 ).
    ENDIF.
    t3213 = t7->set( p0 = t3215 p1 = t3216 ).
    DATA t3291 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3293) = |REVERSE|.
    DATA t3294 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3295) = VALUE f( ).
    DATA(t3296) = VALUE f( ).
    DATA(t3297) = VALUE f( ).
    DATA(t3298) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3298 = zcl_lnt_built_in=>counter.
    t3297 = t3298.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3299 TYPE f.
    DATA(t3301) = CONV f( 1 ).
    t3299 = t3297 + t3301.
    zcl_lnt_built_in=>counter = t3299.
    t3296 = t3297.
    t3295 = t3296.
    DATA t3303 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3307 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3307 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3309 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3311) = |val|.
    DATA(t3312) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3309 = t3307->set( p0 = t3311 p1 = t3312 ).
    t3303 = t3307.
    DATA t3315 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3316 TYPE REF TO zcl_lnt_string_type.
    DATA t3317 TYPE REF TO zcl_lnt_abstract_type_data.
    t3316 = zcl_lnt_string_type=>get_db65( i_input_967e = t3317 ).
    t3315 = t3316.
    DATA t3318 TYPE REF TO zcl_lnt_abap_release.
    DATA t3322 TYPE REF TO zcl_lnt_abap_release.
    DATA t3323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3323 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3324) = |v702|.
    t3322 = t3323->get( p0 = t3324 ).
    t3318 = t3322.
    DATA t3326 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3328 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3330 TYPE REF TO zcl_lnt_built_in_method.
    t3294 = NEW zcl_lnt_ibuiltin_method( i_counter = t3295 i_mandatory = t3303 i_optional = t3326 i_release_7928 = t3318 i_predicate = t3328 i_return_fa63 = t3315 i_cache = t3330 ).
    CREATE OBJECT t3294->zlnt_view_ownkeys_b0e8086400eb.
    t3294->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3332 ).
    DATA t3333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3333 ).
    ENDIF.
    DATA t3334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3334 ).
    ENDIF.
    DATA t3335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3335 ).
    ENDIF.
    CREATE OBJECT t3294->zlnt_json_ownkeys_70e5fd461788.
    t3294->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3336) = |counter|.
    DATA t3337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3336 p1 = t3337 ).
    DATA(t3338) = |mandatory|.
    DATA t3339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3338 p1 = t3339 ).
    ENDIF.
    DATA(t3340) = |return|.
    DATA t3341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3340 p1 = t3341 ).
    ENDIF.
    DATA(t3342) = |release|.
    DATA t3343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3342 p1 = t3343 ).
    ENDIF.
    t3291 = t7->set( p0 = t3293 p1 = t3294 ).
    DATA t3344 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3346) = |ROUND|.
    DATA t3347 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3348) = VALUE f( ).
    DATA(t3349) = VALUE f( ).
    DATA(t3350) = VALUE f( ).
    DATA(t3351) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3351 = zcl_lnt_built_in=>counter.
    t3350 = t3351.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3352 TYPE f.
    DATA(t3354) = CONV f( 1 ).
    t3352 = t3350 + t3354.
    zcl_lnt_built_in=>counter = t3352.
    t3349 = t3350.
    t3348 = t3349.
    DATA t3356 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3360 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3364) = |val|.
    DATA t3365 TYPE REF TO zcl_lnt_float_type.
    DATA t3366 TYPE REF TO zcl_lnt_abstract_type_data.
    t3365 = NEW zcl_lnt_float_type( i_input_967e = t3366 ).
    t3362 = t3360->set( p0 = t3364 p1 = t3365 ).
    t3356 = t3360.
    DATA t3369 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3373 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3373 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3377) = |dec|.
    DATA t3378 TYPE REF TO zcl_lnt_integer_type.
    DATA t3379 TYPE REF TO zcl_lnt_abstract_type_data.
    t3378 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3379 ).
    t3375 = t3373->set( p0 = t3377 p1 = t3378 ).
    DATA t3380 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3382) = |prec|.
    DATA t3383 TYPE REF TO zcl_lnt_integer_type.
    DATA t3384 TYPE REF TO zcl_lnt_abstract_type_data.
    t3383 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3384 ).
    t3380 = t3373->set( p0 = t3382 p1 = t3383 ).
    DATA t3385 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3387) = |mode|.
    DATA t3388 TYPE REF TO zcl_lnt_integer_type.
    DATA t3389 TYPE REF TO zcl_lnt_abstract_type_data.
    t3388 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3389 ).
    t3385 = t3373->set( p0 = t3387 p1 = t3388 ).
    t3369 = t3373.
    DATA t3392 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3393 TYPE REF TO zcl_lnt_integer_type.
    DATA t3394 TYPE REF TO zcl_lnt_abstract_type_data.
    t3393 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3394 ).
    t3392 = t3393.
    DATA t3395 TYPE REF TO zcl_lnt_abap_release.
    DATA t3399 TYPE REF TO zcl_lnt_abap_release.
    DATA t3400 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3400 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3401) = |v702|.
    t3399 = t3400->get( p0 = t3401 ).
    t3395 = t3399.
    DATA t3403 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3405 TYPE REF TO zcl_lnt_built_in_method.
    t3347 = NEW zcl_lnt_ibuiltin_method( i_counter = t3348 i_mandatory = t3356 i_optional = t3369 i_release_7928 = t3395 i_predicate = t3403 i_return_fa63 = t3392 i_cache = t3405 ).
    CREATE OBJECT t3347->zlnt_view_ownkeys_b0e8086400eb.
    t3347->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3347->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3407 ).
    DATA t3408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3347->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3408 ).
    ENDIF.
    DATA t3409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3347->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3409 ).
    ENDIF.
    DATA t3410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3347->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3410 ).
    ENDIF.
    DATA t3411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3347->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3411 ).
    ENDIF.
    CREATE OBJECT t3347->zlnt_json_ownkeys_70e5fd461788.
    t3347->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3412) = |counter|.
    DATA t3413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3412 p1 = t3413 ).
    DATA(t3414) = |mandatory|.
    DATA t3415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3414 p1 = t3415 ).
    ENDIF.
    DATA(t3416) = |optional|.
    DATA t3417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3416 p1 = t3417 ).
    ENDIF.
    DATA(t3418) = |return|.
    DATA t3419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3418 p1 = t3419 ).
    ENDIF.
    DATA(t3420) = |release|.
    DATA t3421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3420 p1 = t3421 ).
    ENDIF.
    t3344 = t7->set( p0 = t3346 p1 = t3347 ).
    DATA t3422 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3424) = |SEGMENT|.
    DATA t3425 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3426) = VALUE f( ).
    DATA(t3427) = VALUE f( ).
    DATA(t3428) = VALUE f( ).
    DATA(t3429) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3429 = zcl_lnt_built_in=>counter.
    t3428 = t3429.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3430 TYPE f.
    DATA(t3432) = CONV f( 1 ).
    t3430 = t3428 + t3432.
    zcl_lnt_built_in=>counter = t3430.
    t3427 = t3428.
    t3426 = t3427.
    DATA t3434 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3438 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3438 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3442) = |val|.
    DATA(t3443) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3440 = t3438->set( p0 = t3442 p1 = t3443 ).
    DATA t3444 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3446) = |index|.
    DATA t3447 TYPE REF TO zcl_lnt_integer_type.
    DATA t3448 TYPE REF TO zcl_lnt_abstract_type_data.
    t3447 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3448 ).
    t3444 = t3438->set( p0 = t3446 p1 = t3447 ).
    t3434 = t3438.
    DATA t3451 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3455 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3455 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3457 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3459) = |sep|.
    DATA(t3460) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3457 = t3455->set( p0 = t3459 p1 = t3460 ).
    DATA t3461 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3463) = |space|.
    DATA(t3464) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3461 = t3455->set( p0 = t3463 p1 = t3464 ).
    t3451 = t3455.
    DATA t3467 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3468 TYPE REF TO zcl_lnt_string_type.
    DATA t3469 TYPE REF TO zcl_lnt_abstract_type_data.
    t3468 = zcl_lnt_string_type=>get_db65( i_input_967e = t3469 ).
    t3467 = t3468.
    DATA t3470 TYPE REF TO zcl_lnt_abap_release.
    DATA t3474 TYPE REF TO zcl_lnt_abap_release.
    DATA t3475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3475 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3476) = |v702|.
    t3474 = t3475->get( p0 = t3476 ).
    t3470 = t3474.
    DATA t3478 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3480 TYPE REF TO zcl_lnt_built_in_method.
    t3425 = NEW zcl_lnt_ibuiltin_method( i_counter = t3426 i_mandatory = t3434 i_optional = t3451 i_release_7928 = t3470 i_predicate = t3478 i_return_fa63 = t3467 i_cache = t3480 ).
    CREATE OBJECT t3425->zlnt_view_ownkeys_b0e8086400eb.
    t3425->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3482 ).
    DATA t3483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3483 ).
    ENDIF.
    DATA t3484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3484 ).
    ENDIF.
    DATA t3485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3485 ).
    ENDIF.
    DATA t3486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3486 ).
    ENDIF.
    CREATE OBJECT t3425->zlnt_json_ownkeys_70e5fd461788.
    t3425->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3487) = |counter|.
    DATA t3488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3487 p1 = t3488 ).
    DATA(t3489) = |mandatory|.
    DATA t3490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3489 p1 = t3490 ).
    ENDIF.
    DATA(t3491) = |optional|.
    DATA t3492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3491 p1 = t3492 ).
    ENDIF.
    DATA(t3493) = |return|.
    DATA t3494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3493 p1 = t3494 ).
    ENDIF.
    DATA(t3495) = |release|.
    DATA t3496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3495 p1 = t3496 ).
    ENDIF.
    t3422 = t7->set( p0 = t3424 p1 = t3425 ).
    DATA t3497 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3499) = |SHIFT_LEFT|.
    DATA t3500 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3501) = VALUE f( ).
    DATA(t3502) = VALUE f( ).
    DATA(t3503) = VALUE f( ).
    DATA(t3504) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3504 = zcl_lnt_built_in=>counter.
    t3503 = t3504.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3505 TYPE f.
    DATA(t3507) = CONV f( 1 ).
    t3505 = t3503 + t3507.
    zcl_lnt_built_in=>counter = t3505.
    t3502 = t3503.
    t3501 = t3502.
    DATA t3509 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3513 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3513 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3515 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3517) = |val|.
    DATA(t3518) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3515 = t3513->set( p0 = t3517 p1 = t3518 ).
    t3509 = t3513.
    DATA t3521 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3525 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3525 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3527 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3529) = |sub|.
    DATA(t3530) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3527 = t3525->set( p0 = t3529 p1 = t3530 ).
    DATA t3531 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3533) = |places|.
    DATA t3534 TYPE REF TO zcl_lnt_integer_type.
    DATA t3535 TYPE REF TO zcl_lnt_abstract_type_data.
    t3534 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3535 ).
    t3531 = t3525->set( p0 = t3533 p1 = t3534 ).
    DATA t3536 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3538) = |circular|.
    DATA t3539 TYPE REF TO zcl_lnt_integer_type.
    DATA t3540 TYPE REF TO zcl_lnt_abstract_type_data.
    t3539 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3540 ).
    t3536 = t3525->set( p0 = t3538 p1 = t3539 ).
    t3521 = t3525.
    DATA t3543 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3544 TYPE REF TO zcl_lnt_string_type.
    DATA t3545 TYPE REF TO zcl_lnt_abstract_type_data.
    t3544 = zcl_lnt_string_type=>get_db65( i_input_967e = t3545 ).
    t3543 = t3544.
    DATA t3546 TYPE REF TO zcl_lnt_abap_release.
    DATA t3550 TYPE REF TO zcl_lnt_abap_release.
    DATA t3551 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3551 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3552) = |v702|.
    t3550 = t3551->get( p0 = t3552 ).
    t3546 = t3550.
    DATA t3554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3556 TYPE REF TO zcl_lnt_built_in_method.
    t3500 = NEW zcl_lnt_ibuiltin_method( i_counter = t3501 i_mandatory = t3509 i_optional = t3521 i_release_7928 = t3546 i_predicate = t3554 i_return_fa63 = t3543 i_cache = t3556 ).
    CREATE OBJECT t3500->zlnt_view_ownkeys_b0e8086400eb.
    t3500->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3558 ).
    DATA t3559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3559 ).
    ENDIF.
    DATA t3560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3560 ).
    ENDIF.
    DATA t3561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3561 ).
    ENDIF.
    DATA t3562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3500->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3562 ).
    ENDIF.
    CREATE OBJECT t3500->zlnt_json_ownkeys_70e5fd461788.
    t3500->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3563) = |counter|.
    DATA t3564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3563 p1 = t3564 ).
    DATA(t3565) = |mandatory|.
    DATA t3566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3565 p1 = t3566 ).
    ENDIF.
    DATA(t3567) = |optional|.
    DATA t3568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3567 p1 = t3568 ).
    ENDIF.
    DATA(t3569) = |return|.
    DATA t3570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3569 p1 = t3570 ).
    ENDIF.
    DATA(t3571) = |release|.
    DATA t3572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3571 p1 = t3572 ).
    ENDIF.
    t3497 = t7->set( p0 = t3499 p1 = t3500 ).
    DATA t3573 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3575) = |SHIFT_RIGHT|.
    DATA t3576 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3577) = VALUE f( ).
    DATA(t3578) = VALUE f( ).
    DATA(t3579) = VALUE f( ).
    DATA(t3580) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3580 = zcl_lnt_built_in=>counter.
    t3579 = t3580.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3581 TYPE f.
    DATA(t3583) = CONV f( 1 ).
    t3581 = t3579 + t3583.
    zcl_lnt_built_in=>counter = t3581.
    t3578 = t3579.
    t3577 = t3578.
    DATA t3585 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3589 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3589 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3591 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3593) = |val|.
    DATA(t3594) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3591 = t3589->set( p0 = t3593 p1 = t3594 ).
    t3585 = t3589.
    DATA t3597 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3601 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3601 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3603 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3605) = |sub|.
    DATA(t3606) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3603 = t3601->set( p0 = t3605 p1 = t3606 ).
    DATA t3607 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3609) = |places|.
    DATA t3610 TYPE REF TO zcl_lnt_integer_type.
    DATA t3611 TYPE REF TO zcl_lnt_abstract_type_data.
    t3610 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3611 ).
    t3607 = t3601->set( p0 = t3609 p1 = t3610 ).
    DATA t3612 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3614) = |circular|.
    DATA t3615 TYPE REF TO zcl_lnt_integer_type.
    DATA t3616 TYPE REF TO zcl_lnt_abstract_type_data.
    t3615 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3616 ).
    t3612 = t3601->set( p0 = t3614 p1 = t3615 ).
    t3597 = t3601.
    DATA t3619 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3620 TYPE REF TO zcl_lnt_string_type.
    DATA t3621 TYPE REF TO zcl_lnt_abstract_type_data.
    t3620 = zcl_lnt_string_type=>get_db65( i_input_967e = t3621 ).
    t3619 = t3620.
    DATA t3622 TYPE REF TO zcl_lnt_abap_release.
    DATA t3626 TYPE REF TO zcl_lnt_abap_release.
    DATA t3627 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3627 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3628) = |v702|.
    t3626 = t3627->get( p0 = t3628 ).
    t3622 = t3626.
    DATA t3630 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3632 TYPE REF TO zcl_lnt_built_in_method.
    t3576 = NEW zcl_lnt_ibuiltin_method( i_counter = t3577 i_mandatory = t3585 i_optional = t3597 i_release_7928 = t3622 i_predicate = t3630 i_return_fa63 = t3619 i_cache = t3632 ).
    CREATE OBJECT t3576->zlnt_view_ownkeys_b0e8086400eb.
    t3576->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3576->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3634 ).
    DATA t3635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3576->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3635 ).
    ENDIF.
    DATA t3636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3576->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3636 ).
    ENDIF.
    DATA t3637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3576->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3637 ).
    ENDIF.
    DATA t3638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3576->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3638 ).
    ENDIF.
    CREATE OBJECT t3576->zlnt_json_ownkeys_70e5fd461788.
    t3576->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3639) = |counter|.
    DATA t3640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3639 p1 = t3640 ).
    DATA(t3641) = |mandatory|.
    DATA t3642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3641 p1 = t3642 ).
    ENDIF.
    DATA(t3643) = |optional|.
    DATA t3644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3643 p1 = t3644 ).
    ENDIF.
    DATA(t3645) = |return|.
    DATA t3646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3645 p1 = t3646 ).
    ENDIF.
    DATA(t3647) = |release|.
    DATA t3648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3647 p1 = t3648 ).
    ENDIF.
    t3573 = t7->set( p0 = t3575 p1 = t3576 ).
    DATA t3649 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3651) = |SIGN|.
    DATA t3652 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3653) = VALUE f( ).
    DATA(t3654) = VALUE f( ).
    DATA(t3655) = VALUE f( ).
    DATA(t3656) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3656 = zcl_lnt_built_in=>counter.
    t3655 = t3656.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3657 TYPE f.
    DATA(t3659) = CONV f( 1 ).
    t3657 = t3655 + t3659.
    zcl_lnt_built_in=>counter = t3657.
    t3654 = t3655.
    t3653 = t3654.
    DATA t3661 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3665 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3665 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3667 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3669) = |val|.
    DATA t3670 TYPE REF TO zcl_lnt_float_type.
    DATA t3671 TYPE REF TO zcl_lnt_abstract_type_data.
    t3670 = NEW zcl_lnt_float_type( i_input_967e = t3671 ).
    t3667 = t3665->set( p0 = t3669 p1 = t3670 ).
    t3661 = t3665.
    DATA t3674 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3675 TYPE REF TO zcl_lnt_integer_type.
    DATA t3676 TYPE REF TO zcl_lnt_abstract_type_data.
    t3675 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3676 ).
    t3674 = t3675.
    DATA t3677 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3679 TYPE REF TO zcl_lnt_abap_release.
    DATA t3681 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3683 TYPE REF TO zcl_lnt_built_in_method.
    t3652 = NEW zcl_lnt_ibuiltin_method( i_counter = t3653 i_mandatory = t3661 i_optional = t3677 i_release_7928 = t3679 i_predicate = t3681 i_return_fa63 = t3674 i_cache = t3683 ).
    CREATE OBJECT t3652->zlnt_view_ownkeys_b0e8086400eb.
    t3652->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3652->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3685 ).
    DATA t3686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3652->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3686 ).
    ENDIF.
    DATA t3687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3652->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3687 ).
    ENDIF.
    CREATE OBJECT t3652->zlnt_json_ownkeys_70e5fd461788.
    t3652->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3688) = |counter|.
    DATA t3689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3688 p1 = t3689 ).
    DATA(t3690) = |mandatory|.
    DATA t3691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3690 p1 = t3691 ).
    ENDIF.
    DATA(t3692) = |return|.
    DATA t3693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3692 p1 = t3693 ).
    ENDIF.
    t3649 = t7->set( p0 = t3651 p1 = t3652 ).
    DATA t3694 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3696) = |SIN|.
    DATA t3697 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3698) = VALUE f( ).
    DATA(t3699) = VALUE f( ).
    DATA(t3700) = VALUE f( ).
    DATA(t3701) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3701 = zcl_lnt_built_in=>counter.
    t3700 = t3701.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3702 TYPE f.
    DATA(t3704) = CONV f( 1 ).
    t3702 = t3700 + t3704.
    zcl_lnt_built_in=>counter = t3702.
    t3699 = t3700.
    t3698 = t3699.
    DATA t3706 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3710 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3710 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3712 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3714) = |val|.
    DATA t3715 TYPE REF TO zcl_lnt_float_type.
    DATA t3716 TYPE REF TO zcl_lnt_abstract_type_data.
    t3715 = NEW zcl_lnt_float_type( i_input_967e = t3716 ).
    t3712 = t3710->set( p0 = t3714 p1 = t3715 ).
    t3706 = t3710.
    DATA t3719 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3720 TYPE REF TO zcl_lnt_float_type.
    DATA t3721 TYPE REF TO zcl_lnt_abstract_type_data.
    t3720 = NEW zcl_lnt_float_type( i_input_967e = t3721 ).
    t3719 = t3720.
    DATA t3722 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3724 TYPE REF TO zcl_lnt_abap_release.
    DATA t3726 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3728 TYPE REF TO zcl_lnt_built_in_method.
    t3697 = NEW zcl_lnt_ibuiltin_method( i_counter = t3698 i_mandatory = t3706 i_optional = t3722 i_release_7928 = t3724 i_predicate = t3726 i_return_fa63 = t3719 i_cache = t3728 ).
    CREATE OBJECT t3697->zlnt_view_ownkeys_b0e8086400eb.
    t3697->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3697->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3730 ).
    DATA t3731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3697->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3731 ).
    ENDIF.
    DATA t3732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3697->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3732 ).
    ENDIF.
    CREATE OBJECT t3697->zlnt_json_ownkeys_70e5fd461788.
    t3697->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3733) = |counter|.
    DATA t3734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3733 p1 = t3734 ).
    DATA(t3735) = |mandatory|.
    DATA t3736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3735 p1 = t3736 ).
    ENDIF.
    DATA(t3737) = |return|.
    DATA t3738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3737 p1 = t3738 ).
    ENDIF.
    t3694 = t7->set( p0 = t3696 p1 = t3697 ).
    DATA t3739 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3741) = |SINH|.
    DATA t3742 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3743) = VALUE f( ).
    DATA(t3744) = VALUE f( ).
    DATA(t3745) = VALUE f( ).
    DATA(t3746) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3746 = zcl_lnt_built_in=>counter.
    t3745 = t3746.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3747 TYPE f.
    DATA(t3749) = CONV f( 1 ).
    t3747 = t3745 + t3749.
    zcl_lnt_built_in=>counter = t3747.
    t3744 = t3745.
    t3743 = t3744.
    DATA t3751 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3755 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3757 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3759) = |val|.
    DATA t3760 TYPE REF TO zcl_lnt_float_type.
    DATA t3761 TYPE REF TO zcl_lnt_abstract_type_data.
    t3760 = NEW zcl_lnt_float_type( i_input_967e = t3761 ).
    t3757 = t3755->set( p0 = t3759 p1 = t3760 ).
    t3751 = t3755.
    DATA t3764 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3765 TYPE REF TO zcl_lnt_float_type.
    DATA t3766 TYPE REF TO zcl_lnt_abstract_type_data.
    t3765 = NEW zcl_lnt_float_type( i_input_967e = t3766 ).
    t3764 = t3765.
    DATA t3767 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3769 TYPE REF TO zcl_lnt_abap_release.
    DATA t3771 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3773 TYPE REF TO zcl_lnt_built_in_method.
    t3742 = NEW zcl_lnt_ibuiltin_method( i_counter = t3743 i_mandatory = t3751 i_optional = t3767 i_release_7928 = t3769 i_predicate = t3771 i_return_fa63 = t3764 i_cache = t3773 ).
    CREATE OBJECT t3742->zlnt_view_ownkeys_b0e8086400eb.
    t3742->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3775 ).
    DATA t3776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3776 ).
    ENDIF.
    DATA t3777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3742->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3777 ).
    ENDIF.
    CREATE OBJECT t3742->zlnt_json_ownkeys_70e5fd461788.
    t3742->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3778) = |counter|.
    DATA t3779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3778 p1 = t3779 ).
    DATA(t3780) = |mandatory|.
    DATA t3781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3780 p1 = t3781 ).
    ENDIF.
    DATA(t3782) = |return|.
    DATA t3783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3782 p1 = t3783 ).
    ENDIF.
    t3739 = t7->set( p0 = t3741 p1 = t3742 ).
    DATA t3784 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3786) = |SQRT|.
    DATA t3787 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3788) = VALUE f( ).
    DATA(t3789) = VALUE f( ).
    DATA(t3790) = VALUE f( ).
    DATA(t3791) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3791 = zcl_lnt_built_in=>counter.
    t3790 = t3791.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3792 TYPE f.
    DATA(t3794) = CONV f( 1 ).
    t3792 = t3790 + t3794.
    zcl_lnt_built_in=>counter = t3792.
    t3789 = t3790.
    t3788 = t3789.
    DATA t3796 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3800 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3800 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3802 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3804) = |val|.
    DATA t3805 TYPE REF TO zcl_lnt_float_type.
    DATA t3806 TYPE REF TO zcl_lnt_abstract_type_data.
    t3805 = NEW zcl_lnt_float_type( i_input_967e = t3806 ).
    t3802 = t3800->set( p0 = t3804 p1 = t3805 ).
    t3796 = t3800.
    DATA t3809 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3810 TYPE REF TO zcl_lnt_float_type.
    DATA t3811 TYPE REF TO zcl_lnt_abstract_type_data.
    t3810 = NEW zcl_lnt_float_type( i_input_967e = t3811 ).
    t3809 = t3810.
    DATA t3812 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3814 TYPE REF TO zcl_lnt_abap_release.
    DATA t3816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3818 TYPE REF TO zcl_lnt_built_in_method.
    t3787 = NEW zcl_lnt_ibuiltin_method( i_counter = t3788 i_mandatory = t3796 i_optional = t3812 i_release_7928 = t3814 i_predicate = t3816 i_return_fa63 = t3809 i_cache = t3818 ).
    CREATE OBJECT t3787->zlnt_view_ownkeys_b0e8086400eb.
    t3787->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3820 ).
    DATA t3821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3821 ).
    ENDIF.
    DATA t3822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3822 ).
    ENDIF.
    CREATE OBJECT t3787->zlnt_json_ownkeys_70e5fd461788.
    t3787->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3823) = |counter|.
    DATA t3824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3823 p1 = t3824 ).
    DATA(t3825) = |mandatory|.
    DATA t3826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3825 p1 = t3826 ).
    ENDIF.
    DATA(t3827) = |return|.
    DATA t3828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3827 p1 = t3828 ).
    ENDIF.
    t3784 = t7->set( p0 = t3786 p1 = t3787 ).
    DATA t3829 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3831) = |STRLEN|.
    DATA t3832 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3833) = VALUE f( ).
    DATA(t3834) = VALUE f( ).
    DATA(t3835) = VALUE f( ).
    DATA(t3836) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3836 = zcl_lnt_built_in=>counter.
    t3835 = t3836.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3837 TYPE f.
    DATA(t3839) = CONV f( 1 ).
    t3837 = t3835 + t3839.
    zcl_lnt_built_in=>counter = t3837.
    t3834 = t3835.
    t3833 = t3834.
    DATA t3841 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3845 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3845 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3847 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3849) = |val|.
    DATA(t3850) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3847 = t3845->set( p0 = t3849 p1 = t3850 ).
    t3841 = t3845.
    DATA t3853 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3854 TYPE REF TO zcl_lnt_integer_type.
    DATA t3855 TYPE REF TO zcl_lnt_abstract_type_data.
    t3854 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3855 ).
    t3853 = t3854.
    DATA t3856 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3858 TYPE REF TO zcl_lnt_abap_release.
    DATA t3860 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3862 TYPE REF TO zcl_lnt_built_in_method.
    t3832 = NEW zcl_lnt_ibuiltin_method( i_counter = t3833 i_mandatory = t3841 i_optional = t3856 i_release_7928 = t3858 i_predicate = t3860 i_return_fa63 = t3853 i_cache = t3862 ).
    CREATE OBJECT t3832->zlnt_view_ownkeys_b0e8086400eb.
    t3832->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3832->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3864 ).
    DATA t3865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3832->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3865 ).
    ENDIF.
    DATA t3866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3832->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3866 ).
    ENDIF.
    CREATE OBJECT t3832->zlnt_json_ownkeys_70e5fd461788.
    t3832->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3867) = |counter|.
    DATA t3868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3867 p1 = t3868 ).
    DATA(t3869) = |mandatory|.
    DATA t3870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3869 p1 = t3870 ).
    ENDIF.
    DATA(t3871) = |return|.
    DATA t3872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3871 p1 = t3872 ).
    ENDIF.
    t3829 = t7->set( p0 = t3831 p1 = t3832 ).
    DATA t3873 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3875) = |SUBSTRING|.
    DATA t3876 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3877) = VALUE f( ).
    DATA(t3878) = VALUE f( ).
    DATA(t3879) = VALUE f( ).
    DATA(t3880) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3880 = zcl_lnt_built_in=>counter.
    t3879 = t3880.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3881 TYPE f.
    DATA(t3883) = CONV f( 1 ).
    t3881 = t3879 + t3883.
    zcl_lnt_built_in=>counter = t3881.
    t3878 = t3879.
    t3877 = t3878.
    DATA t3885 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3889 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3889 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3891 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3893) = |val|.
    DATA(t3894) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3891 = t3889->set( p0 = t3893 p1 = t3894 ).
    t3885 = t3889.
    DATA t3897 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3901 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3901 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3903 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3905) = |off|.
    DATA t3906 TYPE REF TO zcl_lnt_integer_type.
    DATA t3907 TYPE REF TO zcl_lnt_abstract_type_data.
    t3906 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3907 ).
    t3903 = t3901->set( p0 = t3905 p1 = t3906 ).
    DATA t3908 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3910) = |len|.
    DATA t3911 TYPE REF TO zcl_lnt_integer_type.
    DATA t3912 TYPE REF TO zcl_lnt_abstract_type_data.
    t3911 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3912 ).
    t3908 = t3901->set( p0 = t3910 p1 = t3911 ).
    t3897 = t3901.
    DATA t3915 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3916 TYPE REF TO zcl_lnt_string_type.
    DATA t3917 TYPE REF TO zcl_lnt_abstract_type_data.
    t3916 = zcl_lnt_string_type=>get_db65( i_input_967e = t3917 ).
    t3915 = t3916.
    DATA t3918 TYPE REF TO zcl_lnt_abap_release.
    DATA t3922 TYPE REF TO zcl_lnt_abap_release.
    DATA t3923 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3923 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3924) = |v702|.
    t3922 = t3923->get( p0 = t3924 ).
    t3918 = t3922.
    DATA t3926 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3928 TYPE REF TO zcl_lnt_built_in_method.
    t3876 = NEW zcl_lnt_ibuiltin_method( i_counter = t3877 i_mandatory = t3885 i_optional = t3897 i_release_7928 = t3918 i_predicate = t3926 i_return_fa63 = t3915 i_cache = t3928 ).
    CREATE OBJECT t3876->zlnt_view_ownkeys_b0e8086400eb.
    t3876->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3876->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t3930 ).
    DATA t3931 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3876->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t3931 ).
    ENDIF.
    DATA t3932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3876->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t3932 ).
    ENDIF.
    DATA t3933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3876->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t3933 ).
    ENDIF.
    DATA t3934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3876->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t3934 ).
    ENDIF.
    CREATE OBJECT t3876->zlnt_json_ownkeys_70e5fd461788.
    t3876->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t3935) = |counter|.
    DATA t3936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3935 p1 = t3936 ).
    DATA(t3937) = |mandatory|.
    DATA t3938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3937 p1 = t3938 ).
    ENDIF.
    DATA(t3939) = |optional|.
    DATA t3940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3939 p1 = t3940 ).
    ENDIF.
    DATA(t3941) = |return|.
    DATA t3942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3941 p1 = t3942 ).
    ENDIF.
    DATA(t3943) = |release|.
    DATA t3944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = t3943 p1 = t3944 ).
    ENDIF.
    t3873 = t7->set( p0 = t3875 p1 = t3876 ).
    DATA t3945 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t3947) = |SUBSTRING_AFTER|.
    DATA t3948 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3949) = VALUE f( ).
    DATA(t3950) = VALUE f( ).
    DATA(t3951) = VALUE f( ).
    DATA(t3952) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3952 = zcl_lnt_built_in=>counter.
    t3951 = t3952.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t3953 TYPE f.
    DATA(t3955) = CONV f( 1 ).
    t3953 = t3951 + t3955.
    zcl_lnt_built_in=>counter = t3953.
    t3950 = t3951.
    t3949 = t3950.
    DATA t3957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3961 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3961 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3963 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3965) = |val|.
    DATA(t3966) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3963 = t3961->set( p0 = t3965 p1 = t3966 ).
    t3957 = t3961.
    DATA t3969 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3973 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3973 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3975 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3977) = |sub|.
    DATA(t3978) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3975 = t3973->set( p0 = t3977 p1 = t3978 ).
    DATA t3979 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3981) = |regex|.
    DATA(t3982) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3979 = t3973->set( p0 = t3981 p1 = t3982 ).
    DATA t3983 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3985) = |pcre|.
    DATA(t3986) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t3983 = t3973->set( p0 = t3985 p1 = t3986 ).
    DATA t3987 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3989) = |case|.
    DATA t3990 TYPE REF TO zcl_lnt_character_type.
    DATA(t3991) = CONV f( 1 ).
    DATA t3992 TYPE REF TO zcl_lnt_abstract_type_data.
    t3990 = NEW zcl_lnt_character_type( i_length = t3991 i_extra = t3992 ).
    t3987 = t3973->set( p0 = t3989 p1 = t3990 ).
    DATA t3993 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t3995) = |len|.
    DATA t3996 TYPE REF TO zcl_lnt_integer_type.
    DATA t3997 TYPE REF TO zcl_lnt_abstract_type_data.
    t3996 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3997 ).
    t3993 = t3973->set( p0 = t3995 p1 = t3996 ).
    DATA t3998 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4000) = |occ|.
    DATA t4001 TYPE REF TO zcl_lnt_integer_type.
    DATA t4002 TYPE REF TO zcl_lnt_abstract_type_data.
    t4001 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4002 ).
    t3998 = t3973->set( p0 = t4000 p1 = t4001 ).
    t3969 = t3973.
    DATA t4005 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4006 TYPE REF TO zcl_lnt_string_type.
    DATA t4007 TYPE REF TO zcl_lnt_abstract_type_data.
    t4006 = zcl_lnt_string_type=>get_db65( i_input_967e = t4007 ).
    t4005 = t4006.
    DATA t4008 TYPE REF TO zcl_lnt_abap_release.
    DATA t4012 TYPE REF TO zcl_lnt_abap_release.
    DATA t4013 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4013 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4014) = |v702|.
    t4012 = t4013->get( p0 = t4014 ).
    t4008 = t4012.
    DATA t4016 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4018 TYPE REF TO zcl_lnt_built_in_method.
    t3948 = NEW zcl_lnt_ibuiltin_method( i_counter = t3949 i_mandatory = t3957 i_optional = t3969 i_release_7928 = t4008 i_predicate = t4016 i_return_fa63 = t4005 i_cache = t4018 ).
    CREATE OBJECT t3948->zlnt_view_ownkeys_b0e8086400eb.
    t3948->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3948->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4020 ).
    DATA t4021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3948->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4021 ).
    ENDIF.
    DATA t4022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3948->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4022 ).
    ENDIF.
    DATA t4023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3948->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4023 ).
    ENDIF.
    DATA t4024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3948->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4024 ).
    ENDIF.
    CREATE OBJECT t3948->zlnt_json_ownkeys_70e5fd461788.
    t3948->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4025) = |counter|.
    DATA t4026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4025 p1 = t4026 ).
    DATA(t4027) = |mandatory|.
    DATA t4028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4027 p1 = t4028 ).
    ENDIF.
    DATA(t4029) = |optional|.
    DATA t4030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4029 p1 = t4030 ).
    ENDIF.
    DATA(t4031) = |return|.
    DATA t4032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4031 p1 = t4032 ).
    ENDIF.
    DATA(t4033) = |release|.
    DATA t4034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4033 p1 = t4034 ).
    ENDIF.
    t3945 = t7->set( p0 = t3947 p1 = t3948 ).
    DATA t4035 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4037) = |SUBSTRING_BEFORE|.
    DATA t4038 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4039) = VALUE f( ).
    DATA(t4040) = VALUE f( ).
    DATA(t4041) = VALUE f( ).
    DATA(t4042) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4042 = zcl_lnt_built_in=>counter.
    t4041 = t4042.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4043 TYPE f.
    DATA(t4045) = CONV f( 1 ).
    t4043 = t4041 + t4045.
    zcl_lnt_built_in=>counter = t4043.
    t4040 = t4041.
    t4039 = t4040.
    DATA t4047 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4051 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4051 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4053 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4055) = |val|.
    DATA(t4056) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4053 = t4051->set( p0 = t4055 p1 = t4056 ).
    t4047 = t4051.
    DATA t4059 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4063 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4063 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4065 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4067) = |sub|.
    DATA(t4068) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4065 = t4063->set( p0 = t4067 p1 = t4068 ).
    DATA t4069 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4071) = |regex|.
    DATA(t4072) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4069 = t4063->set( p0 = t4071 p1 = t4072 ).
    DATA t4073 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4075) = |pcre|.
    DATA(t4076) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4073 = t4063->set( p0 = t4075 p1 = t4076 ).
    DATA t4077 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4079) = |case|.
    DATA t4080 TYPE REF TO zcl_lnt_character_type.
    DATA(t4081) = CONV f( 1 ).
    DATA t4082 TYPE REF TO zcl_lnt_abstract_type_data.
    t4080 = NEW zcl_lnt_character_type( i_length = t4081 i_extra = t4082 ).
    t4077 = t4063->set( p0 = t4079 p1 = t4080 ).
    DATA t4083 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4085) = |len|.
    DATA t4086 TYPE REF TO zcl_lnt_integer_type.
    DATA t4087 TYPE REF TO zcl_lnt_abstract_type_data.
    t4086 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4087 ).
    t4083 = t4063->set( p0 = t4085 p1 = t4086 ).
    DATA t4088 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4090) = |occ|.
    DATA t4091 TYPE REF TO zcl_lnt_integer_type.
    DATA t4092 TYPE REF TO zcl_lnt_abstract_type_data.
    t4091 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4092 ).
    t4088 = t4063->set( p0 = t4090 p1 = t4091 ).
    t4059 = t4063.
    DATA t4095 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4096 TYPE REF TO zcl_lnt_string_type.
    DATA t4097 TYPE REF TO zcl_lnt_abstract_type_data.
    t4096 = zcl_lnt_string_type=>get_db65( i_input_967e = t4097 ).
    t4095 = t4096.
    DATA t4098 TYPE REF TO zcl_lnt_abap_release.
    DATA t4102 TYPE REF TO zcl_lnt_abap_release.
    DATA t4103 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4103 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4104) = |v702|.
    t4102 = t4103->get( p0 = t4104 ).
    t4098 = t4102.
    DATA t4106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4108 TYPE REF TO zcl_lnt_built_in_method.
    t4038 = NEW zcl_lnt_ibuiltin_method( i_counter = t4039 i_mandatory = t4047 i_optional = t4059 i_release_7928 = t4098 i_predicate = t4106 i_return_fa63 = t4095 i_cache = t4108 ).
    CREATE OBJECT t4038->zlnt_view_ownkeys_b0e8086400eb.
    t4038->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4038->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4110 ).
    DATA t4111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4038->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4111 ).
    ENDIF.
    DATA t4112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4038->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4112 ).
    ENDIF.
    DATA t4113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4038->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4113 ).
    ENDIF.
    DATA t4114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4038->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4114 ).
    ENDIF.
    CREATE OBJECT t4038->zlnt_json_ownkeys_70e5fd461788.
    t4038->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4115) = |counter|.
    DATA t4116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4115 p1 = t4116 ).
    DATA(t4117) = |mandatory|.
    DATA t4118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4117 p1 = t4118 ).
    ENDIF.
    DATA(t4119) = |optional|.
    DATA t4120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4119 p1 = t4120 ).
    ENDIF.
    DATA(t4121) = |return|.
    DATA t4122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4121 p1 = t4122 ).
    ENDIF.
    DATA(t4123) = |release|.
    DATA t4124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4123 p1 = t4124 ).
    ENDIF.
    t4035 = t7->set( p0 = t4037 p1 = t4038 ).
    DATA t4125 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4127) = |SUBSTRING_FROM|.
    DATA t4128 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4129) = VALUE f( ).
    DATA(t4130) = VALUE f( ).
    DATA(t4131) = VALUE f( ).
    DATA(t4132) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4132 = zcl_lnt_built_in=>counter.
    t4131 = t4132.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4133 TYPE f.
    DATA(t4135) = CONV f( 1 ).
    t4133 = t4131 + t4135.
    zcl_lnt_built_in=>counter = t4133.
    t4130 = t4131.
    t4129 = t4130.
    DATA t4137 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4141 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4141 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4143 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4145) = |val|.
    DATA(t4146) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4143 = t4141->set( p0 = t4145 p1 = t4146 ).
    t4137 = t4141.
    DATA t4149 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4153 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4153 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4155 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4157) = |sub|.
    DATA(t4158) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4155 = t4153->set( p0 = t4157 p1 = t4158 ).
    DATA t4159 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4161) = |regex|.
    DATA(t4162) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4159 = t4153->set( p0 = t4161 p1 = t4162 ).
    DATA t4163 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4165) = |pcre|.
    DATA(t4166) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4163 = t4153->set( p0 = t4165 p1 = t4166 ).
    DATA t4167 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4169) = |case|.
    DATA t4170 TYPE REF TO zcl_lnt_character_type.
    DATA(t4171) = CONV f( 1 ).
    DATA t4172 TYPE REF TO zcl_lnt_abstract_type_data.
    t4170 = NEW zcl_lnt_character_type( i_length = t4171 i_extra = t4172 ).
    t4167 = t4153->set( p0 = t4169 p1 = t4170 ).
    DATA t4173 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4175) = |len|.
    DATA t4176 TYPE REF TO zcl_lnt_integer_type.
    DATA t4177 TYPE REF TO zcl_lnt_abstract_type_data.
    t4176 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4177 ).
    t4173 = t4153->set( p0 = t4175 p1 = t4176 ).
    DATA t4178 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4180) = |occ|.
    DATA t4181 TYPE REF TO zcl_lnt_integer_type.
    DATA t4182 TYPE REF TO zcl_lnt_abstract_type_data.
    t4181 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4182 ).
    t4178 = t4153->set( p0 = t4180 p1 = t4181 ).
    t4149 = t4153.
    DATA t4185 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4186 TYPE REF TO zcl_lnt_string_type.
    DATA t4187 TYPE REF TO zcl_lnt_abstract_type_data.
    t4186 = zcl_lnt_string_type=>get_db65( i_input_967e = t4187 ).
    t4185 = t4186.
    DATA t4188 TYPE REF TO zcl_lnt_abap_release.
    DATA t4192 TYPE REF TO zcl_lnt_abap_release.
    DATA t4193 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4193 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4194) = |v702|.
    t4192 = t4193->get( p0 = t4194 ).
    t4188 = t4192.
    DATA t4196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4198 TYPE REF TO zcl_lnt_built_in_method.
    t4128 = NEW zcl_lnt_ibuiltin_method( i_counter = t4129 i_mandatory = t4137 i_optional = t4149 i_release_7928 = t4188 i_predicate = t4196 i_return_fa63 = t4185 i_cache = t4198 ).
    CREATE OBJECT t4128->zlnt_view_ownkeys_b0e8086400eb.
    t4128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4200 ).
    DATA t4201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4201 ).
    ENDIF.
    DATA t4202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4202 ).
    ENDIF.
    DATA t4203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4203 ).
    ENDIF.
    DATA t4204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4204 ).
    ENDIF.
    CREATE OBJECT t4128->zlnt_json_ownkeys_70e5fd461788.
    t4128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4205) = |counter|.
    DATA t4206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4205 p1 = t4206 ).
    DATA(t4207) = |mandatory|.
    DATA t4208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4207 p1 = t4208 ).
    ENDIF.
    DATA(t4209) = |optional|.
    DATA t4210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4209 p1 = t4210 ).
    ENDIF.
    DATA(t4211) = |return|.
    DATA t4212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4211 p1 = t4212 ).
    ENDIF.
    DATA(t4213) = |release|.
    DATA t4214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4213 p1 = t4214 ).
    ENDIF.
    t4125 = t7->set( p0 = t4127 p1 = t4128 ).
    DATA t4215 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4217) = |SUBSTRING_TO|.
    DATA t4218 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4219) = VALUE f( ).
    DATA(t4220) = VALUE f( ).
    DATA(t4221) = VALUE f( ).
    DATA(t4222) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4222 = zcl_lnt_built_in=>counter.
    t4221 = t4222.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4223 TYPE f.
    DATA(t4225) = CONV f( 1 ).
    t4223 = t4221 + t4225.
    zcl_lnt_built_in=>counter = t4223.
    t4220 = t4221.
    t4219 = t4220.
    DATA t4227 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4231 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4233 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4235) = |val|.
    DATA(t4236) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4233 = t4231->set( p0 = t4235 p1 = t4236 ).
    t4227 = t4231.
    DATA t4239 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4243 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4243 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4245 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4247) = |sub|.
    DATA(t4248) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4245 = t4243->set( p0 = t4247 p1 = t4248 ).
    DATA t4249 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4251) = |regex|.
    DATA(t4252) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4249 = t4243->set( p0 = t4251 p1 = t4252 ).
    DATA t4253 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4255) = |pcre|.
    DATA(t4256) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4253 = t4243->set( p0 = t4255 p1 = t4256 ).
    DATA t4257 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4259) = |case|.
    DATA t4260 TYPE REF TO zcl_lnt_character_type.
    DATA(t4261) = CONV f( 1 ).
    DATA t4262 TYPE REF TO zcl_lnt_abstract_type_data.
    t4260 = NEW zcl_lnt_character_type( i_length = t4261 i_extra = t4262 ).
    t4257 = t4243->set( p0 = t4259 p1 = t4260 ).
    DATA t4263 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4265) = |len|.
    DATA t4266 TYPE REF TO zcl_lnt_integer_type.
    DATA t4267 TYPE REF TO zcl_lnt_abstract_type_data.
    t4266 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4267 ).
    t4263 = t4243->set( p0 = t4265 p1 = t4266 ).
    DATA t4268 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4270) = |occ|.
    DATA t4271 TYPE REF TO zcl_lnt_integer_type.
    DATA t4272 TYPE REF TO zcl_lnt_abstract_type_data.
    t4271 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4272 ).
    t4268 = t4243->set( p0 = t4270 p1 = t4271 ).
    t4239 = t4243.
    DATA t4275 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4276 TYPE REF TO zcl_lnt_string_type.
    DATA t4277 TYPE REF TO zcl_lnt_abstract_type_data.
    t4276 = zcl_lnt_string_type=>get_db65( i_input_967e = t4277 ).
    t4275 = t4276.
    DATA t4278 TYPE REF TO zcl_lnt_abap_release.
    DATA t4282 TYPE REF TO zcl_lnt_abap_release.
    DATA t4283 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4283 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4284) = |v702|.
    t4282 = t4283->get( p0 = t4284 ).
    t4278 = t4282.
    DATA t4286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4288 TYPE REF TO zcl_lnt_built_in_method.
    t4218 = NEW zcl_lnt_ibuiltin_method( i_counter = t4219 i_mandatory = t4227 i_optional = t4239 i_release_7928 = t4278 i_predicate = t4286 i_return_fa63 = t4275 i_cache = t4288 ).
    CREATE OBJECT t4218->zlnt_view_ownkeys_b0e8086400eb.
    t4218->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4290 ).
    DATA t4291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4291 ).
    ENDIF.
    DATA t4292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4292 ).
    ENDIF.
    DATA t4293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4293 ).
    ENDIF.
    DATA t4294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4294 ).
    ENDIF.
    CREATE OBJECT t4218->zlnt_json_ownkeys_70e5fd461788.
    t4218->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4295) = |counter|.
    DATA t4296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4295 p1 = t4296 ).
    DATA(t4297) = |mandatory|.
    DATA t4298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4297 p1 = t4298 ).
    ENDIF.
    DATA(t4299) = |optional|.
    DATA t4300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4299 p1 = t4300 ).
    ENDIF.
    DATA(t4301) = |return|.
    DATA t4302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4301 p1 = t4302 ).
    ENDIF.
    DATA(t4303) = |release|.
    DATA t4304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4303 p1 = t4304 ).
    ENDIF.
    t4215 = t7->set( p0 = t4217 p1 = t4218 ).
    DATA t4305 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4307) = |TAN|.
    DATA t4308 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4309) = VALUE f( ).
    DATA(t4310) = VALUE f( ).
    DATA(t4311) = VALUE f( ).
    DATA(t4312) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4312 = zcl_lnt_built_in=>counter.
    t4311 = t4312.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4313 TYPE f.
    DATA(t4315) = CONV f( 1 ).
    t4313 = t4311 + t4315.
    zcl_lnt_built_in=>counter = t4313.
    t4310 = t4311.
    t4309 = t4310.
    DATA t4317 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4321 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4321 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4323 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4325) = |val|.
    DATA t4326 TYPE REF TO zcl_lnt_float_type.
    DATA t4327 TYPE REF TO zcl_lnt_abstract_type_data.
    t4326 = NEW zcl_lnt_float_type( i_input_967e = t4327 ).
    t4323 = t4321->set( p0 = t4325 p1 = t4326 ).
    t4317 = t4321.
    DATA t4330 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4331 TYPE REF TO zcl_lnt_float_type.
    DATA t4332 TYPE REF TO zcl_lnt_abstract_type_data.
    t4331 = NEW zcl_lnt_float_type( i_input_967e = t4332 ).
    t4330 = t4331.
    DATA t4333 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4335 TYPE REF TO zcl_lnt_abap_release.
    DATA t4337 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4339 TYPE REF TO zcl_lnt_built_in_method.
    t4308 = NEW zcl_lnt_ibuiltin_method( i_counter = t4309 i_mandatory = t4317 i_optional = t4333 i_release_7928 = t4335 i_predicate = t4337 i_return_fa63 = t4330 i_cache = t4339 ).
    CREATE OBJECT t4308->zlnt_view_ownkeys_b0e8086400eb.
    t4308->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4341 ).
    DATA t4342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4342 ).
    ENDIF.
    DATA t4343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4343 ).
    ENDIF.
    CREATE OBJECT t4308->zlnt_json_ownkeys_70e5fd461788.
    t4308->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4344) = |counter|.
    DATA t4345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4344 p1 = t4345 ).
    DATA(t4346) = |mandatory|.
    DATA t4347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4346 p1 = t4347 ).
    ENDIF.
    DATA(t4348) = |return|.
    DATA t4349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4348 p1 = t4349 ).
    ENDIF.
    t4305 = t7->set( p0 = t4307 p1 = t4308 ).
    DATA t4350 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4352) = |TANH|.
    DATA t4353 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4354) = VALUE f( ).
    DATA(t4355) = VALUE f( ).
    DATA(t4356) = VALUE f( ).
    DATA(t4357) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4357 = zcl_lnt_built_in=>counter.
    t4356 = t4357.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4358 TYPE f.
    DATA(t4360) = CONV f( 1 ).
    t4358 = t4356 + t4360.
    zcl_lnt_built_in=>counter = t4358.
    t4355 = t4356.
    t4354 = t4355.
    DATA t4362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4366 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4368 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4370) = |val|.
    DATA t4371 TYPE REF TO zcl_lnt_float_type.
    DATA t4372 TYPE REF TO zcl_lnt_abstract_type_data.
    t4371 = NEW zcl_lnt_float_type( i_input_967e = t4372 ).
    t4368 = t4366->set( p0 = t4370 p1 = t4371 ).
    t4362 = t4366.
    DATA t4375 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4376 TYPE REF TO zcl_lnt_float_type.
    DATA t4377 TYPE REF TO zcl_lnt_abstract_type_data.
    t4376 = NEW zcl_lnt_float_type( i_input_967e = t4377 ).
    t4375 = t4376.
    DATA t4378 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4380 TYPE REF TO zcl_lnt_abap_release.
    DATA t4382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4384 TYPE REF TO zcl_lnt_built_in_method.
    t4353 = NEW zcl_lnt_ibuiltin_method( i_counter = t4354 i_mandatory = t4362 i_optional = t4378 i_release_7928 = t4380 i_predicate = t4382 i_return_fa63 = t4375 i_cache = t4384 ).
    CREATE OBJECT t4353->zlnt_view_ownkeys_b0e8086400eb.
    t4353->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4386 ).
    DATA t4387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4387 ).
    ENDIF.
    DATA t4388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4388 ).
    ENDIF.
    CREATE OBJECT t4353->zlnt_json_ownkeys_70e5fd461788.
    t4353->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4389) = |counter|.
    DATA t4390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4389 p1 = t4390 ).
    DATA(t4391) = |mandatory|.
    DATA t4392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4391 p1 = t4392 ).
    ENDIF.
    DATA(t4393) = |return|.
    DATA t4394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4393 p1 = t4394 ).
    ENDIF.
    t4350 = t7->set( p0 = t4352 p1 = t4353 ).
    DATA t4395 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4397) = |TO_LOWER|.
    DATA t4398 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4399) = VALUE f( ).
    DATA(t4400) = VALUE f( ).
    DATA(t4401) = VALUE f( ).
    DATA(t4402) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4402 = zcl_lnt_built_in=>counter.
    t4401 = t4402.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4403 TYPE f.
    DATA(t4405) = CONV f( 1 ).
    t4403 = t4401 + t4405.
    zcl_lnt_built_in=>counter = t4403.
    t4400 = t4401.
    t4399 = t4400.
    DATA t4407 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4411 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4411 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4413 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4415) = |val|.
    DATA(t4416) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4413 = t4411->set( p0 = t4415 p1 = t4416 ).
    t4407 = t4411.
    DATA t4419 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4420 TYPE REF TO zcl_lnt_string_type.
    DATA t4421 TYPE REF TO zcl_lnt_abstract_type_data.
    t4420 = zcl_lnt_string_type=>get_db65( i_input_967e = t4421 ).
    t4419 = t4420.
    DATA t4422 TYPE REF TO zcl_lnt_abap_release.
    DATA t4426 TYPE REF TO zcl_lnt_abap_release.
    DATA t4427 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4427 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4428) = |v702|.
    t4426 = t4427->get( p0 = t4428 ).
    t4422 = t4426.
    DATA t4430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4432 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4434 TYPE REF TO zcl_lnt_built_in_method.
    t4398 = NEW zcl_lnt_ibuiltin_method( i_counter = t4399 i_mandatory = t4407 i_optional = t4430 i_release_7928 = t4422 i_predicate = t4432 i_return_fa63 = t4419 i_cache = t4434 ).
    CREATE OBJECT t4398->zlnt_view_ownkeys_b0e8086400eb.
    t4398->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4436 ).
    DATA t4437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4437 ).
    ENDIF.
    DATA t4438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4438 ).
    ENDIF.
    DATA t4439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4439 ).
    ENDIF.
    CREATE OBJECT t4398->zlnt_json_ownkeys_70e5fd461788.
    t4398->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4440) = |counter|.
    DATA t4441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4440 p1 = t4441 ).
    DATA(t4442) = |mandatory|.
    DATA t4443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4442 p1 = t4443 ).
    ENDIF.
    DATA(t4444) = |return|.
    DATA t4445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4444 p1 = t4445 ).
    ENDIF.
    DATA(t4446) = |release|.
    DATA t4447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4446 p1 = t4447 ).
    ENDIF.
    t4395 = t7->set( p0 = t4397 p1 = t4398 ).
    DATA t4448 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4450) = |TO_MIXED|.
    DATA t4451 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4452) = VALUE f( ).
    DATA(t4453) = VALUE f( ).
    DATA(t4454) = VALUE f( ).
    DATA(t4455) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4455 = zcl_lnt_built_in=>counter.
    t4454 = t4455.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4456 TYPE f.
    DATA(t4458) = CONV f( 1 ).
    t4456 = t4454 + t4458.
    zcl_lnt_built_in=>counter = t4456.
    t4453 = t4454.
    t4452 = t4453.
    DATA t4460 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4464 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4464 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4466 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4468) = |val|.
    DATA(t4469) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4466 = t4464->set( p0 = t4468 p1 = t4469 ).
    t4460 = t4464.
    DATA t4472 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4476 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4476 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4478 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4480) = |case|.
    DATA t4481 TYPE REF TO zcl_lnt_character_type.
    DATA(t4482) = CONV f( 1 ).
    DATA t4483 TYPE REF TO zcl_lnt_abstract_type_data.
    t4481 = NEW zcl_lnt_character_type( i_length = t4482 i_extra = t4483 ).
    t4478 = t4476->set( p0 = t4480 p1 = t4481 ).
    DATA t4484 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4486) = |sep|.
    DATA(t4487) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4484 = t4476->set( p0 = t4486 p1 = t4487 ).
    DATA t4488 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4490) = |min|.
    DATA t4491 TYPE REF TO zcl_lnt_integer_type.
    DATA t4492 TYPE REF TO zcl_lnt_abstract_type_data.
    t4491 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4492 ).
    t4488 = t4476->set( p0 = t4490 p1 = t4491 ).
    t4472 = t4476.
    DATA t4495 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4496 TYPE REF TO zcl_lnt_string_type.
    DATA t4497 TYPE REF TO zcl_lnt_abstract_type_data.
    t4496 = zcl_lnt_string_type=>get_db65( i_input_967e = t4497 ).
    t4495 = t4496.
    DATA t4498 TYPE REF TO zcl_lnt_abap_release.
    DATA t4502 TYPE REF TO zcl_lnt_abap_release.
    DATA t4503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4503 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4504) = |v702|.
    t4502 = t4503->get( p0 = t4504 ).
    t4498 = t4502.
    DATA t4506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4508 TYPE REF TO zcl_lnt_built_in_method.
    t4451 = NEW zcl_lnt_ibuiltin_method( i_counter = t4452 i_mandatory = t4460 i_optional = t4472 i_release_7928 = t4498 i_predicate = t4506 i_return_fa63 = t4495 i_cache = t4508 ).
    CREATE OBJECT t4451->zlnt_view_ownkeys_b0e8086400eb.
    t4451->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4510 ).
    DATA t4511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4511 ).
    ENDIF.
    DATA t4512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4512 ).
    ENDIF.
    DATA t4513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4513 ).
    ENDIF.
    DATA t4514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4514 ).
    ENDIF.
    CREATE OBJECT t4451->zlnt_json_ownkeys_70e5fd461788.
    t4451->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4515) = |counter|.
    DATA t4516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4515 p1 = t4516 ).
    DATA(t4517) = |mandatory|.
    DATA t4518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4517 p1 = t4518 ).
    ENDIF.
    DATA(t4519) = |optional|.
    DATA t4520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4519 p1 = t4520 ).
    ENDIF.
    DATA(t4521) = |return|.
    DATA t4522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4521 p1 = t4522 ).
    ENDIF.
    DATA(t4523) = |release|.
    DATA t4524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4523 p1 = t4524 ).
    ENDIF.
    t4448 = t7->set( p0 = t4450 p1 = t4451 ).
    DATA t4525 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4527) = |TO_UPPER|.
    DATA t4528 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4529) = VALUE f( ).
    DATA(t4530) = VALUE f( ).
    DATA(t4531) = VALUE f( ).
    DATA(t4532) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4532 = zcl_lnt_built_in=>counter.
    t4531 = t4532.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4533 TYPE f.
    DATA(t4535) = CONV f( 1 ).
    t4533 = t4531 + t4535.
    zcl_lnt_built_in=>counter = t4533.
    t4530 = t4531.
    t4529 = t4530.
    DATA t4537 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4541 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4541 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4543 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4545) = |val|.
    DATA(t4546) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4543 = t4541->set( p0 = t4545 p1 = t4546 ).
    t4537 = t4541.
    DATA t4549 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4550 TYPE REF TO zcl_lnt_string_type.
    DATA t4551 TYPE REF TO zcl_lnt_abstract_type_data.
    t4550 = zcl_lnt_string_type=>get_db65( i_input_967e = t4551 ).
    t4549 = t4550.
    DATA t4552 TYPE REF TO zcl_lnt_abap_release.
    DATA t4556 TYPE REF TO zcl_lnt_abap_release.
    DATA t4557 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4557 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4558) = |v702|.
    t4556 = t4557->get( p0 = t4558 ).
    t4552 = t4556.
    DATA t4560 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4562 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4564 TYPE REF TO zcl_lnt_built_in_method.
    t4528 = NEW zcl_lnt_ibuiltin_method( i_counter = t4529 i_mandatory = t4537 i_optional = t4560 i_release_7928 = t4552 i_predicate = t4562 i_return_fa63 = t4549 i_cache = t4564 ).
    CREATE OBJECT t4528->zlnt_view_ownkeys_b0e8086400eb.
    t4528->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4528->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4566 ).
    DATA t4567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4528->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4567 ).
    ENDIF.
    DATA t4568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4528->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4568 ).
    ENDIF.
    DATA t4569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4528->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4569 ).
    ENDIF.
    CREATE OBJECT t4528->zlnt_json_ownkeys_70e5fd461788.
    t4528->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4570) = |counter|.
    DATA t4571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4570 p1 = t4571 ).
    DATA(t4572) = |mandatory|.
    DATA t4573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4572 p1 = t4573 ).
    ENDIF.
    DATA(t4574) = |return|.
    DATA t4575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4574 p1 = t4575 ).
    ENDIF.
    DATA(t4576) = |release|.
    DATA t4577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4576 p1 = t4577 ).
    ENDIF.
    t4525 = t7->set( p0 = t4527 p1 = t4528 ).
    DATA t4578 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4580) = |TRANSLATE|.
    DATA t4581 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4582) = VALUE f( ).
    DATA(t4583) = VALUE f( ).
    DATA(t4584) = VALUE f( ).
    DATA(t4585) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4585 = zcl_lnt_built_in=>counter.
    t4584 = t4585.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4586 TYPE f.
    DATA(t4588) = CONV f( 1 ).
    t4586 = t4584 + t4588.
    zcl_lnt_built_in=>counter = t4586.
    t4583 = t4584.
    t4582 = t4583.
    DATA t4590 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4594 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4594 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4596 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4598) = |val|.
    DATA(t4599) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4596 = t4594->set( p0 = t4598 p1 = t4599 ).
    DATA t4600 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4602) = |from|.
    DATA(t4603) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4600 = t4594->set( p0 = t4602 p1 = t4603 ).
    DATA t4604 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4606) = |to|.
    DATA(t4607) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4604 = t4594->set( p0 = t4606 p1 = t4607 ).
    t4590 = t4594.
    DATA t4610 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4611 TYPE REF TO zcl_lnt_string_type.
    DATA t4612 TYPE REF TO zcl_lnt_abstract_type_data.
    t4611 = zcl_lnt_string_type=>get_db65( i_input_967e = t4612 ).
    t4610 = t4611.
    DATA t4613 TYPE REF TO zcl_lnt_abap_release.
    DATA t4617 TYPE REF TO zcl_lnt_abap_release.
    DATA t4618 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4618 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4619) = |v702|.
    t4617 = t4618->get( p0 = t4619 ).
    t4613 = t4617.
    DATA t4621 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4623 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4625 TYPE REF TO zcl_lnt_built_in_method.
    t4581 = NEW zcl_lnt_ibuiltin_method( i_counter = t4582 i_mandatory = t4590 i_optional = t4621 i_release_7928 = t4613 i_predicate = t4623 i_return_fa63 = t4610 i_cache = t4625 ).
    CREATE OBJECT t4581->zlnt_view_ownkeys_b0e8086400eb.
    t4581->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4627 ).
    DATA t4628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4628 ).
    ENDIF.
    DATA t4629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4629 ).
    ENDIF.
    DATA t4630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4630 ).
    ENDIF.
    CREATE OBJECT t4581->zlnt_json_ownkeys_70e5fd461788.
    t4581->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4631) = |counter|.
    DATA t4632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4631 p1 = t4632 ).
    DATA(t4633) = |mandatory|.
    DATA t4634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4633 p1 = t4634 ).
    ENDIF.
    DATA(t4635) = |return|.
    DATA t4636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4635 p1 = t4636 ).
    ENDIF.
    DATA(t4637) = |release|.
    DATA t4638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4637 p1 = t4638 ).
    ENDIF.
    t4578 = t7->set( p0 = t4580 p1 = t4581 ).
    DATA t4639 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4641) = |TRUNC|.
    DATA t4642 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4643) = VALUE f( ).
    DATA(t4644) = VALUE f( ).
    DATA(t4645) = VALUE f( ).
    DATA(t4646) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4646 = zcl_lnt_built_in=>counter.
    t4645 = t4646.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4647 TYPE f.
    DATA(t4649) = CONV f( 1 ).
    t4647 = t4645 + t4649.
    zcl_lnt_built_in=>counter = t4647.
    t4644 = t4645.
    t4643 = t4644.
    DATA t4651 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4655 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4655 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4657 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4659) = |val|.
    DATA t4660 TYPE REF TO zcl_lnt_float_type.
    DATA t4661 TYPE REF TO zcl_lnt_abstract_type_data.
    t4660 = NEW zcl_lnt_float_type( i_input_967e = t4661 ).
    t4657 = t4655->set( p0 = t4659 p1 = t4660 ).
    t4651 = t4655.
    DATA t4664 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4665 TYPE REF TO zcl_lnt_integer_type.
    DATA t4666 TYPE REF TO zcl_lnt_abstract_type_data.
    t4665 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4666 ).
    t4664 = t4665.
    DATA t4667 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4669 TYPE REF TO zcl_lnt_abap_release.
    DATA t4671 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4673 TYPE REF TO zcl_lnt_built_in_method.
    t4642 = NEW zcl_lnt_ibuiltin_method( i_counter = t4643 i_mandatory = t4651 i_optional = t4667 i_release_7928 = t4669 i_predicate = t4671 i_return_fa63 = t4664 i_cache = t4673 ).
    CREATE OBJECT t4642->zlnt_view_ownkeys_b0e8086400eb.
    t4642->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4675 ).
    DATA t4676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4676 ).
    ENDIF.
    DATA t4677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4642->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4677 ).
    ENDIF.
    CREATE OBJECT t4642->zlnt_json_ownkeys_70e5fd461788.
    t4642->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4678) = |counter|.
    DATA t4679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4678 p1 = t4679 ).
    DATA(t4680) = |mandatory|.
    DATA t4681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4680 p1 = t4681 ).
    ENDIF.
    DATA(t4682) = |return|.
    DATA t4683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4682 p1 = t4683 ).
    ENDIF.
    t4639 = t7->set( p0 = t4641 p1 = t4642 ).
    DATA t4684 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4686) = |UTCLONG_ADD|.
    DATA t4687 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4688) = VALUE f( ).
    DATA(t4689) = VALUE f( ).
    DATA(t4690) = VALUE f( ).
    DATA(t4691) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4691 = zcl_lnt_built_in=>counter.
    t4690 = t4691.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4692 TYPE f.
    DATA(t4694) = CONV f( 1 ).
    t4692 = t4690 + t4694.
    zcl_lnt_built_in=>counter = t4692.
    t4689 = t4690.
    t4688 = t4689.
    DATA t4696 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4700 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4700 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4704) = |val|.
    DATA t4705 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t4706 TYPE REF TO zcl_lnt_abstract_type_data.
    t4705 = NEW zcl_lnt_utc_long_type( i_input_967e = t4706 ).
    t4702 = t4700->set( p0 = t4704 p1 = t4705 ).
    t4696 = t4700.
    DATA t4709 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4713 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4713 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4715 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4717) = |days|.
    DATA t4718 TYPE REF TO zcl_lnt_integer_type.
    DATA t4719 TYPE REF TO zcl_lnt_abstract_type_data.
    t4718 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4719 ).
    t4715 = t4713->set( p0 = t4717 p1 = t4718 ).
    DATA t4720 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4722) = |hour|.
    DATA t4723 TYPE REF TO zcl_lnt_integer_type.
    DATA t4724 TYPE REF TO zcl_lnt_abstract_type_data.
    t4723 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4724 ).
    t4720 = t4713->set( p0 = t4722 p1 = t4723 ).
    DATA t4725 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4727) = |minutes|.
    DATA t4728 TYPE REF TO zcl_lnt_integer_type.
    DATA t4729 TYPE REF TO zcl_lnt_abstract_type_data.
    t4728 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4729 ).
    t4725 = t4713->set( p0 = t4727 p1 = t4728 ).
    DATA t4730 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4732) = |seconds|.
    DATA t4733 TYPE REF TO zcl_lnt_float_type.
    DATA t4734 TYPE REF TO zcl_lnt_abstract_type_data.
    t4733 = NEW zcl_lnt_float_type( i_input_967e = t4734 ).
    t4730 = t4713->set( p0 = t4732 p1 = t4733 ).
    t4709 = t4713.
    DATA t4737 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4738 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t4739 TYPE REF TO zcl_lnt_abstract_type_data.
    t4738 = NEW zcl_lnt_utc_long_type( i_input_967e = t4739 ).
    t4737 = t4738.
    DATA t4740 TYPE REF TO zcl_lnt_abap_release.
    DATA t4744 TYPE REF TO zcl_lnt_abap_release.
    DATA t4745 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4745 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4746) = |v754|.
    t4744 = t4745->get( p0 = t4746 ).
    t4740 = t4744.
    DATA t4748 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4750 TYPE REF TO zcl_lnt_built_in_method.
    t4687 = NEW zcl_lnt_ibuiltin_method( i_counter = t4688 i_mandatory = t4696 i_optional = t4709 i_release_7928 = t4740 i_predicate = t4748 i_return_fa63 = t4737 i_cache = t4750 ).
    CREATE OBJECT t4687->zlnt_view_ownkeys_b0e8086400eb.
    t4687->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4752 ).
    DATA t4753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4753 ).
    ENDIF.
    DATA t4754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t4754 ).
    ENDIF.
    DATA t4755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4755 ).
    ENDIF.
    DATA t4756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4756 ).
    ENDIF.
    CREATE OBJECT t4687->zlnt_json_ownkeys_70e5fd461788.
    t4687->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4757) = |counter|.
    DATA t4758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4757 p1 = t4758 ).
    DATA(t4759) = |mandatory|.
    DATA t4760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4759 p1 = t4760 ).
    ENDIF.
    DATA(t4761) = |optional|.
    DATA t4762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4761 p1 = t4762 ).
    ENDIF.
    DATA(t4763) = |return|.
    DATA t4764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4763 p1 = t4764 ).
    ENDIF.
    DATA(t4765) = |release|.
    DATA t4766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4765 p1 = t4766 ).
    ENDIF.
    t4684 = t7->set( p0 = t4686 p1 = t4687 ).
    DATA t4767 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4769) = |UTCLONG_CURRENT|.
    DATA t4770 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4771) = VALUE f( ).
    DATA(t4772) = VALUE f( ).
    DATA(t4773) = VALUE f( ).
    DATA(t4774) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4774 = zcl_lnt_built_in=>counter.
    t4773 = t4774.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4775 TYPE f.
    DATA(t4777) = CONV f( 1 ).
    t4775 = t4773 + t4777.
    zcl_lnt_built_in=>counter = t4775.
    t4772 = t4773.
    t4771 = t4772.
    DATA t4779 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4780 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t4781 TYPE REF TO zcl_lnt_abstract_type_data.
    t4780 = NEW zcl_lnt_utc_long_type( i_input_967e = t4781 ).
    t4779 = t4780.
    DATA t4782 TYPE REF TO zcl_lnt_abap_release.
    DATA t4786 TYPE REF TO zcl_lnt_abap_release.
    DATA t4787 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4787 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4788) = |v754|.
    t4786 = t4787->get( p0 = t4788 ).
    t4782 = t4786.
    DATA t4790 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4792 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4794 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4796 TYPE REF TO zcl_lnt_built_in_method.
    t4770 = NEW zcl_lnt_ibuiltin_method( i_counter = t4771 i_mandatory = t4790 i_optional = t4792 i_release_7928 = t4782 i_predicate = t4794 i_return_fa63 = t4779 i_cache = t4796 ).
    CREATE OBJECT t4770->zlnt_view_ownkeys_b0e8086400eb.
    t4770->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4798 ).
    DATA t4799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4799 ).
    ENDIF.
    DATA t4800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4770->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4800 ).
    ENDIF.
    CREATE OBJECT t4770->zlnt_json_ownkeys_70e5fd461788.
    t4770->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4801) = |counter|.
    DATA t4802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4801 p1 = t4802 ).
    DATA(t4803) = |return|.
    DATA t4804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4803 p1 = t4804 ).
    ENDIF.
    DATA(t4805) = |release|.
    DATA t4806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4805 p1 = t4806 ).
    ENDIF.
    t4767 = t7->set( p0 = t4769 p1 = t4770 ).
    DATA t4807 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4809) = |UTCLONG_DIFF|.
    DATA t4810 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4811) = VALUE f( ).
    DATA(t4812) = VALUE f( ).
    DATA(t4813) = VALUE f( ).
    DATA(t4814) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4814 = zcl_lnt_built_in=>counter.
    t4813 = t4814.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4815 TYPE f.
    DATA(t4817) = CONV f( 1 ).
    t4815 = t4813 + t4817.
    zcl_lnt_built_in=>counter = t4815.
    t4812 = t4813.
    t4811 = t4812.
    DATA t4819 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4823 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4823 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4825 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4827) = |high|.
    DATA t4828 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t4829 TYPE REF TO zcl_lnt_abstract_type_data.
    t4828 = NEW zcl_lnt_utc_long_type( i_input_967e = t4829 ).
    t4825 = t4823->set( p0 = t4827 p1 = t4828 ).
    DATA t4830 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4832) = |low|.
    DATA t4833 TYPE REF TO zcl_lnt_utc_long_type.
    DATA t4834 TYPE REF TO zcl_lnt_abstract_type_data.
    t4833 = NEW zcl_lnt_utc_long_type( i_input_967e = t4834 ).
    t4830 = t4823->set( p0 = t4832 p1 = t4833 ).
    t4819 = t4823.
    DATA t4837 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4838 TYPE REF TO zcl_lnt_float_type.
    DATA t4839 TYPE REF TO zcl_lnt_abstract_type_data.
    t4838 = NEW zcl_lnt_float_type( i_input_967e = t4839 ).
    t4837 = t4838.
    DATA t4840 TYPE REF TO zcl_lnt_abap_release.
    DATA t4844 TYPE REF TO zcl_lnt_abap_release.
    DATA t4845 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4845 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4846) = |v754|.
    t4844 = t4845->get( p0 = t4846 ).
    t4840 = t4844.
    DATA t4848 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4850 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4852 TYPE REF TO zcl_lnt_built_in_method.
    t4810 = NEW zcl_lnt_ibuiltin_method( i_counter = t4811 i_mandatory = t4819 i_optional = t4848 i_release_7928 = t4840 i_predicate = t4850 i_return_fa63 = t4837 i_cache = t4852 ).
    CREATE OBJECT t4810->zlnt_view_ownkeys_b0e8086400eb.
    t4810->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4810->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4854 ).
    DATA t4855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4810->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4855 ).
    ENDIF.
    DATA t4856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4810->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4856 ).
    ENDIF.
    DATA t4857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4810->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4857 ).
    ENDIF.
    CREATE OBJECT t4810->zlnt_json_ownkeys_70e5fd461788.
    t4810->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4858) = |counter|.
    DATA t4859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4858 p1 = t4859 ).
    DATA(t4860) = |mandatory|.
    DATA t4861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4860 p1 = t4861 ).
    ENDIF.
    DATA(t4862) = |return|.
    DATA t4863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4862 p1 = t4863 ).
    ENDIF.
    DATA(t4864) = |release|.
    DATA t4865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4864 p1 = t4865 ).
    ENDIF.
    t4807 = t7->set( p0 = t4809 p1 = t4810 ).
    DATA t4866 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4868) = |XSDBOOL|.
    DATA t4869 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4870) = VALUE f( ).
    DATA(t4871) = VALUE f( ).
    DATA(t4872) = VALUE f( ).
    DATA(t4873) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4873 = zcl_lnt_built_in=>counter.
    t4872 = t4873.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4874 TYPE f.
    DATA(t4876) = CONV f( 1 ).
    t4874 = t4872 + t4876.
    zcl_lnt_built_in=>counter = t4874.
    t4871 = t4872.
    t4870 = t4871.
    DATA t4878 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4882 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4882 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4884 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4886) = |val|.
    DATA(t4887) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
    t4884 = t4882->set( p0 = t4886 p1 = t4887 ).
    t4878 = t4882.
    DATA t4890 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4891 TYPE REF TO zcl_lnt_character_type.
    DATA(t4892) = CONV f( 1 ).
    DATA t4893 TYPE REF TO zcl_lnt_abstract_type_data.
    t4891 = NEW zcl_lnt_character_type( i_length = t4892 i_extra = t4893 ).
    t4890 = t4891.
    DATA t4894 TYPE REF TO zcl_lnt_abap_release.
    DATA t4898 TYPE REF TO zcl_lnt_abap_release.
    DATA t4899 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4899 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4900) = |v740sp08|.
    t4898 = t4899->get( p0 = t4900 ).
    t4894 = t4898.
    DATA t4902 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4904 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4906 TYPE REF TO zcl_lnt_built_in_method.
    t4869 = NEW zcl_lnt_ibuiltin_method( i_counter = t4870 i_mandatory = t4878 i_optional = t4902 i_release_7928 = t4894 i_predicate = t4904 i_return_fa63 = t4890 i_cache = t4906 ).
    CREATE OBJECT t4869->zlnt_view_ownkeys_b0e8086400eb.
    t4869->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4869->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4908 ).
    DATA t4909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4869->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4909 ).
    ENDIF.
    DATA t4910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4869->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4910 ).
    ENDIF.
    DATA t4911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4869->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t4911 ).
    ENDIF.
    CREATE OBJECT t4869->zlnt_json_ownkeys_70e5fd461788.
    t4869->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4912) = |counter|.
    DATA t4913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4912 p1 = t4913 ).
    DATA(t4914) = |mandatory|.
    DATA t4915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4914 p1 = t4915 ).
    ENDIF.
    DATA(t4916) = |return|.
    DATA t4917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4916 p1 = t4917 ).
    ENDIF.
    DATA(t4918) = |release|.
    DATA t4919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4918 p1 = t4919 ).
    ENDIF.
    t4866 = t7->set( p0 = t4868 p1 = t4869 ).
    DATA t4920 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA(t4922) = |XSTRLEN|.
    DATA t4923 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4924) = VALUE f( ).
    DATA(t4925) = VALUE f( ).
    DATA(t4926) = VALUE f( ).
    DATA(t4927) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4927 = zcl_lnt_built_in=>counter.
    t4926 = t4927.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA t4928 TYPE f.
    DATA(t4930) = CONV f( 1 ).
    t4928 = t4926 + t4930.
    zcl_lnt_built_in=>counter = t4928.
    t4925 = t4926.
    t4924 = t4925.
    DATA t4932 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4936 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4936 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4938 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t4940) = |val|.
    DATA t4941 TYPE REF TO zcl_lnt_x_sequence_type.
    DATA t4942 TYPE REF TO zcl_lnt_abstract_type_data.
    t4941 = NEW zcl_lnt_x_sequence_type( i_input_967e = t4942 ).
    t4938 = t4936->set( p0 = t4940 p1 = t4941 ).
    t4932 = t4936.
    DATA t4945 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4946 TYPE REF TO zcl_lnt_integer_type.
    DATA t4947 TYPE REF TO zcl_lnt_abstract_type_data.
    t4946 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4947 ).
    t4945 = t4946.
    DATA t4948 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4950 TYPE REF TO zcl_lnt_abap_release.
    DATA t4952 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4954 TYPE REF TO zcl_lnt_built_in_method.
    t4923 = NEW zcl_lnt_ibuiltin_method( i_counter = t4924 i_mandatory = t4932 i_optional = t4948 i_release_7928 = t4950 i_predicate = t4952 i_return_fa63 = t4945 i_cache = t4954 ).
    CREATE OBJECT t4923->zlnt_view_ownkeys_b0e8086400eb.
    t4923->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4923->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t4956 ).
    DATA t4957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4923->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t4957 ).
    ENDIF.
    DATA t4958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t4923->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t4958 ).
    ENDIF.
    CREATE OBJECT t4923->zlnt_json_ownkeys_70e5fd461788.
    t4923->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t4959) = |counter|.
    DATA t4960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4959 p1 = t4960 ).
    DATA(t4961) = |mandatory|.
    DATA t4962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4961 p1 = t4962 ).
    ENDIF.
    DATA(t4963) = |return|.
    DATA t4964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = t4963 p1 = t4964 ).
    ENDIF.
    t4920 = t7->set( p0 = t4922 p1 = t4923 ).
    zcl_lnt_built_in=>methods = t7.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d771_f6e2203afa60.
  ENDMETHOD.
ENDCLASS.

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
    me->row = CONV f( 1 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
  ENDMETHOD.

  METHOD build_definition.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_method.
    DATA(t2) = i_name.
    DATA t4 TYPE REF TO zcl_lnt_built_in_method.
    t4 = t1->cache.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      result = t1->cache.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_lx_identifier.
    DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t14->has = abap_true.
    t14->value = CONV f( 1 ).
    t10 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t14 ) i_str = t2 ).
    DATA t16 TYPE REF TO zcl_lnt_built_in_method.
    DATA(t19) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t21 TYPE f.
    t21 = t1->counter.
    t16 = NEW zcl_lnt_built_in_method( i_token = t10 i_filename = t19 i_method = t1 i_row = t21 ).
    t1->cache = t16.
    DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `cache`.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cache` p1 = t28 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |cache| p1 = t30 ).
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD search_builtin.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
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
    t10 = t12->get( p0 = t13 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_ibuiltin_method.
    t28 = t10.
    DATA t30 TYPE string.
    t30 = t1->value.
    result = zcl_lnt_built_in=>build_definition( i_method = t28 i_name = t30 ).

  ENDMETHOD.

  METHOD is_predicate.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_ibuiltin_method.
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
    t10 = t12->get( p0 = t13 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    result = t10->predicate.

  ENDMETHOD.

  METHOD get_types.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3 = zcl_lnt_built_in=>types_cache.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t8 = CAST zlnt_runtime_arra_c22708faf2e3( me->build_sy( ) ).
      DATA t11 TYPE REF TO zcl_lnt_lx_identifier.
      DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t15->has = abap_true.
      t15->value = CONV f( 1 ).
      t11 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t15 ) i_str = |abap_bool| ).
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t20) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t25 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = |ABAP_BOOL|.
      t26 = t30.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = |ABAP_BOOL|.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t40 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t26 i_conversion_exit = t38 i_derived_from_constant = t40 i_ddic_name = t36 i_rtti_name = t42 i_description = t44 ).
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
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t49 ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t51 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t18 = NEW zcl_lnt_typed_identifier( i_token = t11 i_filename = t20 i_type_9913 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t25 ) i_meta = t53 i_value = t54 ).
      t8->load( ).
      APPEND t18 TO t8->items.
      t8->save( ).
      DATA t56 TYPE REF TO zcl_lnt_lx_identifier.
      DATA(t60) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t60->has = abap_true.
      t60->value = CONV f( 1 ).
      t56 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t60 ) i_str = |cursor| ).
      DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t65) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = |CURSOR|.
      t70 = t74.
      DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t80->has = abap_true.
      t80->value = |CURSOR|.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t69 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t70 i_conversion_exit = t82 i_derived_from_constant = t84 i_ddic_name = t80 i_rtti_name = t86 i_description = t88 ).
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
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t93 ).
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t95 ).
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t63 = NEW zcl_lnt_typed_identifier( i_token = t56 i_filename = t65 i_type_9913 = zcl_lnt_integer_type=>get_db65( i_input_967e = t69 ) i_meta = t97 i_value = t98 ).
      t8->load( ).
      APPEND t63 TO t8->items.
      t8->save( ).
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      zcl_lnt_built_in=>types_cache = t8.
    ENDIF.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    result = zcl_lnt_built_in=>types_cache.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = i_extras.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t6 = zcl_lnt_built_in=>get_cache.
    t6->load( ).
    IF xsdbool( lines( t6->items ) = 0 ) = abap_true.
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
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t18 = zcl_lnt_built_in=>get_cache.
      t18->load( ).
      t8 = lines( t18->items ).
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t19 = zcl_lnt_built_in=>get_cache.
      DATA t20 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t22 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t24 TYPE f.
      DATA t25 TYPE REF TO zcl_lnt_built_in.
      t25 = me.
      DATA t27 TYPE f.
      t27 = t25->row.
      DATA(t33) = CONV f( 1 ).
      t25->row = t27 + t33.
      DELETE t25->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
      t24 = t27.
      DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t36->has = abap_true.
      t36->value = CONV f( 1 ).
      t22 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t24 i_col = t36 ) i_str = |screen| ).
      DATA(t40) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t41 TYPE REF TO zcl_lnt_void_type.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = |screen|.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t41 = zcl_lnt_void_type=>get_db65( i_voided = t45 i_qualified_name = t47 ).
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t51.
      t51->load( ).
      APPEND |built-in| TO t51->items.
      t51->save( ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t20 = NEW zcl_lnt_typed_identifier( i_token = t22 i_filename = t40 i_type_9913 = t41 i_meta = t51 i_value = t57 ).
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t58 = zcl_lnt_built_in=>get_cache.
      DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t61 TYPE REF TO zcl_lnt_abstract_type.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = me->build_constant( i_name = |%_ENDIAN| i_type_9913 = t61 i_value = t62 ).
      t58->load( ).
      APPEND t59 TO t58->items.
      t58->save( ).
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t63 = zcl_lnt_built_in=>get_cache.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t66 TYPE REF TO zcl_lnt_abstract_type.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t64 = me->build_constant( i_name = |%_CHARSIZE| i_type_9913 = t66 i_value = t67 ).
      t63->load( ).
      APPEND t64 TO t63->items.
      t63->save( ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t68 = zcl_lnt_built_in=>get_cache.
      DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t71 TYPE REF TO zcl_lnt_character_type.
      DATA t73 TYPE REF TO zcl_lnt_abstract_type_data.
      t71 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t73 ).
      DATA(t76) = ||.
      DATA t77 TYPE c LENGTH 1.
      t77 = cl_abap_conv_in_ce=>uccpi( 8 ).
      CONCATENATE t76 t77 INTO t76 RESPECTING BLANKS.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t76.
      t69 = me->build_constant( i_name = |%_BACKSPACE| i_type_9913 = t71 i_value = t78 ).
      t68->load( ).
      APPEND t69 TO t68->items.
      t68->save( ).
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t80 = zcl_lnt_built_in=>get_cache.
      DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t83 TYPE REF TO zcl_lnt_character_type.
      DATA t85 TYPE REF TO zcl_lnt_abstract_type_data.
      t83 = NEW zcl_lnt_character_type( i_length = CONV f( 2 ) i_extra = t85 ).
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = |\r\n|.
      t81 = me->build_constant( i_name = |%_CR_LF| i_type_9913 = t83 i_value = t89 ).
      t80->load( ).
      APPEND t81 TO t80->items.
      t80->save( ).
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t91 = zcl_lnt_built_in=>get_cache.
      DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t94 TYPE REF TO zcl_lnt_character_type.
      DATA t96 TYPE REF TO zcl_lnt_abstract_type_data.
      t94 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t96 ).
      DATA(t99) = ||.
      DATA t100 TYPE c LENGTH 1.
      t100 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t99 t100 INTO t99 RESPECTING BLANKS.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t99.
      t92 = me->build_constant( i_name = |%_FORMFEED| i_type_9913 = t94 i_value = t101 ).
      t91->load( ).
      APPEND t92 TO t91->items.
      t91->save( ).
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t103 = zcl_lnt_built_in=>get_cache.
      DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t106 TYPE REF TO zcl_lnt_character_type.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type_data.
      t106 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t108 ).
      DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t112->has = abap_true.
      t112->value = |\t|.
      t104 = me->build_constant( i_name = |%_HORIZONTAL_TAB| i_type_9913 = t106 i_value = t112 ).
      t103->load( ).
      APPEND t104 TO t103->items.
      t103->save( ).
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t114 = zcl_lnt_built_in=>get_cache.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t117 TYPE REF TO zcl_lnt_character_type.
      DATA t119 TYPE REF TO zcl_lnt_abstract_type_data.
      t117 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t119 ).
      DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t123->has = abap_true.
      t123->value = |��|.
      t115 = me->build_constant( i_name = |%_MAXCHAR| i_type_9913 = t117 i_value = t123 ).
      t114->load( ).
      APPEND t115 TO t114->items.
      t114->save( ).
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t125 = zcl_lnt_built_in=>get_cache.
      DATA t126 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t128 TYPE REF TO zcl_lnt_character_type.
      DATA t130 TYPE REF TO zcl_lnt_abstract_type_data.
      t128 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t130 ).
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
      t126 = me->build_constant( i_name = |%_MINCHAR| i_type_9913 = t128 i_value = t136 ).
      t125->load( ).
      APPEND t126 TO t125->items.
      t125->save( ).
      DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t138 = zcl_lnt_built_in=>get_cache.
      DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t141 TYPE REF TO zcl_lnt_character_type.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type_data.
      t141 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t143 ).
      DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t147->has = abap_true.
      t147->value = |\n|.
      t139 = me->build_constant( i_name = |%_NEWLINE| i_type_9913 = t141 i_value = t147 ).
      t138->load( ).
      APPEND t139 TO t138->items.
      t138->save( ).
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t149 = zcl_lnt_built_in=>get_cache.
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t152 TYPE REF TO zcl_lnt_character_type.
      DATA t154 TYPE REF TO zcl_lnt_abstract_type_data.
      t152 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t154 ).
      DATA(t157) = ||.
      DATA t158 TYPE c LENGTH 1.
      t158 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t157 t158 INTO t157 RESPECTING BLANKS.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = t157.
      t150 = me->build_constant( i_name = |%_VERTICAL_TAB| i_type_9913 = t152 i_value = t159 ).
      t149->load( ).
      APPEND t150 TO t149->items.
      t149->save( ).
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t161 = zcl_lnt_built_in=>get_cache.
      DATA t162 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t164 TYPE REF TO zcl_lnt_character_type.
      DATA t168 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t173->has = abap_true.
      t173->value = |ABAP_BOOL|.
      t169 = t173.
      DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t179->has = abap_true.
      t179->value = |ABAP_BOOL|.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t168 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t169 i_conversion_exit = t181 i_derived_from_constant = t183 i_ddic_name = t179 i_rtti_name = t185 i_description = t187 ).
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
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t192 ).
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t194 ).
      ENDIF.
      t164 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t168 ).
      DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t199->has = abap_true.
      t199->value = |' '|.
      t162 = me->build_constant( i_name = |abap_false| i_type_9913 = t164 i_value = t199 ).
      t161->load( ).
      APPEND t162 TO t161->items.
      t161->save( ).
      DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t201 = zcl_lnt_built_in=>get_cache.
      DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t204 TYPE REF TO zcl_lnt_character_type.
      DATA t208 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t213->has = abap_true.
      t213->value = |ABAP_BOOL|.
      t209 = t213.
      DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t219->has = abap_true.
      t219->value = |ABAP_BOOL|.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t223 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t208 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t209 i_conversion_exit = t221 i_derived_from_constant = t223 i_ddic_name = t219 i_rtti_name = t225 i_description = t227 ).
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
      DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t232 ).
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t234 ).
      ENDIF.
      t204 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t208 ).
      DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t239->has = abap_true.
      t239->value = |'X'|.
      t202 = me->build_constant( i_name = |abap_true| i_type_9913 = t204 i_value = t239 ).
      t201->load( ).
      APPEND t202 TO t201->items.
      t201->save( ).
      DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t241 = zcl_lnt_built_in=>get_cache.
      DATA t242 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t244 TYPE REF TO zcl_lnt_character_type.
      DATA t248 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t253->has = abap_true.
      t253->value = |ABAP_BOOL|.
      t249 = t253.
      DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t259->has = abap_true.
      t259->value = |ABAP_BOOL|.
      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t263 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t248 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t249 i_conversion_exit = t261 i_derived_from_constant = t263 i_ddic_name = t259 i_rtti_name = t265 i_description = t267 ).
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
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t272 ).
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t274 ).
      ENDIF.
      t244 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t248 ).
      DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t279->has = abap_true.
      t279->value = |'-'|.
      t242 = me->build_constant( i_name = |abap_undefined| i_type_9913 = t244 i_value = t279 ).
      t241->load( ).
      APPEND t242 TO t241->items.
      t241->save( ).
      DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t281 = zcl_lnt_built_in=>get_cache.
      DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t284 TYPE REF TO zcl_lnt_character_type.
      DATA t288 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t293->has = abap_true.
      t293->value = |ABAP_BOOL|.
      t289 = t293.
      DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t299->has = abap_true.
      t299->value = |ABAP_BOOL|.
      DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t288 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t289 i_conversion_exit = t301 i_derived_from_constant = t303 i_ddic_name = t299 i_rtti_name = t305 i_description = t307 ).
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
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t312 ).
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t314 ).
      ENDIF.
      t284 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t288 ).
      DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t319->has = abap_true.
      t319->value = |' '|.
      t282 = me->build_constant( i_name = |abap_off| i_type_9913 = t284 i_value = t319 ).
      t281->load( ).
      APPEND t282 TO t281->items.
      t281->save( ).
      DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t321 = zcl_lnt_built_in=>get_cache.
      DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t324 TYPE REF TO zcl_lnt_character_type.
      DATA t328 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t333->has = abap_true.
      t333->value = |ABAP_BOOL|.
      t329 = t333.
      DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t339->has = abap_true.
      t339->value = |ABAP_BOOL|.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t343 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t328 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t329 i_conversion_exit = t341 i_derived_from_constant = t343 i_ddic_name = t339 i_rtti_name = t345 i_description = t347 ).
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
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t352 ).
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t354 ).
      ENDIF.
      t324 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t328 ).
      DATA(t359) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t359->has = abap_true.
      t359->value = |'X'|.
      t322 = me->build_constant( i_name = |abap_on| i_type_9913 = t324 i_value = t359 ).
      t321->load( ).
      APPEND t322 TO t321->items.
      t321->save( ).
      DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t361 = zcl_lnt_built_in=>get_cache.
      DATA t362 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t364 TYPE REF TO zcl_lnt_integer_type.
      DATA t365 TYPE REF TO zcl_lnt_abstract_type_data.
      t364 = zcl_lnt_integer_type=>get_db65( i_input_967e = t365 ).
      DATA(t369) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t369->has = abap_true.
      t369->value = |0|.
      t362 = me->build_constant( i_name = |col_background| i_type_9913 = t364 i_value = t369 ).
      t361->load( ).
      APPEND t362 TO t361->items.
      t361->save( ).
      DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t371 = zcl_lnt_built_in=>get_cache.
      DATA t372 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t374 TYPE REF TO zcl_lnt_integer_type.
      DATA t375 TYPE REF TO zcl_lnt_abstract_type_data.
      t374 = zcl_lnt_integer_type=>get_db65( i_input_967e = t375 ).
      DATA(t379) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t379->has = abap_true.
      t379->value = |1|.
      t372 = me->build_constant( i_name = |col_heading| i_type_9913 = t374 i_value = t379 ).
      t371->load( ).
      APPEND t372 TO t371->items.
      t371->save( ).
      DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t381 = zcl_lnt_built_in=>get_cache.
      DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t384 TYPE REF TO zcl_lnt_integer_type.
      DATA t385 TYPE REF TO zcl_lnt_abstract_type_data.
      t384 = zcl_lnt_integer_type=>get_db65( i_input_967e = t385 ).
      DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t389->has = abap_true.
      t389->value = |4|.
      t382 = me->build_constant( i_name = |col_key| i_type_9913 = t384 i_value = t389 ).
      t381->load( ).
      APPEND t382 TO t381->items.
      t381->save( ).
      DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t391 = zcl_lnt_built_in=>get_cache.
      DATA t392 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t394 TYPE REF TO zcl_lnt_integer_type.
      DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
      t394 = zcl_lnt_integer_type=>get_db65( i_input_967e = t395 ).
      DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t399->has = abap_true.
      t399->value = |6|.
      t392 = me->build_constant( i_name = |col_negative| i_type_9913 = t394 i_value = t399 ).
      t391->load( ).
      APPEND t392 TO t391->items.
      t391->save( ).
      DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t401 = zcl_lnt_built_in=>get_cache.
      DATA t402 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t404 TYPE REF TO zcl_lnt_integer_type.
      DATA t405 TYPE REF TO zcl_lnt_abstract_type_data.
      t404 = zcl_lnt_integer_type=>get_db65( i_input_967e = t405 ).
      DATA(t409) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t409->has = abap_true.
      t409->value = |7|.
      t402 = me->build_constant( i_name = |col_group| i_type_9913 = t404 i_value = t409 ).
      t401->load( ).
      APPEND t402 TO t401->items.
      t401->save( ).
      DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t411 = zcl_lnt_built_in=>get_cache.
      DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t414 TYPE REF TO zcl_lnt_integer_type.
      DATA t415 TYPE REF TO zcl_lnt_abstract_type_data.
      t414 = zcl_lnt_integer_type=>get_db65( i_input_967e = t415 ).
      DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t419->has = abap_true.
      t419->value = |2|.
      t412 = me->build_constant( i_name = |col_normal| i_type_9913 = t414 i_value = t419 ).
      t411->load( ).
      APPEND t412 TO t411->items.
      t411->save( ).
      DATA t421 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t421 = zcl_lnt_built_in=>get_cache.
      DATA t422 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t424 TYPE REF TO zcl_lnt_integer_type.
      DATA t425 TYPE REF TO zcl_lnt_abstract_type_data.
      t424 = zcl_lnt_integer_type=>get_db65( i_input_967e = t425 ).
      DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t429->has = abap_true.
      t429->value = |5|.
      t422 = me->build_constant( i_name = |col_positive| i_type_9913 = t424 i_value = t429 ).
      t421->load( ).
      APPEND t422 TO t421->items.
      t421->save( ).
      DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t431 = zcl_lnt_built_in=>get_cache.
      DATA t432 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t434 TYPE REF TO zcl_lnt_integer_type.
      DATA t435 TYPE REF TO zcl_lnt_abstract_type_data.
      t434 = zcl_lnt_integer_type=>get_db65( i_input_967e = t435 ).
      DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t439->has = abap_true.
      t439->value = |3|.
      t432 = me->build_constant( i_name = |col_total| i_type_9913 = t434 i_value = t439 ).
      t431->load( ).
      APPEND t432 TO t431->items.
      t431->save( ).
      DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      t441 = zcl_lnt_built_in=>get_cache.
      DATA t442 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t444 TYPE REF TO zcl_lnt_character_type.
      DATA t448 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t453) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t453->has = abap_true.
      t453->value = abap_true.
      DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t448 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t455 i_conversion_exit = t457 i_derived_from_constant = t453 i_ddic_name = t459 i_rtti_name = t461 i_description = t463 ).
      CREATE OBJECT t448->zlnt_view_ownkeys_b0e8086400eb.
      t448->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t448->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t465 ).
      CREATE OBJECT t448->zlnt_json_ownkeys_70e5fd461788.
      t448->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t448->zlnt_json_ownkeys_70e5fd461788->put( p0 = |derivedFromConstant| p1 = t467 ).
      t444 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t448 ).
      DATA(t472) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t472->has = abap_true.
      t472->value = |' '|.
      t442 = me->build_constant( i_name = |space| i_type_9913 = t444 i_value = t472 ).
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
    t2->load( ).
    t474 = lines( t2->items ).
    DATA t485 TYPE string.
    DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t489->has = abap_true.
    t489->value = |\||.
    t485 = t1->join( p0 = t489 ).
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
        DATA t511 TYPE f.
        DATA t512 TYPE REF TO zcl_lnt_built_in.
        t512 = me.
        DATA t514 TYPE f.
        t514 = t512->row.
        DATA(t520) = CONV f( 1 ).
        t512->row = t514 + t520.
        DELETE t512->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
        t511 = t514.
        DATA(t523) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t523->has = abap_true.
        t523->value = CONV f( 1 ).
        t509 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t511 i_col = t523 ) i_str = t506 ).
        DATA t525 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t525.
        IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
          zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
        ENDIF.
        t525 = zcl_lnt_built_in=>extras_cache.
        DATA t526 TYPE REF TO zcl_lnt_typed_identifier.
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
        CREATE OBJECT t539.
        t539->load( ).
        APPEND |read_only| TO t539->items.
        t539->save( ).
        t539->load( ).
        APPEND |built-in| TO t539->items.
        t539->save( ).
        t536 = t539.
        DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t549.
        CLEAR t549.
        CREATE OBJECT t549.
        t549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t549->sval = |'?'|.
        t526 = NEW zcl_lnt_typed_identifier( i_token = t509 i_filename = t528 i_type_9913 = t529 i_meta = t536 i_value = t549 ).
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
    t2->load( ).
    t552 = lines( t2->items ).
    result = t2.

  ENDMETHOD.

  METHOD build_variable.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_built_in.
    t6 = me.
    DATA t8 TYPE f.
    t8 = t6->row.
    DATA(t14) = CONV f( 1 ).
    t6->row = t8 + t14.
    DELETE t6->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t5 = t8.
    DATA(t17) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t17->has = abap_true.
    t17->value = CONV f( 1 ).
    t3 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t5 i_col = t17 ) i_str = t1 ).
    DATA(t21) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t22 TYPE REF TO zcl_lnt_void_type.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t1.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t22 = zcl_lnt_void_type=>get_db65( i_voided = t26 i_qualified_name = t28 ).
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t32.
    t32->load( ).
    APPEND |built-in| TO t32->items.
    t32->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t3 i_filename = t21 i_type_9913 = t22 i_meta = t32 i_value = t38 ).

  ENDMETHOD.

  METHOD build_sy.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t4 TYPE REF TO zcl_lnt_istructure_component.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
    t7 = zcl_lnt_integer_type=>get_db65( i_input_967e = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = NEW zcl_lnt_istructure_component( i_name = |index| i_type_9913 = t7 i_as_include = t10 i_suffix = t12 ).
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
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t17 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t19 ).
    ENDIF.
    t1->load( ).
    APPEND t4 TO t1->items.
    t1->save( ).
    DATA t21 TYPE REF TO zcl_lnt_istructure_component.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    DATA t26 TYPE REF TO zcl_lnt_abstract_type_data.
    t24 = zcl_lnt_integer_type=>get_db65( i_input_967e = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_istructure_component( i_name = |pagno| i_type_9913 = t24 i_as_include = t27 i_suffix = t29 ).
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
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t34 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t36 ).
    ENDIF.
    t1->load( ).
    APPEND t21 TO t1->items.
    t1->save( ).
    DATA t38 TYPE REF TO zcl_lnt_istructure_component.
    DATA t41 TYPE REF TO zcl_lnt_abstract_type.
    DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
    t41 = zcl_lnt_integer_type=>get_db65( i_input_967e = t43 ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t38 = NEW zcl_lnt_istructure_component( i_name = |tabix| i_type_9913 = t41 i_as_include = t44 i_suffix = t46 ).
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
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t51 ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t38->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t53 ).
    ENDIF.
    t1->load( ).
    APPEND t38 TO t1->items.
    t1->save( ).
    DATA t55 TYPE REF TO zcl_lnt_istructure_component.
    DATA t58 TYPE REF TO zcl_lnt_abstract_type.
    DATA t60 TYPE REF TO zcl_lnt_abstract_type_data.
    t58 = zcl_lnt_integer_type=>get_db65( i_input_967e = t60 ).
    DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t55 = NEW zcl_lnt_istructure_component( i_name = |tfill| i_type_9913 = t58 i_as_include = t61 i_suffix = t63 ).
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
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t68 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t70 ).
    ENDIF.
    t1->load( ).
    APPEND t55 TO t1->items.
    t1->save( ).
    DATA t72 TYPE REF TO zcl_lnt_istructure_component.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    DATA t77 TYPE REF TO zcl_lnt_abstract_type_data.
    t75 = zcl_lnt_integer_type=>get_db65( i_input_967e = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t72 = NEW zcl_lnt_istructure_component( i_name = |tlopc| i_type_9913 = t75 i_as_include = t78 i_suffix = t80 ).
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
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t85 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t87 ).
    ENDIF.
    t1->load( ).
    APPEND t72 TO t1->items.
    t1->save( ).
    DATA t89 TYPE REF TO zcl_lnt_istructure_component.
    DATA t92 TYPE REF TO zcl_lnt_abstract_type.
    DATA t94 TYPE REF TO zcl_lnt_abstract_type_data.
    t92 = zcl_lnt_integer_type=>get_db65( i_input_967e = t94 ).
    DATA t95 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t89 = NEW zcl_lnt_istructure_component( i_name = |tmaxl| i_type_9913 = t92 i_as_include = t95 i_suffix = t97 ).
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
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t102 ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t104 ).
    ENDIF.
    t1->load( ).
    APPEND t89 TO t1->items.
    t1->save( ).
    DATA t106 TYPE REF TO zcl_lnt_istructure_component.
    DATA t109 TYPE REF TO zcl_lnt_abstract_type.
    DATA t111 TYPE REF TO zcl_lnt_abstract_type_data.
    t109 = zcl_lnt_integer_type=>get_db65( i_input_967e = t111 ).
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t106 = NEW zcl_lnt_istructure_component( i_name = |toccu| i_type_9913 = t109 i_as_include = t112 i_suffix = t114 ).
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
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t119 ).
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t121 ).
    ENDIF.
    t1->load( ).
    APPEND t106 TO t1->items.
    t1->save( ).
    DATA t123 TYPE REF TO zcl_lnt_istructure_component.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type.
    DATA t128 TYPE REF TO zcl_lnt_abstract_type_data.
    t126 = zcl_lnt_integer_type=>get_db65( i_input_967e = t128 ).
    DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t123 = NEW zcl_lnt_istructure_component( i_name = |ttabc| i_type_9913 = t126 i_as_include = t129 i_suffix = t131 ).
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
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t136 ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t138 ).
    ENDIF.
    t1->load( ).
    APPEND t123 TO t1->items.
    t1->save( ).
    DATA t140 TYPE REF TO zcl_lnt_istructure_component.
    DATA t143 TYPE REF TO zcl_lnt_abstract_type.
    DATA t145 TYPE REF TO zcl_lnt_abstract_type_data.
    t143 = zcl_lnt_integer_type=>get_db65( i_input_967e = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t140 = NEW zcl_lnt_istructure_component( i_name = |tstis| i_type_9913 = t143 i_as_include = t146 i_suffix = t148 ).
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
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t153 ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t155 ).
    ENDIF.
    t1->load( ).
    APPEND t140 TO t1->items.
    t1->save( ).
    DATA t157 TYPE REF TO zcl_lnt_istructure_component.
    DATA t160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t162 TYPE REF TO zcl_lnt_abstract_type_data.
    t160 = zcl_lnt_integer_type=>get_db65( i_input_967e = t162 ).
    DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t157 = NEW zcl_lnt_istructure_component( i_name = |ttabi| i_type_9913 = t160 i_as_include = t163 i_suffix = t165 ).
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
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t157->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t170 ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t157->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t172 ).
    ENDIF.
    t1->load( ).
    APPEND t157 TO t1->items.
    t1->save( ).
    DATA t174 TYPE REF TO zcl_lnt_istructure_component.
    DATA t177 TYPE REF TO zcl_lnt_abstract_type.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type_data.
    t177 = zcl_lnt_integer_type=>get_db65( i_input_967e = t179 ).
    DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t174 = NEW zcl_lnt_istructure_component( i_name = |dbcnt| i_type_9913 = t177 i_as_include = t180 i_suffix = t182 ).
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
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t187 ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t189 ).
    ENDIF.
    t1->load( ).
    APPEND t174 TO t1->items.
    t1->save( ).
    DATA t191 TYPE REF TO zcl_lnt_istructure_component.
    DATA t194 TYPE REF TO zcl_lnt_abstract_type.
    DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
    t194 = zcl_lnt_integer_type=>get_db65( i_input_967e = t196 ).
    DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t191 = NEW zcl_lnt_istructure_component( i_name = |fdpos| i_type_9913 = t194 i_as_include = t197 i_suffix = t199 ).
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
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t204 ).
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t206 ).
    ENDIF.
    t1->load( ).
    APPEND t191 TO t1->items.
    t1->save( ).
    DATA t208 TYPE REF TO zcl_lnt_istructure_component.
    DATA t211 TYPE REF TO zcl_lnt_abstract_type.
    DATA t213 TYPE REF TO zcl_lnt_abstract_type_data.
    t211 = zcl_lnt_integer_type=>get_db65( i_input_967e = t213 ).
    DATA t214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t208 = NEW zcl_lnt_istructure_component( i_name = |colno| i_type_9913 = t211 i_as_include = t214 i_suffix = t216 ).
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
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t221 ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t208->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t208->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t223 ).
    ENDIF.
    t1->load( ).
    APPEND t208 TO t1->items.
    t1->save( ).
    DATA t225 TYPE REF TO zcl_lnt_istructure_component.
    DATA t228 TYPE REF TO zcl_lnt_abstract_type.
    DATA t230 TYPE REF TO zcl_lnt_abstract_type_data.
    t228 = zcl_lnt_integer_type=>get_db65( i_input_967e = t230 ).
    DATA t231 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t225 = NEW zcl_lnt_istructure_component( i_name = |linct| i_type_9913 = t228 i_as_include = t231 i_suffix = t233 ).
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
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t225->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t238 ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t225->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t240 ).
    ENDIF.
    t1->load( ).
    APPEND t225 TO t1->items.
    t1->save( ).
    DATA t242 TYPE REF TO zcl_lnt_istructure_component.
    DATA t245 TYPE REF TO zcl_lnt_abstract_type.
    DATA t247 TYPE REF TO zcl_lnt_abstract_type_data.
    t245 = zcl_lnt_integer_type=>get_db65( i_input_967e = t247 ).
    DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t242 = NEW zcl_lnt_istructure_component( i_name = |linno| i_type_9913 = t245 i_as_include = t248 i_suffix = t250 ).
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
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t255 ).
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t257 ).
    ENDIF.
    t1->load( ).
    APPEND t242 TO t1->items.
    t1->save( ).
    DATA t259 TYPE REF TO zcl_lnt_istructure_component.
    DATA t262 TYPE REF TO zcl_lnt_abstract_type.
    DATA t264 TYPE REF TO zcl_lnt_abstract_type_data.
    t262 = zcl_lnt_integer_type=>get_db65( i_input_967e = t264 ).
    DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t259 = NEW zcl_lnt_istructure_component( i_name = |linsz| i_type_9913 = t262 i_as_include = t265 i_suffix = t267 ).
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
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t259->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t272 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t259->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t259->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t274 ).
    ENDIF.
    t1->load( ).
    APPEND t259 TO t1->items.
    t1->save( ).
    DATA t276 TYPE REF TO zcl_lnt_istructure_component.
    DATA t279 TYPE REF TO zcl_lnt_abstract_type.
    DATA t281 TYPE REF TO zcl_lnt_abstract_type_data.
    t279 = zcl_lnt_integer_type=>get_db65( i_input_967e = t281 ).
    DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t276 = NEW zcl_lnt_istructure_component( i_name = |pagct| i_type_9913 = t279 i_as_include = t282 i_suffix = t284 ).
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
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t289 ).
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t291 ).
    ENDIF.
    t1->load( ).
    APPEND t276 TO t1->items.
    t1->save( ).
    DATA t293 TYPE REF TO zcl_lnt_istructure_component.
    DATA t296 TYPE REF TO zcl_lnt_abstract_type.
    DATA t298 TYPE REF TO zcl_lnt_abstract_type_data.
    t296 = zcl_lnt_integer_type=>get_db65( i_input_967e = t298 ).
    DATA t299 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t293 = NEW zcl_lnt_istructure_component( i_name = |macol| i_type_9913 = t296 i_as_include = t299 i_suffix = t301 ).
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
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t306 ).
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t308 ).
    ENDIF.
    t1->load( ).
    APPEND t293 TO t1->items.
    t1->save( ).
    DATA t310 TYPE REF TO zcl_lnt_istructure_component.
    DATA t313 TYPE REF TO zcl_lnt_abstract_type.
    DATA t315 TYPE REF TO zcl_lnt_abstract_type_data.
    t313 = zcl_lnt_integer_type=>get_db65( i_input_967e = t315 ).
    DATA t316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t310 = NEW zcl_lnt_istructure_component( i_name = |marow| i_type_9913 = t313 i_as_include = t316 i_suffix = t318 ).
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
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t310->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t323 ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t310->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t325 ).
    ENDIF.
    t1->load( ).
    APPEND t310 TO t1->items.
    t1->save( ).
    DATA t327 TYPE REF TO zcl_lnt_istructure_component.
    DATA t330 TYPE REF TO zcl_lnt_abstract_type.
    DATA t332 TYPE REF TO zcl_lnt_abstract_type_data.
    t330 = zcl_lnt_integer_type=>get_db65( i_input_967e = t332 ).
    DATA t333 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t327 = NEW zcl_lnt_istructure_component( i_name = |tleng| i_type_9913 = t330 i_as_include = t333 i_suffix = t335 ).
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
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t340 ).
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t342 ).
    ENDIF.
    t1->load( ).
    APPEND t327 TO t1->items.
    t1->save( ).
    DATA t344 TYPE REF TO zcl_lnt_istructure_component.
    DATA t347 TYPE REF TO zcl_lnt_abstract_type.
    DATA t349 TYPE REF TO zcl_lnt_abstract_type_data.
    t347 = zcl_lnt_integer_type=>get_db65( i_input_967e = t349 ).
    DATA t350 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t344 = NEW zcl_lnt_istructure_component( i_name = |sfoff| i_type_9913 = t347 i_as_include = t350 i_suffix = t352 ).
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
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t357 ).
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t359 ).
    ENDIF.
    t1->load( ).
    APPEND t344 TO t1->items.
    t1->save( ).
    DATA t361 TYPE REF TO zcl_lnt_istructure_component.
    DATA t364 TYPE REF TO zcl_lnt_abstract_type.
    DATA t366 TYPE REF TO zcl_lnt_abstract_type_data.
    t364 = zcl_lnt_integer_type=>get_db65( i_input_967e = t366 ).
    DATA t367 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t361 = NEW zcl_lnt_istructure_component( i_name = |willi| i_type_9913 = t364 i_as_include = t367 i_suffix = t369 ).
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
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t374 ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t376 ).
    ENDIF.
    t1->load( ).
    APPEND t361 TO t1->items.
    t1->save( ).
    DATA t378 TYPE REF TO zcl_lnt_istructure_component.
    DATA t381 TYPE REF TO zcl_lnt_abstract_type.
    DATA t383 TYPE REF TO zcl_lnt_abstract_type_data.
    t381 = zcl_lnt_integer_type=>get_db65( i_input_967e = t383 ).
    DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t378 = NEW zcl_lnt_istructure_component( i_name = |lilli| i_type_9913 = t381 i_as_include = t384 i_suffix = t386 ).
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
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t391 ).
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t393 ).
    ENDIF.
    t1->load( ).
    APPEND t378 TO t1->items.
    t1->save( ).
    DATA t395 TYPE REF TO zcl_lnt_istructure_component.
    DATA t398 TYPE REF TO zcl_lnt_abstract_type.
    DATA t400 TYPE REF TO zcl_lnt_abstract_type_data.
    t398 = zcl_lnt_integer_type=>get_db65( i_input_967e = t400 ).
    DATA t401 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t395 = NEW zcl_lnt_istructure_component( i_name = |subrc| i_type_9913 = t398 i_as_include = t401 i_suffix = t403 ).
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
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t408 ).
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t395->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t410 ).
    ENDIF.
    t1->load( ).
    APPEND t395 TO t1->items.
    t1->save( ).
    DATA t412 TYPE REF TO zcl_lnt_istructure_component.
    DATA t415 TYPE REF TO zcl_lnt_abstract_type.
    DATA t417 TYPE REF TO zcl_lnt_abstract_type_data.
    t415 = zcl_lnt_integer_type=>get_db65( i_input_967e = t417 ).
    DATA t418 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t412 = NEW zcl_lnt_istructure_component( i_name = |fleng| i_type_9913 = t415 i_as_include = t418 i_suffix = t420 ).
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
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t425 ).
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t427 ).
    ENDIF.
    t1->load( ).
    APPEND t412 TO t1->items.
    t1->save( ).
    DATA t429 TYPE REF TO zcl_lnt_istructure_component.
    DATA t432 TYPE REF TO zcl_lnt_abstract_type.
    DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
    t432 = zcl_lnt_integer_type=>get_db65( i_input_967e = t434 ).
    DATA t435 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t429 = NEW zcl_lnt_istructure_component( i_name = |cucol| i_type_9913 = t432 i_as_include = t435 i_suffix = t437 ).
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
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t429->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t442 ).
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t429->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t429->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t444 ).
    ENDIF.
    t1->load( ).
    APPEND t429 TO t1->items.
    t1->save( ).
    DATA t446 TYPE REF TO zcl_lnt_istructure_component.
    DATA t449 TYPE REF TO zcl_lnt_abstract_type.
    DATA t451 TYPE REF TO zcl_lnt_abstract_type_data.
    t449 = zcl_lnt_integer_type=>get_db65( i_input_967e = t451 ).
    DATA t452 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t446 = NEW zcl_lnt_istructure_component( i_name = |curow| i_type_9913 = t449 i_as_include = t452 i_suffix = t454 ).
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
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t459 ).
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t461 ).
    ENDIF.
    t1->load( ).
    APPEND t446 TO t1->items.
    t1->save( ).
    DATA t463 TYPE REF TO zcl_lnt_istructure_component.
    DATA t466 TYPE REF TO zcl_lnt_abstract_type.
    DATA t468 TYPE REF TO zcl_lnt_abstract_type_data.
    t466 = zcl_lnt_integer_type=>get_db65( i_input_967e = t468 ).
    DATA t469 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t463 = NEW zcl_lnt_istructure_component( i_name = |lsind| i_type_9913 = t466 i_as_include = t469 i_suffix = t471 ).
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
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t476 ).
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t478 ).
    ENDIF.
    t1->load( ).
    APPEND t463 TO t1->items.
    t1->save( ).
    DATA t480 TYPE REF TO zcl_lnt_istructure_component.
    DATA t483 TYPE REF TO zcl_lnt_abstract_type.
    DATA t485 TYPE REF TO zcl_lnt_abstract_type_data.
    t483 = zcl_lnt_integer_type=>get_db65( i_input_967e = t485 ).
    DATA t486 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t480 = NEW zcl_lnt_istructure_component( i_name = |listi| i_type_9913 = t483 i_as_include = t486 i_suffix = t488 ).
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
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t493 ).
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t480->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t495 ).
    ENDIF.
    t1->load( ).
    APPEND t480 TO t1->items.
    t1->save( ).
    DATA t497 TYPE REF TO zcl_lnt_istructure_component.
    DATA t500 TYPE REF TO zcl_lnt_abstract_type.
    DATA t502 TYPE REF TO zcl_lnt_abstract_type_data.
    t500 = zcl_lnt_integer_type=>get_db65( i_input_967e = t502 ).
    DATA t503 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t505 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t497 = NEW zcl_lnt_istructure_component( i_name = |stepl| i_type_9913 = t500 i_as_include = t503 i_suffix = t505 ).
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
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t510 ).
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t512 ).
    ENDIF.
    t1->load( ).
    APPEND t497 TO t1->items.
    t1->save( ).
    DATA t514 TYPE REF TO zcl_lnt_istructure_component.
    DATA t517 TYPE REF TO zcl_lnt_abstract_type.
    DATA t519 TYPE REF TO zcl_lnt_abstract_type_data.
    t517 = zcl_lnt_integer_type=>get_db65( i_input_967e = t519 ).
    DATA t520 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t514 = NEW zcl_lnt_istructure_component( i_name = |tpagi| i_type_9913 = t517 i_as_include = t520 i_suffix = t522 ).
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
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t527 ).
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t529 ).
    ENDIF.
    t1->load( ).
    APPEND t514 TO t1->items.
    t1->save( ).
    DATA t531 TYPE REF TO zcl_lnt_istructure_component.
    DATA t534 TYPE REF TO zcl_lnt_abstract_type.
    DATA t536 TYPE REF TO zcl_lnt_abstract_type_data.
    t534 = zcl_lnt_integer_type=>get_db65( i_input_967e = t536 ).
    DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t539 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t531 = NEW zcl_lnt_istructure_component( i_name = |winx1| i_type_9913 = t534 i_as_include = t537 i_suffix = t539 ).
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
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t531->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t544 ).
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t531->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t546 ).
    ENDIF.
    t1->load( ).
    APPEND t531 TO t1->items.
    t1->save( ).
    DATA t548 TYPE REF TO zcl_lnt_istructure_component.
    DATA t551 TYPE REF TO zcl_lnt_abstract_type.
    DATA t553 TYPE REF TO zcl_lnt_abstract_type_data.
    t551 = zcl_lnt_integer_type=>get_db65( i_input_967e = t553 ).
    DATA t554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t548 = NEW zcl_lnt_istructure_component( i_name = |winy1| i_type_9913 = t551 i_as_include = t554 i_suffix = t556 ).
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
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t548->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t561 ).
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t548->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t548->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t563 ).
    ENDIF.
    t1->load( ).
    APPEND t548 TO t1->items.
    t1->save( ).
    DATA t565 TYPE REF TO zcl_lnt_istructure_component.
    DATA t568 TYPE REF TO zcl_lnt_abstract_type.
    DATA t570 TYPE REF TO zcl_lnt_abstract_type_data.
    t568 = zcl_lnt_integer_type=>get_db65( i_input_967e = t570 ).
    DATA t571 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t565 = NEW zcl_lnt_istructure_component( i_name = |winx2| i_type_9913 = t568 i_as_include = t571 i_suffix = t573 ).
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
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t578 ).
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t565->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t580 ).
    ENDIF.
    t1->load( ).
    APPEND t565 TO t1->items.
    t1->save( ).
    DATA t582 TYPE REF TO zcl_lnt_istructure_component.
    DATA t585 TYPE REF TO zcl_lnt_abstract_type.
    DATA t587 TYPE REF TO zcl_lnt_abstract_type_data.
    t585 = zcl_lnt_integer_type=>get_db65( i_input_967e = t587 ).
    DATA t588 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t582 = NEW zcl_lnt_istructure_component( i_name = |winy2| i_type_9913 = t585 i_as_include = t588 i_suffix = t590 ).
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
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t582->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t595 ).
    DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t582->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t582->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t597 ).
    ENDIF.
    t1->load( ).
    APPEND t582 TO t1->items.
    t1->save( ).
    DATA t599 TYPE REF TO zcl_lnt_istructure_component.
    DATA t602 TYPE REF TO zcl_lnt_abstract_type.
    DATA t604 TYPE REF TO zcl_lnt_abstract_type_data.
    t602 = zcl_lnt_integer_type=>get_db65( i_input_967e = t604 ).
    DATA t605 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t599 = NEW zcl_lnt_istructure_component( i_name = |winco| i_type_9913 = t602 i_as_include = t605 i_suffix = t607 ).
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
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t612 ).
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t599->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t599->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t614 ).
    ENDIF.
    t1->load( ).
    APPEND t599 TO t1->items.
    t1->save( ).
    DATA t616 TYPE REF TO zcl_lnt_istructure_component.
    DATA t619 TYPE REF TO zcl_lnt_abstract_type.
    DATA t621 TYPE REF TO zcl_lnt_abstract_type_data.
    t619 = zcl_lnt_integer_type=>get_db65( i_input_967e = t621 ).
    DATA t622 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t624 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t616 = NEW zcl_lnt_istructure_component( i_name = |winro| i_type_9913 = t619 i_as_include = t622 i_suffix = t624 ).
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
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t616->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t629 ).
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t616->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t616->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t631 ).
    ENDIF.
    t1->load( ).
    APPEND t616 TO t1->items.
    t1->save( ).
    DATA t633 TYPE REF TO zcl_lnt_istructure_component.
    DATA t636 TYPE REF TO zcl_lnt_abstract_type.
    DATA t638 TYPE REF TO zcl_lnt_abstract_type_data.
    t636 = zcl_lnt_integer_type=>get_db65( i_input_967e = t638 ).
    DATA t639 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t633 = NEW zcl_lnt_istructure_component( i_name = |windi| i_type_9913 = t636 i_as_include = t639 i_suffix = t641 ).
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
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t646 ).
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t633->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t648 ).
    ENDIF.
    t1->load( ).
    APPEND t633 TO t1->items.
    t1->save( ).
    DATA t650 TYPE REF TO zcl_lnt_istructure_component.
    DATA t653 TYPE REF TO zcl_lnt_abstract_type.
    DATA t655 TYPE REF TO zcl_lnt_abstract_type_data.
    t653 = zcl_lnt_integer_type=>get_db65( i_input_967e = t655 ).
    DATA t656 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t658 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t650 = NEW zcl_lnt_istructure_component( i_name = |srows| i_type_9913 = t653 i_as_include = t656 i_suffix = t658 ).
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
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t650->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t663 ).
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t650->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t650->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t665 ).
    ENDIF.
    t1->load( ).
    APPEND t650 TO t1->items.
    t1->save( ).
    DATA t667 TYPE REF TO zcl_lnt_istructure_component.
    DATA t670 TYPE REF TO zcl_lnt_abstract_type.
    DATA t672 TYPE REF TO zcl_lnt_abstract_type_data.
    t670 = zcl_lnt_integer_type=>get_db65( i_input_967e = t672 ).
    DATA t673 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t667 = NEW zcl_lnt_istructure_component( i_name = |scols| i_type_9913 = t670 i_as_include = t673 i_suffix = t675 ).
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
    DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t667->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t680 ).
    DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t667->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t667->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t682 ).
    ENDIF.
    t1->load( ).
    APPEND t667 TO t1->items.
    t1->save( ).
    DATA t684 TYPE REF TO zcl_lnt_istructure_component.
    DATA t687 TYPE REF TO zcl_lnt_abstract_type.
    DATA t689 TYPE REF TO zcl_lnt_abstract_type_data.
    t687 = zcl_lnt_integer_type=>get_db65( i_input_967e = t689 ).
    DATA t690 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t692 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t684 = NEW zcl_lnt_istructure_component( i_name = |loopc| i_type_9913 = t687 i_as_include = t690 i_suffix = t692 ).
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
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t697 ).
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t699 ).
    ENDIF.
    t1->load( ).
    APPEND t684 TO t1->items.
    t1->save( ).
    DATA t701 TYPE REF TO zcl_lnt_istructure_component.
    DATA t704 TYPE REF TO zcl_lnt_abstract_type.
    DATA t706 TYPE REF TO zcl_lnt_abstract_type_data.
    t704 = zcl_lnt_integer_type=>get_db65( i_input_967e = t706 ).
    DATA t707 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t701 = NEW zcl_lnt_istructure_component( i_name = |folen| i_type_9913 = t704 i_as_include = t707 i_suffix = t709 ).
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
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t714 ).
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t701->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t701->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t716 ).
    ENDIF.
    t1->load( ).
    APPEND t701 TO t1->items.
    t1->save( ).
    DATA t718 TYPE REF TO zcl_lnt_istructure_component.
    DATA t721 TYPE REF TO zcl_lnt_abstract_type.
    DATA t723 TYPE REF TO zcl_lnt_abstract_type_data.
    t721 = zcl_lnt_integer_type=>get_db65( i_input_967e = t723 ).
    DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t718 = NEW zcl_lnt_istructure_component( i_name = |fodec| i_type_9913 = t721 i_as_include = t724 i_suffix = t726 ).
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
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t718->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t731 ).
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t718->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t718->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t733 ).
    ENDIF.
    t1->load( ).
    APPEND t718 TO t1->items.
    t1->save( ).
    DATA t735 TYPE REF TO zcl_lnt_istructure_component.
    DATA t738 TYPE REF TO zcl_lnt_abstract_type.
    DATA t740 TYPE REF TO zcl_lnt_abstract_type_data.
    t738 = zcl_lnt_integer_type=>get_db65( i_input_967e = t740 ).
    DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t735 = NEW zcl_lnt_istructure_component( i_name = |tzone| i_type_9913 = t738 i_as_include = t741 i_suffix = t743 ).
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
    DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t735->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t748 ).
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t735->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t750 ).
    ENDIF.
    t1->load( ).
    APPEND t735 TO t1->items.
    t1->save( ).
    DATA t752 TYPE REF TO zcl_lnt_istructure_component.
    DATA t755 TYPE REF TO zcl_lnt_abstract_type.
    DATA t758 TYPE REF TO zcl_lnt_abstract_type_data.
    t755 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t758 ).
    DATA t759 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t752 = NEW zcl_lnt_istructure_component( i_name = |dayst| i_type_9913 = t755 i_as_include = t759 i_suffix = t761 ).
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
    DATA t766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t766 ).
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t768 ).
    ENDIF.
    t1->load( ).
    APPEND t752 TO t1->items.
    t1->save( ).
    DATA t770 TYPE REF TO zcl_lnt_istructure_component.
    DATA t773 TYPE REF TO zcl_lnt_abstract_type.
    DATA t776 TYPE REF TO zcl_lnt_abstract_type_data.
    t773 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t776 ).
    DATA t777 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t770 = NEW zcl_lnt_istructure_component( i_name = |ftype| i_type_9913 = t773 i_as_include = t777 i_suffix = t779 ).
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
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t784 ).
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t786 ).
    ENDIF.
    t1->load( ).
    APPEND t770 TO t1->items.
    t1->save( ).
    DATA t788 TYPE REF TO zcl_lnt_istructure_component.
    DATA t791 TYPE REF TO zcl_lnt_abstract_type.
    DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t791 = NEW zcl_lnt_hex_type( i_length = CONV f( 2 ) i_qualified_name = t794 ).
    DATA t795 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t788 = NEW zcl_lnt_istructure_component( i_name = |appli| i_type_9913 = t791 i_as_include = t795 i_suffix = t797 ).
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
    DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t788->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t802 ).
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t788->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t788->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t804 ).
    ENDIF.
    t1->load( ).
    APPEND t788 TO t1->items.
    t1->save( ).
    DATA t806 TYPE REF TO zcl_lnt_istructure_component.
    DATA t809 TYPE REF TO zcl_lnt_abstract_type.
    DATA t811 TYPE REF TO zcl_lnt_abstract_type_data.
    t809 = zcl_lnt_any_type=>get_db65( i_input_967e = t811 ).
    DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t806 = NEW zcl_lnt_istructure_component( i_name = |fdayw| i_type_9913 = t809 i_as_include = t812 i_suffix = t814 ).
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
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t806->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t819 ).
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t806->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t806->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t821 ).
    ENDIF.
    t1->load( ).
    APPEND t806 TO t1->items.
    t1->save( ).
    DATA t823 TYPE REF TO zcl_lnt_istructure_component.
    DATA t826 TYPE REF TO zcl_lnt_abstract_type.
    DATA t830 TYPE REF TO zcl_lnt_abstract_type_data.
    t826 = NEW zcl_lnt_packed_type( i_length = CONV f( 5 ) i_decimals_2eed = CONV f( 0 ) i_extra = t830 ).
    DATA t831 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t823 = NEW zcl_lnt_istructure_component( i_name = |ccurs| i_type_9913 = t826 i_as_include = t831 i_suffix = t833 ).
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
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t823->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t838 ).
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t823->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t823->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t840 ).
    ENDIF.
    t1->load( ).
    APPEND t823 TO t1->items.
    t1->save( ).
    DATA t842 TYPE REF TO zcl_lnt_istructure_component.
    DATA t845 TYPE REF TO zcl_lnt_abstract_type.
    DATA t849 TYPE REF TO zcl_lnt_abstract_type_data.
    t845 = NEW zcl_lnt_packed_type( i_length = CONV f( 5 ) i_decimals_2eed = CONV f( 0 ) i_extra = t849 ).
    DATA t850 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t842 = NEW zcl_lnt_istructure_component( i_name = |ccurt| i_type_9913 = t845 i_as_include = t850 i_suffix = t852 ).
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
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t842->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t857 ).
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t842->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t842->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t859 ).
    ENDIF.
    t1->load( ).
    APPEND t842 TO t1->items.
    t1->save( ).
    DATA t861 TYPE REF TO zcl_lnt_istructure_component.
    DATA t864 TYPE REF TO zcl_lnt_abstract_type.
    DATA t867 TYPE REF TO zcl_lnt_abstract_type_data.
    t864 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t867 ).
    DATA t868 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t870 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t861 = NEW zcl_lnt_istructure_component( i_name = |debug| i_type_9913 = t864 i_as_include = t868 i_suffix = t870 ).
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
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t861->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t875 ).
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t861->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t861->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t877 ).
    ENDIF.
    t1->load( ).
    APPEND t861 TO t1->items.
    t1->save( ).
    DATA t879 TYPE REF TO zcl_lnt_istructure_component.
    DATA t882 TYPE REF TO zcl_lnt_abstract_type.
    DATA t885 TYPE REF TO zcl_lnt_abstract_type_data.
    t882 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t885 ).
    DATA t886 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t879 = NEW zcl_lnt_istructure_component( i_name = |ctype| i_type_9913 = t882 i_as_include = t886 i_suffix = t888 ).
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
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t879->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t893 ).
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t879->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t879->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t895 ).
    ENDIF.
    t1->load( ).
    APPEND t879 TO t1->items.
    t1->save( ).
    DATA t897 TYPE REF TO zcl_lnt_istructure_component.
    DATA t900 TYPE REF TO zcl_lnt_abstract_type.
    DATA t905 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t910) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t910->has = abap_true.
    t910->value = |sy-input|.
    DATA t912 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t914 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t905 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t910 i_conversion_exit = t912 i_derived_from_constant = t914 i_ddic_name = t916 i_rtti_name = t918 i_description = t920 ).
    CREATE OBJECT t905->zlnt_view_ownkeys_b0e8086400eb.
    t905->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t905->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t922 ).
    CREATE OBJECT t905->zlnt_json_ownkeys_70e5fd461788.
    t905->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t905->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t924 ).
    t900 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t905 ).
    DATA t926 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t928 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t897 = NEW zcl_lnt_istructure_component( i_name = |input| i_type_9913 = t900 i_as_include = t926 i_suffix = t928 ).
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
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t897->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t933 ).
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t897->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t897->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t935 ).
    ENDIF.
    t1->load( ).
    APPEND t897 TO t1->items.
    t1->save( ).
    DATA t937 TYPE REF TO zcl_lnt_istructure_component.
    DATA t940 TYPE REF TO zcl_lnt_abstract_type.
    DATA t945 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t950) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t950->has = abap_true.
    t950->value = |sy-langu|.
    t946 = t950.
    DATA(t956) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t956->has = abap_true.
    t956->value = |ISOLA|.
    DATA t958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t945 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t946 i_conversion_exit = t956 i_derived_from_constant = t958 i_ddic_name = t960 i_rtti_name = t962 i_description = t964 ).
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
    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t945->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t969 ).
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t945->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t945->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t971 ).
    ENDIF.
    t940 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t945 ).
    DATA t973 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t937 = NEW zcl_lnt_istructure_component( i_name = |langu| i_type_9913 = t940 i_as_include = t973 i_suffix = t975 ).
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
    DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t937->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t980 ).
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t937->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t937->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t982 ).
    ENDIF.
    t1->load( ).
    APPEND t937 TO t1->items.
    t1->save( ).
    DATA t984 TYPE REF TO zcl_lnt_istructure_component.
    DATA t987 TYPE REF TO zcl_lnt_abstract_type.
    DATA t989 TYPE REF TO zcl_lnt_abstract_type_data.
    t987 = zcl_lnt_integer_type=>get_db65( i_input_967e = t989 ).
    DATA t990 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t984 = NEW zcl_lnt_istructure_component( i_name = |modno| i_type_9913 = t987 i_as_include = t990 i_suffix = t992 ).
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
    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t984->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t997 ).
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t984->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t984->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t999 ).
    ENDIF.
    t1->load( ).
    APPEND t984 TO t1->items.
    t1->save( ).
    DATA t1001 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1004 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1009 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1014) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1014->has = abap_true.
    t1014->value = |sy-batch|.
    DATA t1016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1018 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1020 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1022 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1009 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1014 i_conversion_exit = t1016 i_derived_from_constant = t1018 i_ddic_name = t1020 i_rtti_name = t1022 i_description = t1024 ).
    CREATE OBJECT t1009->zlnt_view_ownkeys_b0e8086400eb.
    t1009->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1009->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1026 ).
    CREATE OBJECT t1009->zlnt_json_ownkeys_70e5fd461788.
    t1009->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1009->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1028 ).
    t1004 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1009 ).
    DATA t1030 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1001 = NEW zcl_lnt_istructure_component( i_name = |batch| i_type_9913 = t1004 i_as_include = t1030 i_suffix = t1032 ).
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
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1001->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1037 ).
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1001->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1001->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1039 ).
    ENDIF.
    t1->load( ).
    APPEND t1001 TO t1->items.
    t1->save( ).
    DATA t1041 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1044 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1049 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1054) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1054->has = abap_true.
    t1054->value = |sy-binpt|.
    DATA t1056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1058 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1049 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1054 i_conversion_exit = t1056 i_derived_from_constant = t1058 i_ddic_name = t1060 i_rtti_name = t1062 i_description = t1064 ).
    CREATE OBJECT t1049->zlnt_view_ownkeys_b0e8086400eb.
    t1049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1066 ).
    CREATE OBJECT t1049->zlnt_json_ownkeys_70e5fd461788.
    t1049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1049->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1068 ).
    t1044 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1049 ).
    DATA t1070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1041 = NEW zcl_lnt_istructure_component( i_name = |binpt| i_type_9913 = t1044 i_as_include = t1070 i_suffix = t1072 ).
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
    DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1041->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1077 ).
    DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1041->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1041->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1079 ).
    ENDIF.
    t1->load( ).
    APPEND t1041 TO t1->items.
    t1->save( ).
    DATA t1081 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1084 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1089 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1094) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1094->has = abap_true.
    t1094->value = |sy-calld|.
    DATA t1096 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1098 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1089 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1094 i_conversion_exit = t1096 i_derived_from_constant = t1098 i_ddic_name = t1100 i_rtti_name = t1102 i_description = t1104 ).
    CREATE OBJECT t1089->zlnt_view_ownkeys_b0e8086400eb.
    t1089->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1089->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1106 ).
    CREATE OBJECT t1089->zlnt_json_ownkeys_70e5fd461788.
    t1089->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1089->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1108 ).
    t1084 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1089 ).
    DATA t1110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1081 = NEW zcl_lnt_istructure_component( i_name = |calld| i_type_9913 = t1084 i_as_include = t1110 i_suffix = t1112 ).
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
    DATA t1117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1081->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1117 ).
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1081->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1081->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1119 ).
    ENDIF.
    t1->load( ).
    APPEND t1081 TO t1->items.
    t1->save( ).
    DATA t1121 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1124 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1129 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1134->has = abap_true.
    t1134->value = |sy-dynnr|.
    DATA t1136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1129 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1134 i_conversion_exit = t1136 i_derived_from_constant = t1138 i_ddic_name = t1140 i_rtti_name = t1142 i_description = t1144 ).
    CREATE OBJECT t1129->zlnt_view_ownkeys_b0e8086400eb.
    t1129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1146 ).
    CREATE OBJECT t1129->zlnt_json_ownkeys_70e5fd461788.
    t1129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1148 ).
    t1124 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t1129 ).
    DATA t1150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1121 = NEW zcl_lnt_istructure_component( i_name = |dynnr| i_type_9913 = t1124 i_as_include = t1150 i_suffix = t1152 ).
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
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1157 ).
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1121->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1121->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1159 ).
    ENDIF.
    t1->load( ).
    APPEND t1121 TO t1->items.
    t1->save( ).
    DATA t1161 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1164 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1169 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1174->has = abap_true.
    t1174->value = |sy-dyngr|.
    DATA t1176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1169 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1174 i_conversion_exit = t1176 i_derived_from_constant = t1178 i_ddic_name = t1180 i_rtti_name = t1182 i_description = t1184 ).
    CREATE OBJECT t1169->zlnt_view_ownkeys_b0e8086400eb.
    t1169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1186 ).
    CREATE OBJECT t1169->zlnt_json_ownkeys_70e5fd461788.
    t1169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1169->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1188 ).
    t1164 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t1169 ).
    DATA t1190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1161 = NEW zcl_lnt_istructure_component( i_name = |dyngr| i_type_9913 = t1164 i_as_include = t1190 i_suffix = t1192 ).
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
    DATA t1197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1197 ).
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1161->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1161->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1199 ).
    ENDIF.
    t1->load( ).
    APPEND t1161 TO t1->items.
    t1->save( ).
    DATA t1201 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1204 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1207 TYPE REF TO zcl_lnt_abstract_type_data.
    t1204 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1207 ).
    DATA t1208 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1201 = NEW zcl_lnt_istructure_component( i_name = |newpa| i_type_9913 = t1204 i_as_include = t1208 i_suffix = t1210 ).
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
    DATA t1215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1215 ).
    DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1217 ).
    ENDIF.
    t1->load( ).
    APPEND t1201 TO t1->items.
    t1->save( ).
    DATA t1219 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1222 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1225 TYPE REF TO zcl_lnt_abstract_type_data.
    t1222 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1225 ).
    DATA t1226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1219 = NEW zcl_lnt_istructure_component( i_name = |pri40| i_type_9913 = t1222 i_as_include = t1226 i_suffix = t1228 ).
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
    DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1233 ).
    DATA t1235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1235 ).
    ENDIF.
    t1->load( ).
    APPEND t1219 TO t1->items.
    t1->save( ).
    DATA t1237 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1243 TYPE REF TO zcl_lnt_abstract_type_data.
    t1240 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1243 ).
    DATA t1244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1237 = NEW zcl_lnt_istructure_component( i_name = |rstrt| i_type_9913 = t1240 i_as_include = t1244 i_suffix = t1246 ).
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
    DATA t1251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1237->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1251 ).
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1237->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1237->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1253 ).
    ENDIF.
    t1->load( ).
    APPEND t1237 TO t1->items.
    t1->save( ).
    DATA t1255 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1258 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1263 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1268->has = abap_true.
    t1268->value = |sy-wtitl|.
    DATA t1270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1263 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1268 i_conversion_exit = t1270 i_derived_from_constant = t1272 i_ddic_name = t1274 i_rtti_name = t1276 i_description = t1278 ).
    CREATE OBJECT t1263->zlnt_view_ownkeys_b0e8086400eb.
    t1263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1280 ).
    CREATE OBJECT t1263->zlnt_json_ownkeys_70e5fd461788.
    t1263->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1282 ).
    t1258 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1263 ).
    DATA t1284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1255 = NEW zcl_lnt_istructure_component( i_name = |wtitl| i_type_9913 = t1258 i_as_include = t1284 i_suffix = t1286 ).
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
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1291 ).
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1255->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1255->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1293 ).
    ENDIF.
    t1->load( ).
    APPEND t1255 TO t1->items.
    t1->save( ).
    DATA t1295 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1298 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1300 TYPE REF TO zcl_lnt_abstract_type_data.
    t1298 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1300 ).
    DATA t1301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1295 = NEW zcl_lnt_istructure_component( i_name = |cpage| i_type_9913 = t1298 i_as_include = t1301 i_suffix = t1303 ).
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
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1308 ).
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1295->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1295->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1310 ).
    ENDIF.
    t1->load( ).
    APPEND t1295 TO t1->items.
    t1->save( ).
    DATA t1312 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1315 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1320 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1325->has = abap_true.
    t1325->value = |sy-dbnam|.
    DATA t1327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1329 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1320 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1325 i_conversion_exit = t1327 i_derived_from_constant = t1329 i_ddic_name = t1331 i_rtti_name = t1333 i_description = t1335 ).
    CREATE OBJECT t1320->zlnt_view_ownkeys_b0e8086400eb.
    t1320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1337 ).
    CREATE OBJECT t1320->zlnt_json_ownkeys_70e5fd461788.
    t1320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1339 ).
    t1315 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t1320 ).
    DATA t1341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1312 = NEW zcl_lnt_istructure_component( i_name = |dbnam| i_type_9913 = t1315 i_as_include = t1341 i_suffix = t1343 ).
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
    DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1348 ).
    DATA t1350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1312->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1312->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1350 ).
    ENDIF.
    t1->load( ).
    APPEND t1312 TO t1->items.
    t1->save( ).
    DATA t1352 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1355 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1360 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1365->has = abap_true.
    t1365->value = |sy-mandt|.
    DATA t1367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1369 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1360 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1365 i_conversion_exit = t1367 i_derived_from_constant = t1369 i_ddic_name = t1371 i_rtti_name = t1373 i_description = t1375 ).
    CREATE OBJECT t1360->zlnt_view_ownkeys_b0e8086400eb.
    t1360->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1360->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1377 ).
    CREATE OBJECT t1360->zlnt_json_ownkeys_70e5fd461788.
    t1360->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1360->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1379 ).
    t1355 = NEW zcl_lnt_character_type( i_length = CONV f( 3 ) i_extra = t1360 ).
    DATA t1381 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1352 = NEW zcl_lnt_istructure_component( i_name = |mandt| i_type_9913 = t1355 i_as_include = t1381 i_suffix = t1383 ).
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
    DATA t1388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1388 ).
    DATA t1390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1352->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1390 ).
    ENDIF.
    t1->load( ).
    APPEND t1352 TO t1->items.
    t1->save( ).
    DATA t1392 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1395 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1398 TYPE REF TO zcl_lnt_abstract_type_data.
    t1395 = NEW zcl_lnt_character_type( i_length = CONV f( 3 ) i_extra = t1398 ).
    DATA t1399 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1392 = NEW zcl_lnt_istructure_component( i_name = |prefx| i_type_9913 = t1395 i_as_include = t1399 i_suffix = t1401 ).
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
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1406 ).
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1408 ).
    ENDIF.
    t1->load( ).
    APPEND t1392 TO t1->items.
    t1->save( ).
    DATA t1410 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1413 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1416 TYPE REF TO zcl_lnt_abstract_type_data.
    t1413 = NEW zcl_lnt_character_type( i_length = CONV f( 3 ) i_extra = t1416 ).
    DATA t1417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1410 = NEW zcl_lnt_istructure_component( i_name = |fmkey| i_type_9913 = t1413 i_as_include = t1417 i_suffix = t1419 ).
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
    DATA t1424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1424 ).
    DATA t1426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1410->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1410->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1426 ).
    ENDIF.
    t1->load( ).
    APPEND t1410 TO t1->items.
    t1->save( ).
    DATA t1428 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1431 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1431 = NEW zcl_lnt_numeric_type( i_length = CONV f( 1 ) i_qualified_name = t1434 ).
    DATA t1435 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1428 = NEW zcl_lnt_istructure_component( i_name = |pexpi| i_type_9913 = t1431 i_as_include = t1435 i_suffix = t1437 ).
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
    DATA t1442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1442 ).
    DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1428->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1444 ).
    ENDIF.
    t1->load( ).
    APPEND t1428 TO t1->items.
    t1->save( ).
    DATA t1446 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1449 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1449 = NEW zcl_lnt_numeric_type( i_length = CONV f( 1 ) i_qualified_name = t1452 ).
    DATA t1453 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1446 = NEW zcl_lnt_istructure_component( i_name = |prini| i_type_9913 = t1449 i_as_include = t1453 i_suffix = t1455 ).
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
    DATA t1460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1460 ).
    DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1462 ).
    ENDIF.
    t1->load( ).
    APPEND t1446 TO t1->items.
    t1->save( ).
    DATA t1464 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1467 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1470 TYPE REF TO zcl_lnt_abstract_type_data.
    t1467 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1470 ).
    DATA t1471 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1464 = NEW zcl_lnt_istructure_component( i_name = |primm| i_type_9913 = t1467 i_as_include = t1471 i_suffix = t1473 ).
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
    DATA t1478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1464->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1478 ).
    DATA t1480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1464->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1464->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1480 ).
    ENDIF.
    t1->load( ).
    APPEND t1464 TO t1->items.
    t1->save( ).
    DATA t1482 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1485 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1488 TYPE REF TO zcl_lnt_abstract_type_data.
    t1485 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1488 ).
    DATA t1489 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1482 = NEW zcl_lnt_istructure_component( i_name = |prrel| i_type_9913 = t1485 i_as_include = t1489 i_suffix = t1491 ).
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
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1482->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1496 ).
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1482->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1482->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1498 ).
    ENDIF.
    t1->load( ).
    APPEND t1482 TO t1->items.
    t1->save( ).
    DATA t1500 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1503 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1506 TYPE REF TO zcl_lnt_abstract_type_data.
    t1503 = NEW zcl_lnt_character_type( i_length = CONV f( 5 ) i_extra = t1506 ).
    DATA t1507 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1500 = NEW zcl_lnt_istructure_component( i_name = |playo| i_type_9913 = t1503 i_as_include = t1507 i_suffix = t1509 ).
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
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1514 ).
    DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1516 ).
    ENDIF.
    t1->load( ).
    APPEND t1500 TO t1->items.
    t1->save( ).
    DATA t1518 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1521 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1524 TYPE REF TO zcl_lnt_abstract_type_data.
    t1521 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1524 ).
    DATA t1525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1518 = NEW zcl_lnt_istructure_component( i_name = |prbig| i_type_9913 = t1521 i_as_include = t1525 i_suffix = t1527 ).
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
    DATA t1532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1532 ).
    DATA t1534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1518->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1534 ).
    ENDIF.
    t1->load( ).
    APPEND t1518 TO t1->items.
    t1->save( ).
    DATA t1536 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1539 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1542 TYPE REF TO zcl_lnt_abstract_type_data.
    t1539 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1542 ).
    DATA t1543 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1536 = NEW zcl_lnt_istructure_component( i_name = |playp| i_type_9913 = t1539 i_as_include = t1543 i_suffix = t1545 ).
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
    DATA t1550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1536->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1550 ).
    DATA t1552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1536->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1536->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1552 ).
    ENDIF.
    t1->load( ).
    APPEND t1536 TO t1->items.
    t1->save( ).
    DATA t1554 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1557 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1560 TYPE REF TO zcl_lnt_abstract_type_data.
    t1557 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1560 ).
    DATA t1561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1554 = NEW zcl_lnt_istructure_component( i_name = |prnew| i_type_9913 = t1557 i_as_include = t1561 i_suffix = t1563 ).
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
    DATA t1568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1554->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1568 ).
    DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1554->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1554->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1570 ).
    ENDIF.
    t1->load( ).
    APPEND t1554 TO t1->items.
    t1->save( ).
    DATA t1572 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1575 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1578 TYPE REF TO zcl_lnt_abstract_type_data.
    t1575 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1578 ).
    DATA t1579 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1572 = NEW zcl_lnt_istructure_component( i_name = |prlog| i_type_9913 = t1575 i_as_include = t1579 i_suffix = t1581 ).
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
    DATA t1586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1572->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1586 ).
    DATA t1588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1572->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1572->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1588 ).
    ENDIF.
    t1->load( ).
    APPEND t1572 TO t1->items.
    t1->save( ).
    DATA t1590 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1593 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1598 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1603) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1603->has = abap_true.
    t1603->value = |sy-pdest|.
    DATA t1605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1607 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1598 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1603 i_conversion_exit = t1605 i_derived_from_constant = t1607 i_ddic_name = t1609 i_rtti_name = t1611 i_description = t1613 ).
    CREATE OBJECT t1598->zlnt_view_ownkeys_b0e8086400eb.
    t1598->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1598->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1615 ).
    CREATE OBJECT t1598->zlnt_json_ownkeys_70e5fd461788.
    t1598->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1598->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1617 ).
    t1593 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t1598 ).
    DATA t1619 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1590 = NEW zcl_lnt_istructure_component( i_name = |pdest| i_type_9913 = t1593 i_as_include = t1619 i_suffix = t1621 ).
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
    DATA t1626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1590->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1626 ).
    DATA t1628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1590->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1590->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1628 ).
    ENDIF.
    t1->load( ).
    APPEND t1590 TO t1->items.
    t1->save( ).
    DATA t1630 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1633 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1636 TYPE REF TO zcl_lnt_abstract_type_data.
    t1633 = NEW zcl_lnt_character_type( i_length = CONV f( 12 ) i_extra = t1636 ).
    DATA t1637 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1630 = NEW zcl_lnt_istructure_component( i_name = |plist| i_type_9913 = t1633 i_as_include = t1637 i_suffix = t1639 ).
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
    DATA t1644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1630->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1644 ).
    DATA t1646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1630->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1630->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1646 ).
    ENDIF.
    t1->load( ).
    APPEND t1630 TO t1->items.
    t1->save( ).
    DATA t1648 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1651 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1651 = NEW zcl_lnt_numeric_type( i_length = CONV f( 2 ) i_qualified_name = t1654 ).
    DATA t1655 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1657 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1648 = NEW zcl_lnt_istructure_component( i_name = |pauth| i_type_9913 = t1651 i_as_include = t1655 i_suffix = t1657 ).
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
    DATA t1662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1648->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1662 ).
    DATA t1664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1648->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1648->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1664 ).
    ENDIF.
    t1->load( ).
    APPEND t1648 TO t1->items.
    t1->save( ).
    DATA t1666 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1669 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1672 TYPE REF TO zcl_lnt_abstract_type_data.
    t1669 = NEW zcl_lnt_character_type( i_length = CONV f( 6 ) i_extra = t1672 ).
    DATA t1673 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1675 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1666 = NEW zcl_lnt_istructure_component( i_name = |prdsn| i_type_9913 = t1669 i_as_include = t1673 i_suffix = t1675 ).
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
    DATA t1680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1666->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1680 ).
    DATA t1682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1666->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1666->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1682 ).
    ENDIF.
    t1->load( ).
    APPEND t1666 TO t1->items.
    t1->save( ).
    DATA t1684 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1687 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1690 TYPE REF TO zcl_lnt_abstract_type_data.
    t1687 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1690 ).
    DATA t1691 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1684 = NEW zcl_lnt_istructure_component( i_name = |pnwpa| i_type_9913 = t1687 i_as_include = t1691 i_suffix = t1693 ).
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
    DATA t1698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1698 ).
    DATA t1700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1684->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1684->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1700 ).
    ENDIF.
    t1->load( ).
    APPEND t1684 TO t1->items.
    t1->save( ).
    DATA t1702 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1705 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1710 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t1715) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t1715->has = abap_true.
    t1715->value = |sy-callr|.
    DATA t1717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1719 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t1725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1710 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1715 i_conversion_exit = t1717 i_derived_from_constant = t1719 i_ddic_name = t1721 i_rtti_name = t1723 i_description = t1725 ).
    CREATE OBJECT t1710->zlnt_view_ownkeys_b0e8086400eb.
    t1710->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1710->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1727 ).
    CREATE OBJECT t1710->zlnt_json_ownkeys_70e5fd461788.
    t1710->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1710->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1729 ).
    t1705 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t1710 ).
    DATA t1731 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1702 = NEW zcl_lnt_istructure_component( i_name = |callr| i_type_9913 = t1705 i_as_include = t1731 i_suffix = t1733 ).
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
    DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1702->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1738 ).
    DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1702->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1702->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1740 ).
    ENDIF.
    t1->load( ).
    APPEND t1702 TO t1->items.
    t1->save( ).
    DATA t1742 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1745 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1748 TYPE REF TO zcl_lnt_abstract_type_data.
    t1745 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t1748 ).
    DATA t1749 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1751 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1742 = NEW zcl_lnt_istructure_component( i_name = |repi2| i_type_9913 = t1745 i_as_include = t1749 i_suffix = t1751 ).
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
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1756 ).
    DATA t1758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1758 ).
    ENDIF.
    t1->load( ).
    APPEND t1742 TO t1->items.
    t1->save( ).
    DATA t1760 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1763 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1766 TYPE REF TO zcl_lnt_abstract_type_data.
    t1763 = NEW zcl_lnt_character_type( i_length = CONV f( 70 ) i_extra = t1766 ).
    DATA t1767 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1760 = NEW zcl_lnt_istructure_component( i_name = |rtitl| i_type_9913 = t1763 i_as_include = t1767 i_suffix = t1769 ).
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
    DATA t1774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1760->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1774 ).
    DATA t1776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1760->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1760->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1776 ).
    ENDIF.
    t1->load( ).
    APPEND t1760 TO t1->items.
    t1->save( ).
    DATA t1778 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1781 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1784 TYPE REF TO zcl_lnt_abstract_type_data.
    t1781 = NEW zcl_lnt_character_type( i_length = CONV f( 12 ) i_extra = t1784 ).
    DATA t1785 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1778 = NEW zcl_lnt_istructure_component( i_name = |prrec| i_type_9913 = t1781 i_as_include = t1785 i_suffix = t1787 ).
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
    DATA t1792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1792 ).
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1778->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1778->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1794 ).
    ENDIF.
    t1->load( ).
    APPEND t1778 TO t1->items.
    t1->save( ).
    DATA t1796 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1799 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1802 TYPE REF TO zcl_lnt_abstract_type_data.
    t1799 = NEW zcl_lnt_character_type( i_length = CONV f( 68 ) i_extra = t1802 ).
    DATA t1803 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1796 = NEW zcl_lnt_istructure_component( i_name = |prtxt| i_type_9913 = t1799 i_as_include = t1803 i_suffix = t1805 ).
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
    DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1796->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1810 ).
    DATA t1812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1796->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1796->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1812 ).
    ENDIF.
    t1->load( ).
    APPEND t1796 TO t1->items.
    t1->save( ).
    DATA t1814 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1817 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1820 TYPE REF TO zcl_lnt_abstract_type_data.
    t1817 = NEW zcl_lnt_character_type( i_length = CONV f( 12 ) i_extra = t1820 ).
    DATA t1821 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1814 = NEW zcl_lnt_istructure_component( i_name = |prabt| i_type_9913 = t1817 i_as_include = t1821 i_suffix = t1823 ).
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
    DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1814->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1828 ).
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1814->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1814->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1830 ).
    ENDIF.
    t1->load( ).
    APPEND t1814 TO t1->items.
    t1->save( ).
    DATA t1832 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1835 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1838 TYPE REF TO zcl_lnt_abstract_type_data.
    t1835 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t1838 ).
    DATA t1839 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1841 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1832 = NEW zcl_lnt_istructure_component( i_name = |lpass| i_type_9913 = t1835 i_as_include = t1839 i_suffix = t1841 ).
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
    DATA t1846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1832->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1846 ).
    DATA t1848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1832->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1848 ).
    ENDIF.
    t1->load( ).
    APPEND t1832 TO t1->items.
    t1->save( ).
    DATA t1850 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1853 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1856 TYPE REF TO zcl_lnt_abstract_type_data.
    t1853 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1856 ).
    DATA t1857 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1850 = NEW zcl_lnt_istructure_component( i_name = |nrpag| i_type_9913 = t1853 i_as_include = t1857 i_suffix = t1859 ).
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
    DATA t1864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1850->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1864 ).
    DATA t1866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1850->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1850->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1866 ).
    ENDIF.
    t1->load( ).
    APPEND t1850 TO t1->items.
    t1->save( ).
    DATA t1868 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1871 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1874 TYPE REF TO zcl_lnt_abstract_type_data.
    t1871 = NEW zcl_lnt_character_type( i_length = CONV f( 16 ) i_extra = t1874 ).
    DATA t1875 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1877 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1868 = NEW zcl_lnt_istructure_component( i_name = |paart| i_type_9913 = t1871 i_as_include = t1875 i_suffix = t1877 ).
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
    DATA t1882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1882 ).
    DATA t1884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1868->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1868->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1884 ).
    ENDIF.
    t1->load( ).
    APPEND t1868 TO t1->items.
    t1->save( ).
    DATA t1886 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1889 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1889 = NEW zcl_lnt_numeric_type( i_length = CONV f( 3 ) i_qualified_name = t1892 ).
    DATA t1893 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1886 = NEW zcl_lnt_istructure_component( i_name = |prcop| i_type_9913 = t1889 i_as_include = t1893 i_suffix = t1895 ).
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
    DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1886->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1900 ).
    DATA t1902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1886->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1886->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1902 ).
    ENDIF.
    t1->load( ).
    APPEND t1886 TO t1->items.
    t1->save( ).
    DATA t1904 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1907 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1910 TYPE REF TO zcl_lnt_abstract_type_data.
    t1907 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1910 ).
    DATA t1911 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1904 = NEW zcl_lnt_istructure_component( i_name = |batzs| i_type_9913 = t1907 i_as_include = t1911 i_suffix = t1913 ).
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
    DATA t1918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1904->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1918 ).
    DATA t1920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1904->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1904->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1920 ).
    ENDIF.
    t1->load( ).
    APPEND t1904 TO t1->items.
    t1->save( ).
    DATA t1922 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1925 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1928 TYPE REF TO zcl_lnt_abstract_type_data.
    t1925 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1928 ).
    DATA t1929 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1922 = NEW zcl_lnt_istructure_component( i_name = |bspld| i_type_9913 = t1925 i_as_include = t1929 i_suffix = t1931 ).
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
    DATA t1936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1936 ).
    DATA t1938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1938 ).
    ENDIF.
    t1->load( ).
    APPEND t1922 TO t1->items.
    t1->save( ).
    DATA t1940 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1943 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1946 TYPE REF TO zcl_lnt_abstract_type_data.
    t1943 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t1946 ).
    DATA t1947 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1940 = NEW zcl_lnt_istructure_component( i_name = |brep4| i_type_9913 = t1943 i_as_include = t1947 i_suffix = t1949 ).
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
    DATA t1954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1940->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1954 ).
    DATA t1956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1940->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1940->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1956 ).
    ENDIF.
    t1->load( ).
    APPEND t1940 TO t1->items.
    t1->save( ).
    DATA t1958 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1961 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1964 TYPE REF TO zcl_lnt_abstract_type_data.
    t1961 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1964 ).
    DATA t1965 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1958 = NEW zcl_lnt_istructure_component( i_name = |batzo| i_type_9913 = t1961 i_as_include = t1965 i_suffix = t1967 ).
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
    DATA t1972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1958->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1972 ).
    DATA t1974 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1958->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1958->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1974 ).
    ENDIF.
    t1->load( ).
    APPEND t1958 TO t1->items.
    t1->save( ).
    DATA t1976 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1979 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1982 TYPE REF TO zcl_lnt_abstract_type_data.
    t1979 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1982 ).
    DATA t1983 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1985 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1976 = NEW zcl_lnt_istructure_component( i_name = |batzd| i_type_9913 = t1979 i_as_include = t1983 i_suffix = t1985 ).
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
    DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1976->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1990 ).
    DATA t1992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1976->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1976->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1992 ).
    ENDIF.
    t1->load( ).
    APPEND t1976 TO t1->items.
    t1->save( ).
    DATA t1994 TYPE REF TO zcl_lnt_istructure_component.
    DATA t1997 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2000 TYPE REF TO zcl_lnt_abstract_type_data.
    t1997 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2000 ).
    DATA t2001 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1994 = NEW zcl_lnt_istructure_component( i_name = |batzw| i_type_9913 = t1997 i_as_include = t2001 i_suffix = t2003 ).
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
    DATA t2008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1994->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2008 ).
    DATA t2010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1994->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1994->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2010 ).
    ENDIF.
    t1->load( ).
    APPEND t1994 TO t1->items.
    t1->save( ).
    DATA t2012 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2015 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2018 TYPE REF TO zcl_lnt_abstract_type_data.
    t2015 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2018 ).
    DATA t2019 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2021 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2012 = NEW zcl_lnt_istructure_component( i_name = |batzm| i_type_9913 = t2015 i_as_include = t2019 i_suffix = t2021 ).
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
    DATA t2026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2026 ).
    DATA t2028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2012->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2012->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2028 ).
    ENDIF.
    t1->load( ).
    APPEND t2012 TO t1->items.
    t1->save( ).
    DATA t2030 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2033 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2036 TYPE REF TO zcl_lnt_abstract_type_data.
    t2033 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t2036 ).
    DATA t2037 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2039 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2030 = NEW zcl_lnt_istructure_component( i_name = |ctabl| i_type_9913 = t2033 i_as_include = t2037 i_suffix = t2039 ).
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
    DATA t2044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2030->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2044 ).
    DATA t2046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2030->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2030->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2046 ).
    ENDIF.
    t1->load( ).
    APPEND t2030 TO t1->items.
    t1->save( ).
    DATA t2048 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2051 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2056 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2061) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2061->has = abap_true.
    t2061->value = |sy-dbsys|.
    DATA t2063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2065 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2071 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2056 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2061 i_conversion_exit = t2063 i_derived_from_constant = t2065 i_ddic_name = t2067 i_rtti_name = t2069 i_description = t2071 ).
    CREATE OBJECT t2056->zlnt_view_ownkeys_b0e8086400eb.
    t2056->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2056->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2073 ).
    CREATE OBJECT t2056->zlnt_json_ownkeys_70e5fd461788.
    t2056->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2056->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2075 ).
    t2051 = NEW zcl_lnt_character_type( i_length = CONV f( 10 ) i_extra = t2056 ).
    DATA t2077 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2079 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2048 = NEW zcl_lnt_istructure_component( i_name = |dbsys| i_type_9913 = t2051 i_as_include = t2077 i_suffix = t2079 ).
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
    DATA t2084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2048->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2084 ).
    DATA t2086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2048->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2048->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2086 ).
    ENDIF.
    t1->load( ).
    APPEND t2048 TO t1->items.
    t1->save( ).
    DATA t2088 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2091 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2094 TYPE REF TO zcl_lnt_abstract_type_data.
    t2091 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t2094 ).
    DATA t2095 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2097 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2088 = NEW zcl_lnt_istructure_component( i_name = |dcsys| i_type_9913 = t2091 i_as_include = t2095 i_suffix = t2097 ).
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
    DATA t2102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2088->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2102 ).
    DATA t2104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2088->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2088->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2104 ).
    ENDIF.
    t1->load( ).
    APPEND t2088 TO t1->items.
    t1->save( ).
    DATA t2106 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2109 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2112 TYPE REF TO zcl_lnt_abstract_type_data.
    t2109 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t2112 ).
    DATA t2113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2106 = NEW zcl_lnt_istructure_component( i_name = |macdb| i_type_9913 = t2109 i_as_include = t2113 i_suffix = t2115 ).
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
    DATA t2120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2120 ).
    DATA t2122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2122 ).
    ENDIF.
    t1->load( ).
    APPEND t2106 TO t1->items.
    t1->save( ).
    DATA t2124 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2127 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2132 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2137->has = abap_true.
    t2137->value = |sy-sysid|.
    DATA t2139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2132 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2137 i_conversion_exit = t2139 i_derived_from_constant = t2141 i_ddic_name = t2143 i_rtti_name = t2145 i_description = t2147 ).
    CREATE OBJECT t2132->zlnt_view_ownkeys_b0e8086400eb.
    t2132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2149 ).
    CREATE OBJECT t2132->zlnt_json_ownkeys_70e5fd461788.
    t2132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2151 ).
    t2127 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t2132 ).
    DATA t2153 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2124 = NEW zcl_lnt_istructure_component( i_name = |sysid| i_type_9913 = t2127 i_as_include = t2153 i_suffix = t2155 ).
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
    DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2124->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2160 ).
    DATA t2162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2124->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2162 ).
    ENDIF.
    t1->load( ).
    APPEND t2124 TO t1->items.
    t1->save( ).
    DATA t2164 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2167 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2172 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2177->has = abap_true.
    t2177->value = |sy-opsys|.
    DATA t2179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2181 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2172 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2177 i_conversion_exit = t2179 i_derived_from_constant = t2181 i_ddic_name = t2183 i_rtti_name = t2185 i_description = t2187 ).
    CREATE OBJECT t2172->zlnt_view_ownkeys_b0e8086400eb.
    t2172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2189 ).
    CREATE OBJECT t2172->zlnt_json_ownkeys_70e5fd461788.
    t2172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2191 ).
    t2167 = NEW zcl_lnt_character_type( i_length = CONV f( 10 ) i_extra = t2172 ).
    DATA t2193 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2164 = NEW zcl_lnt_istructure_component( i_name = |opsys| i_type_9913 = t2167 i_as_include = t2193 i_suffix = t2195 ).
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
    DATA t2200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2200 ).
    DATA t2202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2202 ).
    ENDIF.
    t1->load( ).
    APPEND t2164 TO t1->items.
    t1->save( ).
    DATA t2204 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2207 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2212 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2217->has = abap_true.
    t2217->value = |sy-pfkey|.
    DATA t2219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2221 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2212 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2217 i_conversion_exit = t2219 i_derived_from_constant = t2221 i_ddic_name = t2223 i_rtti_name = t2225 i_description = t2227 ).
    CREATE OBJECT t2212->zlnt_view_ownkeys_b0e8086400eb.
    t2212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2229 ).
    CREATE OBJECT t2212->zlnt_json_ownkeys_70e5fd461788.
    t2212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2212->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2231 ).
    t2207 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t2212 ).
    DATA t2233 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2204 = NEW zcl_lnt_istructure_component( i_name = |pfkey| i_type_9913 = t2207 i_as_include = t2233 i_suffix = t2235 ).
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
    DATA t2240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2240 ).
    DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2242 ).
    ENDIF.
    t1->load( ).
    APPEND t2204 TO t1->items.
    t1->save( ).
    DATA t2244 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2247 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2252 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2257) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2257->has = abap_true.
    t2257->value = |sy-saprl|.
    DATA t2259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2252 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2257 i_conversion_exit = t2259 i_derived_from_constant = t2261 i_ddic_name = t2263 i_rtti_name = t2265 i_description = t2267 ).
    CREATE OBJECT t2252->zlnt_view_ownkeys_b0e8086400eb.
    t2252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2269 ).
    CREATE OBJECT t2252->zlnt_json_ownkeys_70e5fd461788.
    t2252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2271 ).
    t2247 = NEW zcl_lnt_character_type( i_length = CONV f( 4 ) i_extra = t2252 ).
    DATA t2273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2244 = NEW zcl_lnt_istructure_component( i_name = |saprl| i_type_9913 = t2247 i_as_include = t2273 i_suffix = t2275 ).
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
    DATA t2280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2244->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2280 ).
    DATA t2282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2244->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2244->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2282 ).
    ENDIF.
    t1->load( ).
    APPEND t2244 TO t1->items.
    t1->save( ).
    DATA t2284 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2287 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2292 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2297->has = abap_true.
    t2297->value = |sy-tcode|.
    DATA t2299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2301 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2292 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2297 i_conversion_exit = t2299 i_derived_from_constant = t2301 i_ddic_name = t2303 i_rtti_name = t2305 i_description = t2307 ).
    CREATE OBJECT t2292->zlnt_view_ownkeys_b0e8086400eb.
    t2292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2309 ).
    CREATE OBJECT t2292->zlnt_json_ownkeys_70e5fd461788.
    t2292->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2311 ).
    t2287 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t2292 ).
    DATA t2313 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2284 = NEW zcl_lnt_istructure_component( i_name = |tcode| i_type_9913 = t2287 i_as_include = t2313 i_suffix = t2315 ).
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
    DATA t2320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2320 ).
    DATA t2322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2322 ).
    ENDIF.
    t1->load( ).
    APPEND t2284 TO t1->items.
    t1->save( ).
    DATA t2324 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2327 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2332 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2337->has = abap_true.
    t2337->value = |sy-ucomm|.
    DATA t2339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2332 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2337 i_conversion_exit = t2339 i_derived_from_constant = t2341 i_ddic_name = t2343 i_rtti_name = t2345 i_description = t2347 ).
    CREATE OBJECT t2332->zlnt_view_ownkeys_b0e8086400eb.
    t2332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2349 ).
    CREATE OBJECT t2332->zlnt_json_ownkeys_70e5fd461788.
    t2332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2332->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2351 ).
    t2327 = NEW zcl_lnt_character_type( i_length = CONV f( 70 ) i_extra = t2332 ).
    DATA t2353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2324 = NEW zcl_lnt_istructure_component( i_name = |ucomm| i_type_9913 = t2327 i_as_include = t2353 i_suffix = t2355 ).
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
    DATA t2360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2324->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2360 ).
    DATA t2362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2324->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2324->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2362 ).
    ENDIF.
    t1->load( ).
    APPEND t2324 TO t1->items.
    t1->save( ).
    DATA t2364 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2367 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2370 TYPE REF TO zcl_lnt_abstract_type_data.
    t2367 = NEW zcl_lnt_character_type( i_length = CONV f( 5 ) i_extra = t2370 ).
    DATA t2371 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2364 = NEW zcl_lnt_istructure_component( i_name = |cfwae| i_type_9913 = t2367 i_as_include = t2371 i_suffix = t2373 ).
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
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2364->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2378 ).
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2364->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2364->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2380 ).
    ENDIF.
    t1->load( ).
    APPEND t2364 TO t1->items.
    t1->save( ).
    DATA t2382 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2385 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2388 TYPE REF TO zcl_lnt_abstract_type_data.
    t2385 = NEW zcl_lnt_character_type( i_length = CONV f( 5 ) i_extra = t2388 ).
    DATA t2389 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2382 = NEW zcl_lnt_istructure_component( i_name = |chwae| i_type_9913 = t2385 i_as_include = t2389 i_suffix = t2391 ).
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
    DATA t2396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2382->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2396 ).
    DATA t2398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2382->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2382->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2398 ).
    ENDIF.
    t1->load( ).
    APPEND t2382 TO t1->items.
    t1->save( ).
    DATA t2400 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2403 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2408 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2413) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2413->has = abap_true.
    t2413->value = |sy-spono|.
    DATA t2415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2408 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2413 i_conversion_exit = t2415 i_derived_from_constant = t2417 i_ddic_name = t2419 i_rtti_name = t2421 i_description = t2423 ).
    CREATE OBJECT t2408->zlnt_view_ownkeys_b0e8086400eb.
    t2408->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2408->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2425 ).
    CREATE OBJECT t2408->zlnt_json_ownkeys_70e5fd461788.
    t2408->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2408->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2427 ).
    t2403 = NEW zcl_lnt_character_type( i_length = CONV f( 10 ) i_extra = t2408 ).
    DATA t2429 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2400 = NEW zcl_lnt_istructure_component( i_name = |spono| i_type_9913 = t2403 i_as_include = t2429 i_suffix = t2431 ).
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
    DATA t2436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2400->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2436 ).
    DATA t2438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2400->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2400->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2438 ).
    ENDIF.
    t1->load( ).
    APPEND t2400 TO t1->items.
    t1->save( ).
    DATA t2440 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2443 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2443 = NEW zcl_lnt_numeric_type( i_length = CONV f( 10 ) i_qualified_name = t2446 ).
    DATA t2447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2440 = NEW zcl_lnt_istructure_component( i_name = |sponr| i_type_9913 = t2443 i_as_include = t2447 i_suffix = t2449 ).
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
    DATA t2454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2440->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2454 ).
    DATA t2456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2440->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2440->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2456 ).
    ENDIF.
    t1->load( ).
    APPEND t2440 TO t1->items.
    t1->save( ).
    DATA t2458 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2461 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2464 TYPE REF TO zcl_lnt_abstract_type_data.
    t2461 = NEW zcl_lnt_character_type( i_length = CONV f( 5 ) i_extra = t2464 ).
    DATA t2465 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2458 = NEW zcl_lnt_istructure_component( i_name = |waers| i_type_9913 = t2461 i_as_include = t2465 i_suffix = t2467 ).
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
    DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2458->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2472 ).
    DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2458->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2458->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2474 ).
    ENDIF.
    t1->load( ).
    APPEND t2458 TO t1->items.
    t1->save( ).
    DATA t2476 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2479 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2481 TYPE REF TO zcl_lnt_abstract_type_data.
    t2479 = NEW zcl_lnt_date_type( i_input_967e = t2481 ).
    DATA t2482 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2476 = NEW zcl_lnt_istructure_component( i_name = |cdate| i_type_9913 = t2479 i_as_include = t2482 i_suffix = t2484 ).
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
    DATA t2489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2489 ).
    DATA t2491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2491 ).
    ENDIF.
    t1->load( ).
    APPEND t2476 TO t1->items.
    t1->save( ).
    DATA t2493 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2496 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2498 TYPE REF TO zcl_lnt_abstract_type_data.
    t2496 = NEW zcl_lnt_date_type( i_input_967e = t2498 ).
    DATA t2499 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2493 = NEW zcl_lnt_istructure_component( i_name = |datum| i_type_9913 = t2496 i_as_include = t2499 i_suffix = t2501 ).
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
    DATA t2506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2493->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2506 ).
    DATA t2508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2493->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2493->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2508 ).
    ENDIF.
    t1->load( ).
    APPEND t2493 TO t1->items.
    t1->save( ).
    DATA t2510 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2513 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2518 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2523) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2523->has = abap_true.
    t2523->value = |sy-slset|.
    DATA t2525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2527 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2518 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2523 i_conversion_exit = t2525 i_derived_from_constant = t2527 i_ddic_name = t2529 i_rtti_name = t2531 i_description = t2533 ).
    CREATE OBJECT t2518->zlnt_view_ownkeys_b0e8086400eb.
    t2518->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2518->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2535 ).
    CREATE OBJECT t2518->zlnt_json_ownkeys_70e5fd461788.
    t2518->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2518->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2537 ).
    t2513 = NEW zcl_lnt_character_type( i_length = CONV f( 14 ) i_extra = t2518 ).
    DATA t2539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2510 = NEW zcl_lnt_istructure_component( i_name = |slset| i_type_9913 = t2513 i_as_include = t2539 i_suffix = t2541 ).
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
    DATA t2546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2510->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2546 ).
    DATA t2548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2510->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2548 ).
    ENDIF.
    t1->load( ).
    APPEND t2510 TO t1->items.
    t1->save( ).
    DATA t2550 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2553 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2553 = NEW zcl_lnt_hex_type( i_length = CONV f( 1 ) i_qualified_name = t2556 ).
    DATA t2557 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2550 = NEW zcl_lnt_istructure_component( i_name = |subty| i_type_9913 = t2553 i_as_include = t2557 i_suffix = t2559 ).
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
    DATA t2564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2550->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2564 ).
    DATA t2566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2550->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2550->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2566 ).
    ENDIF.
    t1->load( ).
    APPEND t2550 TO t1->items.
    t1->save( ).
    DATA t2568 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2571 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2574 TYPE REF TO zcl_lnt_abstract_type_data.
    t2571 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2574 ).
    DATA t2575 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2568 = NEW zcl_lnt_istructure_component( i_name = |subcs| i_type_9913 = t2571 i_as_include = t2575 i_suffix = t2577 ).
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
    DATA t2582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2568->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2582 ).
    DATA t2584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2568->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2568->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2584 ).
    ENDIF.
    t1->load( ).
    APPEND t2568 TO t1->items.
    t1->save( ).
    DATA t2586 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2589 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2592 TYPE REF TO zcl_lnt_abstract_type_data.
    t2589 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2592 ).
    DATA t2593 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2586 = NEW zcl_lnt_istructure_component( i_name = |group| i_type_9913 = t2589 i_as_include = t2593 i_suffix = t2595 ).
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
    DATA t2600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2586->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2600 ).
    DATA t2602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2586->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2586->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2602 ).
    ENDIF.
    t1->load( ).
    APPEND t2586 TO t1->items.
    t1->save( ).
    DATA t2604 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2607 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2610 TYPE REF TO zcl_lnt_abstract_type_data.
    t2607 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t2610 ).
    DATA t2611 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2604 = NEW zcl_lnt_istructure_component( i_name = |ffile| i_type_9913 = t2607 i_as_include = t2611 i_suffix = t2613 ).
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
    DATA t2618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2618 ).
    DATA t2620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2620 ).
    ENDIF.
    t1->load( ).
    APPEND t2604 TO t1->items.
    t1->save( ).
    DATA t2622 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2625 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2627 TYPE REF TO zcl_lnt_abstract_type_data.
    t2625 = NEW zcl_lnt_time_type( i_input_967e = t2627 ).
    DATA t2628 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2622 = NEW zcl_lnt_istructure_component( i_name = |uzeit| i_type_9913 = t2625 i_as_include = t2628 i_suffix = t2630 ).
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
    DATA t2635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2635 ).
    DATA t2637 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2622->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2622->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2637 ).
    ENDIF.
    t1->load( ).
    APPEND t2622 TO t1->items.
    t1->save( ).
    DATA t2639 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2642 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2645 TYPE REF TO zcl_lnt_abstract_type_data.
    t2642 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t2645 ).
    DATA t2646 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2639 = NEW zcl_lnt_istructure_component( i_name = |dsnam| i_type_9913 = t2642 i_as_include = t2646 i_suffix = t2648 ).
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
    DATA t2653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2639->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2653 ).
    DATA t2655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2639->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2639->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2655 ).
    ENDIF.
    t1->load( ).
    APPEND t2639 TO t1->items.
    t1->save( ).
    DATA t2657 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2660 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2663 TYPE REF TO zcl_lnt_abstract_type_data.
    t2660 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t2663 ).
    DATA t2664 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2657 = NEW zcl_lnt_istructure_component( i_name = |tabid| i_type_9913 = t2660 i_as_include = t2664 i_suffix = t2666 ).
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
    DATA t2671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2657->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2671 ).
    DATA t2673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2657->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2673 ).
    ENDIF.
    t1->load( ).
    APPEND t2657 TO t1->items.
    t1->save( ).
    DATA t2675 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2678 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2681 TYPE REF TO zcl_lnt_abstract_type_data.
    t2678 = NEW zcl_lnt_character_type( i_length = CONV f( 8 ) i_extra = t2681 ).
    DATA t2682 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2675 = NEW zcl_lnt_istructure_component( i_name = |tfdsn| i_type_9913 = t2678 i_as_include = t2682 i_suffix = t2684 ).
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
    DATA t2689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2675->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2689 ).
    DATA t2691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2675->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2675->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2691 ).
    ENDIF.
    t1->load( ).
    APPEND t2675 TO t1->items.
    t1->save( ).
    DATA t2693 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2696 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2701 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2706) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2706->has = abap_true.
    t2706->value = |sy-uname|.
    DATA t2708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2701 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2706 i_conversion_exit = t2708 i_derived_from_constant = t2710 i_ddic_name = t2712 i_rtti_name = t2714 i_description = t2716 ).
    CREATE OBJECT t2701->zlnt_view_ownkeys_b0e8086400eb.
    t2701->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2701->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2718 ).
    CREATE OBJECT t2701->zlnt_json_ownkeys_70e5fd461788.
    t2701->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2701->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2720 ).
    t2696 = NEW zcl_lnt_character_type( i_length = CONV f( 12 ) i_extra = t2701 ).
    DATA t2722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2693 = NEW zcl_lnt_istructure_component( i_name = |uname| i_type_9913 = t2696 i_as_include = t2722 i_suffix = t2724 ).
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
    DATA t2729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2693->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2729 ).
    DATA t2731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2693->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2693->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2731 ).
    ENDIF.
    t1->load( ).
    APPEND t2693 TO t1->items.
    t1->save( ).
    DATA t2733 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2736 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2739 TYPE REF TO zcl_lnt_abstract_type_data.
    t2736 = NEW zcl_lnt_character_type( i_length = CONV f( 16 ) i_extra = t2739 ).
    DATA t2740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2733 = NEW zcl_lnt_istructure_component( i_name = |lstat| i_type_9913 = t2736 i_as_include = t2740 i_suffix = t2742 ).
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
    DATA t2747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2733->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2747 ).
    DATA t2749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2733->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2733->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2749 ).
    ENDIF.
    t1->load( ).
    APPEND t2733 TO t1->items.
    t1->save( ).
    DATA t2751 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2754 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2759 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2764) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2764->has = abap_true.
    t2764->value = |sy-abcde|.
    DATA t2766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2768 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2759 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2764 i_conversion_exit = t2766 i_derived_from_constant = t2768 i_ddic_name = t2770 i_rtti_name = t2772 i_description = t2774 ).
    CREATE OBJECT t2759->zlnt_view_ownkeys_b0e8086400eb.
    t2759->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2759->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2776 ).
    CREATE OBJECT t2759->zlnt_json_ownkeys_70e5fd461788.
    t2759->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2759->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2778 ).
    t2754 = NEW zcl_lnt_character_type( i_length = CONV f( 26 ) i_extra = t2759 ).
    DATA t2780 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2782 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2751 = NEW zcl_lnt_istructure_component( i_name = |abcde| i_type_9913 = t2754 i_as_include = t2780 i_suffix = t2782 ).
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
    DATA t2787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2751->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2787 ).
    DATA t2789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2751->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2751->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2789 ).
    ENDIF.
    t1->load( ).
    APPEND t2751 TO t1->items.
    t1->save( ).
    DATA t2791 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2794 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2797 TYPE REF TO zcl_lnt_abstract_type_data.
    t2794 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2797 ).
    DATA t2798 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2800 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2791 = NEW zcl_lnt_istructure_component( i_name = |marky| i_type_9913 = t2794 i_as_include = t2798 i_suffix = t2800 ).
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
    DATA t2805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2791->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2805 ).
    DATA t2807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2791->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2791->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2807 ).
    ENDIF.
    t1->load( ).
    APPEND t2791 TO t1->items.
    t1->save( ).
    DATA t2809 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2812 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2815 TYPE REF TO zcl_lnt_abstract_type_data.
    t2812 = NEW zcl_lnt_character_type( i_length = CONV f( 30 ) i_extra = t2815 ).
    DATA t2816 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2809 = NEW zcl_lnt_istructure_component( i_name = |sfnam| i_type_9913 = t2812 i_as_include = t2816 i_suffix = t2818 ).
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
    DATA t2823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2809->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2823 ).
    DATA t2825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2809->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2809->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2825 ).
    ENDIF.
    t1->load( ).
    APPEND t2809 TO t1->items.
    t1->save( ).
    DATA t2827 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2830 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2833 TYPE REF TO zcl_lnt_abstract_type_data.
    t2830 = NEW zcl_lnt_character_type( i_length = CONV f( 30 ) i_extra = t2833 ).
    DATA t2834 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2827 = NEW zcl_lnt_istructure_component( i_name = |tname| i_type_9913 = t2830 i_as_include = t2834 i_suffix = t2836 ).
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
    DATA t2841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2827->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2841 ).
    DATA t2843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2827->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2827->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2843 ).
    ENDIF.
    t1->load( ).
    APPEND t2827 TO t1->items.
    t1->save( ).
    DATA t2845 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2848 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2853 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2858) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2858->has = abap_true.
    t2858->value = |sy-msgli|.
    DATA t2860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2862 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2853 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2858 i_conversion_exit = t2860 i_derived_from_constant = t2862 i_ddic_name = t2864 i_rtti_name = t2866 i_description = t2868 ).
    CREATE OBJECT t2853->zlnt_view_ownkeys_b0e8086400eb.
    t2853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2870 ).
    CREATE OBJECT t2853->zlnt_json_ownkeys_70e5fd461788.
    t2853->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2853->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2872 ).
    t2848 = NEW zcl_lnt_character_type( i_length = CONV f( 60 ) i_extra = t2853 ).
    DATA t2874 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2845 = NEW zcl_lnt_istructure_component( i_name = |msgli| i_type_9913 = t2848 i_as_include = t2874 i_suffix = t2876 ).
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
    DATA t2881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2845->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2881 ).
    DATA t2883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2845->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2883 ).
    ENDIF.
    t1->load( ).
    APPEND t2845 TO t1->items.
    t1->save( ).
    DATA t2885 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2888 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2893 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2898) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2898->has = abap_true.
    t2898->value = |sy-title|.
    DATA t2900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2902 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2893 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2898 i_conversion_exit = t2900 i_derived_from_constant = t2902 i_ddic_name = t2904 i_rtti_name = t2906 i_description = t2908 ).
    CREATE OBJECT t2893->zlnt_view_ownkeys_b0e8086400eb.
    t2893->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2893->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2910 ).
    CREATE OBJECT t2893->zlnt_json_ownkeys_70e5fd461788.
    t2893->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2893->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2912 ).
    t2888 = NEW zcl_lnt_character_type( i_length = CONV f( 70 ) i_extra = t2893 ).
    DATA t2914 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2885 = NEW zcl_lnt_istructure_component( i_name = |title| i_type_9913 = t2888 i_as_include = t2914 i_suffix = t2916 ).
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
    DATA t2921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2885->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2921 ).
    DATA t2923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2885->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2885->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2923 ).
    ENDIF.
    t1->load( ).
    APPEND t2885 TO t1->items.
    t1->save( ).
    DATA t2925 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2928 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2931 TYPE REF TO zcl_lnt_abstract_type_data.
    t2928 = NEW zcl_lnt_character_type( i_length = CONV f( 72 ) i_extra = t2931 ).
    DATA t2932 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2925 = NEW zcl_lnt_istructure_component( i_name = |entry| i_type_9913 = t2928 i_as_include = t2932 i_suffix = t2934 ).
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
    DATA t2939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2925->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2939 ).
    DATA t2941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2925->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2925->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2941 ).
    ENDIF.
    t1->load( ).
    APPEND t2925 TO t1->items.
    t1->save( ).
    DATA t2943 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2946 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2951 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2956) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2956->has = abap_true.
    t2956->value = |sy-lisel|.
    DATA t2958 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2960 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2962 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2951 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2956 i_conversion_exit = t2958 i_derived_from_constant = t2960 i_ddic_name = t2962 i_rtti_name = t2964 i_description = t2966 ).
    CREATE OBJECT t2951->zlnt_view_ownkeys_b0e8086400eb.
    t2951->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2968 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2968 ).
    CREATE OBJECT t2951->zlnt_json_ownkeys_70e5fd461788.
    t2951->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2951->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2970 ).
    t2946 = NEW zcl_lnt_character_type( i_length = CONV f( 255 ) i_extra = t2951 ).
    DATA t2972 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2974 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2943 = NEW zcl_lnt_istructure_component( i_name = |lisel| i_type_9913 = t2946 i_as_include = t2972 i_suffix = t2974 ).
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
    DATA t2979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2943->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t2979 ).
    DATA t2981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2943->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2943->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t2981 ).
    ENDIF.
    t1->load( ).
    APPEND t2943 TO t1->items.
    t1->save( ).
    DATA t2983 TYPE REF TO zcl_lnt_istructure_component.
    DATA t2986 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2991 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t2996) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2996->has = abap_true.
    t2996->value = |sy-uline|.
    DATA t2998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3000 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3002 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3004 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2991 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2996 i_conversion_exit = t2998 i_derived_from_constant = t3000 i_ddic_name = t3002 i_rtti_name = t3004 i_description = t3006 ).
    CREATE OBJECT t2991->zlnt_view_ownkeys_b0e8086400eb.
    t2991->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2991->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3008 ).
    CREATE OBJECT t2991->zlnt_json_ownkeys_70e5fd461788.
    t2991->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3010 ).
    t2986 = NEW zcl_lnt_character_type( i_length = CONV f( 255 ) i_extra = t2991 ).
    DATA t3012 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2983 = NEW zcl_lnt_istructure_component( i_name = |uline| i_type_9913 = t2986 i_as_include = t3012 i_suffix = t3014 ).
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
    DATA t3019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2983->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3019 ).
    DATA t3021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2983->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2983->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3021 ).
    ENDIF.
    t1->load( ).
    APPEND t2983 TO t1->items.
    t1->save( ).
    DATA t3023 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3026 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3029 TYPE REF TO zcl_lnt_abstract_type_data.
    t3026 = NEW zcl_lnt_character_type( i_length = CONV f( 70 ) i_extra = t3029 ).
    DATA t3030 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3032 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3023 = NEW zcl_lnt_istructure_component( i_name = |xcode| i_type_9913 = t3026 i_as_include = t3030 i_suffix = t3032 ).
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
    DATA t3037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3023->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3037 ).
    DATA t3039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3023->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3023->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3039 ).
    ENDIF.
    t1->load( ).
    APPEND t3023 TO t1->items.
    t1->save( ).
    DATA t3041 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3044 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3049 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3054) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3054->has = abap_true.
    t3054->value = |sy-cprog|.
    DATA t3056 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3058 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3049 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3054 i_conversion_exit = t3056 i_derived_from_constant = t3058 i_ddic_name = t3060 i_rtti_name = t3062 i_description = t3064 ).
    CREATE OBJECT t3049->zlnt_view_ownkeys_b0e8086400eb.
    t3049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3066 ).
    CREATE OBJECT t3049->zlnt_json_ownkeys_70e5fd461788.
    t3049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3049->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3068 ).
    t3044 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t3049 ).
    DATA t3070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3041 = NEW zcl_lnt_istructure_component( i_name = |cprog| i_type_9913 = t3044 i_as_include = t3070 i_suffix = t3072 ).
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
    DATA t3077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3041->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3077 ).
    DATA t3079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3041->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3041->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3079 ).
    ENDIF.
    t1->load( ).
    APPEND t3041 TO t1->items.
    t1->save( ).
    DATA t3081 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3084 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3087 TYPE REF TO zcl_lnt_abstract_type_data.
    t3084 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t3087 ).
    DATA t3088 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3090 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3081 = NEW zcl_lnt_istructure_component( i_name = |xprog| i_type_9913 = t3084 i_as_include = t3088 i_suffix = t3090 ).
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
    DATA t3095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3081->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3095 ).
    DATA t3097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3081->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3081->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3097 ).
    ENDIF.
    t1->load( ).
    APPEND t3081 TO t1->items.
    t1->save( ).
    DATA t3099 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3102 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3105 TYPE REF TO zcl_lnt_abstract_type_data.
    t3102 = NEW zcl_lnt_character_type( i_length = CONV f( 30 ) i_extra = t3105 ).
    DATA t3106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3099 = NEW zcl_lnt_istructure_component( i_name = |xform| i_type_9913 = t3102 i_as_include = t3106 i_suffix = t3108 ).
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
    DATA t3113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3099->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3113 ).
    DATA t3115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3099->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3099->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3115 ).
    ENDIF.
    t1->load( ).
    APPEND t3099 TO t1->items.
    t1->save( ).
    DATA t3117 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3120 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3125 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3130->has = abap_true.
    t3130->value = |sy-ldbpg|.
    DATA t3132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3125 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3130 i_conversion_exit = t3132 i_derived_from_constant = t3134 i_ddic_name = t3136 i_rtti_name = t3138 i_description = t3140 ).
    CREATE OBJECT t3125->zlnt_view_ownkeys_b0e8086400eb.
    t3125->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3125->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3142 ).
    CREATE OBJECT t3125->zlnt_json_ownkeys_70e5fd461788.
    t3125->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3125->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3144 ).
    t3120 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t3125 ).
    DATA t3146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3117 = NEW zcl_lnt_istructure_component( i_name = |ldbpg| i_type_9913 = t3120 i_as_include = t3146 i_suffix = t3148 ).
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
    DATA t3153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3153 ).
    DATA t3155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3155 ).
    ENDIF.
    t1->load( ).
    APPEND t3117 TO t1->items.
    t1->save( ).
    DATA t3157 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3160 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3165 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3170->has = abap_true.
    t3170->value = |sy-tvar0|.
    DATA t3172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3165 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3170 i_conversion_exit = t3172 i_derived_from_constant = t3174 i_ddic_name = t3176 i_rtti_name = t3178 i_description = t3180 ).
    CREATE OBJECT t3165->zlnt_view_ownkeys_b0e8086400eb.
    t3165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3182 ).
    CREATE OBJECT t3165->zlnt_json_ownkeys_70e5fd461788.
    t3165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3165->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3184 ).
    t3160 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3165 ).
    DATA t3186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3157 = NEW zcl_lnt_istructure_component( i_name = |tvar0| i_type_9913 = t3160 i_as_include = t3186 i_suffix = t3188 ).
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
    DATA t3193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3157->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3193 ).
    DATA t3195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3157->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3157->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3195 ).
    ENDIF.
    t1->load( ).
    APPEND t3157 TO t1->items.
    t1->save( ).
    DATA t3197 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3200 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3205 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3210->has = abap_true.
    t3210->value = |sy-tvar1|.
    DATA t3212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3214 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3205 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3210 i_conversion_exit = t3212 i_derived_from_constant = t3214 i_ddic_name = t3216 i_rtti_name = t3218 i_description = t3220 ).
    CREATE OBJECT t3205->zlnt_view_ownkeys_b0e8086400eb.
    t3205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3222 ).
    CREATE OBJECT t3205->zlnt_json_ownkeys_70e5fd461788.
    t3205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3224 ).
    t3200 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3205 ).
    DATA t3226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3197 = NEW zcl_lnt_istructure_component( i_name = |tvar1| i_type_9913 = t3200 i_as_include = t3226 i_suffix = t3228 ).
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
    DATA t3233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3233 ).
    DATA t3235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3235 ).
    ENDIF.
    t1->load( ).
    APPEND t3197 TO t1->items.
    t1->save( ).
    DATA t3237 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3240 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3245 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3250->has = abap_true.
    t3250->value = |sy-tvar2|.
    DATA t3252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3254 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3245 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3250 i_conversion_exit = t3252 i_derived_from_constant = t3254 i_ddic_name = t3256 i_rtti_name = t3258 i_description = t3260 ).
    CREATE OBJECT t3245->zlnt_view_ownkeys_b0e8086400eb.
    t3245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3262 ).
    CREATE OBJECT t3245->zlnt_json_ownkeys_70e5fd461788.
    t3245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3245->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3264 ).
    t3240 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3245 ).
    DATA t3266 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3237 = NEW zcl_lnt_istructure_component( i_name = |tvar2| i_type_9913 = t3240 i_as_include = t3266 i_suffix = t3268 ).
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
    DATA t3273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3237->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3273 ).
    DATA t3275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3237->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3237->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3275 ).
    ENDIF.
    t1->load( ).
    APPEND t3237 TO t1->items.
    t1->save( ).
    DATA t3277 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3280 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3285 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3290->has = abap_true.
    t3290->value = |sy-tvar3|.
    DATA t3292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3294 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3285 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3290 i_conversion_exit = t3292 i_derived_from_constant = t3294 i_ddic_name = t3296 i_rtti_name = t3298 i_description = t3300 ).
    CREATE OBJECT t3285->zlnt_view_ownkeys_b0e8086400eb.
    t3285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3302 ).
    CREATE OBJECT t3285->zlnt_json_ownkeys_70e5fd461788.
    t3285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3285->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3304 ).
    t3280 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3285 ).
    DATA t3306 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3277 = NEW zcl_lnt_istructure_component( i_name = |tvar3| i_type_9913 = t3280 i_as_include = t3306 i_suffix = t3308 ).
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
    DATA t3313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3313 ).
    DATA t3315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3277->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3277->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3315 ).
    ENDIF.
    t1->load( ).
    APPEND t3277 TO t1->items.
    t1->save( ).
    DATA t3317 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3320 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3325 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3330->has = abap_true.
    t3330->value = |sy-tvar4|.
    DATA t3332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3334 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3325 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3330 i_conversion_exit = t3332 i_derived_from_constant = t3334 i_ddic_name = t3336 i_rtti_name = t3338 i_description = t3340 ).
    CREATE OBJECT t3325->zlnt_view_ownkeys_b0e8086400eb.
    t3325->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3342 ).
    CREATE OBJECT t3325->zlnt_json_ownkeys_70e5fd461788.
    t3325->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3344 ).
    t3320 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3325 ).
    DATA t3346 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3317 = NEW zcl_lnt_istructure_component( i_name = |tvar4| i_type_9913 = t3320 i_as_include = t3346 i_suffix = t3348 ).
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
    DATA t3353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3317->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3353 ).
    DATA t3355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3317->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3317->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3355 ).
    ENDIF.
    t1->load( ).
    APPEND t3317 TO t1->items.
    t1->save( ).
    DATA t3357 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3360 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3365 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3370) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3370->has = abap_true.
    t3370->value = |sy-tvar5|.
    DATA t3372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3374 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3365 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3370 i_conversion_exit = t3372 i_derived_from_constant = t3374 i_ddic_name = t3376 i_rtti_name = t3378 i_description = t3380 ).
    CREATE OBJECT t3365->zlnt_view_ownkeys_b0e8086400eb.
    t3365->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3365->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3382 ).
    CREATE OBJECT t3365->zlnt_json_ownkeys_70e5fd461788.
    t3365->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3365->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3384 ).
    t3360 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3365 ).
    DATA t3386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3357 = NEW zcl_lnt_istructure_component( i_name = |tvar5| i_type_9913 = t3360 i_as_include = t3386 i_suffix = t3388 ).
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
    DATA t3393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3357->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3393 ).
    DATA t3395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3357->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3357->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3395 ).
    ENDIF.
    t1->load( ).
    APPEND t3357 TO t1->items.
    t1->save( ).
    DATA t3397 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3400 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3405 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3410->has = abap_true.
    t3410->value = |sy-tvar6|.
    DATA t3412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3405 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3410 i_conversion_exit = t3412 i_derived_from_constant = t3414 i_ddic_name = t3416 i_rtti_name = t3418 i_description = t3420 ).
    CREATE OBJECT t3405->zlnt_view_ownkeys_b0e8086400eb.
    t3405->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3405->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3422 ).
    CREATE OBJECT t3405->zlnt_json_ownkeys_70e5fd461788.
    t3405->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3405->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3424 ).
    t3400 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3405 ).
    DATA t3426 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3428 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3397 = NEW zcl_lnt_istructure_component( i_name = |tvar6| i_type_9913 = t3400 i_as_include = t3426 i_suffix = t3428 ).
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
    DATA t3433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3397->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3433 ).
    DATA t3435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3397->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3435 ).
    ENDIF.
    t1->load( ).
    APPEND t3397 TO t1->items.
    t1->save( ).
    DATA t3437 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3440 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3445 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3450) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3450->has = abap_true.
    t3450->value = |sy-tvar7|.
    DATA t3452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3454 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3445 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3450 i_conversion_exit = t3452 i_derived_from_constant = t3454 i_ddic_name = t3456 i_rtti_name = t3458 i_description = t3460 ).
    CREATE OBJECT t3445->zlnt_view_ownkeys_b0e8086400eb.
    t3445->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3445->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3462 ).
    CREATE OBJECT t3445->zlnt_json_ownkeys_70e5fd461788.
    t3445->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3445->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3464 ).
    t3440 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3445 ).
    DATA t3466 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3437 = NEW zcl_lnt_istructure_component( i_name = |tvar7| i_type_9913 = t3440 i_as_include = t3466 i_suffix = t3468 ).
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
    DATA t3473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3437->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3473 ).
    DATA t3475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3437->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3437->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3475 ).
    ENDIF.
    t1->load( ).
    APPEND t3437 TO t1->items.
    t1->save( ).
    DATA t3477 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3480 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3485 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3490->has = abap_true.
    t3490->value = |sy-tvar8|.
    DATA t3492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3494 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3485 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3490 i_conversion_exit = t3492 i_derived_from_constant = t3494 i_ddic_name = t3496 i_rtti_name = t3498 i_description = t3500 ).
    CREATE OBJECT t3485->zlnt_view_ownkeys_b0e8086400eb.
    t3485->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3502 ).
    CREATE OBJECT t3485->zlnt_json_ownkeys_70e5fd461788.
    t3485->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3485->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3504 ).
    t3480 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3485 ).
    DATA t3506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3477 = NEW zcl_lnt_istructure_component( i_name = |tvar8| i_type_9913 = t3480 i_as_include = t3506 i_suffix = t3508 ).
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
    DATA t3513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3477->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3513 ).
    DATA t3515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3477->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3477->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3515 ).
    ENDIF.
    t1->load( ).
    APPEND t3477 TO t1->items.
    t1->save( ).
    DATA t3517 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3520 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3525 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3530) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3530->has = abap_true.
    t3530->value = |sy-tvar9|.
    DATA t3532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3534 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3525 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3530 i_conversion_exit = t3532 i_derived_from_constant = t3534 i_ddic_name = t3536 i_rtti_name = t3538 i_description = t3540 ).
    CREATE OBJECT t3525->zlnt_view_ownkeys_b0e8086400eb.
    t3525->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3525->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3542 ).
    CREATE OBJECT t3525->zlnt_json_ownkeys_70e5fd461788.
    t3525->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3525->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3544 ).
    t3520 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3525 ).
    DATA t3546 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3517 = NEW zcl_lnt_istructure_component( i_name = |tvar9| i_type_9913 = t3520 i_as_include = t3546 i_suffix = t3548 ).
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
    DATA t3553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3517->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3553 ).
    DATA t3555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3517->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3517->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3555 ).
    ENDIF.
    t1->load( ).
    APPEND t3517 TO t1->items.
    t1->save( ).
    DATA t3557 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3560 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3565 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3570) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3570->has = abap_true.
    t3570->value = |sy-msgid|.
    DATA t3572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3574 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3565 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3570 i_conversion_exit = t3572 i_derived_from_constant = t3574 i_ddic_name = t3576 i_rtti_name = t3578 i_description = t3580 ).
    CREATE OBJECT t3565->zlnt_view_ownkeys_b0e8086400eb.
    t3565->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3582 ).
    CREATE OBJECT t3565->zlnt_json_ownkeys_70e5fd461788.
    t3565->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3565->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3584 ).
    t3560 = NEW zcl_lnt_character_type( i_length = CONV f( 20 ) i_extra = t3565 ).
    DATA t3586 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3588 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3557 = NEW zcl_lnt_istructure_component( i_name = |msgid| i_type_9913 = t3560 i_as_include = t3586 i_suffix = t3588 ).
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
    DATA t3593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3557->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3593 ).
    DATA t3595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3557->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3557->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3595 ).
    ENDIF.
    t1->load( ).
    APPEND t3557 TO t1->items.
    t1->save( ).
    DATA t3597 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3600 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3605 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3610->has = abap_true.
    t3610->value = |sy-msgty|.
    DATA t3612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3614 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3618 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3620 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3605 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3610 i_conversion_exit = t3612 i_derived_from_constant = t3614 i_ddic_name = t3616 i_rtti_name = t3618 i_description = t3620 ).
    CREATE OBJECT t3605->zlnt_view_ownkeys_b0e8086400eb.
    t3605->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3605->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3622 ).
    CREATE OBJECT t3605->zlnt_json_ownkeys_70e5fd461788.
    t3605->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3605->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3624 ).
    t3600 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3605 ).
    DATA t3626 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3628 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3597 = NEW zcl_lnt_istructure_component( i_name = |msgty| i_type_9913 = t3600 i_as_include = t3626 i_suffix = t3628 ).
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
    DATA t3633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3597->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3633 ).
    DATA t3635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3597->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3597->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3635 ).
    ENDIF.
    t1->load( ).
    APPEND t3597 TO t1->items.
    t1->save( ).
    DATA t3637 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3640 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t3646) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3646->has = abap_true.
    t3646->value = |sy-msgno|.
    t3640 = NEW zcl_lnt_numeric_type( i_length = CONV f( 3 ) i_qualified_name = t3646 ).
    DATA t3648 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3637 = NEW zcl_lnt_istructure_component( i_name = |msgno| i_type_9913 = t3640 i_as_include = t3648 i_suffix = t3650 ).
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
    DATA t3655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3637->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3655 ).
    DATA t3657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3637->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3657 ).
    ENDIF.
    t1->load( ).
    APPEND t3637 TO t1->items.
    t1->save( ).
    DATA t3659 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3662 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3667 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3672) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3672->has = abap_true.
    t3672->value = |sy-msgv1|.
    DATA t3674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3676 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3667 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3672 i_conversion_exit = t3674 i_derived_from_constant = t3676 i_ddic_name = t3678 i_rtti_name = t3680 i_description = t3682 ).
    CREATE OBJECT t3667->zlnt_view_ownkeys_b0e8086400eb.
    t3667->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3667->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3684 ).
    CREATE OBJECT t3667->zlnt_json_ownkeys_70e5fd461788.
    t3667->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3667->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3686 ).
    t3662 = NEW zcl_lnt_character_type( i_length = CONV f( 50 ) i_extra = t3667 ).
    DATA t3688 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3659 = NEW zcl_lnt_istructure_component( i_name = |msgv1| i_type_9913 = t3662 i_as_include = t3688 i_suffix = t3690 ).
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
    DATA t3695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3659->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3695 ).
    DATA t3697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3659->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3659->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3697 ).
    ENDIF.
    t1->load( ).
    APPEND t3659 TO t1->items.
    t1->save( ).
    DATA t3699 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3702 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3707 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3712->has = abap_true.
    t3712->value = |sy-msgv2|.
    DATA t3714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3716 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3707 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3712 i_conversion_exit = t3714 i_derived_from_constant = t3716 i_ddic_name = t3718 i_rtti_name = t3720 i_description = t3722 ).
    CREATE OBJECT t3707->zlnt_view_ownkeys_b0e8086400eb.
    t3707->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3707->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3724 ).
    CREATE OBJECT t3707->zlnt_json_ownkeys_70e5fd461788.
    t3707->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3726 ).
    t3702 = NEW zcl_lnt_character_type( i_length = CONV f( 50 ) i_extra = t3707 ).
    DATA t3728 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3730 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3699 = NEW zcl_lnt_istructure_component( i_name = |msgv2| i_type_9913 = t3702 i_as_include = t3728 i_suffix = t3730 ).
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
    DATA t3735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3699->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3735 ).
    DATA t3737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3699->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3699->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3737 ).
    ENDIF.
    t1->load( ).
    APPEND t3699 TO t1->items.
    t1->save( ).
    DATA t3739 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3742 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3747 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3752) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3752->has = abap_true.
    t3752->value = |sy-msgv3|.
    DATA t3754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3756 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3747 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3752 i_conversion_exit = t3754 i_derived_from_constant = t3756 i_ddic_name = t3758 i_rtti_name = t3760 i_description = t3762 ).
    CREATE OBJECT t3747->zlnt_view_ownkeys_b0e8086400eb.
    t3747->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3764 ).
    CREATE OBJECT t3747->zlnt_json_ownkeys_70e5fd461788.
    t3747->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3747->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3766 ).
    t3742 = NEW zcl_lnt_character_type( i_length = CONV f( 50 ) i_extra = t3747 ).
    DATA t3768 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3739 = NEW zcl_lnt_istructure_component( i_name = |msgv3| i_type_9913 = t3742 i_as_include = t3768 i_suffix = t3770 ).
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
    DATA t3775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3739->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3775 ).
    DATA t3777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3739->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3739->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3777 ).
    ENDIF.
    t1->load( ).
    APPEND t3739 TO t1->items.
    t1->save( ).
    DATA t3779 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3782 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3787 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3792) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3792->has = abap_true.
    t3792->value = |sy-msgv4|.
    DATA t3794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3796 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3800 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3787 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3792 i_conversion_exit = t3794 i_derived_from_constant = t3796 i_ddic_name = t3798 i_rtti_name = t3800 i_description = t3802 ).
    CREATE OBJECT t3787->zlnt_view_ownkeys_b0e8086400eb.
    t3787->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3804 ).
    CREATE OBJECT t3787->zlnt_json_ownkeys_70e5fd461788.
    t3787->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3806 ).
    t3782 = NEW zcl_lnt_character_type( i_length = CONV f( 50 ) i_extra = t3787 ).
    DATA t3808 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3779 = NEW zcl_lnt_istructure_component( i_name = |msgv4| i_type_9913 = t3782 i_as_include = t3808 i_suffix = t3810 ).
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
    DATA t3815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3779->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3815 ).
    DATA t3817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3779->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3779->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3817 ).
    ENDIF.
    t1->load( ).
    APPEND t3779 TO t1->items.
    t1->save( ).
    DATA t3819 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3822 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3825 TYPE REF TO zcl_lnt_abstract_type_data.
    t3822 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3825 ).
    DATA t3826 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3819 = NEW zcl_lnt_istructure_component( i_name = |oncom| i_type_9913 = t3822 i_as_include = t3826 i_suffix = t3828 ).
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
    DATA t3833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3819->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3833 ).
    DATA t3835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3819->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3819->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3835 ).
    ENDIF.
    t1->load( ).
    APPEND t3819 TO t1->items.
    t1->save( ).
    DATA t3837 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3840 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3845 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3850) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3850->has = abap_true.
    t3850->value = |sy-vline|.
    DATA t3852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3854 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3845 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3850 i_conversion_exit = t3852 i_derived_from_constant = t3854 i_ddic_name = t3856 i_rtti_name = t3858 i_description = t3860 ).
    CREATE OBJECT t3845->zlnt_view_ownkeys_b0e8086400eb.
    t3845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3862 ).
    CREATE OBJECT t3845->zlnt_json_ownkeys_70e5fd461788.
    t3845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3845->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3864 ).
    t3840 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3845 ).
    DATA t3866 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3837 = NEW zcl_lnt_istructure_component( i_name = |vline| i_type_9913 = t3840 i_as_include = t3866 i_suffix = t3868 ).
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
    DATA t3873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3837->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3873 ).
    DATA t3875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3837->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3837->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3875 ).
    ENDIF.
    t1->load( ).
    APPEND t3837 TO t1->items.
    t1->save( ).
    DATA t3877 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3880 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3883 TYPE REF TO zcl_lnt_abstract_type_data.
    t3880 = NEW zcl_lnt_character_type( i_length = CONV f( 79 ) i_extra = t3883 ).
    DATA t3884 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3877 = NEW zcl_lnt_istructure_component( i_name = |winsl| i_type_9913 = t3880 i_as_include = t3884 i_suffix = t3886 ).
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
    DATA t3891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3877->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3891 ).
    DATA t3893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3877->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3877->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3893 ).
    ENDIF.
    t1->load( ).
    APPEND t3877 TO t1->items.
    t1->save( ).
    DATA t3895 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3898 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3900 TYPE REF TO zcl_lnt_abstract_type_data.
    t3898 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3900 ).
    DATA t3901 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3895 = NEW zcl_lnt_istructure_component( i_name = |staco| i_type_9913 = t3898 i_as_include = t3901 i_suffix = t3903 ).
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
    DATA t3908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3895->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3908 ).
    DATA t3910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3895->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3895->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3910 ).
    ENDIF.
    t1->load( ).
    APPEND t3895 TO t1->items.
    t1->save( ).
    DATA t3912 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3915 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3917 TYPE REF TO zcl_lnt_abstract_type_data.
    t3915 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3917 ).
    DATA t3918 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3912 = NEW zcl_lnt_istructure_component( i_name = |staro| i_type_9913 = t3915 i_as_include = t3918 i_suffix = t3920 ).
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
    DATA t3925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3912->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3925 ).
    DATA t3927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3912->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3912->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3927 ).
    ENDIF.
    t1->load( ).
    APPEND t3912 TO t1->items.
    t1->save( ).
    DATA t3929 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3932 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3937 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3942) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3942->has = abap_true.
    t3942->value = |sy-datar|.
    DATA t3944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3946 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3937 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3942 i_conversion_exit = t3944 i_derived_from_constant = t3946 i_ddic_name = t3948 i_rtti_name = t3950 i_description = t3952 ).
    CREATE OBJECT t3937->zlnt_view_ownkeys_b0e8086400eb.
    t3937->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3937->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3954 ).
    CREATE OBJECT t3937->zlnt_json_ownkeys_70e5fd461788.
    t3937->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3937->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3956 ).
    t3932 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3937 ).
    DATA t3958 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3960 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3929 = NEW zcl_lnt_istructure_component( i_name = |datar| i_type_9913 = t3932 i_as_include = t3958 i_suffix = t3960 ).
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
    DATA t3965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3929->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t3965 ).
    DATA t3967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3929->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3929->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t3967 ).
    ENDIF.
    t1->load( ).
    APPEND t3929 TO t1->items.
    t1->save( ).
    DATA t3969 TYPE REF TO zcl_lnt_istructure_component.
    DATA t3972 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3977 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3982) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t3982->has = abap_true.
    t3982->value = |sy-host|.
    DATA t3984 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3986 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3988 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3990 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3977 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t3982 i_conversion_exit = t3984 i_derived_from_constant = t3986 i_ddic_name = t3988 i_rtti_name = t3990 i_description = t3992 ).
    CREATE OBJECT t3977->zlnt_view_ownkeys_b0e8086400eb.
    t3977->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3977->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t3994 ).
    CREATE OBJECT t3977->zlnt_json_ownkeys_70e5fd461788.
    t3977->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t3996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t3996 ).
    t3972 = NEW zcl_lnt_character_type( i_length = CONV f( 32 ) i_extra = t3977 ).
    DATA t3998 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3969 = NEW zcl_lnt_istructure_component( i_name = |host| i_type_9913 = t3972 i_as_include = t3998 i_suffix = t4000 ).
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
    DATA t4005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3969->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4005 ).
    DATA t4007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3969->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3969->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4007 ).
    ENDIF.
    t1->load( ).
    APPEND t3969 TO t1->items.
    t1->save( ).
    DATA t4009 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4012 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4015 TYPE REF TO zcl_lnt_abstract_type_data.
    t4012 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4015 ).
    DATA t4016 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4018 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4009 = NEW zcl_lnt_istructure_component( i_name = |locdb| i_type_9913 = t4012 i_as_include = t4016 i_suffix = t4018 ).
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
    DATA t4023 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4009->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4023 ).
    DATA t4025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4009->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4009->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4025 ).
    ENDIF.
    t1->load( ).
    APPEND t4009 TO t1->items.
    t1->save( ).
    DATA t4027 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4030 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4033 TYPE REF TO zcl_lnt_abstract_type_data.
    t4030 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4033 ).
    DATA t4034 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4027 = NEW zcl_lnt_istructure_component( i_name = |locop| i_type_9913 = t4030 i_as_include = t4034 i_suffix = t4036 ).
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
    DATA t4041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4027->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4041 ).
    DATA t4043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4027->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4027->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4043 ).
    ENDIF.
    t1->load( ).
    APPEND t4027 TO t1->items.
    t1->save( ).
    DATA t4045 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4048 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4050 TYPE REF TO zcl_lnt_abstract_type_data.
    t4048 = NEW zcl_lnt_date_type( i_input_967e = t4050 ).
    DATA t4051 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4053 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4045 = NEW zcl_lnt_istructure_component( i_name = |datlo| i_type_9913 = t4048 i_as_include = t4051 i_suffix = t4053 ).
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
    DATA t4058 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4045->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4058 ).
    DATA t4060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4045->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4045->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4060 ).
    ENDIF.
    t1->load( ).
    APPEND t4045 TO t1->items.
    t1->save( ).
    DATA t4062 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4065 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4067 TYPE REF TO zcl_lnt_abstract_type_data.
    t4065 = NEW zcl_lnt_time_type( i_input_967e = t4067 ).
    DATA t4068 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4062 = NEW zcl_lnt_istructure_component( i_name = |timlo| i_type_9913 = t4065 i_as_include = t4068 i_suffix = t4070 ).
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
    DATA t4075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4062->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4075 ).
    DATA t4077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4062->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4062->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4077 ).
    ENDIF.
    t1->load( ).
    APPEND t4062 TO t1->items.
    t1->save( ).
    DATA t4079 TYPE REF TO zcl_lnt_istructure_component.
    DATA t4082 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4087 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t4092) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4092->has = abap_true.
    t4092->value = |sy-zonlo|.
    DATA t4094 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4096 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4098 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4087 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4092 i_conversion_exit = t4094 i_derived_from_constant = t4096 i_ddic_name = t4098 i_rtti_name = t4100 i_description = t4102 ).
    CREATE OBJECT t4087->zlnt_view_ownkeys_b0e8086400eb.
    t4087->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4087->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4104 ).
    CREATE OBJECT t4087->zlnt_json_ownkeys_70e5fd461788.
    t4087->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4087->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t4106 ).
    t4082 = NEW zcl_lnt_character_type( i_length = CONV f( 6 ) i_extra = t4087 ).
    DATA t4108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4079 = NEW zcl_lnt_istructure_component( i_name = |zonlo| i_type_9913 = t4082 i_as_include = t4108 i_suffix = t4110 ).
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
    DATA t4115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4079->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t4115 ).
    DATA t4117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4079->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4079->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t4117 ).
    ENDIF.
    t1->load( ).
    APPEND t4079 TO t1->items.
    t1->save( ).
    DATA t4118 TYPE REF TO zcl_lnt_structure_type.
    DATA t4121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4118 = NEW zcl_lnt_structure_type( i_components = t1 i_qualified_name = t4121 i_ddic_name = t4122 i_description = t4123 ).
    DATA t4125 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4127 TYPE f.
    DATA t4128 TYPE REF TO zcl_lnt_built_in.
    t4128 = me.
    DATA t4130 TYPE f.
    t4130 = t4128->row.
    DATA(t4136) = CONV f( 1 ).
    t4128->row = t4130 + t4136.
    DELETE t4128->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4127 = t4130.
    DATA(t4139) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4139->has = abap_true.
    t4139->value = CONV f( 1 ).
    t4125 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t4127 i_col = t4139 ) i_str = |sy| ).
    DATA t4142 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4144) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4149.
    t4149->load( ).
    APPEND |read_only| TO t4149->items.
    t4149->save( ).
    t4149->load( ).
    APPEND |built-in| TO t4149->items.
    t4149->save( ).
    DATA t4157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4142 = NEW zcl_lnt_typed_identifier( i_token = t4125 i_filename = t4144 i_type_9913 = t4118 i_meta = t4149 i_value = t4157 ).
    DATA t4159 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4161 TYPE f.
    DATA t4162 TYPE REF TO zcl_lnt_built_in.
    t4162 = me.
    DATA t4164 TYPE f.
    t4164 = t4162->row.
    DATA(t4170) = CONV f( 1 ).
    t4162->row = t4164 + t4170.
    DELETE t4162->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4161 = t4164.
    DATA(t4173) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4173->has = abap_true.
    t4173->value = CONV f( 1 ).
    t4159 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t4161 i_col = t4173 ) i_str = |syst| ).
    DATA t4176 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4178) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4183.
    t4183->load( ).
    APPEND |read_only| TO t4183->items.
    t4183->save( ).
    t4183->load( ).
    APPEND |built-in| TO t4183->items.
    t4183->save( ).
    DATA t4191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4176 = NEW zcl_lnt_typed_identifier( i_token = t4159 i_filename = t4178 i_type_9913 = t4118 i_meta = t4183 i_value = t4191 ).
    DATA t4193 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4195 TYPE f.
    DATA t4196 TYPE REF TO zcl_lnt_built_in.
    t4196 = me.
    DATA t4198 TYPE f.
    t4198 = t4196->row.
    DATA(t4204) = CONV f( 1 ).
    t4196->row = t4198 + t4204.
    DELETE t4196->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4195 = t4198.
    DATA(t4207) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4207->has = abap_true.
    t4207->value = CONV f( 1 ).
    t4193 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t4195 i_col = t4207 ) i_str = |sy-repid| ).
    DATA t4210 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4212) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4213 TYPE REF TO zcl_lnt_character_type.
    DATA t4217 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t4222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4222->has = abap_true.
    t4222->value = |sy-repid|.
    DATA t4224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4217 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4222 i_conversion_exit = t4224 i_derived_from_constant = t4226 i_ddic_name = t4228 i_rtti_name = t4230 i_description = t4232 ).
    CREATE OBJECT t4217->zlnt_view_ownkeys_b0e8086400eb.
    t4217->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4217->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4234 ).
    CREATE OBJECT t4217->zlnt_json_ownkeys_70e5fd461788.
    t4217->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4217->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t4236 ).
    t4213 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t4217 ).
    DATA t4241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4241.
    t4241->load( ).
    APPEND |read_only| TO t4241->items.
    t4241->save( ).
    t4241->load( ).
    APPEND |built-in| TO t4241->items.
    t4241->save( ).
    DATA t4249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4210 = NEW zcl_lnt_typed_identifier( i_token = t4193 i_filename = t4212 i_type_9913 = t4213 i_meta = t4241 i_value = t4249 ).
    DATA t4251 TYPE REF TO zcl_lnt_lx_identifier.
    DATA t4253 TYPE f.
    DATA t4254 TYPE REF TO zcl_lnt_built_in.
    t4254 = me.
    DATA t4256 TYPE f.
    t4256 = t4254->row.
    DATA(t4262) = CONV f( 1 ).
    t4254->row = t4256 + t4262.
    DELETE t4254->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t4253 = t4256.
    DATA(t4265) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4265->has = abap_true.
    t4265->value = CONV f( 1 ).
    t4251 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t4253 i_col = t4265 ) i_str = |syst-repid| ).
    DATA t4268 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4270) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t4271 TYPE REF TO zcl_lnt_character_type.
    DATA t4275 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t4280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4280->has = abap_true.
    t4280->value = |syst-repid|.
    DATA t4282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4275 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4280 i_conversion_exit = t4282 i_derived_from_constant = t4284 i_ddic_name = t4286 i_rtti_name = t4288 i_description = t4290 ).
    CREATE OBJECT t4275->zlnt_view_ownkeys_b0e8086400eb.
    t4275->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t4292 ).
    CREATE OBJECT t4275->zlnt_json_ownkeys_70e5fd461788.
    t4275->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t4294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4275->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t4294 ).
    t4271 = NEW zcl_lnt_character_type( i_length = CONV f( 40 ) i_extra = t4275 ).
    DATA t4299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4299.
    t4299->load( ).
    APPEND |read_only| TO t4299->items.
    t4299->save( ).
    t4299->load( ).
    APPEND |built-in| TO t4299->items.
    t4299->save( ).
    DATA t4307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4268 = NEW zcl_lnt_typed_identifier( i_token = t4251 i_filename = t4270 i_type_9913 = t4271 i_meta = t4299 i_value = t4307 ).
    DATA t4309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4309.
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
    DATA t7 TYPE f.
    DATA t8 TYPE REF TO zcl_lnt_built_in.
    t8 = me.
    DATA t10 TYPE f.
    t10 = t8->row.
    DATA(t16) = CONV f( 1 ).
    t8->row = t10 + t16.
    DELETE t8->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    t7 = t10.
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = CONV f( 1 ).
    t5 = NEW zcl_lnt_lx_identifier( i_start = NEW zcl_lnt_position( i_row = t7 i_col = t19 ) i_str = t1 ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t1.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t2 = zcl_lnt_void_type=>get_db65( i_voided = t32 i_qualified_name = t34 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t36 = t3.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = VALUE abap_bool( ).
    IF t36 IS INITIAL.
      t40 = abap_true.
    ELSEIF t36->has = abap_false.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = |'?'|.
      t3 = t45.
    ENDIF.
    DATA(t49) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    t50 = t2.
    DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t55.
    t55->load( ).
    APPEND |read_only| TO t55->items.
    t55->save( ).
    t55->load( ).
    APPEND |built-in| TO t55->items.
    t55->save( ).
    t52 = t55.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE string.
    t66 = t3->value.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    result = NEW zcl_lnt_typed_identifier( i_token = t5 i_filename = t49 i_type_9913 = t50 i_meta = t52 i_value = t65 ).

  ENDMETHOD.

  METHOD zlnt_builtin_init_97ac0787fc72.
    IF zlnt_builtin_init_d2c53bdf259f = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_d2c53bdf259f = abap_true.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    zcl_lnt_built_in=>counter = CONV f( 1 ).
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
    DATA t12 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t13) = VALUE f( ).
    DATA(t15) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t15 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t19) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t15 + t19.
    t13 = t15.
    DATA t21 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t25 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t25 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t31 TYPE REF TO zcl_lnt_abstract_type_data.
    t27 = t25->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t31 ) ).
    t21 = t25.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type.
    DATA t36 TYPE REF TO zcl_lnt_abstract_type_data.
    t34 = zcl_lnt_integer_type=>get_db65( i_input_967e = t36 ).
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
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t49 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t53 ).
    ENDIF.
    t9 = t7->set( p0 = |ABS| p1 = t12 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t57 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t58) = VALUE f( ).
    DATA(t60) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t60 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t64) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t60 + t64.
    t58 = t60.
    DATA t66 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t70 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t70 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t72 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t76 TYPE REF TO zcl_lnt_abstract_type_data.
    t72 = t70->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t76 ) ).
    t66 = t70.
    DATA t79 TYPE REF TO zcl_lnt_abstract_type.
    DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
    t79 = NEW zcl_lnt_float_type( i_input_967e = t81 ).
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
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t94 ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t96 ).
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t98 ).
    ENDIF.
    t54 = t7->set( p0 = |ACOS| p1 = t57 ).
    DATA t99 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t102 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t103) = VALUE f( ).
    DATA(t105) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t105 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t109) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t105 + t109.
    t103 = t105.
    DATA t111 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t115 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t115 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t117 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t121 TYPE REF TO zcl_lnt_abstract_type_data.
    t117 = t115->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t121 ) ).
    t111 = t115.
    DATA t124 TYPE REF TO zcl_lnt_abstract_type.
    DATA t126 TYPE REF TO zcl_lnt_abstract_type_data.
    t124 = NEW zcl_lnt_float_type( i_input_967e = t126 ).
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
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t139 ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t141 ).
    ENDIF.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t143 ).
    ENDIF.
    t99 = t7->set( p0 = |ASIN| p1 = t102 ).
    DATA t144 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t147 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t148) = VALUE f( ).
    DATA(t150) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t150 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t154) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t150 + t154.
    t148 = t150.
    DATA t156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t160 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t160 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t162 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t166 TYPE REF TO zcl_lnt_abstract_type_data.
    t162 = t160->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t166 ) ).
    t156 = t160.
    DATA t169 TYPE REF TO zcl_lnt_abstract_type.
    DATA t171 TYPE REF TO zcl_lnt_abstract_type_data.
    t169 = NEW zcl_lnt_float_type( i_input_967e = t171 ).
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
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t184 ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t186 ).
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t188 ).
    ENDIF.
    t144 = t7->set( p0 = |ATAN| p1 = t147 ).
    DATA t189 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t192 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t193) = VALUE f( ).
    DATA(t195) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t195 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t199) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t195 + t199.
    t193 = t195.
    DATA t201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t205 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t205 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t207 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t211 TYPE REF TO zcl_lnt_abstract_type_data.
    t207 = t205->set( p0 = |val| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t211 ) ).
    t201 = t205.
    DATA t214 TYPE REF TO zcl_lnt_abstract_type.
    DATA t216 TYPE REF TO zcl_lnt_abstract_type_data.
    t214 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t216 ).
    DATA t222 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t222 = zcl_lnt_version_module=>release_b8cd.
    DATA t225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t227 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t229 TYPE REF TO zcl_lnt_built_in_method.
    t192 = NEW zcl_lnt_ibuiltin_method( i_counter = t193 i_mandatory = t201 i_optional = t225 i_release_7928 = t222->get( p0 = |v702| ) i_predicate = t227 i_return_fa63 = t214 i_cache = t229 ).
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
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t236 ).
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t238 ).
    ENDIF.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t240 ).
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t192->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t242 ).
    ENDIF.
    t189 = t7->set( p0 = |BIT-SET| p1 = t192 ).
    DATA t243 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t246 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t247) = VALUE f( ).
    DATA(t249) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t249 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t253) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t249 + t253.
    t247 = t249.
    DATA t255 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t259 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t259 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t261 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t261 = t259->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t255 = t259.
    DATA t267 TYPE REF TO zcl_lnt_abstract_type.
    DATA t269 TYPE REF TO zcl_lnt_abstract_type_data.
    t267 = zcl_lnt_string_type=>get_db65( i_input_967e = t269 ).
    DATA t275 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t275 = zcl_lnt_version_module=>release_b8cd.
    DATA t278 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t280 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t282 TYPE REF TO zcl_lnt_built_in_method.
    t246 = NEW zcl_lnt_ibuiltin_method( i_counter = t247 i_mandatory = t255 i_optional = t278 i_release_7928 = t275->get( p0 = |v702| ) i_predicate = t280 i_return_fa63 = t267 i_cache = t282 ).
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
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t289 ).
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t291 ).
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t293 ).
    ENDIF.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t246->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t246->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t295 ).
    ENDIF.
    t243 = t7->set( p0 = |BOOLC| p1 = t246 ).
    DATA t296 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t299 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t300) = VALUE f( ).
    DATA(t302) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t302 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t306) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t302 + t306.
    t300 = t302.
    DATA t308 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t312 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t312 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t314 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t314 = t312->set( p0 = |bool| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t308 = t312.
    DATA t320 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t324 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t324 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t326 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t330 TYPE REF TO zcl_lnt_abstract_type_data.
    t326 = t324->set( p0 = |bit| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t330 ) ).
    t320 = t324.
    DATA t333 TYPE REF TO zcl_lnt_abstract_type.
    DATA t335 TYPE REF TO zcl_lnt_abstract_type_data.
    t333 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t335 ).
    DATA t341 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t341 = zcl_lnt_version_module=>release_b8cd.
    DATA t344 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t346 TYPE REF TO zcl_lnt_built_in_method.
    t299 = NEW zcl_lnt_ibuiltin_method( i_counter = t300 i_mandatory = t308 i_optional = t320 i_release_7928 = t341->get( p0 = |v702| ) i_predicate = t344 i_return_fa63 = t333 i_cache = t346 ).
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
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t354 ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t356 ).
    ENDIF.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t358 ).
    ENDIF.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t360 ).
    ENDIF.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t362 ).
    ENDIF.
    t296 = t7->set( p0 = |BOOLX| p1 = t299 ).
    DATA t363 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t366 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t367) = VALUE f( ).
    DATA(t369) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t369 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t373) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t369 + t373.
    t367 = t369.
    DATA t375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t379 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t379 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t381 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t385 TYPE REF TO zcl_lnt_abstract_type_data.
    t381 = t379->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t385 ) ).
    t375 = t379.
    DATA t388 TYPE REF TO zcl_lnt_abstract_type.
    DATA t390 TYPE REF TO zcl_lnt_abstract_type_data.
    t388 = zcl_lnt_integer_type=>get_db65( i_input_967e = t390 ).
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
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t403 ).
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t405 ).
    ENDIF.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t407 ).
    ENDIF.
    t363 = t7->set( p0 = |CEIL| p1 = t366 ).
    DATA t408 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t411 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t412) = VALUE f( ).
    DATA(t414) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t414 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t418) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t414 + t418.
    t412 = t414.
    DATA t420 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t424 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t426 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t426 = t424->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t434 TYPE REF TO zcl_lnt_abstract_type_data.
    t430 = t424->set( p0 = |add| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t434 ) ).
    t420 = t424.
    DATA t437 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t441 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t441 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t443 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t447 TYPE REF TO zcl_lnt_abstract_type_data.
    t443 = t441->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t447 ) ).
    t437 = t441.
    DATA t450 TYPE REF TO zcl_lnt_abstract_type.
    DATA t452 TYPE REF TO zcl_lnt_abstract_type_data.
    t450 = zcl_lnt_integer_type=>get_db65( i_input_967e = t452 ).
    DATA t458 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t458 = zcl_lnt_version_module=>release_b8cd.
    DATA t461 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t463 TYPE REF TO zcl_lnt_built_in_method.
    t411 = NEW zcl_lnt_ibuiltin_method( i_counter = t412 i_mandatory = t420 i_optional = t437 i_release_7928 = t458->get( p0 = |v702| ) i_predicate = t461 i_return_fa63 = t450 i_cache = t463 ).
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
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t471 ).
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t473 ).
    ENDIF.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t475 ).
    ENDIF.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t477 ).
    ENDIF.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t479 ).
    ENDIF.
    t408 = t7->set( p0 = |CHAR_OFF| p1 = t411 ).
    DATA t480 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t483 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t484) = VALUE f( ).
    DATA(t486) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t486 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t490) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t486 + t490.
    t484 = t486.
    DATA t492 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t496 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t496 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t498 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t498 = t496->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t492 = t496.
    DATA t504 TYPE REF TO zcl_lnt_abstract_type.
    DATA t506 TYPE REF TO zcl_lnt_abstract_type_data.
    t504 = zcl_lnt_integer_type=>get_db65( i_input_967e = t506 ).
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
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t519 ).
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t521 ).
    ENDIF.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t483->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t483->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t523 ).
    ENDIF.
    t480 = t7->set( p0 = |CHARLEN| p1 = t483 ).
    DATA t524 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t527 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t528) = VALUE f( ).
    DATA(t530) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t530 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t534) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t530 + t534.
    t528 = t530.
    DATA t536 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t540 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t540 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t542 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t542 = t540->set( p0 = |val1| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t546 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t546 = t540->set( p0 = |val2| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t536 = t540.
    DATA t552 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t556 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t556 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t558 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t558 = t556->set( p0 = |val3| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t562 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t562 = t556->set( p0 = |val4| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t566 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t566 = t556->set( p0 = |val5| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t570 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t570 = t556->set( p0 = |val6| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t574 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t574 = t556->set( p0 = |val7| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t578 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t578 = t556->set( p0 = |val9| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t552 = t556.
    DATA t584 TYPE REF TO zcl_lnt_abstract_type.
    DATA t586 TYPE REF TO zcl_lnt_abstract_type_data.
    t584 = zcl_lnt_string_type=>get_db65( i_input_967e = t586 ).
    DATA t592 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t592 = zcl_lnt_version_module=>release_b8cd.
    DATA t595 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t597 TYPE REF TO zcl_lnt_built_in_method.
    t527 = NEW zcl_lnt_ibuiltin_method( i_counter = t528 i_mandatory = t536 i_optional = t552 i_release_7928 = t592->get( p0 = |v702| ) i_predicate = t595 i_return_fa63 = t584 i_cache = t597 ).
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
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t605 ).
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t607 ).
    ENDIF.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t609 ).
    ENDIF.
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t611 ).
    ENDIF.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t613 ).
    ENDIF.
    t524 = t7->set( p0 = |CMAX| p1 = t527 ).
    DATA t614 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t617 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t618) = VALUE f( ).
    DATA(t620) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t620 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t624) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t620 + t624.
    t618 = t620.
    DATA t626 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t630 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t630 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t632 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t632 = t630->set( p0 = |val1| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t636 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t636 = t630->set( p0 = |val2| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t626 = t630.
    DATA t642 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t646 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t646 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t648 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t648 = t646->set( p0 = |val3| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t652 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t652 = t646->set( p0 = |val4| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t656 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t656 = t646->set( p0 = |val5| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t660 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t660 = t646->set( p0 = |val6| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t664 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t664 = t646->set( p0 = |val7| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t668 = t646->set( p0 = |val9| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t642 = t646.
    DATA t674 TYPE REF TO zcl_lnt_abstract_type.
    DATA t676 TYPE REF TO zcl_lnt_abstract_type_data.
    t674 = zcl_lnt_string_type=>get_db65( i_input_967e = t676 ).
    DATA t682 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t682 = zcl_lnt_version_module=>release_b8cd.
    DATA t685 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t687 TYPE REF TO zcl_lnt_built_in_method.
    t617 = NEW zcl_lnt_ibuiltin_method( i_counter = t618 i_mandatory = t626 i_optional = t642 i_release_7928 = t682->get( p0 = |v702| ) i_predicate = t685 i_return_fa63 = t674 i_cache = t687 ).
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
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t695 ).
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t697 ).
    ENDIF.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t699 ).
    ENDIF.
    DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t701 ).
    ENDIF.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t617->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t617->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t703 ).
    ENDIF.
    t614 = t7->set( p0 = |CMIN| p1 = t617 ).
    DATA t704 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t707 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t708) = VALUE f( ).
    DATA(t710) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t710 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t714) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t710 + t714.
    t708 = t710.
    DATA t716 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t720 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t720 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t722 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t726 TYPE REF TO zcl_lnt_any_type.
    DATA t727 TYPE REF TO zcl_lnt_abstract_type_data.
    t726 = zcl_lnt_any_type=>get_db65( i_input_967e = t727 ).
    DATA t728 TYPE REF TO zcl_lnt_itable_options.
    DATA t733 TYPE REF TO zcl_lnt_itable_key.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t728 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |USER| i_primary_key = t733 i_secondary = t735 ).
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
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t740 ).
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t728->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t728->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t742 ).
    ENDIF.
    DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t722 = t720->set( p0 = |table| p1 = NEW zcl_lnt_ty_table_type( i_row_type = t726 i_options = t728 i_qualified_name = t743 i_description = t744 ) ).
    t716 = t720.
    DATA t747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t751 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t751 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t753 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t753 = t751->set( p0 = |sep| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t747 = t751.
    DATA t759 TYPE REF TO zcl_lnt_abstract_type.
    DATA t761 TYPE REF TO zcl_lnt_abstract_type_data.
    t759 = zcl_lnt_string_type=>get_db65( i_input_967e = t761 ).
    DATA t767 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t767 = zcl_lnt_version_module=>release_b8cd.
    DATA t770 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t772 TYPE REF TO zcl_lnt_built_in_method.
    t707 = NEW zcl_lnt_ibuiltin_method( i_counter = t708 i_mandatory = t716 i_optional = t747 i_release_7928 = t767->get( p0 = |v702| ) i_predicate = t770 i_return_fa63 = t759 i_cache = t772 ).
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
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t780 ).
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t782 ).
    ENDIF.
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t784 ).
    ENDIF.
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t786 ).
    ENDIF.
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t707->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t707->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t788 ).
    ENDIF.
    t704 = t7->set( p0 = |CONCAT_LINES_OF| p1 = t707 ).
    DATA t789 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t792 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t793) = VALUE f( ).
    DATA(t795) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t795 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t799) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t795 + t799.
    t793 = t795.
    DATA t801 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t805 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t805 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t807 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t807 = t805->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t801 = t805.
    DATA t813 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t817 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t817 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t819 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t819 = t817->set( p0 = |del| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t823 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t823 = t817->set( p0 = |from| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t827 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t827 = t817->set( p0 = |to| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t813 = t817.
    DATA t833 TYPE REF TO zcl_lnt_abstract_type.
    DATA t835 TYPE REF TO zcl_lnt_abstract_type_data.
    t833 = zcl_lnt_string_type=>get_db65( i_input_967e = t835 ).
    DATA t841 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t841 = zcl_lnt_version_module=>release_b8cd.
    DATA t844 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t846 TYPE REF TO zcl_lnt_built_in_method.
    t792 = NEW zcl_lnt_ibuiltin_method( i_counter = t793 i_mandatory = t801 i_optional = t813 i_release_7928 = t841->get( p0 = |v702| ) i_predicate = t844 i_return_fa63 = t833 i_cache = t846 ).
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
    DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t854 ).
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t856 ).
    ENDIF.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t858 ).
    ENDIF.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t860 ).
    ENDIF.
    DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t792->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t792->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t862 ).
    ENDIF.
    t789 = t7->set( p0 = |CONDENSE| p1 = t792 ).
    DATA t863 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t866 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t867) = VALUE f( ).
    DATA(t869) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t869 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t873) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t869 + t873.
    t867 = t869.
    DATA t875 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t879 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t879 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t881 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t881 = t879->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t875 = t879.
    DATA t887 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t891 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t891 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t893 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t893 = t891->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t897 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t897 = t891->set( p0 = |start| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t901 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t901 = t891->set( p0 = |end| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t905 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t905 = t891->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t909 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t909 = t891->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t913 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t918 TYPE REF TO zcl_lnt_abstract_type_data.
    t913 = t891->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t918 ) ).
    DATA t919 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t923 TYPE REF TO zcl_lnt_abstract_type_data.
    t919 = t891->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t923 ) ).
    DATA t924 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t928 TYPE REF TO zcl_lnt_abstract_type_data.
    t924 = t891->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t928 ) ).
    DATA t929 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t933 TYPE REF TO zcl_lnt_abstract_type_data.
    t929 = t891->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t933 ) ).
    t887 = t891.
    DATA t936 TYPE REF TO zcl_lnt_abstract_type.
    DATA t939 TYPE REF TO zcl_lnt_abstract_type_data.
    t936 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t939 ).
    DATA t940 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t944) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t944->has = abap_true.
    t944->value = abap_true.
    t940 = t944.
    DATA t951 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t951 = zcl_lnt_version_module=>release_b8cd.
    DATA t954 TYPE REF TO zcl_lnt_built_in_method.
    t866 = NEW zcl_lnt_ibuiltin_method( i_counter = t867 i_mandatory = t875 i_optional = t887 i_release_7928 = t951->get( p0 = |v702| ) i_predicate = t940 i_return_fa63 = t936 i_cache = t954 ).
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
    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t963 ).
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t965 ).
    ENDIF.
    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t967 ).
    ENDIF.
    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t969 ).
    ENDIF.
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |predicate| p1 = t971 ).
    ENDIF.
    DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t866->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t866->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t973 ).
    ENDIF.
    t863 = t7->set( p0 = |CONTAINS| p1 = t866 ).
    DATA t974 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t977 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t978) = VALUE f( ).
    DATA(t980) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t980 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t984) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t980 + t984.
    t978 = t980.
    DATA t986 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t990 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t990 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t992 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t992 = t990->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t986 = t990.
    DATA t998 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1002 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1002 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1004 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1004 = t1002->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1008 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1008 = t1002->set( p0 = |start| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1012 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1012 = t1002->set( p0 = |end| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1016 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1020 TYPE REF TO zcl_lnt_abstract_type_data.
    t1016 = t1002->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1020 ) ).
    DATA t1021 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1025 TYPE REF TO zcl_lnt_abstract_type_data.
    t1021 = t1002->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1025 ) ).
    DATA t1026 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1030 TYPE REF TO zcl_lnt_abstract_type_data.
    t1026 = t1002->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1030 ) ).
    t998 = t1002.
    DATA t1033 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1037) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1037->has = abap_true.
    t1037->value = abap_true.
    t1033 = t1037.
    DATA t1039 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1042 TYPE REF TO zcl_lnt_abstract_type_data.
    t1039 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1042 ).
    DATA t1048 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1048 = zcl_lnt_version_module=>release_b8cd.
    DATA t1051 TYPE REF TO zcl_lnt_built_in_method.
    t977 = NEW zcl_lnt_ibuiltin_method( i_counter = t978 i_mandatory = t986 i_optional = t998 i_release_7928 = t1048->get( p0 = |v702| ) i_predicate = t1033 i_return_fa63 = t1039 i_cache = t1051 ).
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
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1060 ).
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1062 ).
    ENDIF.
    DATA t1064 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1064 ).
    ENDIF.
    DATA t1066 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |predicate| p1 = t1066 ).
    ENDIF.
    DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1068 ).
    ENDIF.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t977->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t977->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1070 ).
    ENDIF.
    t974 = t7->set( p0 = |CONTAINS_ANY_NOT_OF| p1 = t977 ).
    DATA t1071 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1074 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1075) = VALUE f( ).
    DATA(t1077) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1077 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1081) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1077 + t1081.
    t1075 = t1077.
    DATA t1083 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1087 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1087 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1089 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1089 = t1087->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1083 = t1087.
    DATA t1095 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1099 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1099 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1101 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1101 = t1099->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1105 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1105 = t1099->set( p0 = |start| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1109 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1109 = t1099->set( p0 = |end| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1113 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1117 TYPE REF TO zcl_lnt_abstract_type_data.
    t1113 = t1099->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1117 ) ).
    DATA t1118 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1122 TYPE REF TO zcl_lnt_abstract_type_data.
    t1118 = t1099->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1122 ) ).
    DATA t1123 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1127 TYPE REF TO zcl_lnt_abstract_type_data.
    t1123 = t1099->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1127 ) ).
    t1095 = t1099.
    DATA t1130 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1133 TYPE REF TO zcl_lnt_abstract_type_data.
    t1130 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1133 ).
    DATA t1134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t1138) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t1138->has = abap_true.
    t1138->value = abap_true.
    t1134 = t1138.
    DATA t1145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1145 = zcl_lnt_version_module=>release_b8cd.
    DATA t1148 TYPE REF TO zcl_lnt_built_in_method.
    t1074 = NEW zcl_lnt_ibuiltin_method( i_counter = t1075 i_mandatory = t1083 i_optional = t1095 i_release_7928 = t1145->get( p0 = |v702| ) i_predicate = t1134 i_return_fa63 = t1130 i_cache = t1148 ).
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
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1157 ).
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1159 ).
    ENDIF.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1161 ).
    ENDIF.
    DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1163 ).
    ENDIF.
    DATA t1165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |predicate| p1 = t1165 ).
    ENDIF.
    DATA t1167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1074->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1074->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1167 ).
    ENDIF.
    t1071 = t7->set( p0 = |CONTAINS_ANY_OF| p1 = t1074 ).
    DATA t1168 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1171 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1172) = VALUE f( ).
    DATA(t1174) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1174 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1178) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1174 + t1178.
    t1172 = t1174.
    DATA t1180 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1184 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1184 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1186 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1190 TYPE REF TO zcl_lnt_abstract_type_data.
    t1186 = t1184->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t1190 ) ).
    t1180 = t1184.
    DATA t1193 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1195 TYPE REF TO zcl_lnt_abstract_type_data.
    t1193 = NEW zcl_lnt_float_type( i_input_967e = t1195 ).
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
    DATA t1208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1208 ).
    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1210 ).
    ENDIF.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1171->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1171->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1212 ).
    ENDIF.
    t1168 = t7->set( p0 = |COS| p1 = t1171 ).
    DATA t1213 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1216 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1217) = VALUE f( ).
    DATA(t1219) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1219 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1223) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1219 + t1223.
    t1217 = t1219.
    DATA t1225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1229 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1229 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1235 TYPE REF TO zcl_lnt_abstract_type_data.
    t1231 = t1229->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t1235 ) ).
    t1225 = t1229.
    DATA t1238 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1240 TYPE REF TO zcl_lnt_abstract_type_data.
    t1238 = NEW zcl_lnt_float_type( i_input_967e = t1240 ).
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
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1253 ).
    DATA t1255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1255 ).
    ENDIF.
    DATA t1257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1257 ).
    ENDIF.
    t1213 = t7->set( p0 = |COSH| p1 = t1216 ).
    DATA t1258 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1261 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1262) = VALUE f( ).
    DATA(t1264) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1264 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1268) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1264 + t1268.
    t1262 = t1264.
    DATA t1270 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1274 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1274 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1276 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1276 = t1274->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1270 = t1274.
    DATA t1282 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1286 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1286 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1288 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1288 = t1286->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1292 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1292 = t1286->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1296 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1296 = t1286->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1300 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1305 TYPE REF TO zcl_lnt_abstract_type_data.
    t1300 = t1286->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1305 ) ).
    DATA t1306 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1310 TYPE REF TO zcl_lnt_abstract_type_data.
    t1306 = t1286->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1310 ) ).
    DATA t1311 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1315 TYPE REF TO zcl_lnt_abstract_type_data.
    t1311 = t1286->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1315 ) ).
    t1282 = t1286.
    DATA t1318 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1320 TYPE REF TO zcl_lnt_abstract_type_data.
    t1318 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1320 ).
    DATA t1326 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1326 = zcl_lnt_version_module=>release_b8cd.
    DATA t1329 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1331 TYPE REF TO zcl_lnt_built_in_method.
    t1261 = NEW zcl_lnt_ibuiltin_method( i_counter = t1262 i_mandatory = t1270 i_optional = t1282 i_release_7928 = t1326->get( p0 = |v702| ) i_predicate = t1329 i_return_fa63 = t1318 i_cache = t1331 ).
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
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1339 ).
    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1341 ).
    ENDIF.
    DATA t1343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1343 ).
    ENDIF.
    DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1345 ).
    ENDIF.
    DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1347 ).
    ENDIF.
    t1258 = t7->set( p0 = |COUNT| p1 = t1261 ).
    DATA t1348 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1351 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1352) = VALUE f( ).
    DATA(t1354) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1354 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1358) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1354 + t1358.
    t1352 = t1354.
    DATA t1360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1364 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1364 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1366 = t1364->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1360 = t1364.
    DATA t1372 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1376 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1376 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1378 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1378 = t1376->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1382 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1382 = t1376->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1386 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1386 = t1376->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1390 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1395 TYPE REF TO zcl_lnt_abstract_type_data.
    t1390 = t1376->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1395 ) ).
    DATA t1396 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1400 TYPE REF TO zcl_lnt_abstract_type_data.
    t1396 = t1376->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1400 ) ).
    DATA t1401 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1405 TYPE REF TO zcl_lnt_abstract_type_data.
    t1401 = t1376->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1405 ) ).
    t1372 = t1376.
    DATA t1408 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1410 TYPE REF TO zcl_lnt_abstract_type_data.
    t1408 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1410 ).
    DATA t1416 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1416 = zcl_lnt_version_module=>release_b8cd.
    DATA t1419 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1421 TYPE REF TO zcl_lnt_built_in_method.
    t1351 = NEW zcl_lnt_ibuiltin_method( i_counter = t1352 i_mandatory = t1360 i_optional = t1372 i_release_7928 = t1416->get( p0 = |v702| ) i_predicate = t1419 i_return_fa63 = t1408 i_cache = t1421 ).
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
    DATA t1429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1429 ).
    DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1431 ).
    ENDIF.
    DATA t1433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1433 ).
    ENDIF.
    DATA t1435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1435 ).
    ENDIF.
    DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1351->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1437 ).
    ENDIF.
    t1348 = t7->set( p0 = |COUNT_ANY_NOT_OF| p1 = t1351 ).
    DATA t1438 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1441 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1442) = VALUE f( ).
    DATA(t1444) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1444 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1448) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1444 + t1448.
    t1442 = t1444.
    DATA t1450 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1454 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1454 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1456 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1456 = t1454->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1450 = t1454.
    DATA t1462 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1466 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1466 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1468 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1468 = t1466->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1472 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1472 = t1466->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1476 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1476 = t1466->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1480 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1485 TYPE REF TO zcl_lnt_abstract_type_data.
    t1480 = t1466->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1485 ) ).
    DATA t1486 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1490 TYPE REF TO zcl_lnt_abstract_type_data.
    t1486 = t1466->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1490 ) ).
    DATA t1491 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1495 TYPE REF TO zcl_lnt_abstract_type_data.
    t1491 = t1466->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1495 ) ).
    t1462 = t1466.
    DATA t1498 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1500 TYPE REF TO zcl_lnt_abstract_type_data.
    t1498 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1500 ).
    DATA t1506 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1506 = zcl_lnt_version_module=>release_b8cd.
    DATA t1509 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1511 TYPE REF TO zcl_lnt_built_in_method.
    t1441 = NEW zcl_lnt_ibuiltin_method( i_counter = t1442 i_mandatory = t1450 i_optional = t1462 i_release_7928 = t1506->get( p0 = |v702| ) i_predicate = t1509 i_return_fa63 = t1498 i_cache = t1511 ).
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
    DATA t1519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1519 ).
    DATA t1521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1521 ).
    ENDIF.
    DATA t1523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1523 ).
    ENDIF.
    DATA t1525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1525 ).
    ENDIF.
    DATA t1527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1441->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1527 ).
    ENDIF.
    t1438 = t7->set( p0 = |COUNT_ANY_OF| p1 = t1441 ).
    DATA t1528 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1531 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1532) = VALUE f( ).
    DATA(t1534) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1534 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1538) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1534 + t1538.
    t1532 = t1534.
    DATA t1540 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1544 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1544 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1546 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1546 = t1544->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1540 = t1544.
    DATA t1552 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1554 TYPE REF TO zcl_lnt_abstract_type_data.
    t1552 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1554 ).
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
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1567 ).
    DATA t1569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1569 ).
    ENDIF.
    DATA t1571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1531->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1531->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1571 ).
    ENDIF.
    t1528 = t7->set( p0 = |DBMAXLEN| p1 = t1531 ).
    DATA t1572 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1575 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1576) = VALUE f( ).
    DATA(t1578) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1578 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1582) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1578 + t1582.
    t1576 = t1578.
    DATA t1584 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1588 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1588 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1590 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1590 = t1588->set( p0 = |val1| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1594 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1594 = t1588->set( p0 = |val2| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1584 = t1588.
    DATA t1600 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1602 TYPE REF TO zcl_lnt_abstract_type_data.
    t1600 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1602 ).
    DATA t1608 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1608 = zcl_lnt_version_module=>release_b8cd.
    DATA t1611 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1613 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1615 TYPE REF TO zcl_lnt_built_in_method.
    t1575 = NEW zcl_lnt_ibuiltin_method( i_counter = t1576 i_mandatory = t1584 i_optional = t1611 i_release_7928 = t1608->get( p0 = |v702| ) i_predicate = t1613 i_return_fa63 = t1600 i_cache = t1615 ).
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
    DATA t1622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1622 ).
    DATA t1624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1624 ).
    ENDIF.
    DATA t1626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1626 ).
    ENDIF.
    DATA t1628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1575->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1575->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1628 ).
    ENDIF.
    t1572 = t7->set( p0 = |DISTANCE| p1 = t1575 ).
    DATA t1629 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1632 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1633) = VALUE f( ).
    DATA(t1635) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1635 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1639) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1635 + t1639.
    t1633 = t1635.
    DATA t1641 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1645 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1645 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1647 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1647 = t1645->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1651 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1651 = t1645->set( p0 = |format| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t1641 = t1645.
    DATA t1657 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1659 TYPE REF TO zcl_lnt_abstract_type_data.
    t1657 = zcl_lnt_string_type=>get_db65( i_input_967e = t1659 ).
    DATA t1665 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1665 = zcl_lnt_version_module=>release_b8cd.
    DATA t1668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1670 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1672 TYPE REF TO zcl_lnt_built_in_method.
    t1632 = NEW zcl_lnt_ibuiltin_method( i_counter = t1633 i_mandatory = t1641 i_optional = t1668 i_release_7928 = t1665->get( p0 = |v702| ) i_predicate = t1670 i_return_fa63 = t1657 i_cache = t1672 ).
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
    DATA t1679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1679 ).
    DATA t1681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1681 ).
    ENDIF.
    DATA t1683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1683 ).
    ENDIF.
    DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1632->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1632->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1685 ).
    ENDIF.
    t1629 = t7->set( p0 = |ESCAPE| p1 = t1632 ).
    DATA t1686 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1689 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1690) = VALUE f( ).
    DATA(t1692) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1692 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1696) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1692 + t1696.
    t1690 = t1692.
    DATA t1698 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1702 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1704 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1708 TYPE REF TO zcl_lnt_abstract_type_data.
    t1704 = t1702->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t1708 ) ).
    t1698 = t1702.
    DATA t1711 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1713 TYPE REF TO zcl_lnt_abstract_type_data.
    t1711 = NEW zcl_lnt_float_type( i_input_967e = t1713 ).
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
    DATA t1726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1726 ).
    DATA t1728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1728 ).
    ENDIF.
    DATA t1730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1689->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1689->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1730 ).
    ENDIF.
    t1686 = t7->set( p0 = |EXP| p1 = t1689 ).
    DATA t1731 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1734 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1735) = VALUE f( ).
    DATA(t1737) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1737 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1741) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1737 + t1741.
    t1735 = t1737.
    DATA t1743 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1747 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1749 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1749 = t1747->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1743 = t1747.
    DATA t1755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1759 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1759 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1761 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1761 = t1759->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1765 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1765 = t1759->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1769 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1769 = t1759->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1773 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1778 TYPE REF TO zcl_lnt_abstract_type_data.
    t1773 = t1759->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t1778 ) ).
    DATA t1779 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1783 TYPE REF TO zcl_lnt_abstract_type_data.
    t1779 = t1759->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1783 ) ).
    DATA t1784 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1788 TYPE REF TO zcl_lnt_abstract_type_data.
    t1784 = t1759->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1788 ) ).
    DATA t1789 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1793 TYPE REF TO zcl_lnt_abstract_type_data.
    t1789 = t1759->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1793 ) ).
    t1755 = t1759.
    DATA t1796 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1798 TYPE REF TO zcl_lnt_abstract_type_data.
    t1796 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1798 ).
    DATA t1804 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1804 = zcl_lnt_version_module=>release_b8cd.
    DATA t1807 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1809 TYPE REF TO zcl_lnt_built_in_method.
    t1734 = NEW zcl_lnt_ibuiltin_method( i_counter = t1735 i_mandatory = t1743 i_optional = t1755 i_release_7928 = t1804->get( p0 = |v702| ) i_predicate = t1807 i_return_fa63 = t1796 i_cache = t1809 ).
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
    DATA t1817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1817 ).
    DATA t1819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1819 ).
    ENDIF.
    DATA t1821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1821 ).
    ENDIF.
    DATA t1823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1823 ).
    ENDIF.
    DATA t1825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1825 ).
    ENDIF.
    t1731 = t7->set( p0 = |FIND| p1 = t1734 ).
    DATA t1826 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1829 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1830) = VALUE f( ).
    DATA(t1832) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1832 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1836) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1832 + t1836.
    t1830 = t1832.
    DATA t1838 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1842 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1842 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1844 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1844 = t1842->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1838 = t1842.
    DATA t1850 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1854 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1854 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1856 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1856 = t1854->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1860 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1864 TYPE REF TO zcl_lnt_abstract_type_data.
    t1860 = t1854->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1864 ) ).
    DATA t1865 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1869 TYPE REF TO zcl_lnt_abstract_type_data.
    t1865 = t1854->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1869 ) ).
    DATA t1870 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1874 TYPE REF TO zcl_lnt_abstract_type_data.
    t1870 = t1854->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1874 ) ).
    t1850 = t1854.
    DATA t1877 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1879 TYPE REF TO zcl_lnt_abstract_type_data.
    t1877 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1879 ).
    DATA t1885 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1885 = zcl_lnt_version_module=>release_b8cd.
    DATA t1888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1890 TYPE REF TO zcl_lnt_built_in_method.
    t1829 = NEW zcl_lnt_ibuiltin_method( i_counter = t1830 i_mandatory = t1838 i_optional = t1850 i_release_7928 = t1885->get( p0 = |v702| ) i_predicate = t1888 i_return_fa63 = t1877 i_cache = t1890 ).
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
    DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1898 ).
    DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1900 ).
    ENDIF.
    DATA t1902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1902 ).
    ENDIF.
    DATA t1904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1904 ).
    ENDIF.
    DATA t1906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1906 ).
    ENDIF.
    t1826 = t7->set( p0 = |FIND_ANY_NOT_OF| p1 = t1829 ).
    DATA t1907 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1910 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1911) = VALUE f( ).
    DATA(t1913) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1913 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1917) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1913 + t1917.
    t1911 = t1913.
    DATA t1919 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1923 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1923 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1925 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1925 = t1923->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t1919 = t1923.
    DATA t1931 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1935 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1935 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t1937 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t1937 = t1935->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t1941 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1945 TYPE REF TO zcl_lnt_abstract_type_data.
    t1941 = t1935->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1945 ) ).
    DATA t1946 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1950 TYPE REF TO zcl_lnt_abstract_type_data.
    t1946 = t1935->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1950 ) ).
    DATA t1951 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t1955 TYPE REF TO zcl_lnt_abstract_type_data.
    t1951 = t1935->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1955 ) ).
    t1931 = t1935.
    DATA t1958 TYPE REF TO zcl_lnt_abstract_type.
    DATA t1960 TYPE REF TO zcl_lnt_abstract_type_data.
    t1958 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1960 ).
    DATA t1966 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1966 = zcl_lnt_version_module=>release_b8cd.
    DATA t1969 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t1971 TYPE REF TO zcl_lnt_built_in_method.
    t1910 = NEW zcl_lnt_ibuiltin_method( i_counter = t1911 i_mandatory = t1919 i_optional = t1931 i_release_7928 = t1966->get( p0 = |v702| ) i_predicate = t1969 i_return_fa63 = t1958 i_cache = t1971 ).
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
    DATA t1979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t1979 ).
    DATA t1981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t1981 ).
    ENDIF.
    DATA t1983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t1983 ).
    ENDIF.
    DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t1985 ).
    ENDIF.
    DATA t1987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1910->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1910->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t1987 ).
    ENDIF.
    t1907 = t7->set( p0 = |FIND_ANY_OF| p1 = t1910 ).
    DATA t1988 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t1991 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t1992) = VALUE f( ).
    DATA(t1994) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t1994 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t1998) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t1994 + t1998.
    t1992 = t1994.
    DATA t2000 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2004 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2004 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2006 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2006 = t2004->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t2000 = t2004.
    DATA t2012 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2016 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2016 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2018 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2018 = t2016->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2022 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2022 = t2016->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2026 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2026 = t2016->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2030 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2035 TYPE REF TO zcl_lnt_abstract_type_data.
    t2030 = t2016->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2035 ) ).
    DATA t2036 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2040 TYPE REF TO zcl_lnt_abstract_type_data.
    t2036 = t2016->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2040 ) ).
    DATA t2041 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2045 TYPE REF TO zcl_lnt_abstract_type_data.
    t2041 = t2016->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2045 ) ).
    DATA t2046 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2050 TYPE REF TO zcl_lnt_abstract_type_data.
    t2046 = t2016->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2050 ) ).
    t2012 = t2016.
    DATA t2053 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2055 TYPE REF TO zcl_lnt_abstract_type_data.
    t2053 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2055 ).
    DATA t2061 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2061 = zcl_lnt_version_module=>release_b8cd.
    DATA t2064 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2066 TYPE REF TO zcl_lnt_built_in_method.
    t1991 = NEW zcl_lnt_ibuiltin_method( i_counter = t1992 i_mandatory = t2000 i_optional = t2012 i_release_7928 = t2061->get( p0 = |v702| ) i_predicate = t2064 i_return_fa63 = t2053 i_cache = t2066 ).
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
    DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2074 ).
    DATA t2076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2076 ).
    ENDIF.
    DATA t2078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2078 ).
    ENDIF.
    DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2080 ).
    ENDIF.
    DATA t2082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1991->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1991->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2082 ).
    ENDIF.
    t1988 = t7->set( p0 = |FIND_END| p1 = t1991 ).
    DATA t2083 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2086 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2087) = VALUE f( ).
    DATA(t2089) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2089 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2093) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2089 + t2093.
    t2087 = t2089.
    DATA t2095 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2099 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2099 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2101 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2105 TYPE REF TO zcl_lnt_abstract_type_data.
    t2101 = t2099->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t2105 ) ).
    t2095 = t2099.
    DATA t2108 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2110 TYPE REF TO zcl_lnt_abstract_type_data.
    t2108 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2110 ).
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
    DATA t2123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2123 ).
    DATA t2125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2125 ).
    ENDIF.
    DATA t2127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2086->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2086->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2127 ).
    ENDIF.
    t2083 = t7->set( p0 = |FLOOR| p1 = t2086 ).
    DATA t2128 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2131 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2132) = VALUE f( ).
    DATA(t2134) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2134 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2138) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2134 + t2138.
    t2132 = t2134.
    DATA t2140 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2144 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2144 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2146 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2150 TYPE REF TO zcl_lnt_abstract_type_data.
    t2146 = t2144->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t2150 ) ).
    t2140 = t2144.
    DATA t2153 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2155 TYPE REF TO zcl_lnt_abstract_type_data.
    t2153 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2155 ).
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
    DATA t2168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2168 ).
    DATA t2170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2170 ).
    ENDIF.
    DATA t2172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2172 ).
    ENDIF.
    t2128 = t7->set( p0 = |FRAC| p1 = t2131 ).
    DATA t2173 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2176 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2177) = VALUE f( ).
    DATA(t2179) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2179 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2183) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2179 + t2183.
    t2177 = t2179.
    DATA t2185 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2189 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2189 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2191 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2191 = t2189->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t2185 = t2189.
    DATA t2197 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2201 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2201 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2203 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2208 TYPE REF TO zcl_lnt_abstract_type_data.
    t2203 = t2201->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2208 ) ).
    DATA t2209 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2213 TYPE REF TO zcl_lnt_abstract_type_data.
    t2209 = t2201->set( p0 = |sep| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2213 ) ).
    DATA t2214 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2218 TYPE REF TO zcl_lnt_abstract_type_data.
    t2214 = t2201->set( p0 = |min| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2218 ) ).
    t2197 = t2201.
    DATA t2221 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2223 TYPE REF TO zcl_lnt_abstract_type_data.
    t2221 = zcl_lnt_string_type=>get_db65( i_input_967e = t2223 ).
    DATA t2229 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2229 = zcl_lnt_version_module=>release_b8cd.
    DATA t2232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2234 TYPE REF TO zcl_lnt_built_in_method.
    t2176 = NEW zcl_lnt_ibuiltin_method( i_counter = t2177 i_mandatory = t2185 i_optional = t2197 i_release_7928 = t2229->get( p0 = |v702| ) i_predicate = t2232 i_return_fa63 = t2221 i_cache = t2234 ).
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
    DATA t2242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2242 ).
    DATA t2244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2244 ).
    ENDIF.
    DATA t2246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2246 ).
    ENDIF.
    DATA t2248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2248 ).
    ENDIF.
    DATA t2250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2176->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2176->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2250 ).
    ENDIF.
    t2173 = t7->set( p0 = |FROM_MIXED| p1 = t2176 ).
    DATA t2251 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2254 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2255) = VALUE f( ).
    DATA(t2257) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2257 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2261) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2257 + t2261.
    t2255 = t2257.
    DATA t2263 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2267 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2267 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2269 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2269 = t2267->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2273 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2273 = t2267->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t2263 = t2267.
    DATA t2279 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2283 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2283 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2285 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2289 TYPE REF TO zcl_lnt_abstract_type_data.
    t2285 = t2283->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2289 ) ).
    t2279 = t2283.
    DATA t2292 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2294 TYPE REF TO zcl_lnt_abstract_type_data.
    t2292 = zcl_lnt_string_type=>get_db65( i_input_967e = t2294 ).
    DATA t2300 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2300 = zcl_lnt_version_module=>release_b8cd.
    DATA t2303 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2305 TYPE REF TO zcl_lnt_built_in_method.
    t2254 = NEW zcl_lnt_ibuiltin_method( i_counter = t2255 i_mandatory = t2263 i_optional = t2279 i_release_7928 = t2300->get( p0 = |v702| ) i_predicate = t2303 i_return_fa63 = t2292 i_cache = t2305 ).
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
    DATA t2313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2313 ).
    DATA t2315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2315 ).
    ENDIF.
    DATA t2317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2317 ).
    ENDIF.
    DATA t2319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2319 ).
    ENDIF.
    DATA t2321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2254->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2321 ).
    ENDIF.
    t2251 = t7->set( p0 = |INSERT| p1 = t2254 ).
    DATA t2322 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2325 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2326) = VALUE f( ).
    DATA(t2328) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2328 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2332) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2328 + t2332.
    t2326 = t2328.
    DATA t2334 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2338 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2338 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2340 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2344 TYPE REF TO zcl_lnt_abstract_type_data.
    t2340 = t2338->set( p0 = |base| p1 = NEW zcl_lnt_float_type( i_input_967e = t2344 ) ).
    DATA t2345 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2349 TYPE REF TO zcl_lnt_abstract_type_data.
    t2345 = t2338->set( p0 = |exp| p1 = NEW zcl_lnt_float_type( i_input_967e = t2349 ) ).
    t2334 = t2338.
    DATA t2352 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2354 TYPE REF TO zcl_lnt_abstract_type_data.
    t2352 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2354 ).
    DATA t2360 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2360 = zcl_lnt_version_module=>release_b8cd.
    DATA t2363 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2365 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2367 TYPE REF TO zcl_lnt_built_in_method.
    t2325 = NEW zcl_lnt_ibuiltin_method( i_counter = t2326 i_mandatory = t2334 i_optional = t2363 i_release_7928 = t2360->get( p0 = |v740sp02| ) i_predicate = t2365 i_return_fa63 = t2352 i_cache = t2367 ).
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
    DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2374 ).
    DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2376 ).
    ENDIF.
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2378 ).
    ENDIF.
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2380 ).
    ENDIF.
    t2322 = t7->set( p0 = |IPOW| p1 = t2325 ).
    DATA t2381 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2384 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2385) = VALUE f( ).
    DATA(t2387) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2387 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2391) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2387 + t2391.
    t2385 = t2387.
    DATA t2393 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2397 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2397 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2399 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2403 TYPE REF TO zcl_lnt_abstract_type_data.
    t2399 = t2397->set( p0 = |val| p1 = zcl_lnt_any_type=>get_db65( i_input_967e = t2403 ) ).
    t2393 = t2397.
    DATA t2406 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2409 TYPE REF TO zcl_lnt_abstract_type_data.
    t2406 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2409 ).
    DATA t2410 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t2414) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2414->has = abap_true.
    t2414->value = abap_true.
    t2410 = t2414.
    DATA t2421 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2421 = zcl_lnt_version_module=>release_b8cd.
    DATA t2424 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2426 TYPE REF TO zcl_lnt_built_in_method.
    t2384 = NEW zcl_lnt_ibuiltin_method( i_counter = t2385 i_mandatory = t2393 i_optional = t2424 i_release_7928 = t2421->get( p0 = |v740sp02| ) i_predicate = t2410 i_return_fa63 = t2406 i_cache = t2426 ).
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
    DATA t2434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2434 ).
    DATA t2436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2436 ).
    ENDIF.
    DATA t2438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2438 ).
    ENDIF.
    DATA t2440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = |predicate| p1 = t2440 ).
    ENDIF.
    DATA t2442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2384->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2384->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2442 ).
    ENDIF.
    t2381 = t7->set( p0 = |LINE_EXISTS| p1 = t2384 ).
    DATA t2443 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2446 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2447) = VALUE f( ).
    DATA(t2449) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2449 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2453) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2449 + t2453.
    t2447 = t2449.
    DATA t2455 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2459 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2459 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2461 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2465 TYPE REF TO zcl_lnt_abstract_type_data.
    t2461 = t2459->set( p0 = |val| p1 = zcl_lnt_any_type=>get_db65( i_input_967e = t2465 ) ).
    t2455 = t2459.
    DATA t2468 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2470 TYPE REF TO zcl_lnt_abstract_type_data.
    t2468 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2470 ).
    DATA t2476 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2476 = zcl_lnt_version_module=>release_b8cd.
    DATA t2479 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2481 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2483 TYPE REF TO zcl_lnt_built_in_method.
    t2446 = NEW zcl_lnt_ibuiltin_method( i_counter = t2447 i_mandatory = t2455 i_optional = t2479 i_release_7928 = t2476->get( p0 = |v740sp02| ) i_predicate = t2481 i_return_fa63 = t2468 i_cache = t2483 ).
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
    DATA t2490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2490 ).
    DATA t2492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2492 ).
    ENDIF.
    DATA t2494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2494 ).
    ENDIF.
    DATA t2496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2446->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2446->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2496 ).
    ENDIF.
    t2443 = t7->set( p0 = |LINE_INDEX| p1 = t2446 ).
    DATA t2497 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2500 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2501) = VALUE f( ).
    DATA(t2503) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2503 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2507) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2503 + t2507.
    t2501 = t2503.
    DATA t2509 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2513 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2513 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2515 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2519 TYPE REF TO zcl_lnt_any_type.
    DATA t2520 TYPE REF TO zcl_lnt_abstract_type_data.
    t2519 = zcl_lnt_any_type=>get_db65( i_input_967e = t2520 ).
    DATA t2521 TYPE REF TO zcl_lnt_itable_options.
    DATA t2526 TYPE REF TO zcl_lnt_itable_key.
    DATA t2528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2521 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |USER| i_primary_key = t2526 i_secondary = t2528 ).
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
    DATA t2533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2521->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t2533 ).
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2521->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2521->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t2535 ).
    ENDIF.
    DATA t2536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t2537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2515 = t2513->set( p0 = |val| p1 = NEW zcl_lnt_ty_table_type( i_row_type = t2519 i_options = t2521 i_qualified_name = t2536 i_description = t2537 ) ).
    t2509 = t2513.
    DATA t2540 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2542 TYPE REF TO zcl_lnt_abstract_type_data.
    t2540 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2542 ).
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
    DATA t2555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2555 ).
    DATA t2557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2557 ).
    ENDIF.
    DATA t2559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2559 ).
    ENDIF.
    t2497 = t7->set( p0 = |LINES| p1 = t2500 ).
    DATA t2560 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2563 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2564) = VALUE f( ).
    DATA(t2566) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2566 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2570) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2566 + t2570.
    t2564 = t2566.
    DATA t2572 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2576 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2576 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2578 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2582 TYPE REF TO zcl_lnt_abstract_type_data.
    t2578 = t2576->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t2582 ) ).
    t2572 = t2576.
    DATA t2585 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2587 TYPE REF TO zcl_lnt_abstract_type_data.
    t2585 = NEW zcl_lnt_float_type( i_input_967e = t2587 ).
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
    DATA t2600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2600 ).
    DATA t2602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2602 ).
    ENDIF.
    DATA t2604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2563->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2563->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2604 ).
    ENDIF.
    t2560 = t7->set( p0 = |LOG| p1 = t2563 ).
    DATA t2605 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2608 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2609) = VALUE f( ).
    DATA(t2611) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2611 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2615) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2611 + t2615.
    t2609 = t2611.
    DATA t2617 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2621 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2621 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2623 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2627 TYPE REF TO zcl_lnt_abstract_type_data.
    t2623 = t2621->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t2627 ) ).
    t2617 = t2621.
    DATA t2630 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2632 TYPE REF TO zcl_lnt_abstract_type_data.
    t2630 = NEW zcl_lnt_float_type( i_input_967e = t2632 ).
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
    DATA t2645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2645 ).
    DATA t2647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2647 ).
    ENDIF.
    DATA t2649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2608->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2649 ).
    ENDIF.
    t2605 = t7->set( p0 = |LOG10| p1 = t2608 ).
    DATA t2650 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2653 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2654) = VALUE f( ).
    DATA(t2656) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2656 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2660) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2656 + t2660.
    t2654 = t2656.
    DATA t2662 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2666 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2666 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2668 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2668 = t2666->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t2662 = t2666.
    DATA t2674 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2678 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2678 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2680 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2685 TYPE REF TO zcl_lnt_abstract_type_data.
    t2680 = t2678->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2685 ) ).
    DATA t2686 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2686 = t2678->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2690 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2690 = t2678->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2694 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2698 TYPE REF TO zcl_lnt_abstract_type_data.
    t2694 = t2678->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2698 ) ).
    t2674 = t2678.
    DATA t2701 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2703 TYPE REF TO zcl_lnt_abstract_type_data.
    t2701 = zcl_lnt_string_type=>get_db65( i_input_967e = t2703 ).
    DATA t2709 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2709 = zcl_lnt_version_module=>release_b8cd.
    DATA t2712 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2714 TYPE REF TO zcl_lnt_built_in_method.
    t2653 = NEW zcl_lnt_ibuiltin_method( i_counter = t2654 i_mandatory = t2662 i_optional = t2674 i_release_7928 = t2709->get( p0 = |v702| ) i_predicate = t2712 i_return_fa63 = t2701 i_cache = t2714 ).
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
    DATA t2722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2722 ).
    DATA t2724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2724 ).
    ENDIF.
    DATA t2726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2726 ).
    ENDIF.
    DATA t2728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2728 ).
    ENDIF.
    DATA t2730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2653->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2653->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2730 ).
    ENDIF.
    t2650 = t7->set( p0 = |MATCH| p1 = t2653 ).
    DATA t2731 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2734 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2735) = VALUE f( ).
    DATA(t2737) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2737 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2741) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2737 + t2741.
    t2735 = t2737.
    DATA t2743 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2747 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2747 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2749 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2749 = t2747->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t2743 = t2747.
    DATA t2755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2759 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2759 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2761 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2766 TYPE REF TO zcl_lnt_abstract_type_data.
    t2761 = t2759->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2766 ) ).
    DATA t2767 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2767 = t2759->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2771 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2771 = t2759->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t2775 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2779 TYPE REF TO zcl_lnt_abstract_type_data.
    t2775 = t2759->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2779 ) ).
    DATA t2780 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2784 TYPE REF TO zcl_lnt_abstract_type_data.
    t2780 = t2759->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2784 ) ).
    t2755 = t2759.
    DATA t2787 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2790 TYPE REF TO zcl_lnt_abstract_type_data.
    t2787 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2790 ).
    DATA t2791 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t2795) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2795->has = abap_true.
    t2795->value = abap_true.
    t2791 = t2795.
    DATA t2802 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2802 = zcl_lnt_version_module=>release_b8cd.
    DATA t2805 TYPE REF TO zcl_lnt_built_in_method.
    t2734 = NEW zcl_lnt_ibuiltin_method( i_counter = t2735 i_mandatory = t2743 i_optional = t2755 i_release_7928 = t2802->get( p0 = |v702| ) i_predicate = t2791 i_return_fa63 = t2787 i_cache = t2805 ).
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
    DATA t2814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2814 ).
    DATA t2816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2816 ).
    ENDIF.
    DATA t2818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2818 ).
    ENDIF.
    DATA t2820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2820 ).
    ENDIF.
    DATA t2822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |predicate| p1 = t2822 ).
    ENDIF.
    DATA t2824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2824 ).
    ENDIF.
    t2731 = t7->set( p0 = |MATCHES| p1 = t2734 ).
    DATA t2825 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2828 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2829) = VALUE f( ).
    DATA(t2831) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2831 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2835) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2831 + t2835.
    t2829 = t2831.
    DATA t2837 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2841 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2841 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2843 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2843 = t2841->set( p0 = |val1| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2847 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2847 = t2841->set( p0 = |val2| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t2837 = t2841.
    DATA t2853 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2857 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2857 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2859 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2859 = t2857->set( p0 = |val3| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2863 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2863 = t2857->set( p0 = |val4| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2867 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2867 = t2857->set( p0 = |val5| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2871 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2871 = t2857->set( p0 = |val6| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2875 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2875 = t2857->set( p0 = |val7| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2879 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2879 = t2857->set( p0 = |val8| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2883 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2883 = t2857->set( p0 = |val9| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t2853 = t2857.
    DATA t2889 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2891 TYPE REF TO zcl_lnt_abstract_type_data.
    t2889 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2891 ).
    DATA t2897 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2897 = zcl_lnt_version_module=>release_b8cd.
    DATA t2900 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2902 TYPE REF TO zcl_lnt_built_in_method.
    t2828 = NEW zcl_lnt_ibuiltin_method( i_counter = t2829 i_mandatory = t2837 i_optional = t2853 i_release_7928 = t2897->get( p0 = |v702| ) i_predicate = t2900 i_return_fa63 = t2889 i_cache = t2902 ).
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
    DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t2910 ).
    DATA t2912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t2912 ).
    ENDIF.
    DATA t2914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t2914 ).
    ENDIF.
    DATA t2916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t2916 ).
    ENDIF.
    DATA t2918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2828->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2828->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t2918 ).
    ENDIF.
    t2825 = t7->set( p0 = |NMAX| p1 = t2828 ).
    DATA t2919 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t2922 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t2923) = VALUE f( ).
    DATA(t2925) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t2925 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t2929) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t2925 + t2929.
    t2923 = t2925.
    DATA t2931 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2935 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2935 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2937 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2937 = t2935->set( p0 = |val1| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2941 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2941 = t2935->set( p0 = |val2| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t2931 = t2935.
    DATA t2947 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t2951 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2951 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t2953 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2953 = t2951->set( p0 = |val3| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2957 = t2951->set( p0 = |val4| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2961 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2961 = t2951->set( p0 = |val5| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2965 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2965 = t2951->set( p0 = |val6| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2969 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2969 = t2951->set( p0 = |val7| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2973 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2973 = t2951->set( p0 = |val8| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    DATA t2977 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t2977 = t2951->set( p0 = |val9| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t2947 = t2951.
    DATA t2983 TYPE REF TO zcl_lnt_abstract_type.
    DATA t2985 TYPE REF TO zcl_lnt_abstract_type_data.
    t2983 = zcl_lnt_integer_type=>get_db65( i_input_967e = t2985 ).
    DATA t2991 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2991 = zcl_lnt_version_module=>release_b8cd.
    DATA t2994 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t2996 TYPE REF TO zcl_lnt_built_in_method.
    t2922 = NEW zcl_lnt_ibuiltin_method( i_counter = t2923 i_mandatory = t2931 i_optional = t2947 i_release_7928 = t2991->get( p0 = |v702| ) i_predicate = t2994 i_return_fa63 = t2983 i_cache = t2996 ).
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
    DATA t3004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3004 ).
    DATA t3006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3006 ).
    ENDIF.
    DATA t3008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3008 ).
    ENDIF.
    DATA t3010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3010 ).
    ENDIF.
    DATA t3012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2922->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3012 ).
    ENDIF.
    t2919 = t7->set( p0 = |NMIN| p1 = t2922 ).
    DATA t3013 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3016 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3017) = VALUE f( ).
    DATA(t3019) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3019 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3023) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3019 + t3023.
    t3017 = t3019.
    DATA t3025 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3029 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3029 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3031 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3031 = t3029->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3025 = t3029.
    DATA t3037 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3039 TYPE REF TO zcl_lnt_abstract_type_data.
    t3037 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3039 ).
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
    DATA t3052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3052 ).
    DATA t3054 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3054 ).
    ENDIF.
    DATA t3056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3016->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3016->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3056 ).
    ENDIF.
    t3013 = t7->set( p0 = |NUMOFCHAR| p1 = t3016 ).
    DATA t3057 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3060 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3061) = VALUE f( ).
    DATA(t3063) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3063 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3067) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3063 + t3067.
    t3061 = t3063.
    DATA t3069 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3073 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3073 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3075 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3075 = t3073->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3079 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3079 = t3073->set( p0 = |occ| p1 = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ) ).
    t3069 = t3073.
    DATA t3085 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3087 TYPE REF TO zcl_lnt_abstract_type_data.
    t3085 = zcl_lnt_string_type=>get_db65( i_input_967e = t3087 ).
    DATA t3093 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3093 = zcl_lnt_version_module=>release_b8cd.
    DATA t3096 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3098 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3100 TYPE REF TO zcl_lnt_built_in_method.
    t3060 = NEW zcl_lnt_ibuiltin_method( i_counter = t3061 i_mandatory = t3069 i_optional = t3096 i_release_7928 = t3093->get( p0 = |v702| ) i_predicate = t3098 i_return_fa63 = t3085 i_cache = t3100 ).
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
    DATA t3107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3107 ).
    DATA t3109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3109 ).
    ENDIF.
    DATA t3111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3111 ).
    ENDIF.
    DATA t3113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3060->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3060->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3113 ).
    ENDIF.
    t3057 = t7->set( p0 = |REPEAT| p1 = t3060 ).
    DATA t3114 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3117 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3118) = VALUE f( ).
    DATA(t3120) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3120 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3124) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3120 + t3124.
    t3118 = t3120.
    DATA t3126 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3130 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3130 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3132 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3132 = t3130->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3136 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3136 = t3130->set( p0 = |with| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3126 = t3130.
    DATA t3142 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3146 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3146 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3148 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3148 = t3146->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3152 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3152 = t3146->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3156 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3156 = t3146->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3160 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3165 TYPE REF TO zcl_lnt_abstract_type_data.
    t3160 = t3146->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3165 ) ).
    DATA t3166 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3170 TYPE REF TO zcl_lnt_abstract_type_data.
    t3166 = t3146->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3170 ) ).
    DATA t3171 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3175 TYPE REF TO zcl_lnt_abstract_type_data.
    t3171 = t3146->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3175 ) ).
    DATA t3176 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3180 TYPE REF TO zcl_lnt_abstract_type_data.
    t3176 = t3146->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3180 ) ).
    t3142 = t3146.
    DATA t3183 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3185 TYPE REF TO zcl_lnt_abstract_type_data.
    t3183 = zcl_lnt_string_type=>get_db65( i_input_967e = t3185 ).
    DATA t3191 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3191 = zcl_lnt_version_module=>release_b8cd.
    DATA t3194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3196 TYPE REF TO zcl_lnt_built_in_method.
    t3117 = NEW zcl_lnt_ibuiltin_method( i_counter = t3118 i_mandatory = t3126 i_optional = t3142 i_release_7928 = t3191->get( p0 = |v702| ) i_predicate = t3194 i_return_fa63 = t3183 i_cache = t3196 ).
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
    DATA t3204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3204 ).
    DATA t3206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3206 ).
    ENDIF.
    DATA t3208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3208 ).
    ENDIF.
    DATA t3210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3210 ).
    ENDIF.
    DATA t3212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3117->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3212 ).
    ENDIF.
    t3114 = t7->set( p0 = |REPLACE| p1 = t3117 ).
    DATA t3213 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3216 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3217) = VALUE f( ).
    DATA(t3219) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3219 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3223) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3219 + t3223.
    t3217 = t3219.
    DATA t3225 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3229 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3229 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3235 TYPE REF TO zcl_lnt_abstract_type_data.
    t3231 = t3229->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3235 ) ).
    t3225 = t3229.
    DATA t3238 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3242 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3242 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3244 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3248 TYPE REF TO zcl_lnt_abstract_type_data.
    t3244 = t3242->set( p0 = |dec| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3248 ) ).
    DATA t3249 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3253 TYPE REF TO zcl_lnt_abstract_type_data.
    t3249 = t3242->set( p0 = |prec| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3253 ) ).
    DATA t3254 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3258 TYPE REF TO zcl_lnt_abstract_type_data.
    t3254 = t3242->set( p0 = |mode| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3258 ) ).
    t3238 = t3242.
    DATA t3261 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3263 TYPE REF TO zcl_lnt_abstract_type_data.
    t3261 = NEW zcl_lnt_float_type( i_input_967e = t3263 ).
    DATA t3269 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3269 = zcl_lnt_version_module=>release_b8cd.
    DATA t3272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3274 TYPE REF TO zcl_lnt_built_in_method.
    t3216 = NEW zcl_lnt_ibuiltin_method( i_counter = t3217 i_mandatory = t3225 i_optional = t3238 i_release_7928 = t3269->get( p0 = |v702| ) i_predicate = t3272 i_return_fa63 = t3261 i_cache = t3274 ).
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
    DATA t3282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3282 ).
    DATA t3284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3284 ).
    ENDIF.
    DATA t3286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3286 ).
    ENDIF.
    DATA t3288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3288 ).
    ENDIF.
    DATA t3290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3290 ).
    ENDIF.
    t3213 = t7->set( p0 = |RESCALE| p1 = t3216 ).
    DATA t3291 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3294 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3295) = VALUE f( ).
    DATA(t3297) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3297 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3301) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3297 + t3301.
    t3295 = t3297.
    DATA t3303 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3307 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3307 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3309 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3309 = t3307->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3303 = t3307.
    DATA t3315 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3317 TYPE REF TO zcl_lnt_abstract_type_data.
    t3315 = zcl_lnt_string_type=>get_db65( i_input_967e = t3317 ).
    DATA t3323 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3323 = zcl_lnt_version_module=>release_b8cd.
    DATA t3326 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3328 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3330 TYPE REF TO zcl_lnt_built_in_method.
    t3294 = NEW zcl_lnt_ibuiltin_method( i_counter = t3295 i_mandatory = t3303 i_optional = t3326 i_release_7928 = t3323->get( p0 = |v702| ) i_predicate = t3328 i_return_fa63 = t3315 i_cache = t3330 ).
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
    DATA t3337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3337 ).
    DATA t3339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3339 ).
    ENDIF.
    DATA t3341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3341 ).
    ENDIF.
    DATA t3343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3294->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3343 ).
    ENDIF.
    t3291 = t7->set( p0 = |REVERSE| p1 = t3294 ).
    DATA t3344 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3347 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3348) = VALUE f( ).
    DATA(t3350) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3350 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3354) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3350 + t3354.
    t3348 = t3350.
    DATA t3356 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3360 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3360 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3366 TYPE REF TO zcl_lnt_abstract_type_data.
    t3362 = t3360->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3366 ) ).
    t3356 = t3360.
    DATA t3369 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3373 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3373 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3375 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3379 TYPE REF TO zcl_lnt_abstract_type_data.
    t3375 = t3373->set( p0 = |dec| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3379 ) ).
    DATA t3380 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3384 TYPE REF TO zcl_lnt_abstract_type_data.
    t3380 = t3373->set( p0 = |prec| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3384 ) ).
    DATA t3385 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3389 TYPE REF TO zcl_lnt_abstract_type_data.
    t3385 = t3373->set( p0 = |mode| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3389 ) ).
    t3369 = t3373.
    DATA t3392 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3394 TYPE REF TO zcl_lnt_abstract_type_data.
    t3392 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3394 ).
    DATA t3400 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3400 = zcl_lnt_version_module=>release_b8cd.
    DATA t3403 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3405 TYPE REF TO zcl_lnt_built_in_method.
    t3347 = NEW zcl_lnt_ibuiltin_method( i_counter = t3348 i_mandatory = t3356 i_optional = t3369 i_release_7928 = t3400->get( p0 = |v702| ) i_predicate = t3403 i_return_fa63 = t3392 i_cache = t3405 ).
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
    DATA t3413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3413 ).
    DATA t3415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3415 ).
    ENDIF.
    DATA t3417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3417 ).
    ENDIF.
    DATA t3419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3419 ).
    ENDIF.
    DATA t3421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3347->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3347->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3421 ).
    ENDIF.
    t3344 = t7->set( p0 = |ROUND| p1 = t3347 ).
    DATA t3422 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3425 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3426) = VALUE f( ).
    DATA(t3428) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3428 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3432) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3428 + t3432.
    t3426 = t3428.
    DATA t3434 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3438 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3438 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3440 = t3438->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3444 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3448 TYPE REF TO zcl_lnt_abstract_type_data.
    t3444 = t3438->set( p0 = |index| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3448 ) ).
    t3434 = t3438.
    DATA t3451 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3455 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3455 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3457 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3457 = t3455->set( p0 = |sep| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3461 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3461 = t3455->set( p0 = |space| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3451 = t3455.
    DATA t3467 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3469 TYPE REF TO zcl_lnt_abstract_type_data.
    t3467 = zcl_lnt_string_type=>get_db65( i_input_967e = t3469 ).
    DATA t3475 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3475 = zcl_lnt_version_module=>release_b8cd.
    DATA t3478 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3480 TYPE REF TO zcl_lnt_built_in_method.
    t3425 = NEW zcl_lnt_ibuiltin_method( i_counter = t3426 i_mandatory = t3434 i_optional = t3451 i_release_7928 = t3475->get( p0 = |v702| ) i_predicate = t3478 i_return_fa63 = t3467 i_cache = t3480 ).
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
    DATA t3488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3488 ).
    DATA t3490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3490 ).
    ENDIF.
    DATA t3492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3492 ).
    ENDIF.
    DATA t3494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3494 ).
    ENDIF.
    DATA t3496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3425->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3496 ).
    ENDIF.
    t3422 = t7->set( p0 = |SEGMENT| p1 = t3425 ).
    DATA t3497 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3500 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3501) = VALUE f( ).
    DATA(t3503) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3503 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3507) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3503 + t3507.
    t3501 = t3503.
    DATA t3509 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3513 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3513 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3515 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3515 = t3513->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3509 = t3513.
    DATA t3521 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3525 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3525 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3527 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3527 = t3525->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3531 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3535 TYPE REF TO zcl_lnt_abstract_type_data.
    t3531 = t3525->set( p0 = |places| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3535 ) ).
    DATA t3536 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3540 TYPE REF TO zcl_lnt_abstract_type_data.
    t3536 = t3525->set( p0 = |circular| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3540 ) ).
    t3521 = t3525.
    DATA t3543 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3545 TYPE REF TO zcl_lnt_abstract_type_data.
    t3543 = zcl_lnt_string_type=>get_db65( i_input_967e = t3545 ).
    DATA t3551 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3551 = zcl_lnt_version_module=>release_b8cd.
    DATA t3554 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3556 TYPE REF TO zcl_lnt_built_in_method.
    t3500 = NEW zcl_lnt_ibuiltin_method( i_counter = t3501 i_mandatory = t3509 i_optional = t3521 i_release_7928 = t3551->get( p0 = |v702| ) i_predicate = t3554 i_return_fa63 = t3543 i_cache = t3556 ).
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
    DATA t3564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3564 ).
    DATA t3566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3566 ).
    ENDIF.
    DATA t3568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3568 ).
    ENDIF.
    DATA t3570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3570 ).
    ENDIF.
    DATA t3572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3500->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3500->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3572 ).
    ENDIF.
    t3497 = t7->set( p0 = |SHIFT_LEFT| p1 = t3500 ).
    DATA t3573 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3576 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3577) = VALUE f( ).
    DATA(t3579) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3579 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3583) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3579 + t3583.
    t3577 = t3579.
    DATA t3585 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3589 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3589 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3591 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3591 = t3589->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3585 = t3589.
    DATA t3597 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3601 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3601 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3603 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3603 = t3601->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3607 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3611 TYPE REF TO zcl_lnt_abstract_type_data.
    t3607 = t3601->set( p0 = |places| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3611 ) ).
    DATA t3612 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3616 TYPE REF TO zcl_lnt_abstract_type_data.
    t3612 = t3601->set( p0 = |circular| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3616 ) ).
    t3597 = t3601.
    DATA t3619 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3621 TYPE REF TO zcl_lnt_abstract_type_data.
    t3619 = zcl_lnt_string_type=>get_db65( i_input_967e = t3621 ).
    DATA t3627 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3627 = zcl_lnt_version_module=>release_b8cd.
    DATA t3630 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3632 TYPE REF TO zcl_lnt_built_in_method.
    t3576 = NEW zcl_lnt_ibuiltin_method( i_counter = t3577 i_mandatory = t3585 i_optional = t3597 i_release_7928 = t3627->get( p0 = |v702| ) i_predicate = t3630 i_return_fa63 = t3619 i_cache = t3632 ).
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
    DATA t3640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3640 ).
    DATA t3642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3642 ).
    ENDIF.
    DATA t3644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3644 ).
    ENDIF.
    DATA t3646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3646 ).
    ENDIF.
    DATA t3648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3576->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3576->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3648 ).
    ENDIF.
    t3573 = t7->set( p0 = |SHIFT_RIGHT| p1 = t3576 ).
    DATA t3649 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3652 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3653) = VALUE f( ).
    DATA(t3655) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3655 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3659) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3655 + t3659.
    t3653 = t3655.
    DATA t3661 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3665 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3665 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3667 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3671 TYPE REF TO zcl_lnt_abstract_type_data.
    t3667 = t3665->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3671 ) ).
    t3661 = t3665.
    DATA t3674 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3676 TYPE REF TO zcl_lnt_abstract_type_data.
    t3674 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3676 ).
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
    DATA t3689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3689 ).
    DATA t3691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3691 ).
    ENDIF.
    DATA t3693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3652->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3652->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3693 ).
    ENDIF.
    t3649 = t7->set( p0 = |SIGN| p1 = t3652 ).
    DATA t3694 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3697 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3698) = VALUE f( ).
    DATA(t3700) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3700 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3704) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3700 + t3704.
    t3698 = t3700.
    DATA t3706 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3710 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3710 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3712 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3716 TYPE REF TO zcl_lnt_abstract_type_data.
    t3712 = t3710->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3716 ) ).
    t3706 = t3710.
    DATA t3719 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3721 TYPE REF TO zcl_lnt_abstract_type_data.
    t3719 = NEW zcl_lnt_float_type( i_input_967e = t3721 ).
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
    DATA t3734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3734 ).
    DATA t3736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3736 ).
    ENDIF.
    DATA t3738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3697->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3697->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3738 ).
    ENDIF.
    t3694 = t7->set( p0 = |SIN| p1 = t3697 ).
    DATA t3739 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3742 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3743) = VALUE f( ).
    DATA(t3745) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3745 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3749) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3745 + t3749.
    t3743 = t3745.
    DATA t3751 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3755 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3755 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3757 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3761 TYPE REF TO zcl_lnt_abstract_type_data.
    t3757 = t3755->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3761 ) ).
    t3751 = t3755.
    DATA t3764 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3766 TYPE REF TO zcl_lnt_abstract_type_data.
    t3764 = NEW zcl_lnt_float_type( i_input_967e = t3766 ).
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
    DATA t3779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3779 ).
    DATA t3781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3781 ).
    ENDIF.
    DATA t3783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3742->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3742->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3783 ).
    ENDIF.
    t3739 = t7->set( p0 = |SINH| p1 = t3742 ).
    DATA t3784 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3787 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3788) = VALUE f( ).
    DATA(t3790) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3790 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3794) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3790 + t3794.
    t3788 = t3790.
    DATA t3796 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3800 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3800 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3802 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3806 TYPE REF TO zcl_lnt_abstract_type_data.
    t3802 = t3800->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t3806 ) ).
    t3796 = t3800.
    DATA t3809 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3811 TYPE REF TO zcl_lnt_abstract_type_data.
    t3809 = NEW zcl_lnt_float_type( i_input_967e = t3811 ).
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
    DATA t3824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3824 ).
    DATA t3826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3826 ).
    ENDIF.
    DATA t3828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3787->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3787->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3828 ).
    ENDIF.
    t3784 = t7->set( p0 = |SQRT| p1 = t3787 ).
    DATA t3829 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3832 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3833) = VALUE f( ).
    DATA(t3835) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3835 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3839) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3835 + t3839.
    t3833 = t3835.
    DATA t3841 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3845 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3845 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3847 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3847 = t3845->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3841 = t3845.
    DATA t3853 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3855 TYPE REF TO zcl_lnt_abstract_type_data.
    t3853 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3855 ).
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
    DATA t3868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3868 ).
    DATA t3870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3870 ).
    ENDIF.
    DATA t3872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3832->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3832->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3872 ).
    ENDIF.
    t3829 = t7->set( p0 = |STRLEN| p1 = t3832 ).
    DATA t3873 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3876 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3877) = VALUE f( ).
    DATA(t3879) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3879 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3883) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3879 + t3883.
    t3877 = t3879.
    DATA t3885 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3889 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3889 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3891 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3891 = t3889->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3885 = t3889.
    DATA t3897 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3901 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3901 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3903 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3907 TYPE REF TO zcl_lnt_abstract_type_data.
    t3903 = t3901->set( p0 = |off| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3907 ) ).
    DATA t3908 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3912 TYPE REF TO zcl_lnt_abstract_type_data.
    t3908 = t3901->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3912 ) ).
    t3897 = t3901.
    DATA t3915 TYPE REF TO zcl_lnt_abstract_type.
    DATA t3917 TYPE REF TO zcl_lnt_abstract_type_data.
    t3915 = zcl_lnt_string_type=>get_db65( i_input_967e = t3917 ).
    DATA t3923 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3923 = zcl_lnt_version_module=>release_b8cd.
    DATA t3926 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t3928 TYPE REF TO zcl_lnt_built_in_method.
    t3876 = NEW zcl_lnt_ibuiltin_method( i_counter = t3877 i_mandatory = t3885 i_optional = t3897 i_release_7928 = t3923->get( p0 = |v702| ) i_predicate = t3926 i_return_fa63 = t3915 i_cache = t3928 ).
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
    DATA t3936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t3936 ).
    DATA t3938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t3938 ).
    ENDIF.
    DATA t3940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t3940 ).
    ENDIF.
    DATA t3942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t3942 ).
    ENDIF.
    DATA t3944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3876->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3876->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t3944 ).
    ENDIF.
    t3873 = t7->set( p0 = |SUBSTRING| p1 = t3876 ).
    DATA t3945 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t3948 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t3949) = VALUE f( ).
    DATA(t3951) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t3951 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t3955) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t3951 + t3955.
    t3949 = t3951.
    DATA t3957 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3961 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3961 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3963 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3963 = t3961->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t3957 = t3961.
    DATA t3969 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3973 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3973 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t3975 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3975 = t3973->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3979 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3979 = t3973->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3983 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t3983 = t3973->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t3987 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3992 TYPE REF TO zcl_lnt_abstract_type_data.
    t3987 = t3973->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t3992 ) ).
    DATA t3993 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t3997 TYPE REF TO zcl_lnt_abstract_type_data.
    t3993 = t3973->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t3997 ) ).
    DATA t3998 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4002 TYPE REF TO zcl_lnt_abstract_type_data.
    t3998 = t3973->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4002 ) ).
    t3969 = t3973.
    DATA t4005 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4007 TYPE REF TO zcl_lnt_abstract_type_data.
    t4005 = zcl_lnt_string_type=>get_db65( i_input_967e = t4007 ).
    DATA t4013 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4013 = zcl_lnt_version_module=>release_b8cd.
    DATA t4016 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4018 TYPE REF TO zcl_lnt_built_in_method.
    t3948 = NEW zcl_lnt_ibuiltin_method( i_counter = t3949 i_mandatory = t3957 i_optional = t3969 i_release_7928 = t4013->get( p0 = |v702| ) i_predicate = t4016 i_return_fa63 = t4005 i_cache = t4018 ).
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
    DATA t4026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4026 ).
    DATA t4028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4028 ).
    ENDIF.
    DATA t4030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4030 ).
    ENDIF.
    DATA t4032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4032 ).
    ENDIF.
    DATA t4034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3948->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3948->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4034 ).
    ENDIF.
    t3945 = t7->set( p0 = |SUBSTRING_AFTER| p1 = t3948 ).
    DATA t4035 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4038 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4039) = VALUE f( ).
    DATA(t4041) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4041 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4045) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4041 + t4045.
    t4039 = t4041.
    DATA t4047 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4051 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4051 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4053 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4053 = t4051->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4047 = t4051.
    DATA t4059 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4063 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4063 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4065 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4065 = t4063->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4069 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4069 = t4063->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4073 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4073 = t4063->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4077 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4082 TYPE REF TO zcl_lnt_abstract_type_data.
    t4077 = t4063->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4082 ) ).
    DATA t4083 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4087 TYPE REF TO zcl_lnt_abstract_type_data.
    t4083 = t4063->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4087 ) ).
    DATA t4088 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4092 TYPE REF TO zcl_lnt_abstract_type_data.
    t4088 = t4063->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4092 ) ).
    t4059 = t4063.
    DATA t4095 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4097 TYPE REF TO zcl_lnt_abstract_type_data.
    t4095 = zcl_lnt_string_type=>get_db65( i_input_967e = t4097 ).
    DATA t4103 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4103 = zcl_lnt_version_module=>release_b8cd.
    DATA t4106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4108 TYPE REF TO zcl_lnt_built_in_method.
    t4038 = NEW zcl_lnt_ibuiltin_method( i_counter = t4039 i_mandatory = t4047 i_optional = t4059 i_release_7928 = t4103->get( p0 = |v702| ) i_predicate = t4106 i_return_fa63 = t4095 i_cache = t4108 ).
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
    DATA t4116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4116 ).
    DATA t4118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4118 ).
    ENDIF.
    DATA t4120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4120 ).
    ENDIF.
    DATA t4122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4122 ).
    ENDIF.
    DATA t4124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4038->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4038->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4124 ).
    ENDIF.
    t4035 = t7->set( p0 = |SUBSTRING_BEFORE| p1 = t4038 ).
    DATA t4125 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4128 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4129) = VALUE f( ).
    DATA(t4131) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4131 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4135) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4131 + t4135.
    t4129 = t4131.
    DATA t4137 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4141 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4141 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4143 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4143 = t4141->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4137 = t4141.
    DATA t4149 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4153 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4153 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4155 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4155 = t4153->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4159 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4159 = t4153->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4163 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4163 = t4153->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4167 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4172 TYPE REF TO zcl_lnt_abstract_type_data.
    t4167 = t4153->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4172 ) ).
    DATA t4173 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4177 TYPE REF TO zcl_lnt_abstract_type_data.
    t4173 = t4153->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4177 ) ).
    DATA t4178 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4182 TYPE REF TO zcl_lnt_abstract_type_data.
    t4178 = t4153->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4182 ) ).
    t4149 = t4153.
    DATA t4185 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4187 TYPE REF TO zcl_lnt_abstract_type_data.
    t4185 = zcl_lnt_string_type=>get_db65( i_input_967e = t4187 ).
    DATA t4193 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4193 = zcl_lnt_version_module=>release_b8cd.
    DATA t4196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4198 TYPE REF TO zcl_lnt_built_in_method.
    t4128 = NEW zcl_lnt_ibuiltin_method( i_counter = t4129 i_mandatory = t4137 i_optional = t4149 i_release_7928 = t4193->get( p0 = |v702| ) i_predicate = t4196 i_return_fa63 = t4185 i_cache = t4198 ).
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
    DATA t4206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4206 ).
    DATA t4208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4208 ).
    ENDIF.
    DATA t4210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4210 ).
    ENDIF.
    DATA t4212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4212 ).
    ENDIF.
    DATA t4214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4214 ).
    ENDIF.
    t4125 = t7->set( p0 = |SUBSTRING_FROM| p1 = t4128 ).
    DATA t4215 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4218 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4219) = VALUE f( ).
    DATA(t4221) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4221 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4225) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4221 + t4225.
    t4219 = t4221.
    DATA t4227 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4231 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4231 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4233 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4233 = t4231->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4227 = t4231.
    DATA t4239 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4243 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4243 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4245 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4245 = t4243->set( p0 = |sub| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4249 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4249 = t4243->set( p0 = |regex| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4253 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4253 = t4243->set( p0 = |pcre| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4257 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4262 TYPE REF TO zcl_lnt_abstract_type_data.
    t4257 = t4243->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4262 ) ).
    DATA t4263 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4267 TYPE REF TO zcl_lnt_abstract_type_data.
    t4263 = t4243->set( p0 = |len| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4267 ) ).
    DATA t4268 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4272 TYPE REF TO zcl_lnt_abstract_type_data.
    t4268 = t4243->set( p0 = |occ| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4272 ) ).
    t4239 = t4243.
    DATA t4275 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4277 TYPE REF TO zcl_lnt_abstract_type_data.
    t4275 = zcl_lnt_string_type=>get_db65( i_input_967e = t4277 ).
    DATA t4283 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4283 = zcl_lnt_version_module=>release_b8cd.
    DATA t4286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4288 TYPE REF TO zcl_lnt_built_in_method.
    t4218 = NEW zcl_lnt_ibuiltin_method( i_counter = t4219 i_mandatory = t4227 i_optional = t4239 i_release_7928 = t4283->get( p0 = |v702| ) i_predicate = t4286 i_return_fa63 = t4275 i_cache = t4288 ).
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
    DATA t4296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4296 ).
    DATA t4298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4298 ).
    ENDIF.
    DATA t4300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4300 ).
    ENDIF.
    DATA t4302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4302 ).
    ENDIF.
    DATA t4304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4218->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4304 ).
    ENDIF.
    t4215 = t7->set( p0 = |SUBSTRING_TO| p1 = t4218 ).
    DATA t4305 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4308 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4309) = VALUE f( ).
    DATA(t4311) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4311 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4315) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4311 + t4315.
    t4309 = t4311.
    DATA t4317 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4321 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4321 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4323 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4327 TYPE REF TO zcl_lnt_abstract_type_data.
    t4323 = t4321->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t4327 ) ).
    t4317 = t4321.
    DATA t4330 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4332 TYPE REF TO zcl_lnt_abstract_type_data.
    t4330 = NEW zcl_lnt_float_type( i_input_967e = t4332 ).
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
    DATA t4345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4345 ).
    DATA t4347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4347 ).
    ENDIF.
    DATA t4349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4349 ).
    ENDIF.
    t4305 = t7->set( p0 = |TAN| p1 = t4308 ).
    DATA t4350 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4353 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4354) = VALUE f( ).
    DATA(t4356) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4356 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4360) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4356 + t4360.
    t4354 = t4356.
    DATA t4362 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4366 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4366 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4368 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4372 TYPE REF TO zcl_lnt_abstract_type_data.
    t4368 = t4366->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t4372 ) ).
    t4362 = t4366.
    DATA t4375 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4377 TYPE REF TO zcl_lnt_abstract_type_data.
    t4375 = NEW zcl_lnt_float_type( i_input_967e = t4377 ).
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
    DATA t4390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4390 ).
    DATA t4392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4392 ).
    ENDIF.
    DATA t4394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4394 ).
    ENDIF.
    t4350 = t7->set( p0 = |TANH| p1 = t4353 ).
    DATA t4395 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4398 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4399) = VALUE f( ).
    DATA(t4401) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4401 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4405) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4401 + t4405.
    t4399 = t4401.
    DATA t4407 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4411 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4411 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4413 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4413 = t4411->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4407 = t4411.
    DATA t4419 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4421 TYPE REF TO zcl_lnt_abstract_type_data.
    t4419 = zcl_lnt_string_type=>get_db65( i_input_967e = t4421 ).
    DATA t4427 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4427 = zcl_lnt_version_module=>release_b8cd.
    DATA t4430 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4432 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4434 TYPE REF TO zcl_lnt_built_in_method.
    t4398 = NEW zcl_lnt_ibuiltin_method( i_counter = t4399 i_mandatory = t4407 i_optional = t4430 i_release_7928 = t4427->get( p0 = |v702| ) i_predicate = t4432 i_return_fa63 = t4419 i_cache = t4434 ).
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
    DATA t4441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4441 ).
    DATA t4443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4443 ).
    ENDIF.
    DATA t4445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4445 ).
    ENDIF.
    DATA t4447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4398->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4398->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4447 ).
    ENDIF.
    t4395 = t7->set( p0 = |TO_LOWER| p1 = t4398 ).
    DATA t4448 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4451 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4452) = VALUE f( ).
    DATA(t4454) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4454 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4458) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4454 + t4458.
    t4452 = t4454.
    DATA t4460 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4464 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4464 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4466 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4466 = t4464->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4460 = t4464.
    DATA t4472 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4476 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4476 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4478 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4483 TYPE REF TO zcl_lnt_abstract_type_data.
    t4478 = t4476->set( p0 = |case| p1 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4483 ) ).
    DATA t4484 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4484 = t4476->set( p0 = |sep| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4488 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4492 TYPE REF TO zcl_lnt_abstract_type_data.
    t4488 = t4476->set( p0 = |min| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4492 ) ).
    t4472 = t4476.
    DATA t4495 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4497 TYPE REF TO zcl_lnt_abstract_type_data.
    t4495 = zcl_lnt_string_type=>get_db65( i_input_967e = t4497 ).
    DATA t4503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4503 = zcl_lnt_version_module=>release_b8cd.
    DATA t4506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4508 TYPE REF TO zcl_lnt_built_in_method.
    t4451 = NEW zcl_lnt_ibuiltin_method( i_counter = t4452 i_mandatory = t4460 i_optional = t4472 i_release_7928 = t4503->get( p0 = |v702| ) i_predicate = t4506 i_return_fa63 = t4495 i_cache = t4508 ).
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
    DATA t4516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4516 ).
    DATA t4518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4518 ).
    ENDIF.
    DATA t4520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4520 ).
    ENDIF.
    DATA t4522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4522 ).
    ENDIF.
    DATA t4524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4524 ).
    ENDIF.
    t4448 = t7->set( p0 = |TO_MIXED| p1 = t4451 ).
    DATA t4525 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4528 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4529) = VALUE f( ).
    DATA(t4531) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4531 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4535) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4531 + t4535.
    t4529 = t4531.
    DATA t4537 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4541 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4541 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4543 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4543 = t4541->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4537 = t4541.
    DATA t4549 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4551 TYPE REF TO zcl_lnt_abstract_type_data.
    t4549 = zcl_lnt_string_type=>get_db65( i_input_967e = t4551 ).
    DATA t4557 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4557 = zcl_lnt_version_module=>release_b8cd.
    DATA t4560 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4562 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4564 TYPE REF TO zcl_lnt_built_in_method.
    t4528 = NEW zcl_lnt_ibuiltin_method( i_counter = t4529 i_mandatory = t4537 i_optional = t4560 i_release_7928 = t4557->get( p0 = |v702| ) i_predicate = t4562 i_return_fa63 = t4549 i_cache = t4564 ).
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
    DATA t4571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4571 ).
    DATA t4573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4573 ).
    ENDIF.
    DATA t4575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4575 ).
    ENDIF.
    DATA t4577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4528->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4528->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4577 ).
    ENDIF.
    t4525 = t7->set( p0 = |TO_UPPER| p1 = t4528 ).
    DATA t4578 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4581 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4582) = VALUE f( ).
    DATA(t4584) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4584 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4588) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4584 + t4588.
    t4582 = t4584.
    DATA t4590 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4594 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4594 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4596 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4596 = t4594->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4600 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4600 = t4594->set( p0 = |from| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    DATA t4604 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4604 = t4594->set( p0 = |to| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4590 = t4594.
    DATA t4610 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4612 TYPE REF TO zcl_lnt_abstract_type_data.
    t4610 = zcl_lnt_string_type=>get_db65( i_input_967e = t4612 ).
    DATA t4618 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4618 = zcl_lnt_version_module=>release_b8cd.
    DATA t4621 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4623 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4625 TYPE REF TO zcl_lnt_built_in_method.
    t4581 = NEW zcl_lnt_ibuiltin_method( i_counter = t4582 i_mandatory = t4590 i_optional = t4621 i_release_7928 = t4618->get( p0 = |v702| ) i_predicate = t4623 i_return_fa63 = t4610 i_cache = t4625 ).
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
    DATA t4632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4632 ).
    DATA t4634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4634 ).
    ENDIF.
    DATA t4636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4636 ).
    ENDIF.
    DATA t4638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4581->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4638 ).
    ENDIF.
    t4578 = t7->set( p0 = |TRANSLATE| p1 = t4581 ).
    DATA t4639 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4642 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4643) = VALUE f( ).
    DATA(t4645) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4645 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4649) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4645 + t4649.
    t4643 = t4645.
    DATA t4651 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4655 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4655 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4657 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4661 TYPE REF TO zcl_lnt_abstract_type_data.
    t4657 = t4655->set( p0 = |val| p1 = NEW zcl_lnt_float_type( i_input_967e = t4661 ) ).
    t4651 = t4655.
    DATA t4664 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4666 TYPE REF TO zcl_lnt_abstract_type_data.
    t4664 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4666 ).
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
    DATA t4679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4679 ).
    DATA t4681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4681 ).
    ENDIF.
    DATA t4683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4642->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4642->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4683 ).
    ENDIF.
    t4639 = t7->set( p0 = |TRUNC| p1 = t4642 ).
    DATA t4684 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4687 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4688) = VALUE f( ).
    DATA(t4690) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4690 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4694) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4690 + t4694.
    t4688 = t4690.
    DATA t4696 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4700 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4700 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4702 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4706 TYPE REF TO zcl_lnt_abstract_type_data.
    t4702 = t4700->set( p0 = |val| p1 = NEW zcl_lnt_utc_long_type( i_input_967e = t4706 ) ).
    t4696 = t4700.
    DATA t4709 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4713 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4713 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4715 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4719 TYPE REF TO zcl_lnt_abstract_type_data.
    t4715 = t4713->set( p0 = |days| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4719 ) ).
    DATA t4720 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4724 TYPE REF TO zcl_lnt_abstract_type_data.
    t4720 = t4713->set( p0 = |hour| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4724 ) ).
    DATA t4725 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4729 TYPE REF TO zcl_lnt_abstract_type_data.
    t4725 = t4713->set( p0 = |minutes| p1 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4729 ) ).
    DATA t4730 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4734 TYPE REF TO zcl_lnt_abstract_type_data.
    t4730 = t4713->set( p0 = |seconds| p1 = NEW zcl_lnt_float_type( i_input_967e = t4734 ) ).
    t4709 = t4713.
    DATA t4737 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4739 TYPE REF TO zcl_lnt_abstract_type_data.
    t4737 = NEW zcl_lnt_utc_long_type( i_input_967e = t4739 ).
    DATA t4745 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4745 = zcl_lnt_version_module=>release_b8cd.
    DATA t4748 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4750 TYPE REF TO zcl_lnt_built_in_method.
    t4687 = NEW zcl_lnt_ibuiltin_method( i_counter = t4688 i_mandatory = t4696 i_optional = t4709 i_release_7928 = t4745->get( p0 = |v754| ) i_predicate = t4748 i_return_fa63 = t4737 i_cache = t4750 ).
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
    DATA t4758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4758 ).
    DATA t4760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4760 ).
    ENDIF.
    DATA t4762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |optional| p1 = t4762 ).
    ENDIF.
    DATA t4764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4764 ).
    ENDIF.
    DATA t4766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4687->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4766 ).
    ENDIF.
    t4684 = t7->set( p0 = |UTCLONG_ADD| p1 = t4687 ).
    DATA t4767 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4770 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4771) = VALUE f( ).
    DATA(t4773) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4773 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4777) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4773 + t4777.
    t4771 = t4773.
    DATA t4779 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4781 TYPE REF TO zcl_lnt_abstract_type_data.
    t4779 = NEW zcl_lnt_utc_long_type( i_input_967e = t4781 ).
    DATA t4787 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4787 = zcl_lnt_version_module=>release_b8cd.
    DATA t4790 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4792 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4794 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4796 TYPE REF TO zcl_lnt_built_in_method.
    t4770 = NEW zcl_lnt_ibuiltin_method( i_counter = t4771 i_mandatory = t4790 i_optional = t4792 i_release_7928 = t4787->get( p0 = |v754| ) i_predicate = t4794 i_return_fa63 = t4779 i_cache = t4796 ).
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
    DATA t4802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4802 ).
    DATA t4804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4804 ).
    ENDIF.
    DATA t4806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4770->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4770->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4806 ).
    ENDIF.
    t4767 = t7->set( p0 = |UTCLONG_CURRENT| p1 = t4770 ).
    DATA t4807 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4810 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4811) = VALUE f( ).
    DATA(t4813) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4813 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4817) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4813 + t4817.
    t4811 = t4813.
    DATA t4819 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4823 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4823 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4825 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4829 TYPE REF TO zcl_lnt_abstract_type_data.
    t4825 = t4823->set( p0 = |high| p1 = NEW zcl_lnt_utc_long_type( i_input_967e = t4829 ) ).
    DATA t4830 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4834 TYPE REF TO zcl_lnt_abstract_type_data.
    t4830 = t4823->set( p0 = |low| p1 = NEW zcl_lnt_utc_long_type( i_input_967e = t4834 ) ).
    t4819 = t4823.
    DATA t4837 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4839 TYPE REF TO zcl_lnt_abstract_type_data.
    t4837 = NEW zcl_lnt_float_type( i_input_967e = t4839 ).
    DATA t4845 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4845 = zcl_lnt_version_module=>release_b8cd.
    DATA t4848 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4850 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4852 TYPE REF TO zcl_lnt_built_in_method.
    t4810 = NEW zcl_lnt_ibuiltin_method( i_counter = t4811 i_mandatory = t4819 i_optional = t4848 i_release_7928 = t4845->get( p0 = |v754| ) i_predicate = t4850 i_return_fa63 = t4837 i_cache = t4852 ).
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
    DATA t4859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4859 ).
    DATA t4861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4861 ).
    ENDIF.
    DATA t4863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4863 ).
    ENDIF.
    DATA t4865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4810->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4810->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4865 ).
    ENDIF.
    t4807 = t7->set( p0 = |UTCLONG_DIFF| p1 = t4810 ).
    DATA t4866 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4869 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4870) = VALUE f( ).
    DATA(t4872) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4872 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4876) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4872 + t4876.
    t4870 = t4872.
    DATA t4878 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4882 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4882 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4884 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4884 = t4882->set( p0 = |val| p1 = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ) ).
    t4878 = t4882.
    DATA t4890 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4893 TYPE REF TO zcl_lnt_abstract_type_data.
    t4890 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t4893 ).
    DATA t4899 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4899 = zcl_lnt_version_module=>release_b8cd.
    DATA t4902 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4904 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4906 TYPE REF TO zcl_lnt_built_in_method.
    t4869 = NEW zcl_lnt_ibuiltin_method( i_counter = t4870 i_mandatory = t4878 i_optional = t4902 i_release_7928 = t4899->get( p0 = |v740sp08| ) i_predicate = t4904 i_return_fa63 = t4890 i_cache = t4906 ).
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
    DATA t4913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4913 ).
    DATA t4915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4915 ).
    ENDIF.
    DATA t4917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4917 ).
    ENDIF.
    DATA t4919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4869->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4869->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t4919 ).
    ENDIF.
    t4866 = t7->set( p0 = |XSDBOOL| p1 = t4869 ).
    DATA t4920 TYPE REF TO zlnt_runtime_map__c27ad0d4c484.
    DATA t4923 TYPE REF TO zcl_lnt_ibuiltin_method.
    DATA(t4924) = VALUE f( ).
    DATA(t4926) = VALUE f( ).
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4926 = zcl_lnt_built_in=>counter.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    DATA(t4930) = CONV f( 1 ).
    zcl_lnt_built_in=>counter = t4926 + t4930.
    t4924 = t4926.
    DATA t4932 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4936 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    t4936 = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DATA t4938 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t4942 TYPE REF TO zcl_lnt_abstract_type_data.
    t4938 = t4936->set( p0 = |val| p1 = NEW zcl_lnt_x_sequence_type( i_input_967e = t4942 ) ).
    t4932 = t4936.
    DATA t4945 TYPE REF TO zcl_lnt_abstract_type.
    DATA t4947 TYPE REF TO zcl_lnt_abstract_type_data.
    t4945 = zcl_lnt_integer_type=>get_db65( i_input_967e = t4947 ).
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
    DATA t4960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = |counter| p1 = t4960 ).
    DATA t4962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = |mandatory| p1 = t4962 ).
    ENDIF.
    DATA t4964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4923->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t4923->zlnt_json_ownkeys_70e5fd461788->put( p0 = |return| p1 = t4964 ).
    ENDIF.
    t4920 = t7->set( p0 = |XSTRLEN| p1 = t4923 ).
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

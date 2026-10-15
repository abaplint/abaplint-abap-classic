* TS: src/objects/lock_object.ts:10:1 LockObject
CLASS zcl_lnt_lock_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_e3559bc5.
    INTERFACES zif_lnt_union_42a36aec.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_897eae97.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_primary_table RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS pr_ty_in_sr_ob_lc_ob_ts_lc_obj IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS pr_in_sr_ob_lck_obj_ts_lck_obj RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_description REDEFINITION.
    METHODS parse REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lock_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |ENQU|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    CLEAR t1.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 16 ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t7.
      DATA(t8) = `^(\/[A-Z_\d]{3,8}\/)?E[A-Z0-9_]+$`.
      DATA(t9) = `^(\/[A-Z_0-9]{3,8}\/)?E[A-Z0-9_]+$`.
      DATA(t10) = |i|.
      CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t9 flags = t10.
      t7->source = t8.
      t5 = t7.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t11.
      t5 = t11.
    ENDIF.
    t4 = t5.
    DATA t12 TYPE abap_bool.
    DATA(t13) = abap_true.
    t12 = t13.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t12 i_custom_regex = t4 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |maxLength|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = |customRegex|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = |allowNamespace|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_897eae97.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_primary_table.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->primary_table.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->parameters.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_lc_ob_ts_lc_obj.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA(t7) = t1.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA(t11) = me->parsed_xml.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t10.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zcl_lnt_shape_897eae97.
      DATA(t18) = t10.
      t17 = t18.
      t16 = t17->primary_table.
      t12 = t16.
    ENDIF.
    t9 = t12.
    IF t9 IS BOUND.
      IF t9->has = abap_true.
        t8 = xsdbool( strlen( t9->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      DATA t19 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t20.
      DATA(t21) = t5.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA t24 TYPE string.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t26 TYPE REF TO zcl_lnt_shape_897eae97.
        DATA(t27) = me->parsed_xml.
        t26 = t27.
        t25 = t26->primary_table.
        t24 = t25->value.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t24.
        t22 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t22 = t29.
      ENDIF.
      t20 = t21->lookup_table_or_view2( i_name = t22 ).
      t19 = t20.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t19.
      t30 = xsdbool( t31 IS BOUND ).
      IF t30 = abap_true.
        DATA(t32) = t3.
        DATA t33 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t34 TYPE REF TO zif_lnt_object.
        DATA t35 TYPE REF TO zif_lnt_object.
        DATA t36 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t37) = t19.
        t36 = t37.
        t35 ?= t36.
        t34 = t35.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t39.
        t38 = t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t40 = t41.
        t33 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t34 i_token = t38 i_filename = t40 ).
        CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
        t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t42 ).
        ENDIF.
        CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
        t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t43) = |object|.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
        ENDIF.
        t32->load( ).
        APPEND t33 TO t32->items.
        t32->save( ).
        DATA t45 TYPE REF TO zif_lnt_ddic_references.
        DATA(t46) = t1.
        t45 = t46->get_ddic_references( ).
        DATA(t47) = me.
        DATA(t48) = t3.
        t45->set_using( i_obj_1ed0 = t47 i_using = t48 ).
        DATA t49 TYPE REF TO zcl_lnt_abstract_type.
        DATA t50 TYPE REF TO zif_lnt_union_c74a232f.
        DATA(t51) = t19.
        t50 = t51.
        DATA(t52) = t1.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t49 = t50->parse_type( i_reg_f149 = t52 i_data_element = t53 i_description = t54 ).
        result = t49.
        RETURN.
      ELSE.
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE REF TO zcl_lnt_ddic.
        DATA(t57) = t5.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE string.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t63 TYPE REF TO zcl_lnt_shape_897eae97.
          DATA(t64) = me->parsed_xml.
          t63 = t64.
          t62 = t63->primary_table.
          t61 = t62->value.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t61.
          t59 = t65.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t59 = t66.
        ENDIF.
        t58 = t59.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t70) = t58.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        t71 = t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t69.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ELSEIF t74->has = abap_false.
          t73 = abap_true.
        ENDIF.
        t68 = t73.
        IF t68 = abap_true.
          DATA(t75) = abap_true.
          t67 = t75.
        ELSE.
          DATA t76 TYPE abap_bool.
          DATA t77 TYPE REF TO zif_lnt_registry.
          DATA(t78) = t56.
          t77 = t78->reg.
          DATA t79 TYPE string.
          DATA(t80) = t58.
          t79 = t80->value.
          t76 = t77->in_error_namespace( i_name = t79 ).
          t67 = t76.
        ENDIF.
        t55 = t67.
        IF t55 = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_unknown_type.
          DATA t82 TYPE string.
          DATA t83 TYPE string.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t85 TYPE REF TO zcl_lnt_shape_897eae97.
          DATA(t86) = me->parsed_xml.
          t85 = t86.
          t84 = t85->primary_table.
          t83 = t84->value.
          DATA(t87) = | not found|.
          DATA(t88) = strlen( t83 ).
          t82 = |{ t83 }{ t87 }|.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          t81 = NEW zcl_lnt_unknown_type( i_error = t82 i_qualified_name = t89 ).
          result = t81.
          RETURN.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_void_type.
          CLEAR t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t92) = abap_true.
          IF t92 = abap_true.
            DATA t93 TYPE string.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t95 TYPE REF TO zcl_lnt_shape_897eae97.
            DATA(t96) = me->parsed_xml.
            t95 = t96.
            t94 = t95->primary_table.
            t93 = t94->value.
            DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t97->has = abap_true.
            t97->value = t93.
            t91 = t97.
          ELSE.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t91 = t98.
          ENDIF.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          t90 = zcl_lnt_void_type=>get_db65( i_voided = t91 i_qualified_name = t99 ).
          result = t90.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t100 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t101) = |Parsing error|.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t102.
      t100 = NEW zcl_lnt_unknown_type( i_error = t101 i_qualified_name = t102 ).
      result = t100.

    ENDIF.
  ENDMETHOD.

  METHOD pr_in_sr_ob_lck_obj_ts_lck_obj.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = me->parsed_xml.
    t1 = xsdbool( t2 IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t3.
      DATA(t4) = VALUE abap_bool( ).
      DATA(t5) = abap_false.
      t4 = t5.
      DATA(t6) = VALUE f( ).
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t9.
      t8 = t9.
      t3 = NEW zcl_lnt_iparse_result( i_updated = t4 i_runtime = t6 i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      ENDIF.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t12) = |updated|.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
      ENDIF.
      DATA(t14) = |runtime|.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
      ENDIF.
      result = t3.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE f( ).
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_shape_897eae97.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_897eae97.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      t26 = t27.
      t21 = NEW zcl_lnt_shape_897eae97( i_primary_table = t22 i_description = t24 i_parameters = t26 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_shape_897eae97.
      CLEAR t28.
      t19 = t28.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      DATA(t37) = t29.
      t36 = t37.
      t32 = t36.
    ENDIF.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = t31.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    t43 = t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t41.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    t40 = t45.
    t39 = t40.
    IF t40 = abap_false.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      DATA(t51) = t31.
      t50 = t51.
      DATA(t52) = |abapGit|.
      t49 = t50->get( p0 = t52 ).
      t48 = t49.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      t53 = t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t48.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      t47 = t55.
      t39 = t47.
    ENDIF.
    t38 = t39.
    IF t39 = abap_false.
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      DATA(t65) = t31.
      t64 = t65.
      DATA(t66) = |abapGit|.
      t63 = t64->get( p0 = t66 ).
      t62 = t63.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t62.
      IF t69 IS NOT BOUND.
        t68 = abap_true.
      ELSE.
        t68 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        DATA(t72) = t62.
        DATA(t73) = |asx:abap|.
        t71 = t72->get( p0 = t73 ).
        t67 = t71.
      ENDIF.
      t61 = t67.
      t60 = t61.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA(t77) = t60.
      CLEAR t76.
      IF t77 IS BOUND.
        t76 = t77.
      ENDIF.
      IF t76 IS NOT BOUND.
        t75 = abap_true.
      ELSE.
        t75 = xsdbool( t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t75 = abap_true.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t74 = t78.
      ELSE.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        DATA(t81) = t60.
        t80 = t81.
        DATA(t82) = |asx:values|.
        t79 = t80->get( p0 = t82 ).
        t74 = t79.
      ENDIF.
      t59 = t74.
      t58 = t59.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      t83 = t84.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = t58.
      IF t86 IS INITIAL.
        t85 = abap_true.
      ENDIF.
      t57 = t85.
      t38 = t57.
    ENDIF.
    IF t38 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t87.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = abap_false.
      t88 = t89.
      DATA(t90) = VALUE f( ).
      DATA(t91) = CONV f( 0 ).
      t90 = t91.
      DATA t92 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t93.
      t92 = t93.
      t87 = NEW zcl_lnt_iparse_result( i_updated = t88 i_runtime = t90 i_runtime_extra = t92 ).
      CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
      t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t94 ).
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t95 ).
      ENDIF.
      CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
      t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t96) = |updated|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      DATA(t98) = |runtime|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      result = t87.
      RETURN.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = t31.
    t110 = t111.
    DATA(t112) = |abapGit|.
    t109 = t110->get( p0 = t112 ).
    t108 = t109.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = t108.
    IF t115 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t113 = t116.
    ELSE.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      DATA(t118) = t108.
      DATA(t119) = |asx:abap|.
      t117 = t118->get( p0 = t119 ).
      t113 = t117.
    ENDIF.
    t107 = t113.
    t106 = t107.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = VALUE abap_bool( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = t106.
    CLEAR t122.
    IF t123 IS BOUND.
      t122 = t123.
    ENDIF.
    IF t122 IS NOT BOUND.
      t121 = abap_true.
    ELSE.
      t121 = xsdbool( t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t121 = abap_true.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      t120 = t124.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      DATA(t127) = t106.
      t126 = t127.
      DATA(t128) = |asx:values|.
      t125 = t126->get( p0 = t128 ).
      t120 = t125.
    ENDIF.
    t105 = t120.
    t104 = t105.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = t104.
    CLEAR t131.
    IF t132 IS BOUND.
      t131 = t132.
    ENDIF.
    IF t131 IS NOT BOUND.
      t130 = abap_true.
    ELSE.
      t130 = xsdbool( t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t130 = abap_true.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      t129 = t133.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA(t136) = t104.
      t135 = t136.
      DATA(t137) = |DD25V|.
      t134 = t135->get( p0 = t137 ).
      t129 = t134.
    ENDIF.
    t103 = t129.
    t102 = t103.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = t102.
    CLEAR t140.
    IF t141 IS BOUND.
      t140 = t141.
    ENDIF.
    IF t140 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      t138 = t142.
    ELSE.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      DATA(t145) = t102.
      t144 = t145.
      DATA(t146) = |ROOTTAB|.
      t143 = t144->get( p0 = t146 ).
      t138 = t143.
    ENDIF.
    t101 = t138.
    t100 = t101.
    DATA t147 TYPE REF TO zcl_lnt_shape_897eae97.
    CLEAR t147.
    DATA(t148) = me->parsed_xml.
    t147 = t148.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = t100.
    IF t151 IS INITIAL.
      t150 = abap_true.
    ENDIF.
    IF t150 = abap_true.
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t152.
      t149 = t152.
    ELSE.
      DATA(t153) = VALUE string( ).
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      DATA(t155) = t100.
      t154 = t155.
      t153 = t154->as_string( ).
      DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t156->has = abap_true.
      t156->value = t153.
      t149 = t156.
    ENDIF.
    t147->primary_table = t149.
    DELETE t147->zlnt_record_delet_0597644d88b4 WHERE table_line = `primaryTable`.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryTable` p1 = t157 ).
    ENDIF.
    DATA(t158) = |primaryTable|.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = t31.
    t170 = t171.
    DATA(t172) = |abapGit|.
    t169 = t170->get( p0 = t172 ).
    t168 = t169.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = VALUE abap_bool( ).
    DATA(t175) = t168.
    IF t175 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      t173 = t176.
    ELSE.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      DATA(t178) = t168.
      DATA(t179) = |asx:abap|.
      t177 = t178->get( p0 = t179 ).
      t173 = t177.
    ENDIF.
    t167 = t173.
    t166 = t167.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA(t181) = VALUE abap_bool( ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = t166.
    CLEAR t182.
    IF t183 IS BOUND.
      t182 = t183.
    ENDIF.
    IF t182 IS NOT BOUND.
      t181 = abap_true.
    ELSE.
      t181 = xsdbool( t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t181 = abap_true.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      t180 = t184.
    ELSE.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      DATA(t187) = t166.
      t186 = t187.
      DATA(t188) = |asx:values|.
      t185 = t186->get( p0 = t188 ).
      t180 = t185.
    ENDIF.
    t165 = t180.
    t164 = t165.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = VALUE abap_bool( ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = t164.
    CLEAR t191.
    IF t192 IS BOUND.
      t191 = t192.
    ENDIF.
    IF t191 IS NOT BOUND.
      t190 = abap_true.
    ELSE.
      t190 = xsdbool( t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t190 = abap_true.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t189 = t193.
    ELSE.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      DATA(t196) = t164.
      t195 = t196.
      DATA(t197) = |DD25V|.
      t194 = t195->get( p0 = t197 ).
      t189 = t194.
    ENDIF.
    t163 = t189.
    t162 = t163.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = VALUE abap_bool( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = t162.
    CLEAR t200.
    IF t201 IS BOUND.
      t200 = t201.
    ENDIF.
    IF t200 IS NOT BOUND.
      t199 = abap_true.
    ELSE.
      t199 = xsdbool( t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t199 = abap_true.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      t198 = t202.
    ELSE.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      DATA(t205) = t162.
      t204 = t205.
      DATA(t206) = |DDTEXT|.
      t203 = t204->get( p0 = t206 ).
      t198 = t203.
    ENDIF.
    t161 = t198.
    t160 = t161.
    DATA t207 TYPE REF TO zcl_lnt_shape_897eae97.
    CLEAR t207.
    DATA(t208) = me->parsed_xml.
    t207 = t208.
    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t209.
    DATA(t210) = VALUE abap_bool( ).
    DATA(t211) = t160.
    IF t211 IS INITIAL.
      t210 = abap_true.
    ENDIF.
    IF t210 = abap_true.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      t209 = t212.
    ELSE.
      DATA(t213) = VALUE string( ).
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      DATA(t215) = t160.
      t214 = t215.
      t213 = t214->as_string( ).
      DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t216->has = abap_true.
      t216->value = t213.
      t209 = t216.
    ENDIF.
    t207->description = t209.
    DELETE t207->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t217 ).
    ENDIF.
    DATA(t218) = |description|.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zcl_lnt_shape_897eae97.
    CLEAR t220.
    DATA(t221) = me->parsed_xml.
    t220 = t221.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t222.
    DATA(t223) = abap_true.
    IF t223 = abap_true.
      DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t224.
      CREATE OBJECT t224.
      t222 = t224.
    ELSE.
      DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t225.
      t222 = t225.
    ENDIF.
    t220->parameters = t222.
    DELETE t220->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t226 ).
    ENDIF.
    DATA(t227) = |parameters|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = t31.
    t237 = t238.
    DATA(t239) = |abapGit|.
    t236 = t237->get( p0 = t239 ).
    t235 = t236.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = VALUE abap_bool( ).
    DATA(t242) = t235.
    IF t242 IS NOT BOUND.
      t241 = abap_true.
    ELSE.
      t241 = xsdbool( t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t241 = abap_true.
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t243.
      t240 = t243.
    ELSE.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      DATA(t245) = t235.
      DATA(t246) = |asx:abap|.
      t244 = t245->get( p0 = t246 ).
      t240 = t244.
    ENDIF.
    t234 = t240.
    t233 = t234.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA(t248) = VALUE abap_bool( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t233.
    CLEAR t249.
    IF t250 IS BOUND.
      t249 = t250.
    ENDIF.
    IF t249 IS NOT BOUND.
      t248 = abap_true.
    ELSE.
      t248 = xsdbool( t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t248 = abap_true.
      DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t251.
      t247 = t251.
    ELSE.
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t252.
      DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t253.
      DATA(t254) = t233.
      t253 = t254.
      DATA(t255) = |asx:values|.
      t252 = t253->get( p0 = t255 ).
      t247 = t252.
    ENDIF.
    t232 = t247.
    t231 = t232.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = VALUE abap_bool( ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = t231.
    CLEAR t258.
    IF t259 IS BOUND.
      t258 = t259.
    ENDIF.
    IF t258 IS NOT BOUND.
      t257 = abap_true.
    ELSE.
      t257 = xsdbool( t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t257 = abap_true.
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t260.
      t256 = t260.
    ELSE.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t261.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t262.
      DATA(t263) = t231.
      t262 = t263.
      DATA(t264) = |DD27P_TABLE|.
      t261 = t262->get( p0 = t264 ).
      t256 = t261.
    ENDIF.
    t230 = t256.
    t229 = t230.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = VALUE abap_bool( ).
    DATA(t268) = t229.
    IF t268 IS INITIAL.
      t267 = abap_true.
    ENDIF.
    IF t267 = abap_true.
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t269.
      t266 = t269.
    ELSE.
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t270.
      DATA(t271) = t229.
      t270 = t271.
      t266 = t270.
    ENDIF.
    t265 = t266.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = t265.
    t275 = t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = VALUE abap_bool( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA(t280) = t275.
    CLEAR t279.
    IF t280 IS BOUND.
      t279 = t280.
    ENDIF.
    IF t279 IS NOT BOUND.
      t278 = abap_true.
    ELSE.
      t278 = xsdbool( t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t278 = abap_true.
      DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t281.
      t277 = t281.
    ELSE.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      DATA(t284) = t275.
      t283 = t284.
      DATA(t285) = |DD27P|.
      t282 = t283->get( p0 = t285 ).
      t277 = t282.
    ENDIF.
    t274 = t277.
    CLEAR t273.
    IF t274 IS BOUND.
      t273 = t274.
    ENDIF.
    t272 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t273 ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO object.
    CLEAR t287.
    DATA(t288) = VALUE i( ).
    DO.
      t272->load( ).
      IF t288 >= lines( t272->items ).
        EXIT.
      ENDIF.
      CLEAR t287.
      READ TABLE t272->items INDEX t288 + 1 INTO t287.
      t288 = t288 + 1.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t289.
      CLEAR t286.
      IF t287 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t289 ?= t287.
        t286 = t289.
      ELSE.
        IF t287 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t290 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t290.
          t290 ?= t287.
          CLEAR t286.
          IF t290 IS BOUND.
            CREATE OBJECT t286.
            t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t286->cval = t290.
          ENDIF.
        ELSE.
          CLEAR t286.
          IF t287 IS BOUND.
            DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t291.
            DATA t292 TYPE REF TO object.
            CLEAR t292.
            CLEAR t291.
            t292 = t287.
            TRY.
                t286 ?= t292.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t286 IS NOT BOUND.
              TRY.
                  t291 ?= t287.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t291 IS BOUND.
                t286 = t291->source( ).
              ENDIF.
              IF t286 IS NOT BOUND.
                CREATE OBJECT t286.
                t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t286->oval = t287.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t293) = VALUE abap_bool( ).
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      DATA(t297) = t286.
      t296 = t297.
      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t298.
      DATA(t299) = VALUE abap_bool( ).
      DATA(t300) = t296.
      IF t300 IS NOT BOUND.
        t299 = abap_true.
      ELSE.
        t299 = xsdbool( t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t299 = abap_true.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        t298 = t301.
      ELSE.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        DATA(t303) = t296.
        DATA(t304) = |VIEWFIELD|.
        t302 = t303->get( p0 = t304 ).
        t298 = t302.
      ENDIF.
      t295 = t298.
      t294 = t295.
      DATA(t305) = VALUE abap_bool( ).
      DATA(t306) = VALUE string( ).
      DATA(t307) = VALUE abap_bool( ).
      DATA(t308) = t294.
      IF t308 IS INITIAL.
        t307 = abap_true.
      ENDIF.
      IF t307 = abap_true.
        DATA(t309) = |undefined|.
        t306 = t309.
      ELSE.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        DATA(t312) = t294.
        t311 = t312.
        IF t311 IS BOUND.
          t310 = t311->type_of( ).
          IF t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t311->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t310 = `function`.
          ENDIF.
        ELSE.
          t310 = `undefined`.
        ENDIF.
        t306 = t310.
      ENDIF.
      DATA(t313) = |string|.
      t305 = xsdbool( t306 <> t313 ).
      t293 = t305.
      IF t293 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t314.
      DATA t315 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t315.
      DATA t316 TYPE REF TO zcl_lnt_shape_897eae97.
      CLEAR t316.
      DATA(t317) = me->parsed_xml.
      t316 = t317.
      t315 = t316->parameters.
      t314 = t315.
      DATA t318 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t318.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t320.
      DATA(t321) = t286.
      DATA(t322) = |VIEWFIELD|.
      t320 = t321->get( p0 = t322 ).
      t319 = t320.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t323.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t324.
      DATA(t325) = t286.
      DATA(t326) = |TABNAME|.
      t324 = t325->get( p0 = t326 ).
      t323 = t324.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t328.
      DATA(t329) = t286.
      DATA(t330) = |FIELDNAME|.
      t328 = t329->get( p0 = t330 ).
      t327 = t328.
      DATA t331 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t331.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t332.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      DATA(t334) = VALUE abap_bool( ).
      DATA(t335) = t319.
      IF t335 IS INITIAL.
        t334 = abap_true.
      ENDIF.
      IF t334 = abap_true.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t336.
        t333 = t336.
      ELSE.
        DATA(t337) = VALUE string( ).
        DATA(t338) = t319.
        t337 = t338->as_string( ).
        DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t339->has = abap_true.
        t339->value = t337.
        t333 = t339.
      ENDIF.
      t332 = t333.
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t340.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t341.
      DATA(t342) = VALUE abap_bool( ).
      DATA(t343) = t323.
      IF t343 IS INITIAL.
        t342 = abap_true.
      ENDIF.
      IF t342 = abap_true.
        DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t344.
        t341 = t344.
      ELSE.
        DATA(t345) = VALUE string( ).
        DATA(t346) = t323.
        t345 = t346->as_string( ).
        DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t347->has = abap_true.
        t347->value = t345.
        t341 = t347.
      ENDIF.
      t340 = t341.
      DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t348.
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t349.
      DATA(t350) = VALUE abap_bool( ).
      DATA(t351) = t327.
      IF t351 IS INITIAL.
        t350 = abap_true.
      ENDIF.
      IF t350 = abap_true.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        t349 = t352.
      ELSE.
        DATA(t353) = VALUE string( ).
        DATA(t354) = t327.
        t353 = t354->as_string( ).
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t353.
        t349 = t355.
      ENDIF.
      t348 = t349.
      t331 = NEW zcl_lnt_shape_51788160( i_viewfield = t332 i_tabname = t340 i_fieldname = t348 ).
      CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
      t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWFIELD` p1 = t356 ).
      ENDIF.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `TABNAME` p1 = t357 ).
      ENDIF.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t358.
      IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FIELDNAME` p1 = t358 ).
      ENDIF.
      CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
      t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t359) = |VIEWFIELD|.
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
      ENDIF.
      DATA(t361) = |TABNAME|.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
      ENDIF.
      DATA(t363) = |FIELDNAME|.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t363 p1 = t364 ).
      ENDIF.
      t318 = t331.
      t314->load( ).
      APPEND t318 TO t314->items.
      t314->save( ).
    ENDDO.
    DATA(t365) = VALUE f( ).
    DATA(t366) = VALUE f( ).
    DATA(t367) = 0.
    t366 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t365 = t366.
    DATA t368 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t368.
    DATA(t369) = VALUE abap_bool( ).
    DATA(t370) = abap_true.
    t369 = t370.
    DATA(t371) = VALUE f( ).
    DATA(t372) = VALUE f( ).
    DATA(t373) = t365.
    DATA(t374) = t16.
    t372 = t373 - t374.
    t371 = t372.
    DATA t375 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t375.
    DATA t376 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t376.
    t375 = t376.
    t368 = NEW zcl_lnt_iparse_result( i_updated = t369 i_runtime = t371 i_runtime_extra = t375 ).
    CREATE OBJECT t368->zlnt_view_ownkeys_b0e8086400eb.
    t368->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t377 ).
    ENDIF.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t378 ).
    ENDIF.
    CREATE OBJECT t368->zlnt_json_ownkeys_70e5fd461788.
    t368->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t379) = |updated|.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
    ENDIF.
    DATA(t381) = |runtime|.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
    ENDIF.
    result = t368.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA(t4) = me->parsed_xml.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    result = t1.

  ENDMETHOD.

  METHOD parse_type.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = t1.
    t4 = me->pr_ty_in_sr_ob_lc_ob_ts_lc_obj( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1284_126cb3f90cd0.
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_e3559bc5~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~parse_type.
    result = me->parse_type( i_reg_f149 = i_reg_f149 i_data_element = i_data_element i_description = i_description ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_42a36aec~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.

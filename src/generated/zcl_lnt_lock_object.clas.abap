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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |ENQU|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 16 ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t8) = `^(\/[A-Z_\d]{3,8}\/)?E[A-Z0-9_]+$`.
    DATA(t9) = `^(\/[A-Z_0-9]{3,8}\/)?E[A-Z0-9_]+$`.
    DATA(t10) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t9 flags = t10.
    t7->source = t8.
    t4 = t7.
    DATA t12 TYPE abap_bool.
    t12 = abap_true.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t12 i_custom_regex = t4 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |maxLength|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    DATA(t19) = |customRegex|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = |allowNamespace|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_primary_table.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      t10 = t3.
      t9 = t10->primary_table.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      t10 = t3.
      t9 = t10->parameters.
      t5 = t9.
    ENDIF.
    result = t5.

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
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    t5 = t6.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
    t10 = me->parsed_xml.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t13) = xsdbool( t10 IS INITIAL ).
    IF t13 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zcl_lnt_shape_897eae97.
      t17 = t10.
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
      DATA t20 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_shape_897eae97.
      t26 = me->parsed_xml.
      t25 = t26->primary_table.
      t24 = t25->value.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t24.
      t22 = t28.
      t20 = t5->lookup_table_or_view2( i_name = t22 ).
      t19 = t20.
      DATA t30 TYPE abap_bool.
      t30 = xsdbool( t19 IS BOUND ).
      IF t30 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t34 TYPE REF TO zif_lnt_object.
        DATA t35 TYPE REF TO zif_lnt_object.
        DATA t36 TYPE REF TO zif_lnt_union_c74a232f.
        t36 = t19.
        t35 ?= t36.
        t34 = t35.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t33 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t34 i_token = t38 i_filename = t40 ).
        CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
        t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t42 ).
        CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
        t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t43) = |object|.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
        t3->load( ).
        APPEND t33 TO t3->items.
        t3->save( ).
        DATA t45 TYPE REF TO zif_lnt_ddic_references.
        t45 = t1->get_ddic_references( ).
        t45->set_using( i_obj_1ed0 = me i_using = t3 ).
        DATA t49 TYPE REF TO zcl_lnt_abstract_type.
        DATA t50 TYPE REF TO zif_lnt_union_c74a232f.
        t50 = t19.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t49 = t50->parse_type( i_reg_f149 = t1 i_data_element = t53 i_description = t54 ).
        result = t49.
        RETURN.
      ELSE.
        DATA(t55) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE string.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t63 TYPE REF TO zcl_lnt_shape_897eae97.
        t63 = me->parsed_xml.
        t62 = t63->primary_table.
        t61 = t62->value.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = t61.
        t58 = t65.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t69 = t58.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t73) = VALUE abap_bool( ).
        IF t69 IS INITIAL.
          t73 = abap_true.
        ELSEIF t69->has = abap_false.
          t73 = abap_true.
        ENDIF.
        t68 = t73.
        IF t68 = abap_true.
          t67 = abap_true.
        ELSE.
          DATA t76 TYPE abap_bool.
          DATA t77 TYPE REF TO zif_lnt_registry.
          t77 = t5->reg.
          DATA t79 TYPE string.
          t79 = t58->value.
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
          t85 = me->parsed_xml.
          t84 = t85->primary_table.
          t83 = t84->value.
          DATA(t87) = | not found|.
          DATA(t88) = strlen( t83 ).
          t82 = |{ t83 }{ t87 }|.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t81 = NEW zcl_lnt_unknown_type( i_error = t82 i_qualified_name = t89 ).
          result = t81.
          RETURN.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_void_type.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t93 TYPE string.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t95 TYPE REF TO zcl_lnt_shape_897eae97.
          t95 = me->parsed_xml.
          t94 = t95->primary_table.
          t93 = t94->value.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t93.
          t91 = t97.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t90 = zcl_lnt_void_type=>get_db65( i_voided = t91 i_qualified_name = t99 ).
          result = t90.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t100 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t101) = |Parsing error|.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t100 = NEW zcl_lnt_unknown_type( i_error = t101 i_qualified_name = t102 ).
      result = t100.

    ENDIF.
  ENDMETHOD.

  METHOD pr_in_sr_ob_lck_obj_ts_lck_obj.
    DATA(t1) = VALUE abap_bool( ).
    t1 = xsdbool( me->parsed_xml IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t4) = VALUE abap_bool( ).
      t4 = abap_false.
      DATA(t6) = VALUE f( ).
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t3 = NEW zcl_lnt_iparse_result( i_updated = t4 i_runtime = t6 i_runtime_extra = t8 ).
      CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
      t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t10 ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t11 ).
      ENDIF.
      CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
      t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t12) = |updated|.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
      DATA(t14) = |runtime|.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_897eae97.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = NEW zcl_lnt_shape_897eae97( i_primary_table = t22 i_description = t24 i_parameters = t26 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = xsdbool( t29 IS INITIAL ).
    IF t33 = abap_true.
    ELSE.
      t32 = t29.
    ENDIF.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t40 = xsdbool( t31 IS INITIAL ).
    t39 = t40.
    IF t40 = abap_false.
      DATA(t47) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t50 = t31.
      DATA(t52) = |abapGit|.
      t49 = t50->get( p0 = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t47 = xsdbool( t49 IS INITIAL ).
      t39 = t47.
    ENDIF.
    t38 = t39.
    IF t39 = abap_false.
      DATA(t57) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t64 = t31.
      DATA(t66) = |abapGit|.
      t63 = t64->get( p0 = t66 ).
      t62 = t63.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t68) = VALUE abap_bool( ).
      IF t62 IS NOT BOUND.
        t68 = abap_true.
      ELSE.
        t68 = xsdbool( t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t68 = abap_true.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t73) = |asx:abap|.
        t71 = t62->get( p0 = t73 ).
        t67 = t71.
      ENDIF.
      t60 = t67.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t60 IS BOUND.
        t76 = t60.
      ENDIF.
      IF t76 IS NOT BOUND.
        t75 = abap_true.
      ELSE.
        t75 = xsdbool( t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t75 = abap_true.
      ELSE.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t80 = t60.
        DATA(t82) = |asx:values|.
        t79 = t80->get( p0 = t82 ).
        t74 = t79.
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57 = xsdbool( t74 IS INITIAL ).
      t38 = t57.
    ENDIF.
    IF t38 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t88) = VALUE abap_bool( ).
      t88 = abap_false.
      DATA(t90) = VALUE f( ).
      DATA(t91) = CONV f( 0 ).
      t90 = t91.
      DATA t92 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t87 = NEW zcl_lnt_iparse_result( i_updated = t88 i_runtime = t90 i_runtime_extra = t92 ).
      CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
      t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t94 ).
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t95 ).
      ENDIF.
      CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
      t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t96) = |updated|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      DATA(t98) = |runtime|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      result = t87.
      RETURN.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t110 = t31.
    DATA(t112) = |abapGit|.
    t109 = t110->get( p0 = t112 ).
    t108 = t109.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = VALUE abap_bool( ).
    IF t108 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
    ELSE.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t119) = |asx:abap|.
      t117 = t108->get( p0 = t119 ).
      t113 = t117.
    ENDIF.
    t106 = t113.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = VALUE abap_bool( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106 IS BOUND.
      t122 = t106.
    ENDIF.
    IF t122 IS NOT BOUND.
      t121 = abap_true.
    ELSE.
      t121 = xsdbool( t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t121 = abap_true.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t126 = t106.
      DATA(t128) = |asx:values|.
      t125 = t126->get( p0 = t128 ).
      t120 = t125.
    ENDIF.
    t104 = t120.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104 IS BOUND.
      t131 = t104.
    ENDIF.
    IF t131 IS NOT BOUND.
      t130 = abap_true.
    ELSE.
      t130 = xsdbool( t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t130 = abap_true.
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t135 = t104.
      DATA(t137) = |DD25V|.
      t134 = t135->get( p0 = t137 ).
      t129 = t134.
    ENDIF.
    t102 = t129.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = VALUE abap_bool( ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      t140 = t102.
    ENDIF.
    IF t140 IS NOT BOUND.
      t139 = abap_true.
    ELSE.
      t139 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t139 = abap_true.
    ELSE.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t144 = t102.
      DATA(t146) = |ROOTTAB|.
      t143 = t144->get( p0 = t146 ).
      t138 = t143.
    ENDIF.
    t100 = t138.
    DATA t147 TYPE REF TO zcl_lnt_shape_897eae97.
    t147 = me->parsed_xml.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t150) = xsdbool( t100 IS INITIAL ).
    IF t150 = abap_true.
    ELSE.
      DATA(t153) = VALUE string( ).
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t154 = t100.
      t153 = t154->as_string( ).
      DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t156->has = abap_true.
      t156->value = t153.
      t149 = t156.
    ENDIF.
    t147->primary_table = t149.
    DELETE t147->zlnt_record_delet_0597644d88b4 WHERE table_line = `primaryTable`.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryTable` p1 = t157 ).
    ENDIF.
    DATA(t158) = |primaryTable|.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t170 = t31.
    DATA(t172) = |abapGit|.
    t169 = t170->get( p0 = t172 ).
    t168 = t169.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = VALUE abap_bool( ).
    IF t168 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
    ELSE.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t179) = |asx:abap|.
      t177 = t168->get( p0 = t179 ).
      t173 = t177.
    ENDIF.
    t166 = t173.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t181) = VALUE abap_bool( ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t166 IS BOUND.
      t182 = t166.
    ENDIF.
    IF t182 IS NOT BOUND.
      t181 = abap_true.
    ELSE.
      t181 = xsdbool( t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t181 = abap_true.
    ELSE.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t186 = t166.
      DATA(t188) = |asx:values|.
      t185 = t186->get( p0 = t188 ).
      t180 = t185.
    ENDIF.
    t164 = t180.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = VALUE abap_bool( ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t164 IS BOUND.
      t191 = t164.
    ENDIF.
    IF t191 IS NOT BOUND.
      t190 = abap_true.
    ELSE.
      t190 = xsdbool( t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t190 = abap_true.
    ELSE.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t195 = t164.
      DATA(t197) = |DD25V|.
      t194 = t195->get( p0 = t197 ).
      t189 = t194.
    ENDIF.
    t162 = t189.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = VALUE abap_bool( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t162 IS BOUND.
      t200 = t162.
    ENDIF.
    IF t200 IS NOT BOUND.
      t199 = abap_true.
    ELSE.
      t199 = xsdbool( t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t199 = abap_true.
    ELSE.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t204 = t162.
      DATA(t206) = |DDTEXT|.
      t203 = t204->get( p0 = t206 ).
      t198 = t203.
    ENDIF.
    t160 = t198.
    DATA t207 TYPE REF TO zcl_lnt_shape_897eae97.
    t207 = me->parsed_xml.
    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t210) = xsdbool( t160 IS INITIAL ).
    IF t210 = abap_true.
    ELSE.
      DATA(t213) = VALUE string( ).
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t214 = t160.
      t213 = t214->as_string( ).
      DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t216->has = abap_true.
      t216->value = t213.
      t209 = t216.
    ENDIF.
    t207->description = t209.
    DELETE t207->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t217 ).
    ENDIF.
    DATA(t218) = |description|.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zcl_lnt_shape_897eae97.
    t220 = me->parsed_xml.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    t220->parameters = t224.
    DELETE t220->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t226 ).
    ENDIF.
    DATA(t227) = |parameters|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t237 = t31.
    DATA(t239) = |abapGit|.
    t236 = t237->get( p0 = t239 ).
    t235 = t236.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = VALUE abap_bool( ).
    IF t235 IS NOT BOUND.
      t241 = abap_true.
    ELSE.
      t241 = xsdbool( t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t241 = abap_true.
    ELSE.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t246) = |asx:abap|.
      t244 = t235->get( p0 = t246 ).
      t240 = t244.
    ENDIF.
    t233 = t240.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t248) = VALUE abap_bool( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t233 IS BOUND.
      t249 = t233.
    ENDIF.
    IF t249 IS NOT BOUND.
      t248 = abap_true.
    ELSE.
      t248 = xsdbool( t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t248 = abap_true.
    ELSE.
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t253 = t233.
      DATA(t255) = |asx:values|.
      t252 = t253->get( p0 = t255 ).
      t247 = t252.
    ENDIF.
    t231 = t247.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = VALUE abap_bool( ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231 IS BOUND.
      t258 = t231.
    ENDIF.
    IF t258 IS NOT BOUND.
      t257 = abap_true.
    ELSE.
      t257 = xsdbool( t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t257 = abap_true.
    ELSE.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t262 = t231.
      DATA(t264) = |DD27P_TABLE|.
      t261 = t262->get( p0 = t264 ).
      t256 = t261.
    ENDIF.
    t229 = t256.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t267) = xsdbool( t229 IS INITIAL ).
    IF t267 = abap_true.
    ELSE.
      t266 = t229.
    ENDIF.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t275 = t266.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t278) = VALUE abap_bool( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t275 IS BOUND.
      t279 = t275.
    ENDIF.
    IF t279 IS NOT BOUND.
      t278 = abap_true.
    ELSE.
      t278 = xsdbool( t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t278 = abap_true.
    ELSE.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t283 = t275.
      DATA(t285) = |DD27P|.
      t282 = t283->get( p0 = t285 ).
      t277 = t282.
    ENDIF.
    t274 = t277.
    IF t274 IS BOUND.
      t273 = t274.
    ENDIF.
    t272 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t273 ).
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t287 TYPE REF TO object.
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
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      t296 = t286.
      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t298.
      DATA(t299) = VALUE abap_bool( ).
      IF t296 IS NOT BOUND.
        t299 = abap_true.
      ELSE.
        t299 = xsdbool( t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t299 = abap_true.
        CLEAR t298.
      ELSE.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        DATA(t304) = |VIEWFIELD|.
        t302 = t296->get( p0 = t304 ).
        t298 = t302.
      ENDIF.
      t294 = t298.
      DATA(t305) = VALUE abap_bool( ).
      DATA(t306) = VALUE string( ).
      DATA(t307) = xsdbool( t294 IS INITIAL ).
      IF t307 = abap_true.
        t306 = |undefined|.
      ELSE.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        t311 = t294.
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
      t316 = me->parsed_xml.
      t315 = t316->parameters.
      t314 = t315.
      DATA t318 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t318.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t319.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t320.
      DATA(t322) = |VIEWFIELD|.
      t320 = t286->get( p0 = t322 ).
      t319 = t320.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t323.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t324.
      DATA(t326) = |TABNAME|.
      t324 = t286->get( p0 = t326 ).
      t323 = t324.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t328.
      DATA(t330) = |FIELDNAME|.
      t328 = t286->get( p0 = t330 ).
      t327 = t328.
      DATA t331 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t331.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t332.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      DATA(t334) = xsdbool( t319 IS INITIAL ).
      IF t334 = abap_true.
        CLEAR t333.
      ELSE.
        DATA(t337) = VALUE string( ).
        t337 = t319->as_string( ).
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
      DATA(t342) = xsdbool( t323 IS INITIAL ).
      IF t342 = abap_true.
        CLEAR t341.
      ELSE.
        DATA(t345) = VALUE string( ).
        t345 = t323->as_string( ).
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
      DATA(t350) = xsdbool( t327 IS INITIAL ).
      IF t350 = abap_true.
        CLEAR t349.
      ELSE.
        DATA(t353) = VALUE string( ).
        t353 = t327->as_string( ).
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
      t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `VIEWFIELD` p1 = t356 ).
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
      t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
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
    DATA(t369) = VALUE abap_bool( ).
    t369 = abap_true.
    DATA(t371) = VALUE f( ).
    DATA(t372) = VALUE f( ).
    t372 = t365 - t16.
    t371 = t372.
    DATA t375 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t368 = NEW zcl_lnt_iparse_result( i_updated = t369 i_runtime = t371 i_runtime_extra = t375 ).
    CREATE OBJECT t368->zlnt_view_ownkeys_b0e8086400eb.
    t368->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t377 ).
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t368->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t368->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t378 ).
    ENDIF.
    CREATE OBJECT t368->zlnt_json_ownkeys_70e5fd461788.
    t368->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t379) = |updated|.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
    DATA(t381) = |runtime|.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
    ENDIF.
    result = t368.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = i_reg_f149.
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

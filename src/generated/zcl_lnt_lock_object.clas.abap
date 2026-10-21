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
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^(\/[A-Z_0-9]{3,8}\/)?E[A-Z0-9_]+$` flags = |i|.
    t7->source = `^(\/[A-Z_\d]{3,8}\/)?E[A-Z0-9_]+$`.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 16 ) i_allow_namespace = abap_true i_custom_regex = t7 ).
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
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t18 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |customRegex| p1 = t20 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t22 ).
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
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->primary_table.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->parameters.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_ty_in_sr_ob_lc_ob_ts_lc_obj.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t10 TYPE REF TO zcl_lnt_shape_897eae97.
    t10 = me->parsed_xml.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
    ELSE.
      t12 = t10->primary_table.
    ENDIF.
    t9 = t12.
    IF t9 IS BOUND.
      IF t9->has = abap_true.
        t8 = xsdbool( strlen( t9->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t8 = abap_true.
      DATA t19 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t24 TYPE string.
      t24 = me->parsed_xml->primary_table->value.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t24.
      t19 = t5->lookup_table_or_view2( i_name = t28 ).
      IF xsdbool( t19 IS BOUND ) = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t35 TYPE REF TO zif_lnt_object.
        t35 ?= t19.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t33 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t35 i_token = t38 i_filename = t40 ).
        CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
        t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t42 ).
        CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
        t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t44 ).
        t3->load( ).
        APPEND t33 TO t3->items.
        t3->save( ).
        t1->get_ddic_references( )->set_using( i_obj_1ed0 = me i_using = t3 ).
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = t19->parse_type( i_reg_f149 = t1 i_data_element = t53 i_description = t54 ).
        RETURN.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE string.
        t61 = me->parsed_xml->primary_table->value.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = t61.
        t58 = t65.
        DATA(t67) = VALUE abap_bool( ).
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t69 = t58.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t73) = VALUE abap_bool( ).
        IF t69 IS INITIAL.
          t73 = abap_true.
        ELSEIF t69->has = abap_false.
          t73 = abap_true.
        ENDIF.
        IF t73 = abap_true.
          t67 = abap_true.
        ELSE.
          DATA t77 TYPE REF TO zif_lnt_registry.
          t77 = t5->reg.
          DATA t79 TYPE string.
          t79 = t58->value.
          t67 = t77->in_error_namespace( i_name = t79 ).
        ENDIF.
        IF t67 = abap_true.
          DATA t83 TYPE string.
          t83 = me->parsed_xml->primary_table->value.
          DATA(t88) = strlen( t83 ).
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t83 }{ | not found| }| i_qualified_name = t89 ).
          RETURN.
        ELSE.
          DATA t93 TYPE string.
          t93 = me->parsed_xml->primary_table->value.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t93.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t97 i_qualified_name = t99 ).
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |Parsing error| i_qualified_name = t102 ).

    ENDIF.
  ENDMETHOD.

  METHOD pr_in_sr_ob_lck_obj_ts_lck_obj.
    IF xsdbool( me->parsed_xml IS BOUND ) = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t3 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t8 ).
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
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t13 ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t15 ).
      ENDIF.
      result = t3.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE f( ).
    DATA(t18) = 0.
    t16 = zlnt_runtime_tele_970d5104e5f4=>now( ).
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
    IF xsdbool( t29 IS INITIAL ) = abap_true.
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
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t49 = t31->get( p0 = |abapGit| ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t39 = xsdbool( t49 IS INITIAL ).
    ENDIF.
    t38 = t39.
    IF t39 = abap_false.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t62 = t31->get( p0 = |abapGit| ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t68) = VALUE abap_bool( ).
      IF t62 IS NOT BOUND.
        t68 = abap_true.
      ELSE.
        t68 = xsdbool( t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t68 = abap_true.
      ELSE.
        t67 = t62->get( p0 = |asx:abap| ).
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
        t74 = t60->get( p0 = |asx:values| ).
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38 = xsdbool( t74 IS INITIAL ).
    ENDIF.
    IF t38 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_iparse_result.
      DATA t92 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t87 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t92 ).
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
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t97 ).
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t99 ).
      ENDIF.
      result = t87.
      RETURN.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t108 = t31->get( p0 = |abapGit| ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = VALUE abap_bool( ).
    IF t108 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
    ELSE.
      t113 = t108->get( p0 = |asx:abap| ).
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
      t120 = t106->get( p0 = |asx:values| ).
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
      t129 = t104->get( p0 = |DD25V| ).
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
      t138 = t102->get( p0 = |ROOTTAB| ).
    ENDIF.
    t100 = t138.
    DATA t147 TYPE REF TO zcl_lnt_shape_897eae97.
    t147 = me->parsed_xml.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t100 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t153) = VALUE string( ).
      t153 = t100->as_string( ).
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
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t147->zlnt_json_ownkeys_70e5fd461788->put( p0 = |primaryTable| p1 = t159 ).
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t168 = t31->get( p0 = |abapGit| ).
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t174) = VALUE abap_bool( ).
    IF t168 IS NOT BOUND.
      t174 = abap_true.
    ELSE.
      t174 = xsdbool( t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t174 = abap_true.
    ELSE.
      t173 = t168->get( p0 = |asx:abap| ).
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
      t180 = t166->get( p0 = |asx:values| ).
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
      t189 = t164->get( p0 = |DD25V| ).
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
      t198 = t162->get( p0 = |DDTEXT| ).
    ENDIF.
    t160 = t198.
    DATA t207 TYPE REF TO zcl_lnt_shape_897eae97.
    t207 = me->parsed_xml.
    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t160 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t213) = VALUE string( ).
      t213 = t160->as_string( ).
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
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t219 ).
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
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t228 ).
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t235 = t31->get( p0 = |abapGit| ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = VALUE abap_bool( ).
    IF t235 IS NOT BOUND.
      t241 = abap_true.
    ELSE.
      t241 = xsdbool( t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t241 = abap_true.
    ELSE.
      t240 = t235->get( p0 = |asx:abap| ).
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
      t247 = t233->get( p0 = |asx:values| ).
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
      t256 = t231->get( p0 = |DD27P_TABLE| ).
    ENDIF.
    t229 = t256.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t229 IS INITIAL ) = abap_true.
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
      t277 = t275->get( p0 = |DD27P| ).
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
            CLEAR t291.
            TRY.
                t286 ?= t287.
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
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        t298 = t296->get( p0 = |VIEWFIELD| ).
      ENDIF.
      t294 = t298.
      DATA(t306) = VALUE string( ).
      IF xsdbool( t294 IS INITIAL ) = abap_true.
        t306 = |undefined|.
      ELSE.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      IF xsdbool( t306 <> |string| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t314 = me->parsed_xml->parameters.
      DATA t318 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t318.
      DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t319 = t286->get( p0 = |VIEWFIELD| ).
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t323 = t286->get( p0 = |TABNAME| ).
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t327 = t286->get( p0 = |FIELDNAME| ).
      DATA t331 TYPE REF TO zcl_lnt_shape_51788160.
      CLEAR t331.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t332.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      IF xsdbool( t319 IS INITIAL ) = abap_true.
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
      IF xsdbool( t323 IS INITIAL ) = abap_true.
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
      DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t349.
      IF xsdbool( t327 IS INITIAL ) = abap_true.
        CLEAR t349.
      ELSE.
        DATA(t353) = VALUE string( ).
        t353 = t327->as_string( ).
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t353.
        t349 = t355.
      ENDIF.
      t331 = NEW zcl_lnt_shape_51788160( i_viewfield = t332 i_tabname = t340 i_fieldname = t349 ).
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
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |VIEWFIELD| p1 = t360 ).
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |TABNAME| p1 = t362 ).
      ENDIF.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = |FIELDNAME| p1 = t364 ).
      ENDIF.
      t318 = t331.
      t314->load( ).
      APPEND t318 TO t314->items.
      t314->save( ).
    ENDDO.
    DATA(t365) = VALUE f( ).
    DATA(t367) = 0.
    t365 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t368 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t371) = VALUE f( ).
    t371 = t365 - t16.
    DATA t375 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t368 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t371 i_runtime_extra = t375 ).
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
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t380 ).
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t368->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t368->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t382 ).
    ENDIF.
    result = t368.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_897eae97.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->description.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_lck_obj_ts_lck_obj( ) ).

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t5) = i_reg_f149.
    result = me->pr_ty_in_sr_ob_lc_ob_ts_lc_obj( i_reg_f149 = t5 ).

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

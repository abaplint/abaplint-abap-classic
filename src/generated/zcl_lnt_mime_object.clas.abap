* TS: src/objects/mime_object.ts:4:1 MIMEObject
CLASS zcl_lnt_mime_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c0acc5f0.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_url RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS is_folder RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_data_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS pr_in_src_obj_mm_obj_ts_mm_obj RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mime_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |SMIM|.

  ENDMETHOD.

  METHOD get_url.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      t10 = t3.
      t9 = t10->url_a050.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_class.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      t10 = t3.
      t9 = t10->class_be97.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD is_folder.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      t10 = t3.
      t9 = t10->folder_6de9.
      t5 = t9.
    ENDIF.
    t2 = t5.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = |X|.
    DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t15->has = abap_true.
    t15->value = t14.
    t12 = t15.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      t17 = t2->has.
    ENDIF.
    IF t12 IS BOUND.
      t18 = t12->has.
    ENDIF.
    IF t17 = t18.
      IF t17 = abap_false.
        t1 = abap_true.
      ELSEIF t2->value = t12->value.
        t1 = abap_true.
      ENDIF.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 32 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_data_file.
    DATA t1 TYPE REF TO zif_lnt_file.
    t1 = CAST zif_lnt_file( me->get_xml_file( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t4->files.
    t3 = t6.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t16 TYPE string.
      t16 = t8->get_filename( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t16.
      t14 = t18.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_file.
      t21 = t1.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t24) = xsdbool( t21 IS INITIAL ).
      IF t24 = abap_true.
        CLEAR t23.
      ELSE.
        DATA t27 TYPE string.
        DATA t28 TYPE REF TO zif_lnt_file.
        t28 = t21.
        t27 = t28->get_filename( ).
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t27.
        t23 = t30.
      ENDIF.
      t20 = t23.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      IF t14 IS BOUND.
        t31 = t14->has.
      ENDIF.
      IF t20 IS BOUND.
        t32 = t20->has.
      ENDIF.
      IF t31 = t32.
        IF t31 = abap_false.
          t13 = abap_true.
        ELSEIF t14->value = t20->value.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      IF t13 = abap_true.
        t13 = abap_false.
      ELSE.
        t13 = abap_true.
      ENDIF.
      IF t13 = abap_true.
        result = t8.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD pr_in_src_obj_mm_obj_ts_mm_obj.
    DATA t1 TYPE abap_bool.
    t1 = xsdbool( me->parsed_xml IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t4 TYPE abap_bool.
      t4 = abap_false.
      DATA t6 TYPE f.
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
    DATA t17 TYPE f.
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t21 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_c0acc5f0( i_url_de75 = t22 i_class_e01a = t24 i_folder_0010 = t26 ).
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
      DATA t88 TYPE abap_bool.
      t88 = abap_false.
      DATA t90 TYPE f.
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
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t108 = t31.
    DATA(t110) = |abapGit|.
    t107 = t108->get( p0 = t110 ).
    t106 = t107.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = VALUE abap_bool( ).
    IF t106 IS NOT BOUND.
      t112 = abap_true.
    ELSE.
      t112 = xsdbool( t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t112 = abap_true.
    ELSE.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t117) = |asx:abap|.
      t115 = t106->get( p0 = t117 ).
      t111 = t115.
    ENDIF.
    t104 = t111.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104 IS BOUND.
      t120 = t104.
    ENDIF.
    IF t120 IS NOT BOUND.
      t119 = abap_true.
    ELSE.
      t119 = xsdbool( t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t119 = abap_true.
    ELSE.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t124 = t104.
      DATA(t126) = |asx:values|.
      t123 = t124->get( p0 = t126 ).
      t118 = t123.
    ENDIF.
    t102 = t118.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t128) = VALUE abap_bool( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      t129 = t102.
    ENDIF.
    IF t129 IS NOT BOUND.
      t128 = abap_true.
    ELSE.
      t128 = xsdbool( t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t128 = abap_true.
    ELSE.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t133 = t102.
      DATA(t135) = |URL|.
      t132 = t133->get( p0 = t135 ).
      t127 = t132.
    ENDIF.
    t100 = t127.
    DATA t136 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t136 = me->parsed_xml.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t139) = xsdbool( t100 IS INITIAL ).
    IF t139 = abap_true.
    ELSE.
      DATA t142 TYPE string.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143 = t100.
      t142 = t143->as_string( ).
      DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t145->has = abap_true.
      t145->value = t142.
      t138 = t145.
    ENDIF.
    t136->url_a050 = t138.
    DELETE t136->zlnt_record_delet_0597644d88b4 WHERE table_line = `URL`.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `URL` p1 = t146 ).
    ENDIF.
    DATA(t147) = |URL|.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t157 = t31.
    DATA(t159) = |abapGit|.
    t156 = t157->get( p0 = t159 ).
    t155 = t156.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = VALUE abap_bool( ).
    IF t155 IS NOT BOUND.
      t161 = abap_true.
    ELSE.
      t161 = xsdbool( t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t161 = abap_true.
    ELSE.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t166) = |asx:abap|.
      t164 = t155->get( p0 = t166 ).
      t160 = t164.
    ENDIF.
    t153 = t160.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t153 IS BOUND.
      t169 = t153.
    ENDIF.
    IF t169 IS NOT BOUND.
      t168 = abap_true.
    ELSE.
      t168 = xsdbool( t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t168 = abap_true.
    ELSE.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t173 = t153.
      DATA(t175) = |asx:values|.
      t172 = t173->get( p0 = t175 ).
      t167 = t172.
    ENDIF.
    t151 = t167.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = VALUE abap_bool( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t151 IS BOUND.
      t178 = t151.
    ENDIF.
    IF t178 IS NOT BOUND.
      t177 = abap_true.
    ELSE.
      t177 = xsdbool( t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t177 = abap_true.
    ELSE.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t182 = t151.
      DATA(t184) = |CLASS|.
      t181 = t182->get( p0 = t184 ).
      t176 = t181.
    ENDIF.
    t149 = t176.
    DATA t185 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t185 = me->parsed_xml.
    DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t188) = xsdbool( t149 IS INITIAL ).
    IF t188 = abap_true.
    ELSE.
      DATA t191 TYPE string.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t192 = t149.
      t191 = t192->as_string( ).
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = t191.
      t187 = t194.
    ENDIF.
    t185->class_be97 = t187.
    DELETE t185->zlnt_record_delet_0597644d88b4 WHERE table_line = `CLASS`.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `CLASS` p1 = t195 ).
    ENDIF.
    DATA(t196) = |CLASS|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t206 = t31.
    DATA(t208) = |abapGit|.
    t205 = t206->get( p0 = t208 ).
    t204 = t205.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = VALUE abap_bool( ).
    IF t204 IS NOT BOUND.
      t210 = abap_true.
    ELSE.
      t210 = xsdbool( t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t210 = abap_true.
    ELSE.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t215) = |asx:abap|.
      t213 = t204->get( p0 = t215 ).
      t209 = t213.
    ENDIF.
    t202 = t209.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t202 IS BOUND.
      t218 = t202.
    ENDIF.
    IF t218 IS NOT BOUND.
      t217 = abap_true.
    ELSE.
      t217 = xsdbool( t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t217 = abap_true.
    ELSE.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t222 = t202.
      DATA(t224) = |asx:values|.
      t221 = t222->get( p0 = t224 ).
      t216 = t221.
    ENDIF.
    t200 = t216.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = VALUE abap_bool( ).
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t200 IS BOUND.
      t227 = t200.
    ENDIF.
    IF t227 IS NOT BOUND.
      t226 = abap_true.
    ELSE.
      t226 = xsdbool( t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t226 = abap_true.
    ELSE.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t231 = t200.
      DATA(t233) = |FOLDER|.
      t230 = t231->get( p0 = t233 ).
      t225 = t230.
    ENDIF.
    t198 = t225.
    DATA t234 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t234 = me->parsed_xml.
    DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t237) = xsdbool( t198 IS INITIAL ).
    IF t237 = abap_true.
    ELSE.
      DATA t240 TYPE string.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t241 = t198.
      t240 = t241->as_string( ).
      DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t243->has = abap_true.
      t243->value = t240.
      t236 = t243.
    ENDIF.
    t234->folder_6de9 = t236.
    DELETE t234->zlnt_record_delet_0597644d88b4 WHERE table_line = `FOLDER`.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FOLDER` p1 = t244 ).
    ENDIF.
    DATA(t245) = |FOLDER|.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
    ENDIF.
    DATA t248 TYPE f.
    DATA(t249) = 0.
    t248 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t250 TYPE REF TO zcl_lnt_iparse_result.
    DATA t251 TYPE abap_bool.
    t251 = abap_true.
    DATA t253 TYPE f.
    DATA t254 TYPE f.
    t254 = t248 - t17.
    t253 = t254.
    DATA t257 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t250 = NEW zcl_lnt_iparse_result( i_updated = t251 i_runtime = t253 i_runtime_extra = t257 ).
    CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
    t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t259 ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t260 ).
    ENDIF.
    CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
    t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t261) = |updated|.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
    DATA(t263) = |runtime|.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
    ENDIF.
    result = t250.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1288_43cc7a3394d8.
  ENDMETHOD.
ENDCLASS.

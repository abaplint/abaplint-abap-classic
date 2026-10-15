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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |SMIM|.
    result = t1.

  ENDMETHOD.

  METHOD get_url.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->url_a050.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_class.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->class_be97.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD is_folder.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c0acc5f0.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->folder_6de9.
      t5 = t9.
    ENDIF.
    t2 = t5.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA(t14) = |X|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t12 = t16.
    ENDIF.
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
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    t6 = t7.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_data_file.
    DATA t1 TYPE REF TO zif_lnt_file.
    DATA(t2) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->files.
    t3 = t6.
    DATA t8 TYPE REF TO zif_lnt_file.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE string.
        DATA(t17) = t8.
        t16 = t17->get_filename( ).
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t16.
        t14 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t14 = t19.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_file.
      DATA(t22) = t1.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t21.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      IF t24 = abap_true.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t23 = t26.
      ELSE.
        DATA t27 TYPE string.
        DATA t28 TYPE REF TO zif_lnt_file.
        DATA(t29) = t21.
        t28 = t29.
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
        DATA t33 TYPE REF TO zif_lnt_file.
        CLEAR t33.
        DATA(t34) = abap_true.
        IF t34 = abap_true.
          DATA(t35) = t8.
          t33 = t35.
        ELSE.
          DATA t36 TYPE REF TO zif_lnt_file.
          CLEAR t36.
          t33 = t36.
        ENDIF.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t37 TYPE REF TO zif_lnt_file.
    CLEAR t37.
    result = t37.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD pr_in_src_obj_mm_obj_ts_mm_obj.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->parsed_xml.
    t1 = xsdbool( t2 IS BOUND ).
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zcl_lnt_iparse_result.
      DATA t4 TYPE abap_bool.
      DATA(t5) = abap_false.
      t4 = t5.
      DATA t6 TYPE f.
      DATA(t7) = CONV f( 0 ).
      t6 = t7.
      DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
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
    DATA t16 TYPE f.
    DATA t17 TYPE f.
    DATA(t18) = 0.
    t17 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t16 = t17.
    DATA t19 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t24 = t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t26 = t27.
      t21 = NEW zcl_lnt_shape_c0acc5f0( i_url_de75 = t22 i_class_e01a = t24 i_folder_0010 = t26 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t19 = t21.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      CLEAR t28.
      t19 = t28.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA(t37) = t29.
      t36 = t37.
      t32 = t36.
    ENDIF.
    t31 = t32.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = t31.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t51) = t31.
      t50 = t51.
      DATA(t52) = |abapGit|.
      t49 = t50->get( p0 = t52 ).
      t48 = t49.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t81) = t60.
        t80 = t81.
        DATA(t82) = |asx:values|.
        t79 = t80->get( p0 = t82 ).
        t74 = t79.
      ENDIF.
      t59 = t74.
      t58 = t59.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t88 TYPE abap_bool.
      DATA(t89) = abap_false.
      t88 = t89.
      DATA t90 TYPE f.
      DATA(t91) = CONV f( 0 ).
      t90 = t91.
      DATA t92 TYPE REF TO zcl_lnt_shape_8fc6df03.
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
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = t31.
    t108 = t109.
    DATA(t110) = |abapGit|.
    t107 = t108->get( p0 = t110 ).
    t106 = t107.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = VALUE abap_bool( ).
    DATA(t113) = t106.
    IF t113 IS NOT BOUND.
      t112 = abap_true.
    ELSE.
      t112 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t112 = abap_true.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      t111 = t114.
    ELSE.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t116) = t106.
      DATA(t117) = |asx:abap|.
      t115 = t116->get( p0 = t117 ).
      t111 = t115.
    ENDIF.
    t105 = t111.
    t104 = t105.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = VALUE abap_bool( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = t104.
    CLEAR t120.
    IF t121 IS BOUND.
      t120 = t121.
    ENDIF.
    IF t120 IS NOT BOUND.
      t119 = abap_true.
    ELSE.
      t119 = xsdbool( t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t119 = abap_true.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      t118 = t122.
    ELSE.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t125) = t104.
      t124 = t125.
      DATA(t126) = |asx:values|.
      t123 = t124->get( p0 = t126 ).
      t118 = t123.
    ENDIF.
    t103 = t118.
    t102 = t103.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = VALUE abap_bool( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = t102.
    CLEAR t129.
    IF t130 IS BOUND.
      t129 = t130.
    ENDIF.
    IF t129 IS NOT BOUND.
      t128 = abap_true.
    ELSE.
      t128 = xsdbool( t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t128 = abap_true.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      t127 = t131.
    ELSE.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t134) = t102.
      t133 = t134.
      DATA(t135) = |URL|.
      t132 = t133->get( p0 = t135 ).
      t127 = t132.
    ENDIF.
    t101 = t127.
    t100 = t101.
    DATA t136 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA(t137) = me->parsed_xml.
    t136 = t137.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t138.
    DATA(t139) = VALUE abap_bool( ).
    DATA(t140) = t100.
    IF t140 IS INITIAL.
      t139 = abap_true.
    ENDIF.
    IF t139 = abap_true.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      t138 = t141.
    ELSE.
      DATA t142 TYPE string.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t144) = t100.
      t143 = t144.
      t142 = t143->as_string( ).
      DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t145->has = abap_true.
      t145->value = t142.
      t138 = t145.
    ENDIF.
    t136->url_a050 = t138.
    DELETE t136->zlnt_record_delet_0597644d88b4 WHERE table_line = `URL`.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `URL` p1 = t146 ).
    ENDIF.
    DATA(t147) = |URL|.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = t31.
    t157 = t158.
    DATA(t159) = |abapGit|.
    t156 = t157->get( p0 = t159 ).
    t155 = t156.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = VALUE abap_bool( ).
    DATA(t162) = t155.
    IF t162 IS NOT BOUND.
      t161 = abap_true.
    ELSE.
      t161 = xsdbool( t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t161 = abap_true.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      t160 = t163.
    ELSE.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t165) = t155.
      DATA(t166) = |asx:abap|.
      t164 = t165->get( p0 = t166 ).
      t160 = t164.
    ENDIF.
    t154 = t160.
    t153 = t154.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = t153.
    CLEAR t169.
    IF t170 IS BOUND.
      t169 = t170.
    ENDIF.
    IF t169 IS NOT BOUND.
      t168 = abap_true.
    ELSE.
      t168 = xsdbool( t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t168 = abap_true.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      t167 = t171.
    ELSE.
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t174) = t153.
      t173 = t174.
      DATA(t175) = |asx:values|.
      t172 = t173->get( p0 = t175 ).
      t167 = t172.
    ENDIF.
    t152 = t167.
    t151 = t152.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = VALUE abap_bool( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t151.
    CLEAR t178.
    IF t179 IS BOUND.
      t178 = t179.
    ENDIF.
    IF t178 IS NOT BOUND.
      t177 = abap_true.
    ELSE.
      t177 = xsdbool( t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t177 = abap_true.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      t176 = t180.
    ELSE.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t183) = t151.
      t182 = t183.
      DATA(t184) = |CLASS|.
      t181 = t182->get( p0 = t184 ).
      t176 = t181.
    ENDIF.
    t150 = t176.
    t149 = t150.
    DATA t185 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA(t186) = me->parsed_xml.
    t185 = t186.
    DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t187.
    DATA(t188) = VALUE abap_bool( ).
    DATA(t189) = t149.
    IF t189 IS INITIAL.
      t188 = abap_true.
    ENDIF.
    IF t188 = abap_true.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      t187 = t190.
    ELSE.
      DATA t191 TYPE string.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t193) = t149.
      t192 = t193.
      t191 = t192->as_string( ).
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = t191.
      t187 = t194.
    ENDIF.
    t185->class_be97 = t187.
    DELETE t185->zlnt_record_delet_0597644d88b4 WHERE table_line = `CLASS`.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    IF t185->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `CLASS` p1 = t195 ).
    ENDIF.
    DATA(t196) = |CLASS|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    IF t185->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = t31.
    t206 = t207.
    DATA(t208) = |abapGit|.
    t205 = t206->get( p0 = t208 ).
    t204 = t205.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = VALUE abap_bool( ).
    DATA(t211) = t204.
    IF t211 IS NOT BOUND.
      t210 = abap_true.
    ELSE.
      t210 = xsdbool( t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t210 = abap_true.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      t209 = t212.
    ELSE.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t214) = t204.
      DATA(t215) = |asx:abap|.
      t213 = t214->get( p0 = t215 ).
      t209 = t213.
    ENDIF.
    t203 = t209.
    t202 = t203.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = t202.
    CLEAR t218.
    IF t219 IS BOUND.
      t218 = t219.
    ENDIF.
    IF t218 IS NOT BOUND.
      t217 = abap_true.
    ELSE.
      t217 = xsdbool( t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t217 = abap_true.
      DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t220.
      t216 = t220.
    ELSE.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t223) = t202.
      t222 = t223.
      DATA(t224) = |asx:values|.
      t221 = t222->get( p0 = t224 ).
      t216 = t221.
    ENDIF.
    t201 = t216.
    t200 = t201.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = VALUE abap_bool( ).
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = t200.
    CLEAR t227.
    IF t228 IS BOUND.
      t227 = t228.
    ENDIF.
    IF t227 IS NOT BOUND.
      t226 = abap_true.
    ELSE.
      t226 = xsdbool( t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t226 = abap_true.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      t225 = t229.
    ELSE.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t232) = t200.
      t231 = t232.
      DATA(t233) = |FOLDER|.
      t230 = t231->get( p0 = t233 ).
      t225 = t230.
    ENDIF.
    t199 = t225.
    t198 = t199.
    DATA t234 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA(t235) = me->parsed_xml.
    t234 = t235.
    DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t236.
    DATA(t237) = VALUE abap_bool( ).
    DATA(t238) = t198.
    IF t238 IS INITIAL.
      t237 = abap_true.
    ENDIF.
    IF t237 = abap_true.
      DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t239.
      t236 = t239.
    ELSE.
      DATA t240 TYPE string.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t242) = t198.
      t241 = t242.
      t240 = t241->as_string( ).
      DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t243->has = abap_true.
      t243->value = t240.
      t236 = t243.
    ENDIF.
    t234->folder_6de9 = t236.
    DELETE t234->zlnt_record_delet_0597644d88b4 WHERE table_line = `FOLDER`.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FOLDER` p1 = t244 ).
    ENDIF.
    DATA(t245) = |FOLDER|.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
    ENDIF.
    DATA t247 TYPE f.
    DATA t248 TYPE f.
    DATA(t249) = 0.
    t248 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t247 = t248.
    DATA t250 TYPE REF TO zcl_lnt_iparse_result.
    DATA t251 TYPE abap_bool.
    DATA(t252) = abap_true.
    t251 = t252.
    DATA t253 TYPE f.
    DATA t254 TYPE f.
    DATA(t255) = t247.
    DATA(t256) = t16.
    t254 = t255 - t256.
    t253 = t254.
    DATA t257 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t258 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t258.
    t257 = t258.
    t250 = NEW zcl_lnt_iparse_result( i_updated = t251 i_runtime = t253 i_runtime_extra = t257 ).
    CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
    t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t259 ).
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t260 ).
    ENDIF.
    CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
    t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t261) = |updated|.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
    ENDIF.
    DATA(t263) = |runtime|.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
    ENDIF.
    result = t250.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_src_obj_mm_obj_ts_mm_obj( ) ).
    result = t1.

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

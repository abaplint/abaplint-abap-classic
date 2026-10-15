* TS: src/objects/web_mime.ts:6:1 WebMIME
CLASS zcl_lnt_web_mime DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c1d59dc9.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_parameter_c250 IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__a1006b231250.
    METHODS set_dirty REDEFINITION.
    METHODS get_data_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS prs_ins_src_obj_wb_mm_ts_wb_mm RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_web_mime IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |W3MI|.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    CLEAR t1.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 40 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_true.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t9.
      DATA(t10) = `^[A-Z_-\d/<> ]+$`.
      DATA(t11) = |^[-A-Z_0-9/<> ]+$|.
      DATA(t12) = |i|.
      CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t11 flags = t12.
      t9->source = t10.
      t7 = t9.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t13.
      t7 = t13.
    ENDIF.
    t6 = t7.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |maxLength|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = |allowNamespace|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = |customRegex|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_shape_c1d59dc9.
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
      DATA t10 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      DATA(t11) = t3.
      t10 = t11.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD get_parameter_c250.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    DATA(t7) = me->parsed_xml.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t13 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      DATA(t14) = t6.
      t13 = t14.
      t12 = t13->params.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t4.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t21) = t4.
      t20 = t21.
      DATA t22 TYPE string.
      DATA(t23) = t1.
      DATA(t24) = strlen( t23 ).
      t22 = t23.
      TRANSLATE t22 TO LOWER CASE.
      t19 = t20->get( p0 = t22 ).
      t15 = t19.
    ENDIF.
    t3 = t15.
    result = t3.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    DATA(t6) = me->parsed_xml.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t12 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      DATA(t13) = t5.
      t12 = t13.
      t11 = t12->params.
      t7 = t11.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t3.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t19) = NEW zlnt_runtime_map__a1006b231250( ).
      t18 = t19.
      DATA(t20) = t18.
      t17 = t20.
      t14 = t17.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t22) = t3.
      t21 = t22.
      t14 = t21.
    ENDIF.
    t2 = t14.
    result = t2.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_data_file.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t3) = me.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t2.
    t4 = t5->files.
    t1 = t4.
    DATA t6 TYPE REF TO zif_lnt_file.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE i( ).
      DATA t13 TYPE string.
      DATA(t14) = t6.
      t13 = t14->get_filename( ).
      DATA(t15) = |.data.|.
      DATA(t16) = strlen( t13 ).
      IF t15 IS INITIAL.
        t12 = 0.
      ELSE.
        FIND t15 IN t13 MATCH OFFSET t12.
        IF sy-subrc <> 0.
          t12 = -1.
        ENDIF.
      ENDIF.
      DATA(t17) = 0.
      t11 = xsdbool( t12 >= t17 ).
      IF t11 = abap_true.
        DATA t18 TYPE REF TO zif_lnt_file.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = t6.
          t18 = t20.
        ELSE.
          DATA t21 TYPE REF TO zif_lnt_file.
          CLEAR t21.
          t18 = t21.
        ENDIF.
        result = t18.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t22 TYPE REF TO zif_lnt_file.
    CLEAR t22.
    result = t22.

  ENDMETHOD.

  METHOD prs_ins_src_obj_wb_mm_ts_wb_mm.
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
    DATA t19 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t23.
      DATA(t24) = abap_true.
      IF t24 = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t26.
        DATA(t27) = NEW zlnt_runtime_map__a1006b231250( ).
        t26 = t27.
        DATA(t28) = t26.
        t25 = t28.
        t23 = t25.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
        CLEAR t29.
        t23 = t29.
      ENDIF.
      t22 = t23.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t30 = t31.
      t21 = NEW zcl_lnt_shape_c1d59dc9( i_description = t30 i_params_4c59 = t22 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `params` p1 = t32 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t33) = |params|.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
      ENDIF.
      t19 = t21.
    ELSE.
      DATA t35 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      CLEAR t35.
      t19 = t35.
    ENDIF.
    me->parsed_xml = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = t36.
    IF t41 IS INITIAL.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t39 = t42.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA(t44) = t36.
      t43 = t44.
      t39 = t43.
    ENDIF.
    t38 = t39.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = t38.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    t50 = t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t48.
    IF t53 IS INITIAL.
      t52 = abap_true.
    ENDIF.
    t47 = t52.
    t46 = t47.
    IF t47 = abap_false.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA(t58) = t38.
      t57 = t58.
      DATA(t59) = |abapGit|.
      t56 = t57->get( p0 = t59 ).
      t55 = t56.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      t60 = t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t55.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      t54 = t62.
      t46 = t54.
    ENDIF.
    t45 = t46.
    IF t46 = abap_false.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      DATA(t72) = t38.
      t71 = t72.
      DATA(t73) = |abapGit|.
      t70 = t71->get( p0 = t73 ).
      t69 = t70.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = t69.
      IF t76 IS NOT BOUND.
        t75 = abap_true.
      ELSE.
        t75 = xsdbool( t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t75 = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        DATA(t79) = t69.
        DATA(t80) = |asx:abap|.
        t78 = t79->get( p0 = t80 ).
        t74 = t78.
      ENDIF.
      t68 = t74.
      t67 = t68.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      DATA(t84) = t67.
      CLEAR t83.
      IF t84 IS BOUND.
        t83 = t84.
      ENDIF.
      IF t83 IS NOT BOUND.
        t82 = abap_true.
      ELSE.
        t82 = xsdbool( t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t82 = abap_true.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t81 = t85.
      ELSE.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        DATA(t88) = t67.
        t87 = t88.
        DATA(t89) = |asx:values|.
        t86 = t87->get( p0 = t89 ).
        t81 = t86.
      ENDIF.
      t66 = t81.
      t65 = t66.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t65.
      IF t93 IS INITIAL.
        t92 = abap_true.
      ENDIF.
      t64 = t92.
      t45 = t64.
    ENDIF.
    IF t45 = abap_true.
      DATA t94 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = abap_false.
      t95 = t96.
      DATA(t97) = VALUE f( ).
      DATA(t98) = CONV f( 0 ).
      t97 = t98.
      DATA t99 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t100.
      t99 = t100.
      t94 = NEW zcl_lnt_iparse_result( i_updated = t95 i_runtime = t97 i_runtime_extra = t99 ).
      CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
      t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t101 ).
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t102 ).
      ENDIF.
      CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
      t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t103) = |updated|.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
      ENDIF.
      DATA(t105) = |runtime|.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
      ENDIF.
      result = t94.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t38.
    t115 = t116.
    DATA(t117) = |abapGit|.
    t114 = t115->get( p0 = t117 ).
    t113 = t114.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = VALUE abap_bool( ).
    DATA(t120) = t113.
    IF t120 IS NOT BOUND.
      t119 = abap_true.
    ELSE.
      t119 = xsdbool( t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t119 = abap_true.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      t118 = t121.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      DATA(t123) = t113.
      DATA(t124) = |asx:abap|.
      t122 = t123->get( p0 = t124 ).
      t118 = t122.
    ENDIF.
    t112 = t118.
    t111 = t112.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA(t128) = t111.
    CLEAR t127.
    IF t128 IS BOUND.
      t127 = t128.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t125 = t129.
    ELSE.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      DATA(t132) = t111.
      t131 = t132.
      DATA(t133) = |asx:values|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t110 = t125.
    t109 = t110.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = VALUE abap_bool( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = t109.
    CLEAR t136.
    IF t137 IS BOUND.
      t136 = t137.
    ENDIF.
    IF t136 IS NOT BOUND.
      t135 = abap_true.
    ELSE.
      t135 = xsdbool( t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t135 = abap_true.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      t134 = t138.
    ELSE.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA(t141) = t109.
      t140 = t141.
      DATA(t142) = |TEXT|.
      t139 = t140->get( p0 = t142 ).
      t134 = t139.
    ENDIF.
    t108 = t134.
    t107 = t108.
    DATA t143 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    CLEAR t143.
    DATA(t144) = me->parsed_xml.
    t143 = t144.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = t107.
    IF t147 IS INITIAL.
      t146 = abap_true.
    ENDIF.
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t145 = t148.
    ELSE.
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      DATA(t151) = t107.
      t150 = t151.
      t149 = t150->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->description = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t153 ).
    ENDIF.
    DATA(t154) = |description|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
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
    DATA(t168) = t38.
    t167 = t168.
    DATA(t169) = |abapGit|.
    t166 = t167->get( p0 = t169 ).
    t165 = t166.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = VALUE abap_bool( ).
    DATA(t172) = t165.
    IF t172 IS NOT BOUND.
      t171 = abap_true.
    ELSE.
      t171 = xsdbool( t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t171 = abap_true.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      t170 = t173.
    ELSE.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      DATA(t175) = t165.
      DATA(t176) = |asx:abap|.
      t174 = t175->get( p0 = t176 ).
      t170 = t174.
    ENDIF.
    t164 = t170.
    t163 = t164.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = VALUE abap_bool( ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = t163.
    CLEAR t179.
    IF t180 IS BOUND.
      t179 = t180.
    ENDIF.
    IF t179 IS NOT BOUND.
      t178 = abap_true.
    ELSE.
      t178 = xsdbool( t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t178 = abap_true.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      t177 = t181.
    ELSE.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      DATA(t184) = t163.
      t183 = t184.
      DATA(t185) = |asx:values|.
      t182 = t183->get( p0 = t185 ).
      t177 = t182.
    ENDIF.
    t162 = t177.
    t161 = t162.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = VALUE abap_bool( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = t161.
    CLEAR t188.
    IF t189 IS BOUND.
      t188 = t189.
    ENDIF.
    IF t188 IS NOT BOUND.
      t187 = abap_true.
    ELSE.
      t187 = xsdbool( t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t187 = abap_true.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      t186 = t190.
    ELSE.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      DATA(t193) = t161.
      t192 = t193.
      DATA(t194) = |PARAMS|.
      t191 = t192->get( p0 = t194 ).
      t186 = t191.
    ENDIF.
    t160 = t186.
    t159 = t160.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = VALUE abap_bool( ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = t159.
    CLEAR t197.
    IF t198 IS BOUND.
      t197 = t198.
    ENDIF.
    IF t197 IS NOT BOUND.
      t196 = abap_true.
    ELSE.
      t196 = xsdbool( t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t196 = abap_true.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t195 = t199.
    ELSE.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      DATA(t202) = t159.
      t201 = t202.
      DATA(t203) = |WWWPARAMS|.
      t200 = t201->get( p0 = t203 ).
      t195 = t200.
    ENDIF.
    t158 = t195.
    CLEAR t157.
    IF t158 IS BOUND.
      t157 = t158.
    ENDIF.
    t156 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t157 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO object.
    CLEAR t205.
    DATA(t206) = VALUE i( ).
    DO.
      t156->load( ).
      IF t206 >= lines( t156->items ).
        EXIT.
      ENDIF.
      CLEAR t205.
      READ TABLE t156->items INDEX t206 + 1 INTO t205.
      t206 = t206 + 1.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      CLEAR t204.
      IF t205 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t207 ?= t205.
        t204 = t207.
      ELSE.
        IF t205 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t208 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t208.
          t208 ?= t205.
          CLEAR t204.
          IF t208 IS BOUND.
            CREATE OBJECT t204.
            t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t204->cval = t208.
          ENDIF.
        ELSE.
          CLEAR t204.
          IF t205 IS BOUND.
            DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t209.
            DATA t210 TYPE REF TO object.
            CLEAR t210.
            CLEAR t209.
            t210 = t205.
            TRY.
                t204 ?= t210.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t204 IS NOT BOUND.
              TRY.
                  t209 ?= t205.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t209 IS BOUND.
                t204 = t209->source( ).
              ENDIF.
              IF t204 IS NOT BOUND.
                CREATE OBJECT t204.
                t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t204->oval = t205.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t211) = VALUE abap_bool( ).
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      DATA(t215) = t204.
      t214 = t215.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = t214.
      IF t218 IS NOT BOUND.
        t217 = abap_true.
      ELSE.
        t217 = xsdbool( t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t217 = abap_true.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        t216 = t219.
      ELSE.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        DATA(t221) = t214.
        DATA(t222) = |NAME|.
        t220 = t221->get( p0 = t222 ).
        t216 = t220.
      ENDIF.
      t213 = t216.
      t212 = t213.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = VALUE string( ).
      DATA(t225) = VALUE abap_bool( ).
      DATA(t226) = t212.
      IF t226 IS INITIAL.
        t225 = abap_true.
      ENDIF.
      IF t225 = abap_true.
        DATA(t227) = |undefined|.
        t224 = t227.
      ELSE.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        DATA(t230) = t212.
        t229 = t230.
        IF t229 IS BOUND.
          t228 = t229->type_of( ).
          IF t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t229->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t228 = `function`.
          ENDIF.
        ELSE.
          t228 = `undefined`.
        ENDIF.
        t224 = t228.
      ENDIF.
      DATA(t231) = |string|.
      t223 = xsdbool( t224 <> t231 ).
      t211 = t223.
      IF t211 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t232 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t232.
      DATA t233 TYPE REF TO zlnt_runtime_map__a1006b231250.
      CLEAR t233.
      DATA t234 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      CLEAR t234.
      DATA(t235) = me->parsed_xml.
      t234 = t235.
      t233 = t234->params.
      DATA(t236) = VALUE string( ).
      DATA(t237) = VALUE string( ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA(t239) = t204.
      DATA(t240) = |NAME|.
      t238 = t239->get( p0 = t240 ).
      t237 = t238->as_string( ).
      DATA(t241) = strlen( t237 ).
      t236 = t237.
      TRANSLATE t236 TO LOWER CASE.
      DATA(t242) = VALUE string( ).
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t243.
      DATA(t244) = t204.
      DATA(t245) = |VALUE|.
      t243 = t244->get( p0 = t245 ).
      t242 = t243->as_string( ).
      t232 = t233->set( p0 = t236 p1 = t242 ).
    ENDDO.
    DATA(t246) = VALUE f( ).
    DATA(t247) = VALUE f( ).
    DATA(t248) = 0.
    t247 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t246 = t247.
    DATA t249 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t249.
    DATA(t250) = VALUE abap_bool( ).
    DATA(t251) = abap_true.
    t250 = t251.
    DATA(t252) = VALUE f( ).
    DATA(t253) = VALUE f( ).
    DATA(t254) = t246.
    DATA(t255) = t16.
    t253 = t254 - t255.
    t252 = t253.
    DATA t256 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t256.
    DATA t257 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t257.
    t256 = t257.
    t249 = NEW zcl_lnt_iparse_result( i_updated = t250 i_runtime = t252 i_runtime_extra = t256 ).
    CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
    t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t258 ).
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t259 ).
    ENDIF.
    CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
    t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t260) = |updated|.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
    ENDIF.
    DATA(t262) = |runtime|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
    ENDIF.
    result = t249.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1369_63e1fa9eb9e5.
  ENDMETHOD.
ENDCLASS.

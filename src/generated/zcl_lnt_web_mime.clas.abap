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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |W3MI|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 40 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_true.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t10) = `^[A-Z_-\d/<> ]+$`.
    DATA(t11) = |^[-A-Z_0-9/<> ]+$|.
    DATA(t12) = |i|.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t11 flags = t12.
    t9->source = t10.
    t6 = t9.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t15 ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `customRegex` p1 = t16 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t17) = |maxLength|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    DATA(t19) = |allowNamespace|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = |customRegex|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      t10 = t3.
      t9 = t10->description.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_parameter_c250.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t6 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t6 = me->parsed_xml.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t9) = xsdbool( t6 IS INITIAL ).
    IF t9 = abap_true.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t13 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      t13 = t6.
      t12 = t13->params.
      t8 = t12.
    ENDIF.
    t4 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = xsdbool( t4 IS INITIAL ).
    IF t16 = abap_true.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t20 = t4.
      DATA t22 TYPE string.
      DATA(t24) = strlen( t1 ).
      t22 = t1.
      TRANSLATE t22 TO LOWER CASE.
      t19 = t20->get( p0 = t22 ).
      t15 = t19.
    ENDIF.
    result = t15.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t5 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t5 = me->parsed_xml.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t12 TYPE REF TO zcl_lnt_shape_c1d59dc9.
      t12 = t5.
      t11 = t12->params.
      t7 = t11.
    ENDIF.
    t3 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t15) = xsdbool( t3 IS INITIAL ).
    IF t15 = abap_true.
      t14 = NEW zlnt_runtime_map__a1006b231250( ).
    ELSE.
      t14 = t3.
    ENDIF.
    result = t14.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_data_file.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zcl_lnt_abstract_object.
    t2 = me.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t2->files.
    t1 = t4.
    DATA t6 TYPE REF TO zif_lnt_file.
    DATA t7 TYPE REF TO object.
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
      t13 = t6->get_filename( ).
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
        result = t6.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD prs_ins_src_obj_wb_mm_ts_wb_mm.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    t22 = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_c1d59dc9( i_description = t30 i_params_4c59 = t22 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `params` p1 = t32 ).
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t33) = |params|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t36 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = xsdbool( t36 IS INITIAL ).
    IF t40 = abap_true.
    ELSE.
      t39 = t36.
    ENDIF.
    t38 = t39.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47 = xsdbool( t38 IS INITIAL ).
    t46 = t47.
    IF t47 = abap_false.
      DATA(t54) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57 = t38.
      DATA(t59) = |abapGit|.
      t56 = t57->get( p0 = t59 ).
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54 = xsdbool( t56 IS INITIAL ).
      t46 = t54.
    ENDIF.
    t45 = t46.
    IF t46 = abap_false.
      DATA(t64) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t71 = t38.
      DATA(t73) = |abapGit|.
      t70 = t71->get( p0 = t73 ).
      t69 = t70.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = VALUE abap_bool( ).
      IF t69 IS NOT BOUND.
        t75 = abap_true.
      ELSE.
        t75 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t75 = abap_true.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t80) = |asx:abap|.
        t78 = t69->get( p0 = t80 ).
        t74 = t78.
      ENDIF.
      t67 = t74.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67 IS BOUND.
        t83 = t67.
      ENDIF.
      IF t83 IS NOT BOUND.
        t82 = abap_true.
      ELSE.
        t82 = xsdbool( t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t82 = abap_true.
      ELSE.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t87 = t67.
        DATA(t89) = |asx:values|.
        t86 = t87->get( p0 = t89 ).
        t81 = t86.
      ENDIF.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t64 = xsdbool( t81 IS INITIAL ).
      t45 = t64.
    ENDIF.
    IF t45 = abap_true.
      DATA t94 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t95) = VALUE abap_bool( ).
      t95 = abap_false.
      DATA(t97) = VALUE f( ).
      DATA(t98) = CONV f( 0 ).
      t97 = t98.
      DATA t99 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t94 = NEW zcl_lnt_iparse_result( i_updated = t95 i_runtime = t97 i_runtime_extra = t99 ).
      CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
      t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t101 ).
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t102 ).
      ENDIF.
      CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
      t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t103) = |updated|.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
      DATA(t105) = |runtime|.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
      ENDIF.
      result = t94.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t115 = t38.
    DATA(t117) = |abapGit|.
    t114 = t115->get( p0 = t117 ).
    t113 = t114.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = VALUE abap_bool( ).
    IF t113 IS NOT BOUND.
      t119 = abap_true.
    ELSE.
      t119 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t119 = abap_true.
    ELSE.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t124) = |asx:abap|.
      t122 = t113->get( p0 = t124 ).
      t118 = t122.
    ENDIF.
    t111 = t118.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t111 IS BOUND.
      t127 = t111.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
    ELSE.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t131 = t111.
      DATA(t133) = |asx:values|.
      t130 = t131->get( p0 = t133 ).
      t125 = t130.
    ENDIF.
    t109 = t125.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = VALUE abap_bool( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t109 IS BOUND.
      t136 = t109.
    ENDIF.
    IF t136 IS NOT BOUND.
      t135 = abap_true.
    ELSE.
      t135 = xsdbool( t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t135 = abap_true.
    ELSE.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t140 = t109.
      DATA(t142) = |TEXT|.
      t139 = t140->get( p0 = t142 ).
      t134 = t139.
    ENDIF.
    t107 = t134.
    DATA t143 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t143 = me->parsed_xml.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t146) = xsdbool( t107 IS INITIAL ).
    IF t146 = abap_true.
    ELSE.
      DATA(t149) = VALUE string( ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t150 = t107.
      t149 = t150->as_string( ).
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t149.
      t145 = t152.
    ENDIF.
    t143->description = t145.
    DELETE t143->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t153 ).
    ENDIF.
    DATA(t154) = |description|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t167 = t38.
    DATA(t169) = |abapGit|.
    t166 = t167->get( p0 = t169 ).
    t165 = t166.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = VALUE abap_bool( ).
    IF t165 IS NOT BOUND.
      t171 = abap_true.
    ELSE.
      t171 = xsdbool( t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t171 = abap_true.
    ELSE.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t176) = |asx:abap|.
      t174 = t165->get( p0 = t176 ).
      t170 = t174.
    ENDIF.
    t163 = t170.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = VALUE abap_bool( ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      t179 = t163.
    ENDIF.
    IF t179 IS NOT BOUND.
      t178 = abap_true.
    ELSE.
      t178 = xsdbool( t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t178 = abap_true.
    ELSE.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t183 = t163.
      DATA(t185) = |asx:values|.
      t182 = t183->get( p0 = t185 ).
      t177 = t182.
    ENDIF.
    t161 = t177.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = VALUE abap_bool( ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t161 IS BOUND.
      t188 = t161.
    ENDIF.
    IF t188 IS NOT BOUND.
      t187 = abap_true.
    ELSE.
      t187 = xsdbool( t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t187 = abap_true.
    ELSE.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t192 = t161.
      DATA(t194) = |PARAMS|.
      t191 = t192->get( p0 = t194 ).
      t186 = t191.
    ENDIF.
    t159 = t186.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = VALUE abap_bool( ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159 IS BOUND.
      t197 = t159.
    ENDIF.
    IF t197 IS NOT BOUND.
      t196 = abap_true.
    ELSE.
      t196 = xsdbool( t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t196 = abap_true.
    ELSE.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t201 = t159.
      DATA(t203) = |WWWPARAMS|.
      t200 = t201->get( p0 = t203 ).
      t195 = t200.
    ENDIF.
    t158 = t195.
    IF t158 IS BOUND.
      t157 = t158.
    ENDIF.
    t156 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t157 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t205 TYPE REF TO object.
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
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      t214 = t204.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      DATA(t217) = VALUE abap_bool( ).
      IF t214 IS NOT BOUND.
        t217 = abap_true.
      ELSE.
        t217 = xsdbool( t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t217 = abap_true.
        CLEAR t216.
      ELSE.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        DATA(t222) = |NAME|.
        t220 = t214->get( p0 = t222 ).
        t216 = t220.
      ENDIF.
      t212 = t216.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = VALUE string( ).
      DATA(t225) = xsdbool( t212 IS INITIAL ).
      IF t225 = abap_true.
        t224 = |undefined|.
      ELSE.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        t229 = t212.
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
      t234 = me->parsed_xml.
      t233 = t234->params.
      DATA(t236) = VALUE string( ).
      DATA(t237) = VALUE string( ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA(t240) = |NAME|.
      t238 = t204->get( p0 = t240 ).
      t237 = t238->as_string( ).
      DATA(t241) = strlen( t237 ).
      t236 = t237.
      TRANSLATE t236 TO LOWER CASE.
      DATA(t242) = VALUE string( ).
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t243.
      DATA(t245) = |VALUE|.
      t243 = t204->get( p0 = t245 ).
      t242 = t243->as_string( ).
      t232 = t233->set( p0 = t236 p1 = t242 ).
    ENDDO.
    DATA(t246) = VALUE f( ).
    DATA(t247) = VALUE f( ).
    DATA(t248) = 0.
    t247 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t246 = t247.
    DATA t249 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t250) = VALUE abap_bool( ).
    t250 = abap_true.
    DATA(t252) = VALUE f( ).
    DATA(t253) = VALUE f( ).
    t253 = t246 - t16.
    t252 = t253.
    DATA t256 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t249 = NEW zcl_lnt_iparse_result( i_updated = t250 i_runtime = t252 i_runtime_extra = t256 ).
    CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
    t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t258 ).
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t259 ).
    ENDIF.
    CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
    t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t260) = |updated|.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
    DATA(t262) = |runtime|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
    ENDIF.
    result = t249.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).

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

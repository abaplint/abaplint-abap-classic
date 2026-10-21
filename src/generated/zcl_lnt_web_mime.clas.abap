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
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[-A-Z_0-9/<> ]+$| flags = |i|.
    t9->source = `^[A-Z_-\d/<> ]+$`.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 40 ) i_allow_namespace = abap_true i_custom_regex = t9 ).
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
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t18 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t20 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |customRegex| p1 = t22 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->description.
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
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t8 = t6->params.
    ENDIF.
    t4 = t8.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t20 = t4.
      DATA t22 TYPE string.
      DATA(t24) = strlen( t1 ).
      t22 = t1.
      TRANSLATE t22 TO LOWER CASE.
      t15 = t20->get( p0 = t22 ).
    ENDIF.
    result = t15.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->prs_ins_src_obj_wb_mm_ts_wb_mm( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t5 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t5 = me->parsed_xml.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t7 = t5->params.
    ENDIF.
    t3 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
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
    t1 = t2->files.
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
      IF xsdbool( t12 >= 0 ) = abap_true.
        result = t6.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD prs_ins_src_obj_wb_mm_ts_wb_mm.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_c1d59dc9( i_description = t30 i_params_4c59 = NEW zlnt_runtime_map__a1006b231250( ) ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `params` p1 = t32 ).
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |params| p1 = t34 ).
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t36 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t36 IS INITIAL ) = abap_true.
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
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56 = t38->get( p0 = |abapGit| ).
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t46 = xsdbool( t56 IS INITIAL ).
    ENDIF.
    t45 = t46.
    IF t46 = abap_false.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t69 = t38->get( p0 = |abapGit| ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t75) = VALUE abap_bool( ).
      IF t69 IS NOT BOUND.
        t75 = abap_true.
      ELSE.
        t75 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t75 = abap_true.
      ELSE.
        t74 = t69->get( p0 = |asx:abap| ).
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
        t81 = t67->get( p0 = |asx:values| ).
      ENDIF.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t45 = xsdbool( t81 IS INITIAL ).
    ENDIF.
    IF t45 = abap_true.
      DATA t94 TYPE REF TO zcl_lnt_iparse_result.
      DATA t99 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t94 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t99 ).
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
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t104 ).
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t106 ).
      ENDIF.
      result = t94.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t113 = t38->get( p0 = |abapGit| ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = VALUE abap_bool( ).
    IF t113 IS NOT BOUND.
      t119 = abap_true.
    ELSE.
      t119 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t119 = abap_true.
    ELSE.
      t118 = t113->get( p0 = |asx:abap| ).
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
      t125 = t111->get( p0 = |asx:values| ).
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
      t134 = t109->get( p0 = |TEXT| ).
    ENDIF.
    t107 = t134.
    DATA t143 TYPE REF TO zcl_lnt_shape_c1d59dc9.
    t143 = me->parsed_xml.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t107 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t149) = VALUE string( ).
      t149 = t107->as_string( ).
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
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t155 ).
    ENDIF.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t165 = t38->get( p0 = |abapGit| ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = VALUE abap_bool( ).
    IF t165 IS NOT BOUND.
      t171 = abap_true.
    ELSE.
      t171 = xsdbool( t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t171 = abap_true.
    ELSE.
      t170 = t165->get( p0 = |asx:abap| ).
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
      t177 = t163->get( p0 = |asx:values| ).
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
      t186 = t161->get( p0 = |PARAMS| ).
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
      t195 = t159->get( p0 = |WWWPARAMS| ).
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
            CLEAR t209.
            TRY.
                t204 ?= t205.
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
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        t216 = t214->get( p0 = |NAME| ).
      ENDIF.
      t212 = t216.
      DATA(t224) = VALUE string( ).
      IF xsdbool( t212 IS INITIAL ) = abap_true.
        t224 = |undefined|.
      ELSE.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      IF xsdbool( t224 <> |string| ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t232 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA t233 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t233 = me->parsed_xml->params.
      DATA(t236) = VALUE string( ).
      DATA(t237) = VALUE string( ).
      t237 = t204->get( p0 = |NAME| )->as_string( ).
      DATA(t241) = strlen( t237 ).
      t236 = t237.
      TRANSLATE t236 TO LOWER CASE.
      t232 = t233->set( p0 = t236 p1 = t204->get( p0 = |VALUE| )->as_string( ) ).
    ENDDO.
    DATA(t246) = VALUE f( ).
    DATA(t248) = 0.
    t246 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t249 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t252) = VALUE f( ).
    t252 = t246 - t16.
    DATA t256 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t249 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t252 i_runtime_extra = t256 ).
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
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t261 ).
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t263 ).
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

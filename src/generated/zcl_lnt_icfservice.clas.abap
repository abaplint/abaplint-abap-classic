* TS: src/objects/icf_service.ts:4:1 ICFService
CLASS zcl_lnt_icfservice DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_c9bc8812.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_url RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_handler_list RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS pr_in_sr_ob_icf_srv_ts_icf_srv RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_icfservice IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |SICF|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 100 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD get_url.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c9bc8812.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->url_01ab.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_handler_list.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_c9bc8812.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
    ELSE.
      t5 = t3->handlers.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD pr_in_sr_ob_icf_srv_ts_icf_srv.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_c9bc8812.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t21 = NEW zcl_lnt_shape_c9bc8812( i_url_8ce1 = t22 i_handlers = t24 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t27 IS INITIAL ) = abap_true.
    ELSE.
      t30 = t27.
    ENDIF.
    t29 = t30.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t38 = xsdbool( t29 IS INITIAL ).
    t37 = t38.
    IF t38 = abap_false.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t47 = t29->get( p0 = |abapGit| ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37 = xsdbool( t47 IS INITIAL ).
    ENDIF.
    t36 = t37.
    IF t37 = abap_false.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t60 = t29->get( p0 = |abapGit| ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t66) = VALUE abap_bool( ).
      IF t60 IS NOT BOUND.
        t66 = abap_true.
      ELSE.
        t66 = xsdbool( t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t66 = abap_true.
      ELSE.
        t65 = t60->get( p0 = |asx:abap| ).
      ENDIF.
      t58 = t65.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t58 IS BOUND.
        t74 = t58.
      ENDIF.
      IF t74 IS NOT BOUND.
        t73 = abap_true.
      ELSE.
        t73 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t73 = abap_true.
      ELSE.
        t72 = t58->get( p0 = |asx:values| ).
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t36 = xsdbool( t72 IS INITIAL ).
    ENDIF.
    IF t36 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_iparse_result.
      DATA t90 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t85 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t90 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t92 ).
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t93 ).
      ENDIF.
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t95 ).
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t85->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t97 ).
      ENDIF.
      result = t85.
      RETURN.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104 = t29->get( p0 = |abapGit| ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = VALUE abap_bool( ).
    IF t104 IS NOT BOUND.
      t110 = abap_true.
    ELSE.
      t110 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t110 = abap_true.
    ELSE.
      t109 = t104->get( p0 = |asx:abap| ).
    ENDIF.
    t102 = t109.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      t118 = t102.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
    ELSE.
      t116 = t102->get( p0 = |asx:values| ).
    ENDIF.
    t100 = t116.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100 IS BOUND.
      t127 = t100.
    ENDIF.
    IF t127 IS NOT BOUND.
      t126 = abap_true.
    ELSE.
      t126 = xsdbool( t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t126 = abap_true.
    ELSE.
      t125 = t100->get( p0 = |ICFHANDLER_TABLE| ).
    ENDIF.
    t98 = t125.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t98 IS INITIAL ) = abap_true.
    ELSE.
      t135 = t98.
    ENDIF.
    t134 = t135.
    DATA t141 TYPE REF TO zcl_lnt_shape_c9bc8812.
    t141 = me->parsed_xml.
    DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t145.
    t141->handlers = t145.
    DELETE t141->zlnt_record_delet_0597644d88b4 WHERE table_line = `handlers`.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `handlers` p1 = t147 ).
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t141->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |handlers| p1 = t149 ).
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      t151 = t134.
    ENDIF.
    t150 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t151 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO object.
    DATA(t155) = VALUE i( ).
    DO.
      t150->load( ).
      IF t155 >= lines( t150->items ).
        EXIT.
      ENDIF.
      CLEAR t154.
      READ TABLE t150->items INDEX t155 + 1 INTO t154.
      t155 = t155 + 1.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      CLEAR t153.
      IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t156 ?= t154.
        t153 = t156.
      ELSE.
        IF t154 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t157 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t157.
          t157 ?= t154.
          CLEAR t153.
          IF t157 IS BOUND.
            CREATE OBJECT t153.
            t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t153->cval = t157.
          ENDIF.
        ELSE.
          CLEAR t153.
          IF t154 IS BOUND.
            DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t158.
            DATA t159 TYPE REF TO object.
            CLEAR t158.
            t159 = t154.
            TRY.
                t153 ?= t159.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t153 IS NOT BOUND.
              TRY.
                  t158 ?= t154.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t158 IS BOUND.
                t153 = t158->source( ).
              ENDIF.
              IF t153 IS NOT BOUND.
                CREATE OBJECT t153.
                t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t153->oval = t154.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t162 = t153->get( p0 = |ICFHANDLER| ).
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      CLEAR t165.
      IF xsdbool( xsdbool( t162 IS INITIAL ) = abap_false ) = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t170 = me->parsed_xml->handlers.
        DATA(t174) = VALUE string( ).
        t174 = t153->get( p0 = |ICFHANDLER| )->get( p0 = |ICFHANDLER| )->as_string( ).
        t170->load( ).
        APPEND t174 TO t170->items.
        t170->save( ).
      ENDIF.
    ENDDO.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t186 = t29->get( p0 = |abapGit| ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = VALUE abap_bool( ).
    IF t186 IS NOT BOUND.
      t192 = abap_true.
    ELSE.
      t192 = xsdbool( t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t192 = abap_true.
    ELSE.
      t191 = t186->get( p0 = |asx:abap| ).
    ENDIF.
    t184 = t191.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = VALUE abap_bool( ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t184 IS BOUND.
      t200 = t184.
    ENDIF.
    IF t200 IS NOT BOUND.
      t199 = abap_true.
    ELSE.
      t199 = xsdbool( t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t199 = abap_true.
    ELSE.
      t198 = t184->get( p0 = |asx:values| ).
    ENDIF.
    t182 = t198.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = VALUE abap_bool( ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182 IS BOUND.
      t209 = t182.
    ENDIF.
    IF t209 IS NOT BOUND.
      t208 = abap_true.
    ELSE.
      t208 = xsdbool( t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t208 = abap_true.
    ELSE.
      t207 = t182->get( p0 = |URL| ).
    ENDIF.
    t180 = t207.
    DATA t216 TYPE REF TO zcl_lnt_shape_c9bc8812.
    t216 = me->parsed_xml.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t180 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t222) = VALUE string( ).
      t222 = t180->as_string( ).
      DATA(t225) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t225->has = abap_true.
      t225->value = t222.
      t218 = t225.
    ENDIF.
    t216->url_01ab = t218.
    DELETE t216->zlnt_record_delet_0597644d88b4 WHERE table_line = `url`.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `url` p1 = t226 ).
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t216->zlnt_json_ownkeys_70e5fd461788->put( p0 = |url| p1 = t228 ).
    ENDIF.
    DATA(t229) = VALUE f( ).
    DATA(t231) = 0.
    t229 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t232 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t235) = VALUE f( ).
    t235 = t229 - t16.
    DATA t239 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t232 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t235 i_runtime_extra = t239 ).
    CREATE OBJECT t232->zlnt_view_ownkeys_b0e8086400eb.
    t232->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t232->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t241 ).
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t232->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t232->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t242 ).
    ENDIF.
    CREATE OBJECT t232->zlnt_json_ownkeys_70e5fd461788.
    t232->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t232->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t244 ).
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t232->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t232->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t246 ).
    ENDIF.
    result = t232.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_icf_srv_ts_icf_srv( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1276_7ddf35ef50dd.
  ENDMETHOD.
ENDCLASS.

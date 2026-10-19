* TS: src/objects/maintenance_and_transport_object.ts:8:1 MaintenanceAndTransportObject
CLASS zcl_lnt_mntnn_and_trnspr_objct DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_42a36aec.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_cda19f43.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS set_dirty REDEFINITION.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_area RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_object_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_object_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS p_t_i_s_o_m_a_t_o_t_m_an_tr_ob IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS p_i_s_o_m_a_t_o_ts_mn_an_tr_ob RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS parse_type IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mntnn_and_trnspr_objct IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD set_dirty.
    super->set_dirty( ).
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    result = |TOBJ|.

  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 31 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_true.
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

  METHOD get_area.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_cda19f43.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_cda19f43.
      t10 = t3.
      t9 = t10->area.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_object_name.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_cda19f43.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_cda19f43.
      t10 = t3.
      t9 = t10->object_name.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_object_type.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ) ).
    DATA t3 TYPE REF TO zcl_lnt_shape_cda19f43.
    t3 = me->parsed_xml.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t10 TYPE REF TO zcl_lnt_shape_cda19f43.
      t10 = t3.
      t9 = t10->object_type.
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD p_t_i_s_o_m_a_t_o_t_m_an_tr_ob.
    DATA(t1) = i_reg_f149.
    DATA(t2) = CAST zcl_lnt_iparse_result( me->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t1 ).
    t5 = t6.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zcl_lnt_shape_cda19f43.
    t11 = me->parsed_xml.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = xsdbool( t11 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t18 TYPE REF TO zcl_lnt_shape_cda19f43.
      t18 = t11.
      t17 = t18->object_name.
      t13 = t17.
    ENDIF.
    t10 = t13.
    IF t10 IS BOUND.
      IF t10->has = abap_true.
        t9 = xsdbool( strlen( t10->value ) > 0 ).
      ENDIF.
    ENDIF.
    t8 = t9.
    IF t9 = abap_true.
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t22 TYPE REF TO zcl_lnt_shape_cda19f43.
      t22 = me->parsed_xml.
      t21 = t22->object_type.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t26) = |S|.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t26.
      t24 = t27.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      IF t21 IS BOUND.
        t29 = t21->has.
      ENDIF.
      IF t24 IS BOUND.
        t30 = t24->has.
      ENDIF.
      IF t29 = t30.
        IF t29 = abap_false.
          t20 = abap_true.
        ELSEIF t21->value = t24->value.
          t20 = abap_true.
        ENDIF.
      ENDIF.
      t8 = t20.
    ENDIF.
    IF t8 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t32 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t38 TYPE REF TO zcl_lnt_shape_cda19f43.
      t38 = me->parsed_xml.
      t37 = t38->object_name.
      t36 = t37->value.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t36.
      t34 = t40.
      t32 = t5->lookup_table_or_view2( i_name = t34 ).
      t31 = t32.
      DATA t42 TYPE abap_bool.
      t42 = xsdbool( t31 IS BOUND ).
      IF t42 = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_iobject_and_token.
        DATA t46 TYPE REF TO zif_lnt_object.
        DATA t47 TYPE REF TO zif_lnt_object.
        DATA t48 TYPE REF TO zif_lnt_union_c74a232f.
        t48 = t31.
        t47 ?= t48.
        t46 = t47.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t45 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t46 i_token = t50 i_filename = t52 ).
        CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
        t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t54 ).
        CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
        t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t55) = |object|.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
        t3->load( ).
        APPEND t45 TO t3->items.
        t3->save( ).
        DATA t57 TYPE REF TO zif_lnt_ddic_references.
        t57 = t1->get_ddic_references( ).
        t57->set_using( i_obj_1ed0 = me i_using = t3 ).
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        DATA t62 TYPE REF TO zif_lnt_union_c74a232f.
        t62 = t31.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t61 = t62->parse_type( i_reg_f149 = t1 i_data_element = t65 i_description = t66 ).
        result = t61.
        RETURN.
      ELSE.
        DATA(t67) = VALUE abap_bool( ).
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE string.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE REF TO zcl_lnt_shape_cda19f43.
        t75 = me->parsed_xml.
        t74 = t75->object_name.
        t73 = t74->value.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t73.
        t70 = t77.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t81 = t70.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t85) = VALUE abap_bool( ).
        IF t81 IS INITIAL.
          t85 = abap_true.
        ELSEIF t81->has = abap_false.
          t85 = abap_true.
        ENDIF.
        t80 = t85.
        IF t80 = abap_true.
          t79 = abap_true.
        ELSE.
          DATA t88 TYPE abap_bool.
          DATA t89 TYPE REF TO zif_lnt_registry.
          t89 = t5->reg.
          DATA t91 TYPE string.
          t91 = t70->value.
          t88 = t89->in_error_namespace( i_name = t91 ).
          t79 = t88.
        ENDIF.
        t67 = t79.
        IF t67 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_unknown_type.
          DATA t94 TYPE string.
          DATA t95 TYPE string.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t97 TYPE REF TO zcl_lnt_shape_cda19f43.
          t97 = me->parsed_xml.
          t96 = t97->object_name.
          t95 = t96->value.
          DATA(t99) = | not found|.
          DATA(t100) = strlen( t95 ).
          t94 = |{ t95 }{ t99 }|.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t93 = NEW zcl_lnt_unknown_type( i_error = t94 i_qualified_name = t101 ).
          result = t93.
          RETURN.
        ELSE.
          DATA t102 TYPE REF TO zcl_lnt_void_type.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t105 TYPE string.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t107 TYPE REF TO zcl_lnt_shape_cda19f43.
          t107 = me->parsed_xml.
          t106 = t107->object_name.
          t105 = t106->value.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t105.
          t103 = t109.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t102 = zcl_lnt_void_type=>get_db65( i_voided = t103 i_qualified_name = t111 ).
          result = t102.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t115 TYPE REF TO zcl_lnt_shape_cda19f43.
      t115 = me->parsed_xml.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t118) = xsdbool( t115 IS INITIAL ).
      IF t118 = abap_true.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t122 TYPE REF TO zcl_lnt_shape_cda19f43.
        t122 = t115.
        t121 = t122->object_type.
        t117 = t121.
      ENDIF.
      t114 = t117.
      DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t126) = |S|.
      DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t127->has = abap_true.
      t127->value = t126.
      t124 = t127.
      DATA(t129) = VALUE abap_bool( ).
      DATA(t130) = VALUE abap_bool( ).
      IF t114 IS BOUND.
        t129 = t114->has.
      ENDIF.
      IF t124 IS BOUND.
        t130 = t124->has.
      ENDIF.
      IF t129 = t130.
        IF t129 = abap_false.
          t113 = abap_true.
        ELSEIF t114->value = t124->value.
          t113 = abap_true.
        ENDIF.
      ENDIF.
      IF t113 = abap_true.
        t113 = abap_false.
      ELSE.
        t113 = abap_true.
      ENDIF.
      t112 = t113.
      IF t113 = abap_true.
        DATA(t131) = VALUE abap_bool( ).
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t133 TYPE REF TO zcl_lnt_shape_cda19f43.
        t133 = me->parsed_xml.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t136) = xsdbool( t133 IS INITIAL ).
        IF t136 = abap_true.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t140 TYPE REF TO zcl_lnt_shape_cda19f43.
          t140 = t133.
          t139 = t140->object_name.
          t135 = t139.
        ENDIF.
        t132 = t135.
        IF t132 IS BOUND.
          IF t132->has = abap_true.
            t131 = xsdbool( strlen( t132->value ) > 0 ).
          ENDIF.
        ENDIF.
        t112 = t131.
      ENDIF.
      IF t112 = abap_true.
        DATA t142 TYPE REF TO zcl_lnt_void_type.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t145 TYPE string.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t147 TYPE REF TO zcl_lnt_shape_cda19f43.
        t147 = me->parsed_xml.
        t146 = t147->object_name.
        t145 = t146->value.
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t145.
        t143 = t149.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t142 = zcl_lnt_void_type=>get_db65( i_voided = t143 i_qualified_name = t151 ).
        result = t142.
        RETURN.
      ELSE.
        DATA t152 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t153) = |Parsing error|.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t152 = NEW zcl_lnt_unknown_type( i_error = t153 i_qualified_name = t154 ).
        result = t152.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD p_i_s_o_m_a_t_o_ts_mn_an_tr_ob.
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
    DATA t21 TYPE REF TO zcl_lnt_shape_cda19f43.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = NEW zcl_lnt_shape_cda19f43( i_area = t22 i_object_name = t24 i_object_type = t26 ).
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
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t112 = t31.
    DATA(t114) = |abapGit|.
    t111 = t112->get( p0 = t114 ).
    t110 = t111.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = VALUE abap_bool( ).
    IF t110 IS NOT BOUND.
      t116 = abap_true.
    ELSE.
      t116 = xsdbool( t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t116 = abap_true.
    ELSE.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t121) = |asx:abap|.
      t119 = t110->get( p0 = t121 ).
      t115 = t119.
    ENDIF.
    t108 = t115.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = VALUE abap_bool( ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t108 IS BOUND.
      t124 = t108.
    ENDIF.
    IF t124 IS NOT BOUND.
      t123 = abap_true.
    ELSE.
      t123 = xsdbool( t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t123 = abap_true.
    ELSE.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t128 = t108.
      DATA(t130) = |asx:values|.
      t127 = t128->get( p0 = t130 ).
      t122 = t127.
    ENDIF.
    t106 = t122.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106 IS BOUND.
      t133 = t106.
    ENDIF.
    IF t133 IS NOT BOUND.
      t132 = abap_true.
    ELSE.
      t132 = xsdbool( t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t132 = abap_true.
    ELSE.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t137 = t106.
      DATA(t139) = |TOBJ|.
      t136 = t137->get( p0 = t139 ).
      t131 = t136.
    ENDIF.
    t104 = t131.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = VALUE abap_bool( ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t104 IS BOUND.
      t142 = t104.
    ENDIF.
    IF t142 IS NOT BOUND.
      t141 = abap_true.
    ELSE.
      t141 = xsdbool( t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t141 = abap_true.
    ELSE.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t146 = t104.
      DATA(t148) = |TVDIR|.
      t145 = t146->get( p0 = t148 ).
      t140 = t145.
    ENDIF.
    t102 = t140.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = VALUE abap_bool( ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      t151 = t102.
    ENDIF.
    IF t151 IS NOT BOUND.
      t150 = abap_true.
    ELSE.
      t150 = xsdbool( t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t150 = abap_true.
    ELSE.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t155 = t102.
      DATA(t157) = |AREA|.
      t154 = t155->get( p0 = t157 ).
      t149 = t154.
    ENDIF.
    t100 = t149.
    DATA t158 TYPE REF TO zcl_lnt_shape_cda19f43.
    t158 = me->parsed_xml.
    DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t161) = xsdbool( t100 IS INITIAL ).
    IF t161 = abap_true.
    ELSE.
      DATA t164 TYPE string.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t165 = t100.
      t164 = t165->as_string( ).
      DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t167->has = abap_true.
      t167->value = t164.
      t160 = t167.
    ENDIF.
    t158->area = t160.
    DELETE t158->zlnt_record_delet_0597644d88b4 WHERE table_line = `area`.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `area` p1 = t168 ).
    ENDIF.
    DATA(t169) = |area|.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t181 = t31.
    DATA(t183) = |abapGit|.
    t180 = t181->get( p0 = t183 ).
    t179 = t180.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = VALUE abap_bool( ).
    IF t179 IS NOT BOUND.
      t185 = abap_true.
    ELSE.
      t185 = xsdbool( t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t185 = abap_true.
    ELSE.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t190) = |asx:abap|.
      t188 = t179->get( p0 = t190 ).
      t184 = t188.
    ENDIF.
    t177 = t184.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = VALUE abap_bool( ).
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t177 IS BOUND.
      t193 = t177.
    ENDIF.
    IF t193 IS NOT BOUND.
      t192 = abap_true.
    ELSE.
      t192 = xsdbool( t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t192 = abap_true.
    ELSE.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t197 = t177.
      DATA(t199) = |asx:values|.
      t196 = t197->get( p0 = t199 ).
      t191 = t196.
    ENDIF.
    t175 = t191.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = VALUE abap_bool( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t175 IS BOUND.
      t202 = t175.
    ENDIF.
    IF t202 IS NOT BOUND.
      t201 = abap_true.
    ELSE.
      t201 = xsdbool( t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t201 = abap_true.
    ELSE.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t206 = t175.
      DATA(t208) = |OBJH|.
      t205 = t206->get( p0 = t208 ).
      t200 = t205.
    ENDIF.
    t173 = t200.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = VALUE abap_bool( ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t173 IS BOUND.
      t211 = t173.
    ENDIF.
    IF t211 IS NOT BOUND.
      t210 = abap_true.
    ELSE.
      t210 = xsdbool( t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t210 = abap_true.
    ELSE.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t215 = t173.
      DATA(t217) = |OBJECTNAME|.
      t214 = t215->get( p0 = t217 ).
      t209 = t214.
    ENDIF.
    t171 = t209.
    DATA t218 TYPE REF TO zcl_lnt_shape_cda19f43.
    t218 = me->parsed_xml.
    DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t221) = xsdbool( t171 IS INITIAL ).
    IF t221 = abap_true.
    ELSE.
      DATA t224 TYPE string.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t225 = t171.
      t224 = t225->as_string( ).
      DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t227->has = abap_true.
      t227->value = t224.
      t220 = t227.
    ENDIF.
    t218->object_name = t220.
    DELETE t218->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectName`.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t218->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t218->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectName` p1 = t228 ).
    ENDIF.
    DATA(t229) = |objectName|.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t218->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t218->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
    ENDIF.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t241 = t31.
    DATA(t243) = |abapGit|.
    t240 = t241->get( p0 = t243 ).
    t239 = t240.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t245) = VALUE abap_bool( ).
    IF t239 IS NOT BOUND.
      t245 = abap_true.
    ELSE.
      t245 = xsdbool( t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t245 = abap_true.
    ELSE.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t250) = |asx:abap|.
      t248 = t239->get( p0 = t250 ).
      t244 = t248.
    ENDIF.
    t237 = t244.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = VALUE abap_bool( ).
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t237 IS BOUND.
      t253 = t237.
    ENDIF.
    IF t253 IS NOT BOUND.
      t252 = abap_true.
    ELSE.
      t252 = xsdbool( t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t252 = abap_true.
    ELSE.
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t257 = t237.
      DATA(t259) = |asx:values|.
      t256 = t257->get( p0 = t259 ).
      t251 = t256.
    ENDIF.
    t235 = t251.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t261) = VALUE abap_bool( ).
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t235 IS BOUND.
      t262 = t235.
    ENDIF.
    IF t262 IS NOT BOUND.
      t261 = abap_true.
    ELSE.
      t261 = xsdbool( t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t261 = abap_true.
    ELSE.
      DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t266 = t235.
      DATA(t268) = |OBJH|.
      t265 = t266->get( p0 = t268 ).
      t260 = t265.
    ENDIF.
    t233 = t260.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = VALUE abap_bool( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t233 IS BOUND.
      t271 = t233.
    ENDIF.
    IF t271 IS NOT BOUND.
      t270 = abap_true.
    ELSE.
      t270 = xsdbool( t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t270 = abap_true.
    ELSE.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t275 = t233.
      DATA(t277) = |OBJECTTYPE|.
      t274 = t275->get( p0 = t277 ).
      t269 = t274.
    ENDIF.
    t231 = t269.
    DATA t278 TYPE REF TO zcl_lnt_shape_cda19f43.
    t278 = me->parsed_xml.
    DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t281) = xsdbool( t231 IS INITIAL ).
    IF t281 = abap_true.
    ELSE.
      DATA t284 TYPE string.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t285 = t231.
      t284 = t285->as_string( ).
      DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t287->has = abap_true.
      t287->value = t284.
      t280 = t287.
    ENDIF.
    t278->object_type = t280.
    DELETE t278->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectType`.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t278->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t278->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectType` p1 = t288 ).
    ENDIF.
    DATA(t289) = |objectType|.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t278->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t278->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
    ENDIF.
    DATA t292 TYPE f.
    DATA(t293) = 0.
    t292 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t294 TYPE REF TO zcl_lnt_iparse_result.
    DATA t295 TYPE abap_bool.
    t295 = abap_true.
    DATA t297 TYPE f.
    DATA t298 TYPE f.
    t298 = t292 - t17.
    t297 = t298.
    DATA t301 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t294 = NEW zcl_lnt_iparse_result( i_updated = t295 i_runtime = t297 i_runtime_extra = t301 ).
    CREATE OBJECT t294->zlnt_view_ownkeys_b0e8086400eb.
    t294->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t303 ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t304 ).
    ENDIF.
    CREATE OBJECT t294->zlnt_json_ownkeys_70e5fd461788.
    t294->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t305) = |updated|.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
    DATA(t307) = |runtime|.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
    ENDIF.
    result = t294.

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->p_i_s_o_m_a_t_o_ts_mn_an_tr_ob( ) ).

  ENDMETHOD.

  METHOD parse_type.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t5) = i_reg_f149.
    t4 = me->p_t_i_s_o_m_a_t_o_t_m_an_tr_ob( i_reg_f149 = t5 ).
    result = t4.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1285_cc77f2cfa3e2.
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

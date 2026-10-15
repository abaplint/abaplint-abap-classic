* TS: src/objects/program.ts:6:1 Program
CLASS zcl_lnt_ob_program DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_d439e5f2.
    INTERFACES zif_lnt_union_35a9fad2.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_d77da4ed.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS is_include RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_module_pool RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_dynpros RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_selection_texts RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    METHODS parse_xml.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_program IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |PROG|.
    result = t1.

  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    DATA(t2) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t1 = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t1.
    t15 = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t12.
    t11 = t17.
    result = t11.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 40 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_true.
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

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_shape_d77da4ed.
    CLEAR t1.
    me->parsed_xml = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD is_include.
    me->parse_xml( ).
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    t1 = t2->is_include.
    result = t1.

  ENDMETHOD.

  METHOD is_module_pool.
    me->parse_xml( ).
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    t1 = t2->is_module_pool.
    result = t1.

  ENDMETHOD.

  METHOD get_dynpros.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t5) = me->parsed_xml.
    t4 = t5.
    t3 = t4->dynpros.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t2.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA(t9) = t2.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t6 = t10.
    ENDIF.
    t1 = t6.
    result = t1.

  ENDMETHOD.

  METHOD get_selection_texts.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    t1 = t2->selection_texts.
    result = t1.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    CLEAR t2.
    DATA(t3) = me->parsed_xml.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_file.
    CLEAR t9.
    DATA(t10) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19.
      t14 = t18.
    ENDIF.
    t13 = t14.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = t13.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_shape_d77da4ed.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_shape_d77da4ed.
        CLEAR t29.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = abap_false.
        t30 = t31.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = abap_false.
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t39.
          CREATE OBJECT t39.
          t37 = t39.
        ELSE.
          DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t40.
          t37 = t40.
        ENDIF.
        t36 = t37.
        DATA t41 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t42.
        DATA(t43) = abap_true.
        IF t43 = abap_true.
          DATA t44 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t44.
          DATA t45 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t45.
          DATA(t46) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
          t45 = t46.
          DATA(t47) = t45.
          t44 = t47.
          t42 = t44.
        ELSE.
          DATA t48 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t48.
          t42 = t48.
        ENDIF.
        t41 = t42.
        t29 = NEW zcl_lnt_shape_d77da4ed( i_is_include = t30 i_is_module_pool = t32 i_description = t34 i_dynpros = t36 i_selection_texts = t41 ).
        CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
        t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isInclude` p1 = t49 ).
        ENDIF.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isModulePool` p1 = t50 ).
        ENDIF.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t51 ).
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynpros` p1 = t52 ).
        ENDIF.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionTexts` p1 = t53 ).
        ENDIF.
        CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
        t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t54) = |isInclude|.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
        ENDIF.
        DATA(t56) = |isModulePool|.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
        ENDIF.
        DATA(t58) = |description|.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
        ENDIF.
        DATA(t60) = |dynpros|.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
        ENDIF.
        DATA(t62) = |selectionTexts|.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
        ENDIF.
        t27 = t29.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_shape_d77da4ed.
        CLEAR t64.
        t27 = t64.
      ENDIF.
      me->parsed_xml = t27.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
      RETURN.
    ENDIF.
    DATA(t65) = VALUE string( ).
    DATA(t66) = ||.
    t65 = t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t69.
    DATA(t70) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    t69 = t70.
    DATA(t71) = t69.
    t68 = t71.
    t67 = t68.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = t13.
    t83 = t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = t83.
    CLEAR t87.
    IF t88 IS BOUND.
      t87 = t88.
    ENDIF.
    IF t87 IS NOT BOUND.
      t86 = abap_true.
    ELSE.
      t86 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t86 = abap_true.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      t85 = t89.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA(t92) = t83.
      t91 = t92.
      DATA(t93) = |abapGit|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t82 = t85.
    t81 = t82.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = t81.
    CLEAR t96.
    IF t97 IS BOUND.
      t96 = t97.
    ENDIF.
    IF t96 IS NOT BOUND.
      t95 = abap_true.
    ELSE.
      t95 = xsdbool( t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t95 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      t94 = t98.
    ELSE.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      DATA(t101) = t81.
      t100 = t101.
      DATA(t102) = |asx:abap|.
      t99 = t100->get( p0 = t102 ).
      t94 = t99.
    ENDIF.
    t80 = t94.
    t79 = t80.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = t79.
    CLEAR t105.
    IF t106 IS BOUND.
      t105 = t106.
    ENDIF.
    IF t105 IS NOT BOUND.
      t104 = abap_true.
    ELSE.
      t104 = xsdbool( t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t104 = abap_true.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t103 = t107.
    ELSE.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      DATA(t110) = t79.
      t109 = t110.
      DATA(t111) = |asx:values|.
      t108 = t109->get( p0 = t111 ).
      t103 = t108.
    ENDIF.
    t78 = t103.
    t77 = t78.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = t77.
    CLEAR t114.
    IF t115 IS BOUND.
      t114 = t115.
    ENDIF.
    IF t114 IS NOT BOUND.
      t113 = abap_true.
    ELSE.
      t113 = xsdbool( t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t113 = abap_true.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t112 = t116.
    ELSE.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      DATA(t119) = t77.
      t118 = t119.
      DATA(t120) = |TPOOL|.
      t117 = t118->get( p0 = t120 ).
      t112 = t117.
    ENDIF.
    t76 = t112.
    t75 = t76.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = t75.
    CLEAR t123.
    IF t124 IS BOUND.
      t123 = t124.
    ENDIF.
    IF t123 IS NOT BOUND.
      t122 = abap_true.
    ELSE.
      t122 = xsdbool( t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t122 = abap_true.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t125.
      t121 = t125.
    ELSE.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      DATA(t128) = t75.
      t127 = t128.
      DATA(t129) = |item|.
      t126 = t127->get( p0 = t129 ).
      t121 = t126.
    ENDIF.
    t74 = t121.
    CLEAR t73.
    IF t74 IS BOUND.
      t73 = t74.
    ENDIF.
    t72 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t73 ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO object.
    CLEAR t131.
    DATA(t132) = VALUE i( ).
    DO.
      t72->load( ).
      IF t132 >= lines( t72->items ).
        EXIT.
      ENDIF.
      CLEAR t131.
      READ TABLE t72->items INDEX t132 + 1 INTO t131.
      t132 = t132 + 1.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      CLEAR t130.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t133 ?= t131.
        t130 = t133.
      ELSE.
        IF t131 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t134 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t134.
          t134 ?= t131.
          CLEAR t130.
          IF t134 IS BOUND.
            CREATE OBJECT t130.
            t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t130->cval = t134.
          ENDIF.
        ELSE.
          CLEAR t130.
          IF t131 IS BOUND.
            DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t135.
            DATA t136 TYPE REF TO object.
            CLEAR t136.
            CLEAR t135.
            t136 = t131.
            TRY.
                t130 ?= t136.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t130 IS NOT BOUND.
              TRY.
                  t135 ?= t131.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t135 IS BOUND.
                t130 = t135->source( ).
              ENDIF.
              IF t130 IS NOT BOUND.
                CREATE OBJECT t130.
                t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t130->oval = t131.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA(t141) = t130.
      t140 = t141.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t140.
      IF t144 IS NOT BOUND.
        t143 = abap_true.
      ELSE.
        t143 = xsdbool( t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t143 = abap_true.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        t142 = t145.
      ELSE.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        DATA(t147) = t140.
        DATA(t148) = |ID|.
        t146 = t147->get( p0 = t148 ).
        t142 = t146.
      ENDIF.
      t139 = t142.
      CLEAR t138.
      IF t139 IS BOUND.
        t138 = t139.
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      DATA(t150) = |R|.
      CLEAR t149.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t149->sval = t150.
      IF t138 IS NOT BOUND.
        t137 = xsdbool( t149 IS NOT BOUND ).
      ELSE.
        t137 = t138->strict_equals( t149 ).
      ENDIF.
      IF t137 = abap_true.
        DATA(t151) = VALUE string( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        DATA(t154) = t130.
        DATA(t155) = |ENTRY|.
        t153 = t154->get( p0 = t155 ).
        IF t153 IS BOUND.
          t152 = t153->truth( ).
        ENDIF.
        IF t152 = abap_true.
          DATA(t156) = VALUE string( ).
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          DATA(t158) = t130.
          DATA(t159) = |ENTRY|.
          t157 = t158->get( p0 = t159 ).
          t156 = zcl_lnt_xml_utils_module=>unescape( i_str = t157 ).
          t151 = t156.
        ELSE.
          DATA(t160) = ||.
          t151 = t160.
        ENDIF.
        t65 = t151.
      ELSE.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        DATA(t166) = t130.
        t165 = t166.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        DATA(t168) = VALUE abap_bool( ).
        DATA(t169) = t165.
        IF t169 IS NOT BOUND.
          t168 = abap_true.
        ELSE.
          t168 = xsdbool( t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t168 = abap_true.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          t167 = t170.
        ELSE.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          DATA(t172) = t165.
          DATA(t173) = |ID|.
          t171 = t172->get( p0 = t173 ).
          t167 = t171.
        ENDIF.
        t164 = t167.
        CLEAR t163.
        IF t164 IS BOUND.
          t163 = t164.
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        DATA(t175) = |S|.
        CLEAR t174.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t174->sval = t175.
        IF t163 IS NOT BOUND.
          t162 = xsdbool( t174 IS NOT BOUND ).
        ELSE.
          t162 = t163->strict_equals( t174 ).
        ENDIF.
        t161 = t162.
        IF t162 = abap_true.
          DATA(t176) = VALUE abap_bool( ).
          DATA(t177) = VALUE string( ).
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          DATA(t179) = t130.
          DATA(t180) = |KEY|.
          t178 = t179->get( p0 = t180 ).
          IF t178 IS BOUND.
            t177 = t178->type_of( ).
            IF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t178->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t177 = `function`.
            ENDIF.
          ELSE.
            t177 = `undefined`.
          ENDIF.
          DATA(t181) = |string|.
          t176 = xsdbool( t177 = t181 ).
          t161 = t176.
        ENDIF.
        IF t161 = abap_true.
          DATA t182 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t182.
          DATA(t183) = t67.
          DATA(t184) = VALUE string( ).
          DATA(t185) = VALUE string( ).
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          DATA(t187) = t130.
          DATA(t188) = |KEY|.
          t186 = t187->get( p0 = t188 ).
          t185 = t186->as_string( ).
          DATA(t189) = strlen( t185 ).
          t184 = t185.
          IF t184 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t184 TO UPPER CASE.
          ELSE.
            t184 = zlnt_runtime_uppe_91169605024d=>full( t184 ).
          ENDIF.
          DATA t190 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t190.
          DATA(t191) = VALUE string( ).
          DATA(t192) = VALUE string( ).
          DATA(t193) = VALUE abap_bool( ).
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          DATA(t195) = t130.
          DATA(t196) = |ENTRY|.
          t194 = t195->get( p0 = t196 ).
          IF t194 IS BOUND.
            t193 = t194->truth( ).
          ENDIF.
          IF t193 = abap_true.
            DATA(t197) = VALUE string( ).
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            DATA(t199) = t130.
            DATA(t200) = |ENTRY|.
            t198 = t199->get( p0 = t200 ).
            t197 = zcl_lnt_xml_utils_module=>unescape( i_str = t198 ).
            t192 = t197.
          ELSE.
            DATA(t201) = ||.
            t192 = t201.
          ENDIF.
          t191 = t192.
          DATA t202 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t202.
          DATA t203 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t203.
          DATA(t204) = abap_true.
          IF t204 = abap_true.
            DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t205.
            DATA(t206) = VALUE string( ).
            DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t207.
            DATA(t208) = t130.
            DATA(t209) = |LENGTH|.
            t207 = t208->get( p0 = t209 ).
            IF t207 IS BOUND.
              IF t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                DATA(t210) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t211) = |src/objects/program.ts:90:109: ABAP record string conversion|.
                t211 = t211 && | requires primitive dynamic storage|.
                t210->source_location = t211.
                RAISE EXCEPTION t210.
              ENDIF.
            ENDIF.
            IF t207 IS BOUND.
              IF t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                READ TABLE t207->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t212) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t213) = |src/objects/program.ts:90:109: record string conversion requ|.
                  t213 = t213 && |ires the original default Object coercion hooks|.
                  t212->source_location = t213.
                  RAISE EXCEPTION t212.
                ENDIF.
                READ TABLE t207->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t214) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t215) = |src/objects/program.ts:90:109: record string conversion requ|.
                  t215 = t215 && |ires the original default Object coercion hooks|.
                  t214->source_location = t215.
                  RAISE EXCEPTION t214.
                ENDIF.
                READ TABLE t207->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t216) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t217) = |src/objects/program.ts:90:109: record string conversion requ|.
                  t217 = t217 && |ires the original default Object coercion hooks|.
                  t216->source_location = t217.
                  RAISE EXCEPTION t216.
                ENDIF.
                t206 = `[object Object]`.
              ELSE.
                t206 = t207->to_string( ).
              ENDIF.
            ELSE.
              t206 = `undefined`.
            ENDIF.
            t205 = zlnt_runtime_stri_248d3505915c=>int_optional( t206 ).
            t203 = t205.
          ELSE.
            DATA t218 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t218.
            t203 = t218.
          ENDIF.
          t202 = t203.
          t190 = NEW zcl_lnt_shape_015c050b( i_entry = t191 i_max_length = t202 ).
          CREATE OBJECT t190->zlnt_view_ownkeys_b0e8086400eb.
          t190->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t220 ).
          ENDIF.
          CREATE OBJECT t190->zlnt_json_ownkeys_70e5fd461788.
          t190->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t221) = |entry|.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
          ENDIF.
          DATA(t223) = |maxLength|.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
          ENDIF.
          t182 = t183->set( p0 = t184 p1 = t190 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = t13.
    CLEAR t227.
    IF t228 IS BOUND.
      t227 = t228.
    ENDIF.
    t226 = zcl_lnt_dynpros_module=>parse_dynpros( i_parsed = t227 ).
    t225 = t226.
    DATA t229 TYPE REF TO zcl_lnt_shape_d77da4ed.
    CLEAR t229.
    DATA(t230) = abap_true.
    IF t230 = abap_true.
      DATA t231 TYPE REF TO zcl_lnt_shape_d77da4ed.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = t9.
      t234 = xsdbool( t235 IS BOUND ).
      IF t234 = abap_true.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = VALUE i( ).
        DATA(t238) = VALUE string( ).
        DATA t239 TYPE REF TO zif_lnt_file.
        CLEAR t239.
        DATA(t240) = t9.
        t239 = t240.
        t238 = t239->get_raw( ).
        DATA(t241) = |<SUBC>I</SUBC>|.
        DATA(t242) = strlen( t238 ).
        IF t241 IS INITIAL.
          t237 = 0.
        ELSE.
          FIND t241 IN t238 MATCH OFFSET t237.
          IF sy-subrc <> 0.
            t237 = -1.
          ENDIF.
        ENDIF.
        DATA(t243) = 0.
        t236 = xsdbool( t237 >= t243 ).
        t233 = t236.
      ELSE.
        DATA(t244) = abap_false.
        t233 = t244.
      ENDIF.
      t232 = t233.
      DATA(t245) = VALUE abap_bool( ).
      DATA(t246) = VALUE abap_bool( ).
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = t9.
      t247 = xsdbool( t248 IS BOUND ).
      IF t247 = abap_true.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = VALUE i( ).
        DATA(t251) = VALUE string( ).
        DATA t252 TYPE REF TO zif_lnt_file.
        CLEAR t252.
        DATA(t253) = t9.
        t252 = t253.
        t251 = t252->get_raw( ).
        DATA(t254) = |<SUBC>M</SUBC>|.
        DATA(t255) = strlen( t251 ).
        IF t254 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t254 IN t251 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        DATA(t256) = 0.
        t249 = xsdbool( t250 >= t256 ).
        t246 = t249.
      ELSE.
        DATA(t257) = abap_false.
        t246 = t257.
      ENDIF.
      t245 = t246.
      DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t259.
      DATA(t260) = abap_true.
      IF t260 = abap_true.
        DATA(t261) = t225.
        t259 = t261.
      ELSE.
        DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t262.
        t259 = t262.
      ENDIF.
      t258 = t259.
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t264.
      DATA(t265) = abap_true.
      IF t265 = abap_true.
        DATA(t266) = t65.
        DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t267->has = abap_true.
        t267->value = t266.
        t264 = t267.
      ELSE.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        t264 = t268.
      ENDIF.
      t263 = t264.
      DATA t269 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t269.
      DATA t270 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t270.
      DATA(t271) = abap_true.
      IF t271 = abap_true.
        DATA(t272) = t67.
        t270 = t272.
      ELSE.
        DATA t273 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t273.
        t270 = t273.
      ENDIF.
      t269 = t270.
      t231 = NEW zcl_lnt_shape_d77da4ed( i_is_include = t232 i_is_module_pool = t245 i_description = t263 i_dynpros = t258 i_selection_texts = t269 ).
      CREATE OBJECT t231->zlnt_view_ownkeys_b0e8086400eb.
      t231->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isInclude` p1 = t274 ).
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isModulePool` p1 = t275 ).
      ENDIF.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynpros` p1 = t276 ).
      ENDIF.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t277 ).
      ENDIF.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionTexts` p1 = t278 ).
      ENDIF.
      CREATE OBJECT t231->zlnt_json_ownkeys_70e5fd461788.
      t231->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t279) = |isInclude|.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
      ENDIF.
      DATA(t281) = |isModulePool|.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
      ENDIF.
      DATA(t283) = |dynpros|.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
      ENDIF.
      DATA(t285) = |description|.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
      ENDIF.
      DATA(t287) = |selectionTexts|.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
      ENDIF.
      t229 = t231.
    ELSE.
      DATA t289 TYPE REF TO zcl_lnt_shape_d77da4ed.
      CLEAR t289.
      t229 = t289.
    ENDIF.
    me->parsed_xml = t229.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1322_e58083008ffb.
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_dynpros.
    result = me->get_dynpros( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.

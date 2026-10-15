* TS: src/objects/enhancement_spot.ts:9:1 EnhancementSpot
CLASS zcl_lnt_enhancement_spot DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA badis TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS list_badi_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_enhancement_spot IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |ENHS|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
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
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    me->badis = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD list_badi_definitions.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->badis.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( me->parse_xml( ) ).
        t8 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t11.
        t8 = t11.
      ENDIF.
      me->badis = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = me->badis.
    t12 = t13.
    result = t12.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA(t9) = t1.
      t8 = t9.
      t4 = t8.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = t3.
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = t31.
    CLEAR t35.
    IF t36 IS BOUND.
      t35 = t36.
    ENDIF.
    IF t35 IS NOT BOUND.
      t34 = abap_true.
    ELSE.
      t34 = xsdbool( t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t34 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t33 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA(t40) = t31.
      t39 = t40.
      DATA(t41) = |abapGit|.
      t38 = t39->get( p0 = t41 ).
      t33 = t38.
    ENDIF.
    t30 = t33.
    t29 = t30.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = t29.
    CLEAR t44.
    IF t45 IS BOUND.
      t44 = t45.
    ENDIF.
    IF t44 IS NOT BOUND.
      t43 = abap_true.
    ELSE.
      t43 = xsdbool( t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t43 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t42 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      DATA(t49) = t29.
      t48 = t49.
      DATA(t50) = |asx:abap|.
      t47 = t48->get( p0 = t50 ).
      t42 = t47.
    ENDIF.
    t28 = t42.
    t27 = t28.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = t27.
    CLEAR t53.
    IF t54 IS BOUND.
      t53 = t54.
    ENDIF.
    IF t53 IS NOT BOUND.
      t52 = abap_true.
    ELSE.
      t52 = xsdbool( t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t52 = abap_true.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t51 = t55.
    ELSE.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA(t58) = t27.
      t57 = t58.
      DATA(t59) = |asx:values|.
      t56 = t57->get( p0 = t59 ).
      t51 = t56.
    ENDIF.
    t26 = t51.
    t25 = t26.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = t25.
    CLEAR t62.
    IF t63 IS BOUND.
      t62 = t63.
    ENDIF.
    IF t62 IS NOT BOUND.
      t61 = abap_true.
    ELSE.
      t61 = xsdbool( t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t61 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      t60 = t64.
    ELSE.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      DATA(t67) = t25.
      t66 = t67.
      DATA(t68) = |BADI_DATA|.
      t65 = t66->get( p0 = t68 ).
      t60 = t65.
    ENDIF.
    t24 = t60.
    t23 = t24.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = t23.
    CLEAR t71.
    IF t72 IS BOUND.
      t71 = t72.
    ENDIF.
    IF t71 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      t69 = t73.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      DATA(t76) = t23.
      t75 = t76.
      DATA(t77) = |ENH_BADI_DATA|.
      t74 = t75->get( p0 = t77 ).
      t69 = t74.
    ENDIF.
    t22 = t69.
    CLEAR t21.
    IF t22 IS BOUND.
      t21 = t22.
    ENDIF.
    t20 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t21 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO object.
    CLEAR t79.
    DATA(t80) = VALUE i( ).
    DO.
      t20->load( ).
      IF t80 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t79.
      READ TABLE t20->items INDEX t80 + 1 INTO t79.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t79.
        t78 = t81.
      ELSE.
        IF t79 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t82 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t82.
          t82 ?= t79.
          CLEAR t78.
          IF t82 IS BOUND.
            CREATE OBJECT t78.
            t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t78->cval = t82.
          ENDIF.
        ELSE.
          CLEAR t78.
          IF t79 IS BOUND.
            DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t83.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            CLEAR t83.
            t84 = t79.
            TRY.
                t78 ?= t84.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t78 IS NOT BOUND.
              TRY.
                  t83 ?= t79.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t83 IS BOUND.
                t78 = t83->source( ).
              ENDIF.
              IF t78 IS NOT BOUND.
                CREATE OBJECT t78.
                t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t78->oval = t79.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t85) = t18.
      DATA t86 TYPE REF TO zcl_lnt_ibadi_definition.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      DATA(t89) = t78.
      DATA(t90) = |BADI_NAME|.
      t88 = t89->get( p0 = t90 ).
      t87 = t88.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      DATA(t93) = t78.
      DATA(t94) = |INTERFACE_NAME|.
      t92 = t93->get( p0 = t94 ).
      t91 = t92.
      DATA t95 TYPE REF TO zcl_lnt_ibadi_definition.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = t87.
      IF t99 IS INITIAL.
        t98 = abap_true.
      ENDIF.
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t97 = t100.
      ELSE.
        DATA(t101) = VALUE string( ).
        DATA(t102) = t87.
        t101 = t102->as_string( ).
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t101.
        t97 = t103.
      ENDIF.
      t96 = t97.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t91.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      IF t106 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t105 = t108.
      ELSE.
        DATA(t109) = VALUE string( ).
        DATA(t110) = t91.
        t109 = t110->as_string( ).
        DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t111->has = abap_true.
        t111->value = t109.
        t105 = t111.
      ENDIF.
      t104 = t105.
      t95 = NEW zcl_lnt_ibadi_definition( i_name = t96 i_interface_40e4 = t104 ).
      CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
      t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interface` p1 = t113 ).
      ENDIF.
      CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
      t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t114) = |name|.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      ENDIF.
      DATA(t116) = |interface|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      t86 = t95.
      t85->load( ).
      APPEND t86 TO t85->items.
      t85->save( ).
    ENDDO.
    DATA(t118) = t18.
    result = t118.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1250_cdc91e32c712.
  ENDMETHOD.
ENDCLASS.

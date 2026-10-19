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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |ENHS|.

  ENDMETHOD.

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
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

  METHOD set_dirty.
    CLEAR me->badis.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD list_badi_definitions.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( me->badis IS INITIAL ).
    IF t1 = abap_true.
      me->badis = CAST zlnt_runtime_arra_c22708faf2e3( me->parse_xml( ) ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
    ENDIF.
    result = me->badis.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = xsdbool( t1 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      t4 = t1.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t3 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31 = t3.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31 IS BOUND.
      t35 = t31.
    ENDIF.
    IF t35 IS NOT BOUND.
      t34 = abap_true.
    ELSE.
      t34 = xsdbool( t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t34 = abap_true.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t39 = t31.
      DATA(t41) = |abapGit|.
      t38 = t39->get( p0 = t41 ).
      t33 = t38.
    ENDIF.
    t29 = t33.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      t44 = t29.
    ENDIF.
    IF t44 IS NOT BOUND.
      t43 = abap_true.
    ELSE.
      t43 = xsdbool( t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t43 = abap_true.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t48 = t29.
      DATA(t50) = |asx:abap|.
      t47 = t48->get( p0 = t50 ).
      t42 = t47.
    ENDIF.
    t27 = t42.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27 IS BOUND.
      t53 = t27.
    ENDIF.
    IF t53 IS NOT BOUND.
      t52 = abap_true.
    ELSE.
      t52 = xsdbool( t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t52 = abap_true.
    ELSE.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t57 = t27.
      DATA(t59) = |asx:values|.
      t56 = t57->get( p0 = t59 ).
      t51 = t56.
    ENDIF.
    t25 = t51.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t25 IS BOUND.
      t62 = t25.
    ENDIF.
    IF t62 IS NOT BOUND.
      t61 = abap_true.
    ELSE.
      t61 = xsdbool( t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t61 = abap_true.
    ELSE.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t66 = t25.
      DATA(t68) = |BADI_DATA|.
      t65 = t66->get( p0 = t68 ).
      t60 = t65.
    ENDIF.
    t23 = t60.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = VALUE abap_bool( ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23 IS BOUND.
      t71 = t23.
    ENDIF.
    IF t71 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t75 = t23.
      DATA(t77) = |ENH_BADI_DATA|.
      t74 = t75->get( p0 = t77 ).
      t69 = t74.
    ENDIF.
    t22 = t69.
    IF t22 IS BOUND.
      t21 = t22.
    ENDIF.
    t20 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t21 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO object.
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
      DATA t86 TYPE REF TO zcl_lnt_ibadi_definition.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      DATA(t90) = |BADI_NAME|.
      t88 = t78->get( p0 = t90 ).
      t87 = t88.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      DATA(t94) = |INTERFACE_NAME|.
      t92 = t78->get( p0 = t94 ).
      t91 = t92.
      DATA t95 TYPE REF TO zcl_lnt_ibadi_definition.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = xsdbool( t87 IS INITIAL ).
      IF t98 = abap_true.
        CLEAR t97.
      ELSE.
        DATA(t101) = VALUE string( ).
        t101 = t87->as_string( ).
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
      DATA(t106) = xsdbool( t91 IS INITIAL ).
      IF t106 = abap_true.
        CLEAR t105.
      ELSE.
        DATA(t109) = VALUE string( ).
        t109 = t91->as_string( ).
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
      t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t112 ).
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
      t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      DATA(t116) = |interface|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      t86 = t95.
      t18->load( ).
      APPEND t86 TO t18->items.
      t18->save( ).
    ENDDO.
    result = t18.

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

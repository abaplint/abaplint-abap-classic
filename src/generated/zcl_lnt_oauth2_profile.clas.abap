* TS: src/objects/oauth2_profile.ts:4:1 Oauth2Profile
CLASS zcl_lnt_oauth2_profile DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS list_scopes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_oauth2_profile IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |OA2P|.
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

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD list_scopes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA(t11) = t3.
      t10 = t11.
      t6 = t10.
    ENDIF.
    t5 = t6.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA(t26) = t5.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = t25.
    CLEAR t29.
    IF t30 IS BOUND.
      t29 = t30.
    ENDIF.
    IF t29 IS NOT BOUND.
      t28 = abap_true.
    ELSE.
      t28 = xsdbool( t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t28 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t27 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA(t34) = t25.
      t33 = t34.
      DATA(t35) = |abapGit|.
      t32 = t33->get( p0 = t35 ).
      t27 = t32.
    ENDIF.
    t24 = t27.
    t23 = t24.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = t23.
    CLEAR t38.
    IF t39 IS BOUND.
      t38 = t39.
    ENDIF.
    IF t38 IS NOT BOUND.
      t37 = abap_true.
    ELSE.
      t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      t36 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      DATA(t43) = t23.
      t42 = t43.
      DATA(t44) = |asx:abap|.
      t41 = t42->get( p0 = t44 ).
      t36 = t41.
    ENDIF.
    t22 = t36.
    t21 = t22.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = t21.
    CLEAR t47.
    IF t48 IS BOUND.
      t47 = t48.
    ENDIF.
    IF t47 IS NOT BOUND.
      t46 = abap_true.
    ELSE.
      t46 = xsdbool( t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t46 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t45 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      DATA(t52) = t21.
      t51 = t52.
      DATA(t53) = |asx:values|.
      t50 = t51->get( p0 = t53 ).
      t45 = t50.
    ENDIF.
    t20 = t45.
    t19 = t20.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = t19.
    CLEAR t56.
    IF t57 IS BOUND.
      t56 = t57.
    ENDIF.
    IF t56 IS NOT BOUND.
      t55 = abap_true.
    ELSE.
      t55 = xsdbool( t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t55 = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      t54 = t58.
    ELSE.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      DATA(t61) = t19.
      t60 = t61.
      DATA(t62) = |PROFILE|.
      t59 = t60->get( p0 = t62 ).
      t54 = t59.
    ENDIF.
    t18 = t54.
    t17 = t18.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = t17.
    CLEAR t65.
    IF t66 IS BOUND.
      t65 = t66.
    ENDIF.
    IF t65 IS NOT BOUND.
      t64 = abap_true.
    ELSE.
      t64 = xsdbool( t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t64 = abap_true.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      t63 = t67.
    ELSE.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA(t70) = t17.
      t69 = t70.
      DATA(t71) = |T_SCOPES|.
      t68 = t69->get( p0 = t71 ).
      t63 = t68.
    ENDIF.
    t16 = t63.
    t15 = t16.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = t15.
    CLEAR t74.
    IF t75 IS BOUND.
      t74 = t75.
    ENDIF.
    IF t74 IS NOT BOUND.
      t73 = abap_true.
    ELSE.
      t73 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t73 = abap_true.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t72 = t76.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      DATA(t79) = t15.
      t78 = t79.
      DATA(t80) = |OA2P_SCOPES|.
      t77 = t78->get( p0 = t80 ).
      t72 = t77.
    ENDIF.
    t14 = t72.
    CLEAR t13.
    IF t14 IS BOUND.
      t13 = t14.
    ENDIF.
    t12 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t13 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO object.
    CLEAR t82.
    DATA(t83) = VALUE i( ).
    DO.
      t12->load( ).
      IF t83 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t82.
      READ TABLE t12->items INDEX t83 + 1 INTO t82.
      t83 = t83 + 1.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      CLEAR t81.
      IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t84 ?= t82.
        t81 = t84.
      ELSE.
        IF t82 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t85 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t85.
          t85 ?= t82.
          CLEAR t81.
          IF t85 IS BOUND.
            CREATE OBJECT t81.
            t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t81->cval = t85.
          ENDIF.
        ELSE.
          CLEAR t81.
          IF t82 IS BOUND.
            DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t86.
            DATA t87 TYPE REF TO object.
            CLEAR t87.
            CLEAR t86.
            t87 = t82.
            TRY.
                t81 ?= t87.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t81 IS NOT BOUND.
              TRY.
                  t86 ?= t82.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t86 IS BOUND.
                t81 = t86->source( ).
              ENDIF.
              IF t81 IS NOT BOUND.
                CREATE OBJECT t81.
                t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t81->oval = t82.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t88) = t1.
      DATA(t89) = VALUE string( ).
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA(t91) = t81.
      DATA(t92) = |SCOPE|.
      t90 = t91->get( p0 = t92 ).
      t89 = t90->as_string( ).
      t88->load( ).
      APPEND t89 TO t88->items.
      t88->save( ).
    ENDDO.
    DATA(t93) = t1.
    result = t93.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1314_fe7fe1b4ff67.
  ENDMETHOD.
ENDCLASS.

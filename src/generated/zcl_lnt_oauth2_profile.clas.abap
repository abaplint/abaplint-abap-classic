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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |OA2P|.

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

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD list_scopes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = xsdbool( t3 IS INITIAL ).
    IF t7 = abap_true.
    ELSE.
      t6 = t3.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = t6.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t25 IS BOUND.
      t29 = t25.
    ENDIF.
    IF t29 IS NOT BOUND.
      t28 = abap_true.
    ELSE.
      t28 = xsdbool( t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t28 = abap_true.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t33 = t25.
      DATA(t35) = |abapGit|.
      t32 = t33->get( p0 = t35 ).
      t27 = t32.
    ENDIF.
    t23 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23 IS BOUND.
      t38 = t23.
    ENDIF.
    IF t38 IS NOT BOUND.
      t37 = abap_true.
    ELSE.
      t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t37 = abap_true.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t42 = t23.
      DATA(t44) = |asx:abap|.
      t41 = t42->get( p0 = t44 ).
      t36 = t41.
    ENDIF.
    t21 = t36.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      t47 = t21.
    ENDIF.
    IF t47 IS NOT BOUND.
      t46 = abap_true.
    ELSE.
      t46 = xsdbool( t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t46 = abap_true.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t51 = t21.
      DATA(t53) = |asx:values|.
      t50 = t51->get( p0 = t53 ).
      t45 = t50.
    ENDIF.
    t19 = t45.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS BOUND.
      t56 = t19.
    ENDIF.
    IF t56 IS NOT BOUND.
      t55 = abap_true.
    ELSE.
      t55 = xsdbool( t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t55 = abap_true.
    ELSE.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t60 = t19.
      DATA(t62) = |PROFILE|.
      t59 = t60->get( p0 = t62 ).
      t54 = t59.
    ENDIF.
    t17 = t54.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = VALUE abap_bool( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS BOUND.
      t65 = t17.
    ENDIF.
    IF t65 IS NOT BOUND.
      t64 = abap_true.
    ELSE.
      t64 = xsdbool( t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t64 = abap_true.
    ELSE.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t69 = t17.
      DATA(t71) = |T_SCOPES|.
      t68 = t69->get( p0 = t71 ).
      t63 = t68.
    ENDIF.
    t15 = t63.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      t74 = t15.
    ENDIF.
    IF t74 IS NOT BOUND.
      t73 = abap_true.
    ELSE.
      t73 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t73 = abap_true.
    ELSE.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t78 = t15.
      DATA(t80) = |OA2P_SCOPES|.
      t77 = t78->get( p0 = t80 ).
      t72 = t77.
    ENDIF.
    t14 = t72.
    IF t14 IS BOUND.
      t13 = t14.
    ENDIF.
    t12 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t13 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO object.
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
      DATA(t89) = VALUE string( ).
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      DATA(t92) = |SCOPE|.
      t90 = t81->get( p0 = t92 ).
      t89 = t90->as_string( ).
      t1->load( ).
      APPEND t89 TO t1->items.
      t1->save( ).
    ENDDO.
    result = t1.

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

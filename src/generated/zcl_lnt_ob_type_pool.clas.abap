* TS: src/objects/type_pool.ts:4:1 TypePool
CLASS zcl_lnt_ob_type_pool DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_35a9fad2.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_type_pool IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |TYPE|.
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

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 5 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
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
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA(t9) = t1.
      t8 = t9.
      t4 = t8.
    ENDIF.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA(t20) = t3.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = t19.
    CLEAR t23.
    IF t24 IS BOUND.
      t23 = t24.
    ENDIF.
    IF t23 IS NOT BOUND.
      t22 = abap_true.
    ELSE.
      t22 = xsdbool( t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t22 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t21 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t28) = t19.
      t27 = t28.
      DATA(t29) = |abapGit|.
      t26 = t27->get( p0 = t29 ).
      t21 = t26.
    ENDIF.
    t18 = t21.
    t17 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = t17.
    CLEAR t32.
    IF t33 IS BOUND.
      t32 = t33.
    ENDIF.
    IF t32 IS NOT BOUND.
      t31 = abap_true.
    ELSE.
      t31 = xsdbool( t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t31 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t30 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = t17.
      t36 = t37.
      DATA(t38) = |asx:abap|.
      t35 = t36->get( p0 = t38 ).
      t30 = t35.
    ENDIF.
    t16 = t30.
    t15 = t16.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = t15.
    CLEAR t41.
    IF t42 IS BOUND.
      t41 = t42.
    ENDIF.
    IF t41 IS NOT BOUND.
      t40 = abap_true.
    ELSE.
      t40 = xsdbool( t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t40 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t39 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t46) = t15.
      t45 = t46.
      DATA(t47) = |asx:values|.
      t44 = t45->get( p0 = t47 ).
      t39 = t44.
    ENDIF.
    t14 = t39.
    t13 = t14.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = t13.
    CLEAR t50.
    IF t51 IS BOUND.
      t50 = t51.
    ENDIF.
    IF t50 IS NOT BOUND.
      t49 = abap_true.
    ELSE.
      t49 = xsdbool( t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t49 = abap_true.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t48 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t55) = t13.
      t54 = t55.
      DATA(t56) = |DDTEXT|.
      t53 = t54->get( p0 = t56 ).
      t48 = t53.
    ENDIF.
    t12 = t48.
    t11 = t12.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = t11.
    t58 = t59.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    DATA t61 TYPE abap_bool.
    DATA(t62) = t11.
    t61 = xsdbool( t62 IS BOUND ).
    IF t61 = abap_true.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t11.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = t57.
        IF t69 IS INITIAL.
          t68 = abap_true.
        ENDIF.
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          t67 = t70.
        ELSE.
          DATA t71 TYPE string.
          DATA(t72) = t57.
          t71 = t72->as_string( ).
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t71.
          t67 = t73.
        ENDIF.
        t63 = t67.
      ENDIF.
      t60 = t63.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA(t75) = abap_true.
      IF t75 = abap_true.
        DATA(t76) = ||.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t76.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        t74 = t78.
      ENDIF.
      t60 = t74.
    ENDIF.
    t10 = t60.
    result = t10.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1361_27884b4b0657.
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

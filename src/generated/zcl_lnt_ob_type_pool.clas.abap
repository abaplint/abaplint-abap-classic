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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |TYPE|.

  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    t1 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    t15 = t1.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    result = t12.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 5 ) i_allow_namespace = abap_false i_custom_regex = t6 ).
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

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
    ELSE.
      t4 = t1.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = t4.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS BOUND.
      t23 = t19.
    ENDIF.
    IF t23 IS NOT BOUND.
      t22 = abap_true.
    ELSE.
      t22 = xsdbool( t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t22 = abap_true.
    ELSE.
      t21 = t19->get( p0 = |abapGit| ).
    ENDIF.
    t17 = t21.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS BOUND.
      t32 = t17.
    ENDIF.
    IF t32 IS NOT BOUND.
      t31 = abap_true.
    ELSE.
      t31 = xsdbool( t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t31 = abap_true.
    ELSE.
      t30 = t17->get( p0 = |asx:abap| ).
    ENDIF.
    t15 = t30.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      t41 = t15.
    ENDIF.
    IF t41 IS NOT BOUND.
      t40 = abap_true.
    ELSE.
      t40 = xsdbool( t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t40 = abap_true.
    ELSE.
      t39 = t15->get( p0 = |asx:values| ).
    ENDIF.
    t13 = t39.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS BOUND.
      t50 = t13.
    ENDIF.
    IF t50 IS NOT BOUND.
      t49 = abap_true.
    ELSE.
      t49 = xsdbool( t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t49 = abap_true.
    ELSE.
      t48 = t13->get( p0 = |DDTEXT| ).
    ENDIF.
    t11 = t48.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t57 = t11.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t11 IS BOUND ) = abap_true.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t11 IS INITIAL ) = abap_true.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t57 IS INITIAL ) = abap_true.
        ELSE.
          DATA t71 TYPE string.
          t71 = t57->as_string( ).
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t71.
          t67 = t73.
        ENDIF.
        t63 = t67.
      ENDIF.
      t60 = t63.
    ELSE.
      DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t77->has = abap_true.
      t77->value = ||.
      t60 = t77.
    ENDIF.
    result = t60.

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

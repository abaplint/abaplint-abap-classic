* TS: src/objects/_unknown_object.ts:6:1 UnknownObject
CLASS zcl_lnt_unknown_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE string.
    METHODS constructor IMPORTING i_name TYPE string i_type_9913 TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_parsing_issues REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unknown_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_name.
    super->constructor( i_name = t3 ).
    me->type_cba0 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = CONV string( me->type_cba0 ).
    result = t1.

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

  METHOD get_description.
    CLEAR result.

  ENDMETHOD.

  METHOD get_parsing_issues.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t5) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t5->has = abap_true.
    t5->value = CONV f( 1 ).
    t2 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t5 ).
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_object.
    t9 = me.
    t8 = t9->files.
    DATA t13 TYPE REF TO object.
    t8->load( ).
    READ TABLE t8->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t7 ?= t15.
    ELSE.
      t7 ?= t13.
    ENDIF.
    DATA(t17) = |Unknown object type, currently not supported in abaplint, op|.
    t17 = t17 && |en issue on github|.
    DATA t19 TYPE REF TO zcl_lnt_issue.
    DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t27->has = abap_true.
    t27->value = |Error|.
    DATA t29 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t19 = zcl_lnt_issue=>at_position( i_file = t7 i_start = t2 i_message_26cb = t17 i_key = |parser_error| i_severity = t27 i_fix = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t31->load( ).
    APPEND t19 TO t31->items.
    t31->save( ).
    result = t31.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1187_382e47463b0b.
  ENDMETHOD.
ENDCLASS.

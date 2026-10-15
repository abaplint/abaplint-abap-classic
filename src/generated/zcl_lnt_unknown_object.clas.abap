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
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = t1.
    super->constructor( i_name = t3 ).
    DATA(t4) = t2.
    me->type_cba0 = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `type`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = CONV string( me->type_cba0 ).
    result = t1.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 100 ).
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

  METHOD get_parsing_issues.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = CONV f( 1 ).
    DATA(t4) = CONV f( 1 ).
    DATA(t5) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t5->has = abap_true.
    t5->value = t4.
    t2 = NEW zcl_lnt_position( i_row = t3 i_col = t5 ).
    t1 = t2.
    DATA t6 TYPE REF TO zif_lnt_file.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_file.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t10) = me.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t9.
    t11 = t12->files.
    t8 = t11.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t8->load( ).
    CLEAR t13.
    READ TABLE t8->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t7.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t7 ?= t15.
    ELSE.
      t7 ?= t13.
    ENDIF.
    t6 = t7.
    DATA t16 TYPE string.
    DATA(t17) = |Unknown object type, currently not supported in abaplint, op|.
    t17 = t17 && |en issue on github|.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_issue.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_issue.
    CLEAR t19.
    DATA(t20) = t6.
    DATA(t21) = t1.
    DATA(t22) = t16.
    DATA(t23) = |parser_error|.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA(t26) = |Error|.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t26.
      t24 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t24 = t28.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t29.
    t19 = zcl_lnt_issue=>at_position( i_file = t20 i_start = t21 i_message_26cb = t22 i_key = t23 i_severity = t24 i_fix = t29 ).
    t18 = t19.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t31 = t32.
    DATA(t33) = t31.
    DATA(t34) = t18.
    t33->load( ).
    APPEND t34 TO t33->items.
    t33->save( ).
    DATA(t35) = t31.
    t30 = t35.
    result = t30.

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

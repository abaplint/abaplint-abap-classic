* TS: src/objects/behavior_definition.ts:8:1 BehaviorDefinition
CLASS zcl_lnt_behavior_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_data TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS find_source_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS list_entities RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_entity_name_by_alias IMPORTING i_alias TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS parse_source RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_behavior_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    result = |BDEF|.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 30 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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

  METHOD set_dirty.
    CLEAR me->parsed_data.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD find_source_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    t2 = t4->files.
    DATA t8 TYPE i.
    t2->load( ).
    t8 = lines( t2->items ).
    DATA t11 TYPE i.
    t11 = 0.
    DATA t13 TYPE REF TO zif_lnt_file.
    DO.
      IF xsdbool( t11 < t8 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_file.
      CLEAR t18.
      DATA t20 TYPE REF TO zif_lnt_file.
      CLEAR t20.
      DATA t23 TYPE REF TO object.
      t23 = t2->get( p0 = t11 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      t18 = t20.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      t27 = t18->get_filename( ).
      DATA(t29) = |.asbdef|.
      DATA(t30) = strlen( t27 ).
      DATA t31 TYPE i.
      DATA(t32) = VALUE i( ).
      DATA(t33) = VALUE string( ).
      t31 = strlen( t29 ).
      IF t31 = 0.
        t26 = abap_true.
      ELSEIF t31 <= t30.
        t32 = 0.
        t32 = t30 - t31.
        t33 = t27+t32(t31).
        IF t33 = t29.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      IF t26 = abap_true.
        t13 = t18.
        EXIT.
      ENDIF.
      DATA(t40) = 1.
      t11 = t11 + t40.
    ENDDO.
    result = t13.

  ENDMETHOD.

  METHOD list_entities.
    result = CAST zcl_lnt_prsd_bhvr_dfntn( me->parse_source( ) )->entities.

  ENDMETHOD.

  METHOD find_entity_name_by_alias.
    DATA(t1) = i_alias.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = CAST zcl_lnt_prsd_bhvr_dfntn( me->parse_source( ) )->entities.
    DATA t8 TYPE REF TO zcl_lnt_shape_9428b3e9.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t15 = t8->alias.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = VALUE abap_bool( ).
      IF t15 IS INITIAL.
        t19 = abap_true.
      ELSEIF t15->has = abap_false.
        t19 = abap_true.
      ENDIF.
      IF t19 = abap_true.
        CLEAR t18.
      ELSE.
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        t23 = t15->value.
        DATA(t25) = strlen( t23 ).
        t22 = t23.
        IF t22 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t22 TO UPPER CASE.
        ELSE.
          t22 = zlnt_runtime_uppe_91169605024d=>full( t22 ).
        ENDIF.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t22.
        t18 = t26.
      ENDIF.
      t14 = t18.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t2.
      t27 = t30.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      IF t14 IS BOUND.
        t32 = t14->has.
      ENDIF.
      IF t27 IS BOUND.
        t33 = t27->has.
      ENDIF.
      IF t32 = t33.
        IF t32 = abap_false.
          t13 = abap_true.
        ELSEIF t14->value = t27->value.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      IF t13 = abap_true.
        DATA t36 TYPE string.
        t36 = t8->name.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t36.
        result = t38.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD parse_source.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = xsdbool( me->parsed_data IS INITIAL ).
    IF xsdbool( t7 = abap_false ) = abap_true.
      result = me->parsed_data.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = NEW zcl_lnt_prsd_bhvr_dfntn( i_entities = t14 ).
    CREATE OBJECT t13->zlnt_view_ownkeys_b0e8086400eb.
    t13->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t13->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entities` p1 = t16 ).
    CREATE OBJECT t13->zlnt_json_ownkeys_70e5fd461788.
    t13->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t13->zlnt_json_ownkeys_70e5fd461788->put( p0 = |entities| p1 = t18 ).
    me->parsed_data = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zif_lnt_file.
    t22 = CAST zif_lnt_file( me->find_source_file( ) ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t22 IS INITIAL ) = abap_true.
    ELSE.
      DATA t28 TYPE string.
      t28 = t22->get_raw( ).
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t28.
      t24 = t31.
    ENDIF.
    t20 = t24.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t33 = t20.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = VALUE abap_bool( ).
    IF t33 IS INITIAL.
      t37 = abap_true.
    ELSEIF t33->has = abap_false.
      t37 = abap_true.
    ENDIF.
    IF t37 = abap_true.
      result = me->parsed_data.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    DATA t43 TYPE string.
    t43 = t20->value.
    DATA t45 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t45 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/\/.*$` flags = |gm| checked = abap_true.
    DATA(t49) = strlen( t43 ).
    t41 = t45->replace( p0 = t43 p1 = || ).
    DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t52) = `\bdefine\s+(?:\w+\s+)*?behavior\s+for\s+([\w/]+)(?:\s+alias\`.
    t52 = t52 && `s+(\w+))?`.
    CREATE OBJECT t50 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t52 flags = |gi| checked = abap_true.
    DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t54 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t50 p1 = t41 ).
    DO.
      IF xsdbool( xsdbool( t54 IS INITIAL ) = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t61 = me->parsed_data->entities.
      DATA t64 TYPE REF TO zcl_lnt_shape_9428b3e9.
      DATA t65 TYPE string.
      t65 = t54->get( p0 = 1 )->value.
      t64 = NEW zcl_lnt_shape_9428b3e9( i_name = t65 i_alias = t54->get( p0 = 2 ) ).
      CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
      t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t76 ).
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alias` p1 = t77 ).
      ENDIF.
      CREATE OBJECT t64->zlnt_json_ownkeys_70e5fd461788.
      t64->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t79 ).
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = |alias| p1 = t81 ).
      ENDIF.
      t61->load( ).
      APPEND t64 TO t61->items.
      t61->save( ).
      t54 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t50 p1 = t41 ).
    ENDDO.
    result = me->parsed_data.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1206_a681f7c1801f.
  ENDMETHOD.
ENDCLASS.

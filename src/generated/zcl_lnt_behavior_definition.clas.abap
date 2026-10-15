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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    CLEAR t3.
    me->parsed_data = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |BDEF|.
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

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    CLEAR t1.
    me->parsed_data = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD find_source_file.
    DATA t1 TYPE REF TO zif_lnt_file.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->files.
    t3 = t6.
    t2 = t3.
    DATA t8 TYPE i.
    DATA t9 TYPE i.
    DATA(t10) = t2.
    t10->load( ).
    t9 = lines( t10->items ).
    t8 = t9.
    DATA t11 TYPE i.
    DATA(t12) = 0.
    t11 = t12.
    DATA t13 TYPE REF TO zif_lnt_file.
    DATA t14 TYPE REF TO zif_lnt_file.
    CLEAR t14.
    t13 = t14.
    DO.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t11.
      DATA(t17) = t8.
      t15 = xsdbool( t16 < t17 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_file.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_file.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_file.
      CLEAR t20.
      DATA(t21) = t2.
      DATA(t22) = t11.
      DATA t23 TYPE REF TO object.
      t23 = t21->get( p0 = t22 ).
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
      t19 = t20.
      t18 = t19.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      DATA(t28) = t18.
      t27 = t28->get_filename( ).
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
        DATA t34 TYPE REF TO zif_lnt_file.
        CLEAR t34.
        DATA(t35) = abap_true.
        IF t35 = abap_true.
          DATA(t36) = t18.
          t34 = t36.
        ELSE.
          DATA t37 TYPE REF TO zif_lnt_file.
          CLEAR t37.
          t34 = t37.
        ENDIF.
        t13 = t34.
        EXIT.
      ENDIF.
      DATA t38 TYPE i.
      DATA(t39) = t11.
      DATA(t40) = 1.
      t38 = t39 + t40.
      t11 = t38.
    ENDDO.
    DATA(t41) = t13.
    t1 = t41.
    result = t1.

  ENDMETHOD.

  METHOD list_entities.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zcl_lnt_prsd_bhvr_dfntn( me->parse_source( ) ).
    t1 = t2->entities.
    result = t1.

  ENDMETHOD.

  METHOD find_entity_name_by_alias.
    DATA(t1) = i_alias.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_prsd_bhvr_dfntn( me->parse_source( ) ).
    t6 = t7->entities.
    DATA t8 TYPE REF TO zcl_lnt_shape_9428b3e9.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t17) = t8.
      t16 = t17->alias.
      t15 = t16.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ELSEIF t20->has = abap_false.
        t19 = abap_true.
      ENDIF.
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t18 = t21.
      ELSE.
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        DATA(t24) = t15.
        t23 = t24->value.
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
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = t2.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
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
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        DATA(t35) = abap_true.
        IF t35 = abap_true.
          DATA t36 TYPE string.
          DATA(t37) = t8.
          t36 = t37->name.
          DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t38->has = abap_true.
          t38->value = t36.
          t34 = t38.
        ELSE.
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t39.
          t34 = t39.
        ENDIF.
        result = t34.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    result = t40.

  ENDMETHOD.

  METHOD parse_source.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    DATA(t3) = me->parsed_data.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA t9 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
      DATA(t10) = me->parsed_data.
      t9 = t10.
      result = t9.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      t13 = NEW zcl_lnt_prsd_bhvr_dfntn( i_entities = t14 ).
      CREATE OBJECT t13->zlnt_view_ownkeys_b0e8086400eb.
      t13->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t13->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t13->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entities` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t13->zlnt_json_ownkeys_70e5fd461788.
      t13->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |entities|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t13->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t13->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      t11 = t13.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
      CLEAR t19.
      t11 = t19.
    ENDIF.
    me->parsed_data = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedData`.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_file.
    DATA(t23) = CAST zif_lnt_file( me->find_source_file( ) ).
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t22.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    IF t25 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t24 = t27.
    ELSE.
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zif_lnt_file.
      DATA(t30) = t22.
      t29 = t30.
      t28 = t29->get_raw( ).
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t28.
      t24 = t31.
    ENDIF.
    t21 = t24.
    t20 = t21.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = t20.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ELSEIF t38->has = abap_false.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
      DATA(t40) = me->parsed_data.
      t39 = t40.
      result = t39.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    DATA t42 TYPE string.
    DATA t43 TYPE string.
    DATA(t44) = t20.
    t43 = t44->value.
    DATA t45 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t45.
    DATA(t46) = `\/\/.*$`.
    DATA(t47) = |gm|.
    CREATE OBJECT t45 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t46 flags = t47 checked = abap_true.
    DATA(t48) = ||.
    DATA(t49) = strlen( t43 ).
    t42 = t45->replace( p0 = t43 p1 = t48 ).
    t41 = t42.
    DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t51 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t51.
    DATA(t52) = `\bdefine\s+(?:\w+\s+)*?behavior\s+for\s+([\w/]+)(?:\s+alias\`.
    t52 = t52 && `s+(\w+))?`.
    DATA(t53) = |gi|.
    CREATE OBJECT t51 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t52 flags = t53 checked = abap_true.
    t50 = t51.
    DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t56) = t50.
    DATA(t57) = t41.
    t55 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t56 p1 = t57 ).
    t54 = t55.
    DO.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = t54.
      IF t60 IS INITIAL.
        t59 = abap_true.
      ENDIF.
      t58 = xsdbool( t59 = abap_false ).
      IF t58 = abap_false.
        EXIT.
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t62 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
      DATA(t63) = me->parsed_data.
      t62 = t63.
      t61 = t62->entities.
      DATA t64 TYPE REF TO zcl_lnt_shape_9428b3e9.
      DATA t65 TYPE string.
      DATA t66 TYPE string.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t69) = t54.
      t68 = t69.
      DATA(t70) = 1.
      t67 = t68->get( p0 = t70 ).
      t66 = t67->value.
      t65 = t66.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t74) = t54.
      t73 = t74.
      DATA(t75) = 2.
      t72 = t73->get( p0 = t75 ).
      t71 = t72.
      t64 = NEW zcl_lnt_shape_9428b3e9( i_name = t65 i_alias = t71 ).
      CREATE OBJECT t64->zlnt_view_ownkeys_b0e8086400eb.
      t64->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t76 ).
      ENDIF.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      IF t64->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t64->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alias` p1 = t77 ).
      ENDIF.
      CREATE OBJECT t64->zlnt_json_ownkeys_70e5fd461788.
      t64->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t78) = |name|.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
      ENDIF.
      DATA(t80) = |alias|.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      IF t64->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t64->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
      ENDIF.
      t61->load( ).
      APPEND t64 TO t61->items.
      t61->save( ).
      DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t83) = t50.
      DATA(t84) = t41.
      t82 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t83 p1 = t84 ).
      t54 = t82.
    ENDDO.
    DATA t85 TYPE REF TO zcl_lnt_prsd_bhvr_dfntn.
    DATA(t86) = me->parsed_data.
    t85 = t86.
    result = t85.

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

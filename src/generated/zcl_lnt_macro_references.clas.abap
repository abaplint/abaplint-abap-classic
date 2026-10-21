* TS: src/macro_references.ts:5:1 MacroReferences
CLASS zcl_lnt_macro_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_macro_references.
    DATA definitions TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA references TYPE REF TO zlnt_runtime_map__68aa8717233d.
    METHODS constructor.
    METHODS add_definition IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position.
    METHODS get_definition_range IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_irange.
    METHODS add_reference IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token.
    METHODS list_definitions_by_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_usagesby_macro IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS clear_feba IMPORTING i_filename TYPE string.
    METHODS find_definition_by_usage IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_ifilename_and_token.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_references IMPLEMENTATION.
  METHOD constructor.
    me->definitions = NEW zlnt_runtime_map__a8db3647ad44( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitions`.
    me->references = NEW zlnt_runtime_map__68aa8717233d( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `references`.
  ENDMETHOD.

  METHOD add_definition.
    DATA(t1) = i_ref.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE string.
    t8 = t1->filename.
    t6 = me->definitions->get( p0 = t8 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
      DATA(t15) = me->definitions.
      DATA t16 TYPE string.
      t16 = t1->filename.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      t14 = t15->set( p0 = t16 p1 = t18 ).
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_shape_88c047d7.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE string.
      t25 = t1->filename.
      t21 = me->definitions->get( p0 = t25 ).
      DATA t27 TYPE i.
      t21->load( ).
      t27 = lines( t21->items ).
      DATA t30 TYPE i.
      t30 = 0.
      DATA t32 TYPE REF TO zcl_lnt_shape_88c047d7.
      DO.
        IF xsdbool( t30 < t27 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t37.
        DATA t39 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t39.
        DATA t42 TYPE REF TO object.
        t42 = t21->get( p0 = t30 ).
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        CLEAR t39.
        IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t43 ?= t42.
          DATA t44 TYPE REF TO object.
          t44 = t43->as_ref( ).
          t39 ?= t44.
        ELSE.
          t39 ?= t42.
        ENDIF.
        t37 = t39.
        DATA t46 TYPE REF TO zcl_lnt_position.
        t46 = t37->token->start.
        DATA t56 TYPE REF TO zcl_lnt_position.
        t56 = t1->token->start.
        IF t46->equals( i_p = t56 ) = abap_true.
          t32 = t37.
          EXIT.
        ENDIF.
        DATA(t64) = 1.
        t30 = t30 + t64.
      ENDDO.
      t20 = t32.
      IF xsdbool( t20 IS BOUND ) = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE string.
    t69 = t1->filename.
    t66 = me->definitions->get( p0 = t69 ).
    DATA t71 TYPE REF TO zcl_lnt_shape_88c047d7.
    DATA t72 TYPE REF TO zcl_lnt_abstract_token.
    t72 = t1->token.
    t71 = NEW zcl_lnt_shape_88c047d7( i_token = t72 i_start = t2 i_end = t3 ).
    CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
    t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t88 ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t90 ).
    ENDIF.
    CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
    t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t92 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t94 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t96 ).
    ENDIF.
    t66->load( ).
    APPEND t71 TO t66->items.
    t66->save( ).
  ENDMETHOD.

  METHOD get_definition_range.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = i_filename.
    t4 = me->definitions->get( p0 = t7 ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t8 = t4.
    ELSE.
      CREATE OBJECT t8.
    ENDIF.
    t3 = t8.
    DATA t14 TYPE REF TO zcl_lnt_shape_88c047d7.
    DATA t15 TYPE REF TO object.
    DATA(t16) = VALUE i( ).
    DO.
      t3->load( ).
      IF t16 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t3->items INDEX t16 + 1 INTO t15.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t14.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t15.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t14 ?= t18.
      ELSE.
        t14 ?= t15.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_position.
      t20 = t14->token->start.
      DATA t26 TYPE REF TO zcl_lnt_position.
      t26 = t2->start.
      IF t20->equals( i_p = t26 ) = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_irange.
        DATA t34 TYPE REF TO zcl_lnt_position.
        t34 = t14->start.
        DATA t38 TYPE REF TO zcl_lnt_position.
        t38 = t14->end.
        t33 = NEW zcl_lnt_irange( i_start = t34 i_end = t38 ).
        CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
        t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t40 ).
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t41 ).
        ENDIF.
        CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
        t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t43 ).
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t45 ).
        ENDIF.
        result = t33.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_ref.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE string.
    t6 = t1->filename.
    t4 = me->references->get( p0 = t6 ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t13) = me->references.
      DATA t14 TYPE string.
      t14 = t1->filename.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t12 = t13->set( p0 = t14 p1 = t16 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE string.
    t20 = t1->filename.
    t17 = me->references->get( p0 = t20 ).
    t17->load( ).
    APPEND t1 TO t17->items.
    t17->save( ).
  ENDMETHOD.

  METHOD list_definitions_by_file.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = me->definitions->get( p0 = t1 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t9 = t5.
    ELSE.
      CREATE OBJECT t9.
    ENDIF.
    t4 = t9.
    DATA t15 TYPE REF TO zcl_lnt_shape_88c047d7.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t4->load( ).
      IF t17 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t4->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      t21 = t15->token.
      t2->load( ).
      APPEND t21 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD list_usagesby_macro.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    t7 = t2->str.
    DATA(t12) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    t5 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = me->references->get( p0 = t1 ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t14 IS BOUND ) = abap_true.
      t18 = t14.
    ELSE.
      CREATE OBJECT t18.
    ENDIF.
    t13 = t18.
    DATA t24 TYPE REF TO zcl_lnt_ifilename_and_token.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t13->load( ).
      IF t26 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t13->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      t31 = t24->token->str.
      DATA(t37) = strlen( t31 ).
      t30 = t31.
      IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t30 TO UPPER CASE.
      ELSE.
        t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
      ENDIF.
      IF xsdbool( t30 = t5 ) = abap_true.
        t3->load( ).
        APPEND t24 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD clear_feba.
    DATA(t1) = i_filename.
    DATA t2 TYPE abap_bool.
    DATA(t3) = me->definitions.
    DELETE t3->entries WHERE k = t1.
    t2 = abap_true.
    DATA t5 TYPE abap_bool.
    DATA(t6) = me->references.
    DELETE t6->entries WHERE k = t1.
    t5 = abap_true.
  ENDMETHOD.

  METHOD find_definition_by_usage.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    t5 = t2->str.
    DATA(t10) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = me->references->get( p0 = t1 ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t12 IS BOUND ) = abap_true.
      t16 = t12.
    ELSE.
      CREATE OBJECT t16.
    ENDIF.
    t11 = t16.
    DATA t22 TYPE REF TO zcl_lnt_ifilename_and_token.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t11->load( ).
      IF t24 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t11->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t28 TYPE REF TO zcl_lnt_position.
      t28 = t22->token->start.
      DATA t34 TYPE REF TO zcl_lnt_position.
      t34 = t2->start.
      IF t28->equals( i_p = t34 ) = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE string.
        t43 = t22->filename.
        t40 = me->definitions->get( p0 = t43 ).
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        IF xsdbool( t40 IS BOUND ) = abap_true.
          t45 = t40.
        ELSE.
          CREATE OBJECT t45.
        ENDIF.
        t39 = t45.
        DATA t51 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t51.
        DATA t52 TYPE REF TO object.
        CLEAR t52.
        DATA(t53) = VALUE i( ).
        DO.
          t39->load( ).
          IF t53 >= lines( t39->items ).
            EXIT.
          ENDIF.
          CLEAR t52.
          READ TABLE t39->items INDEX t53 + 1 INTO t52.
          t53 = t53 + 1.
          DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t54.
          CLEAR t51.
          IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t54 ?= t52.
            DATA t55 TYPE REF TO object.
            t55 = t54->as_ref( ).
            t51 ?= t55.
          ELSE.
            t51 ?= t52.
          ENDIF.
          DATA t57 TYPE string.
          DATA t58 TYPE string.
          t58 = t51->token->str.
          DATA(t64) = strlen( t58 ).
          t57 = t58.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          IF xsdbool( t57 = t3 ) = abap_true.
            DATA t68 TYPE REF TO zcl_lnt_ifilename_and_token.
            DATA t69 TYPE string.
            t69 = t22->filename.
            DATA t73 TYPE REF TO zcl_lnt_abstract_token.
            t73 = t51->token.
            t68 = NEW zcl_lnt_ifilename_and_token( i_filename = t69 i_token = t73 ).
            CREATE OBJECT t68->zlnt_view_ownkeys_b0e8086400eb.
            t68->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t75.
            t68->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t75 ).
            DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t76.
            IF t68->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t68->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t76 ).
            ENDIF.
            CREATE OBJECT t68->zlnt_json_ownkeys_70e5fd461788.
            t68->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t78.
            t68->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t78 ).
            DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t80.
            IF t68->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t68->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t80 ).
            ENDIF.
            result = t68.
            RETURN.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1180_337b232411b4.
  ENDMETHOD.

  METHOD zif_lnt_macro_references~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~add_definition.
    me->add_definition( i_ref = i_ref i_start = i_start i_end = i_end ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~add_reference.
    me->add_reference( i_ref = i_ref ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~list_definitions_by_file.
    result = me->list_definitions_by_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~list_usagesby_macro.
    result = me->list_usagesby_macro( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~get_definition_range.
    result = me->get_definition_range( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~find_definition_by_usage.
    result = me->find_definition_by_usage( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~clear_feba.
    me->clear_feba( i_filename = i_filename ).
  ENDMETHOD.
ENDCLASS.

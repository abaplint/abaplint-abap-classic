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
    DATA t1 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA t2 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA(t3) = NEW zlnt_runtime_map__a8db3647ad44( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->definitions = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitions`.
    DATA t5 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t6 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t7) = NEW zlnt_runtime_map__68aa8717233d( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->references = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `references`.
  ENDMETHOD.

  METHOD add_definition.
    DATA(t1) = i_ref.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = me->definitions.
    DATA t8 TYPE string.
    DATA(t9) = t1.
    t8 = t9->filename.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t5.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t4 = t12.
    IF t4 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
      DATA(t15) = me->definitions.
      DATA t16 TYPE string.
      DATA(t17) = t1.
      t16 = t17->filename.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      t14 = t15->set( p0 = t16 p1 = t18 ).
    ELSE.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_shape_88c047d7.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = me->definitions.
      DATA t25 TYPE string.
      DATA(t26) = t1.
      t25 = t26->filename.
      t23 = t24->get( p0 = t25 ).
      t22 = t23.
      t21 = t22.
      DATA t27 TYPE i.
      DATA t28 TYPE i.
      DATA(t29) = t21.
      t29->load( ).
      t28 = lines( t29->items ).
      t27 = t28.
      DATA t30 TYPE i.
      DATA(t31) = 0.
      t30 = t31.
      DATA t32 TYPE REF TO zcl_lnt_shape_88c047d7.
      DATA t33 TYPE REF TO zcl_lnt_shape_88c047d7.
      CLEAR t33.
      t32 = t33.
      DO.
        DATA t34 TYPE abap_bool.
        DATA(t35) = t30.
        DATA(t36) = t27.
        t34 = xsdbool( t35 < t36 ).
        IF t34 = abap_false.
          EXIT.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_shape_88c047d7.
        CLEAR t39.
        DATA(t40) = t21.
        DATA(t41) = t30.
        DATA t42 TYPE REF TO object.
        t42 = t40->get( p0 = t41 ).
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
        t38 = t39.
        t37 = t38.
        DATA t45 TYPE abap_bool.
        DATA t46 TYPE REF TO zcl_lnt_position.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t49) = t37.
        t48 = t49->token.
        t47 = t48.
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA(t51) = t47.
        t50 = t51->start.
        t46 = t50.
        DATA t52 TYPE REF TO zcl_lnt_position.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t55) = t1.
        t54 = t55->token.
        t53 = t54.
        DATA t56 TYPE REF TO zcl_lnt_position.
        DATA(t57) = t53.
        t56 = t57->start.
        t52 = t56.
        t45 = t46->equals( i_p = t52 ).
        IF t45 = abap_true.
          DATA t58 TYPE REF TO zcl_lnt_shape_88c047d7.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA(t60) = t37.
            t58 = t60.
          ELSE.
            DATA t61 TYPE REF TO zcl_lnt_shape_88c047d7.
            CLEAR t61.
            t58 = t61.
          ENDIF.
          t32 = t58.
          EXIT.
        ENDIF.
        DATA t62 TYPE i.
        DATA(t63) = t30.
        DATA(t64) = 1.
        t62 = t63 + t64.
        t30 = t62.
      ENDDO.
      DATA(t65) = t32.
      t20 = t65.
      t19 = xsdbool( t20 IS BOUND ).
      IF t19 = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t68) = me->definitions.
    DATA t69 TYPE string.
    DATA(t70) = t1.
    t69 = t70->filename.
    t67 = t68->get( p0 = t69 ).
    t66 = t67.
    DATA t71 TYPE REF TO zcl_lnt_shape_88c047d7.
    CLEAR t71.
    DATA t72 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t72.
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t73.
    DATA(t74) = abap_true.
    IF t74 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = t1.
      t75 = t76->token.
      t73 = t75.
    ELSE.
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t77.
      t73 = t77.
    ENDIF.
    t72 = t73.
    DATA t78 TYPE REF TO zcl_lnt_position.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_position.
    CLEAR t79.
    DATA(t80) = abap_true.
    IF t80 = abap_true.
      DATA(t81) = t2.
      t79 = t81.
    ELSE.
      DATA t82 TYPE REF TO zcl_lnt_position.
      CLEAR t82.
      t79 = t82.
    ENDIF.
    t78 = t79.
    DATA t83 TYPE REF TO zcl_lnt_position.
    CLEAR t83.
    DATA t84 TYPE REF TO zcl_lnt_position.
    CLEAR t84.
    DATA(t85) = abap_true.
    IF t85 = abap_true.
      DATA(t86) = t3.
      t84 = t86.
    ELSE.
      DATA t87 TYPE REF TO zcl_lnt_position.
      CLEAR t87.
      t84 = t87.
    ENDIF.
    t83 = t84.
    t71 = NEW zcl_lnt_shape_88c047d7( i_token = t72 i_start = t78 i_end = t83 ).
    CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
    t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t90 ).
    ENDIF.
    CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
    t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t91) = |token|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    DATA(t93) = |start|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    ENDIF.
    DATA(t95) = |end|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    t66->load( ).
    APPEND t71 TO t66->items.
    t66->save( ).
  ENDMETHOD.

  METHOD get_definition_range.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = me->definitions.
    DATA(t7) = t1.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t4.
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = t4.
      t11 = t12.
      t8 = t11.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t8 = t13.
    ENDIF.
    t3 = t8.
    DATA t14 TYPE REF TO zcl_lnt_shape_88c047d7.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
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
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t23) = t14.
      t22 = t23->token.
      t21 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA(t25) = t21.
      t24 = t25->start.
      t20 = t24.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = t2.
      t27 = t28.
      DATA t29 TYPE REF TO zcl_lnt_position.
      DATA(t30) = t27.
      t29 = t30->start.
      t26 = t29.
      t19 = t20->equals( i_p = t26 ).
      IF t19 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_irange.
        CLEAR t31.
        DATA(t32) = abap_true.
        IF t32 = abap_true.
          DATA t33 TYPE REF TO zcl_lnt_irange.
          DATA t34 TYPE REF TO zcl_lnt_position.
          DATA t35 TYPE REF TO zcl_lnt_position.
          DATA(t36) = t14.
          t35 = t36->start.
          t34 = t35.
          DATA t37 TYPE REF TO zcl_lnt_position.
          DATA t38 TYPE REF TO zcl_lnt_position.
          DATA(t39) = t14.
          t38 = t39->end.
          t37 = t38.
          t33 = NEW zcl_lnt_irange( i_start = t34 i_end = t37 ).
          CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
          t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t40 ).
          ENDIF.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t41 ).
          ENDIF.
          CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
          t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t42) = |start|.
          DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t43.
          IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
          ENDIF.
          DATA(t44) = |end|.
          DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t45.
          IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
          ENDIF.
          t31 = t33.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_irange.
          CLEAR t46.
          t31 = t46.
        ENDIF.
        result = t31.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t47 TYPE REF TO zcl_lnt_irange.
    CLEAR t47.
    result = t47.

  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_ref.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = me->references.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->filename.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t3.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t2 = t10.
    IF t2 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_map__68aa8717233d.
      DATA(t13) = me->references.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      t14 = t15->filename.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t12 = t13->set( p0 = t14 p1 = t16 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = me->references.
    DATA t20 TYPE string.
    DATA(t21) = t1.
    t20 = t21->filename.
    t18 = t19->get( p0 = t20 ).
    t17 = t18.
    DATA(t22) = t1.
    t17->load( ).
    APPEND t22 TO t17->items.
    t17->save( ).
  ENDMETHOD.

  METHOD list_definitions_by_file.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = me->definitions.
    DATA(t8) = t1.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t5.
    t10 = xsdbool( t11 IS BOUND ).
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t13) = t5.
      t12 = t13.
      t9 = t12.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      t9 = t14.
    ENDIF.
    t4 = t9.
    DATA t15 TYPE REF TO zcl_lnt_shape_88c047d7.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
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
      DATA(t20) = t2.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t22) = t15.
      t21 = t22->token.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
    ENDDO.
    DATA(t23) = t2.
    result = t23.

  ENDMETHOD.

  METHOD list_usagesby_macro.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE string( ).
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = t8.
    t10 = t11->str.
    t7 = t10.
    DATA(t12) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    t5 = t6.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = me->references.
    DATA(t17) = t1.
    t15 = t16->get( p0 = t17 ).
    t14 = t15.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t14.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = t14.
      t21 = t22.
      t18 = t21.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      t18 = t23.
    ENDIF.
    t13 = t18.
    DATA t24 TYPE REF TO zcl_lnt_ifilename_and_token.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
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
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t24.
      t33 = t34->token.
      t32 = t33.
      DATA t35 TYPE string.
      DATA(t36) = t32.
      t35 = t36->str.
      t31 = t35.
      DATA(t37) = strlen( t31 ).
      t30 = t31.
      IF t30 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t30 TO UPPER CASE.
      ELSE.
        t30 = zlnt_runtime_uppe_91169605024d=>full( t30 ).
      ENDIF.
      DATA(t38) = t5.
      t29 = xsdbool( t30 = t38 ).
      IF t29 = abap_true.
        DATA(t39) = t3.
        DATA(t40) = t24.
        t39->load( ).
        APPEND t40 TO t39->items.
        t39->save( ).
      ENDIF.
    ENDDO.
    DATA(t41) = t3.
    result = t41.

  ENDMETHOD.

  METHOD clear_feba.
    DATA(t1) = i_filename.
    DATA t2 TYPE abap_bool.
    DATA(t3) = me->definitions.
    DATA(t4) = t1.
    DELETE t3->entries WHERE k = t4.
    t2 = abap_true.
    DATA t5 TYPE abap_bool.
    DATA(t6) = me->references.
    DATA(t7) = t1.
    DELETE t6->entries WHERE k = t7.
    t5 = abap_true.
  ENDMETHOD.

  METHOD find_definition_by_usage.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE string.
    DATA(t9) = t6.
    t8 = t9->str.
    t5 = t8.
    DATA(t10) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = me->references.
    DATA(t15) = t1.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t12.
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t12.
      t19 = t20.
      t16 = t19.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      t16 = t21.
    ENDIF.
    t11 = t16.
    DATA t22 TYPE REF TO zcl_lnt_ifilename_and_token.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE REF TO zcl_lnt_position.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t31) = t22.
      t30 = t31->token.
      t29 = t30.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA(t33) = t29.
      t32 = t33->start.
      t28 = t32.
      DATA t34 TYPE REF TO zcl_lnt_position.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t36) = t2.
      t35 = t36.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA(t38) = t35.
      t37 = t38->start.
      t34 = t37.
      t27 = t28->equals( i_p = t34 ).
      IF t27 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t42) = me->definitions.
        DATA t43 TYPE string.
        DATA(t44) = t22.
        t43 = t44->filename.
        t41 = t42->get( p0 = t43 ).
        t40 = t41.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        DATA t46 TYPE abap_bool.
        DATA(t47) = t40.
        t46 = xsdbool( t47 IS BOUND ).
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t49) = t40.
          t48 = t49.
          t45 = t48.
        ELSE.
          DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t50.
          t45 = t50.
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
          DATA(t56) = VALUE abap_bool( ).
          DATA t57 TYPE string.
          DATA t58 TYPE string.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t61) = t51.
          t60 = t61->token.
          t59 = t60.
          DATA t62 TYPE string.
          DATA(t63) = t59.
          t62 = t63->str.
          t58 = t62.
          DATA(t64) = strlen( t58 ).
          t57 = t58.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          DATA(t65) = t3.
          t56 = xsdbool( t57 = t65 ).
          IF t56 = abap_true.
            DATA t66 TYPE REF TO zcl_lnt_ifilename_and_token.
            CLEAR t66.
            DATA(t67) = abap_true.
            IF t67 = abap_true.
              DATA t68 TYPE REF TO zcl_lnt_ifilename_and_token.
              DATA t69 TYPE string.
              DATA t70 TYPE string.
              DATA(t71) = t22.
              t70 = t71->filename.
              t69 = t70.
              DATA t72 TYPE REF TO zcl_lnt_abstract_token.
              DATA t73 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t74) = t51.
              t73 = t74->token.
              t72 = t73.
              t68 = NEW zcl_lnt_ifilename_and_token( i_filename = t69 i_token = t72 ).
              CREATE OBJECT t68->zlnt_view_ownkeys_b0e8086400eb.
              t68->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t75.
              IF t68->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t68->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t75 ).
              ENDIF.
              DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t76.
              IF t68->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t68->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t76 ).
              ENDIF.
              CREATE OBJECT t68->zlnt_json_ownkeys_70e5fd461788.
              t68->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t77) = |filename|.
              DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t78.
              IF t68->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t68->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
              ENDIF.
              DATA(t79) = |token|.
              DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t80.
              IF t68->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t68->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
              ENDIF.
              t66 = t68.
            ELSE.
              DATA t81 TYPE REF TO zcl_lnt_ifilename_and_token.
              CLEAR t81.
              t66 = t81.
            ENDIF.
            result = t66.
            RETURN.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t82 TYPE REF TO zcl_lnt_ifilename_and_token.
    CLEAR t82.
    result = t82.

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

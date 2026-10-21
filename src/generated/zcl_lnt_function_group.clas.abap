* TS: src/objects/function_group.ts:8:1 FunctionGroup
CLASS zcl_lnt_function_group DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_d439e5f2.
    INTERFACES zif_lnt_union_35a9fad2.
    DATA includes TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA modules TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dynpros TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_dynpros RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_modules RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_include_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_include IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_main_abap_file REDEFINITION.
    METHODS get_includes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_module IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    METHODS get_text_symbols REDEFINITION.
    METHODS parse_xml.
    METHODS find_text_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_function_group IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->includes.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    CLEAR me->modules.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    CLEAR me->description.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    CLEAR me->dynpros.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
  ENDMETHOD.

  METHOD get_type.
    result = |FUGR|.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t2 = me->description.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = VALUE abap_bool( ).
    IF t2 IS INITIAL.
      t6 = abap_true.
    ELSEIF t2->has = abap_false.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      me->parse_xml( ).
    ENDIF.
    result = me->description.

  ENDMETHOD.

  METHOD set_dirty.
    super->set_dirty( ).
    CLEAR me->includes.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    CLEAR me->modules.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    CLEAR me->description.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    CLEAR me->dynpros.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 26 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
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

  METHOD get_dynpros.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->dynpros IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = me->dynpros.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t9 IS BOUND ) = abap_true.
      t11 = t9.
    ELSE.
      CREATE OBJECT t11.
    ENDIF.
    result = t11.

  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    t1 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    t16 = t1.
    t13->load( ).
    APPEND t16 TO t13->items.
    t13->save( ).
    t11 = t13.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_modules( ) ).
    DATA t20 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t19->load( ).
      IF t22 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t19->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE string.
      DATA t27 TYPE string.
      DATA(t28) = |.|.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      t31 = t20->name.
      DATA(t36) = strlen( t31 ).
      t30 = t31.
      TRANSLATE t30 TO LOWER CASE.
      DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t37 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
      DATA(t41) = strlen( t30 ).
      t29 = t37->replace( p0 = t30 p1 = |#| ).
      DATA(t42) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      DATA(t44) = strlen( t27 ).
      t25 = |{ t27 }{ |.abap| }|.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zcl_lnt_abap_object.
      t46 = me.
      t45 = t46->parsed.
      DATA t50 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      DATA(t52) = VALUE i( ).
      DO.
        t45->load( ).
        IF t52 >= lines( t45->items ).
          EXIT.
        ENDIF.
        CLEAR t51.
        READ TABLE t45->items INDEX t52 + 1 INTO t51.
        t52 = t52 + 1.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        CLEAR t50.
        IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t53 ?= t51.
          DATA t54 TYPE REF TO object.
          t54 = t53->as_ref( ).
          t50 ?= t54.
        ELSE.
          t50 ?= t51.
        ENDIF.
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE string.
        DATA t57 TYPE string.
        DATA t58 TYPE REF TO zcl_lnt_abstract_file.
        t58 = t50.
        t57 = t58->filename.
        DATA(t62) = strlen( t57 ).
        t56 = t57.
        TRANSLATE t56 TO LOWER CASE.
        DATA(t64) = strlen( t56 ).
        DATA t65 TYPE i.
        DATA(t66) = VALUE i( ).
        DATA(t67) = VALUE string( ).
        t65 = strlen( t25 ).
        IF t65 = 0.
          t55 = abap_true.
        ELSEIF t65 <= t64.
          t66 = 0.
          t66 = t64 - t65.
          t67 = t56+t66(t65).
          IF t67 = t25.
            t55 = abap_true.
          ENDIF.
        ENDIF.
        IF t55 = abap_true.
          IF xsdbool( t11->indexof( p0 = t50 ) < 0 ) = abap_true.
            t11->load( ).
            APPEND t50 TO t11->items.
            t11->save( ).
          ENDIF.
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t11.

  ENDMETHOD.

  METHOD get_modules.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->modules IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->modules IS INITIAL ) = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = |getIncludes, undefined|.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t16.
      TRY.
          t15->source_value ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15->source_value IS NOT BOUND.
        TRY.
            t22 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t15->source_value = t22->source( ).
        ENDIF.
        IF t15->source_value IS NOT BOUND.
          CREATE OBJECT t15->source_value.
          t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->source_value->oval = t16.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    result = me->modules.

  ENDMETHOD.

  METHOD get_include_files.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t3 = CAST zlnt_runtime_arra_8ecd6afe19e0( me->get_includes( ) ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_object.
    t6 = me.
    t5 = t6->parsed.
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t16) = VALUE string( ).
      t3->dense( ).
      DATA(t17) = VALUE i( ).
      DO.
        t3->load( ).
        IF t17 >= lines( t3->items ).
          EXIT.
        ENDIF.
        CLEAR t16.
        READ TABLE t3->items INDEX t17 + 1 INTO t16.
        IF t3->has( t17 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t17 = t17 + 1.
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t22) = |/|.
        DATA(t23) = strlen( t16 ).
        DATA t24 TYPE i.
        DATA(t25) = VALUE i( ).
        DATA(t26) = VALUE string( ).
        t24 = strlen( t22 ).
        IF t24 = 0.
          t20 = abap_true.
        ELSEIF t24 <= t23.
          t25 = 0.
          t26 = t16+t25(t24).
          IF t26 = t22.
            t20 = abap_true.
          ENDIF.
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t28) = VALUE i( ).
          DATA(t30) = |/L|.
          DATA(t31) = strlen( t16 ).
          IF t30 IS INITIAL.
            t28 = 0.
          ELSE.
            FIND t30 IN t16 MATCH OFFSET t28.
            IF sy-subrc <> 0.
              t28 = -1.
            ENDIF.
          ENDIF.
          t19 = xsdbool( t28 >= 0 ).
        ENDIF.
        t18 = t19.
        DATA t33 TYPE string.
        t33 = t16.
        IF t18 = abap_true.
          DATA(t37) = t33.
          DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t38 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
          DATA(t42) = strlen( t37 ).
          t33 = t38->replace( p0 = t37 p1 = |#| ).
        ENDIF.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t47) = |L|.
        DATA(t48) = strlen( t16 ).
        DATA t49 TYPE i.
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE string( ).
        t49 = strlen( t47 ).
        IF t49 = 0.
          t45 = abap_true.
        ELSEIF t49 <= t48.
          t50 = 0.
          t51 = t16+t50(t49).
          IF t51 = t47.
            t45 = abap_true.
          ENDIF.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          t44 = t18.
        ENDIF.
        t43 = t44.
        IF t44 = abap_true.
          DATA(t54) = VALUE i( ).
          DATA t55 TYPE string.
          DATA t56 TYPE REF TO zcl_lnt_abstract_file.
          t56 = t10.
          t55 = t56->filename.
          DATA t60 TYPE string.
          DATA t61 TYPE string.
          DATA(t62) = t33.
          DATA(t63) = strlen( t62 ).
          t61 = t62.
          TRANSLATE t61 TO LOWER CASE.
          DATA(t65) = strlen( t61 ).
          t60 = |{ t61 }{ |.| }|.
          DATA(t66) = strlen( t55 ).
          IF t60 IS INITIAL.
            t54 = 0.
          ELSE.
            FIND t60 IN t55 MATCH OFFSET t54.
            IF sy-subrc <> 0.
              t54 = -1.
            ENDIF.
          ENDIF.
          t43 = xsdbool( t54 >= 0 ).
        ENDIF.
        IF t43 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_shape_124357cf.
          t69 = NEW zcl_lnt_shape_124357cf( i_file = t10 i_name = t16 ).
          CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
          t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t77 ).
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t78 ).
          ENDIF.
          CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
          t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t80 ).
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t82 ).
          ENDIF.
          t1->load( ).
          APPEND t69 TO t1->items.
          t1->save( ).
          EXIT.
        ENDIF.
        IF t18 = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t86 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
          DATA(t90) = strlen( t16 ).
          t33 = t86->replace( p0 = t16 p1 = |%23| ).
          DATA(t92) = VALUE i( ).
          DATA t93 TYPE string.
          DATA t94 TYPE REF TO zcl_lnt_abstract_file.
          t94 = t10.
          t93 = t94->filename.
          DATA t98 TYPE string.
          DATA t99 TYPE string.
          DATA(t101) = strlen( t33 ).
          t99 = t33.
          TRANSLATE t99 TO LOWER CASE.
          DATA(t103) = strlen( t99 ).
          t98 = |{ t99 }{ |.| }|.
          DATA(t104) = strlen( t93 ).
          IF t98 IS INITIAL.
            t92 = 0.
          ELSE.
            FIND t98 IN t93 MATCH OFFSET t92.
            IF sy-subrc <> 0.
              t92 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t92 >= 0 ) = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_shape_124357cf.
            t107 = NEW zcl_lnt_shape_124357cf( i_file = t10 i_name = t16 ).
            CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
            t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t115 ).
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t116 ).
            ENDIF.
            CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
            t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t118 ).
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t120 ).
            ENDIF.
            t1->load( ).
            APPEND t107 TO t1->items.
            t1->save( ).
            EXIT.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_include.
    DATA(t1) = i_name.
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
    t6 = CAST zlnt_runtime_arra_c22708faf2e3( me->get_include_files( ) ).
    DATA t9 TYPE REF TO zcl_lnt_shape_124357cf.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t6->load( ).
      IF t11 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t6->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      t16 = t9->name.
      DATA(t18) = strlen( t16 ).
      t15 = t16.
      IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t15 TO UPPER CASE.
      ELSE.
        t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
      ENDIF.
      IF xsdbool( t15 = t2 ) = abap_true.
        result = t9->file.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_main_abap_file.
    DATA t1 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `\.fugr\.(#[A-Za-z0-9_]+#)?sapl` flags = |i|.
    t2->source = `\.fugr\.(#\w+#)?sapl`.
    t1 = t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    t7 = me.
    t6 = t7->parsed.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      t19 = t11.
      t18 = t19->filename.
      IF t1->test( p0 = t18 ) = abap_true.
        result = t11.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_includes.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->includes IS INITIAL ) = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->includes IS INITIAL ) = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = |getIncludes, undefined|.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t16.
      TRY.
          t15->source_value ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15->source_value IS NOT BOUND.
        TRY.
            t22 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t15->source_value = t22->source( ).
        ENDIF.
        IF t15->source_value IS NOT BOUND.
          CREATE OBJECT t15->source_value.
          t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->source_value->oval = t16.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    result = me->includes.

  ENDMETHOD.

  METHOD get_module.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_modules( ) ).
    DATA t3 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t9 TYPE string.
      DATA t10 TYPE string.
      t10 = t3->name.
      DATA(t15) = strlen( t10 ).
      t9 = t10.
      IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t9 TO UPPER CASE.
      ELSE.
        t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
      ENDIF.
      DATA t16 TYPE string.
      DATA(t18) = strlen( t1 ).
      t16 = t1.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      IF xsdbool( t9 = t16 ) = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_text_symbols.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->texts IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zif_lnt_file.
      t8 = CAST zif_lnt_file( me->find_text_file( ) ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t8 IS INITIAL ) = abap_true.
        result = NEW zlnt_runtime_map__5a3c0ec03a13( ).
        RETURN.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          me->find_texts( i_parsed = zlnt_runtime_xmlw_d7bcce7c35ad=>parse( t8->get_raw( ) ) ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t21.
          DATA(t28) = t21->payload.
          me->texts = NEW zlnt_runtime_map__f8cd1b113b3e( ).
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
      ENDTRY.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t37 = me->texts->get( p0 = |I| ).
    DATA t42 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    IF xsdbool( t37 IS INITIAL ) = abap_true.
      t42 = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    ELSE.
      t42 = t37.
    ENDIF.
    result = t42.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    me->includes = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    me->modules = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t12 = t9.
    ENDIF.
    t11 = t12.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33 = t11.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      t37 = t33.
    ENDIF.
    IF t37 IS NOT BOUND.
      t36 = abap_true.
    ELSE.
      t36 = xsdbool( t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t36 = abap_true.
    ELSE.
      t35 = t33->get( p0 = |abapGit| ).
    ENDIF.
    t31 = t35.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31 IS BOUND.
      t46 = t31.
    ENDIF.
    IF t46 IS NOT BOUND.
      t45 = abap_true.
    ELSE.
      t45 = xsdbool( t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t45 = abap_true.
    ELSE.
      t44 = t31->get( p0 = |asx:abap| ).
    ENDIF.
    t29 = t44.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      t55 = t29.
    ENDIF.
    IF t55 IS NOT BOUND.
      t54 = abap_true.
    ELSE.
      t54 = xsdbool( t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t54 = abap_true.
    ELSE.
      t53 = t29->get( p0 = |asx:values| ).
    ENDIF.
    t27 = t53.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t27 IS BOUND.
      t64 = t27.
    ENDIF.
    IF t64 IS NOT BOUND.
      t63 = abap_true.
    ELSE.
      t63 = xsdbool( t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t63 = abap_true.
    ELSE.
      t62 = t27->get( p0 = |AREAT| ).
    ENDIF.
    t25 = t62.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t75) = VALUE string( ).
      t75 = t25->as_string( ).
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t75.
      t71 = t78.
    ENDIF.
    me->description = t71.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11 IS BOUND.
      t82 = t11.
    ENDIF.
    me->dynpros = zcl_lnt_dynpros_module=>parse_dynpros( i_parsed = t82 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t93 = t11.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t93 IS BOUND.
      t97 = t93.
    ENDIF.
    IF t97 IS NOT BOUND.
      t96 = abap_true.
    ELSE.
      t96 = xsdbool( t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t96 = abap_true.
    ELSE.
      t95 = t93->get( p0 = |abapGit| ).
    ENDIF.
    t91 = t95.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = VALUE abap_bool( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91 IS BOUND.
      t106 = t91.
    ENDIF.
    IF t106 IS NOT BOUND.
      t105 = abap_true.
    ELSE.
      t105 = xsdbool( t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t105 = abap_true.
    ELSE.
      t104 = t91->get( p0 = |asx:abap| ).
    ENDIF.
    t89 = t104.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = VALUE abap_bool( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      t115 = t89.
    ENDIF.
    IF t115 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
    ELSE.
      t113 = t89->get( p0 = |asx:values| ).
    ENDIF.
    t87 = t113.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = VALUE abap_bool( ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t87 IS BOUND.
      t124 = t87.
    ENDIF.
    IF t124 IS NOT BOUND.
      t123 = abap_true.
    ELSE.
      t123 = xsdbool( t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t123 = abap_true.
    ELSE.
      t122 = t87->get( p0 = |INCLUDES| ).
    ENDIF.
    t85 = t122.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t85 IS INITIAL ) = abap_true.
    ELSE.
      t132 = t85.
    ENDIF.
    t131 = t132.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t131 IS INITIAL ) = abap_false ) = abap_true.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t146 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t131->get( p0 = |SOBJ_NAME| ) ).
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t152 TYPE REF TO object.
      DATA(t153) = VALUE i( ).
      DO.
        t146->load( ).
        IF t153 >= lines( t146->items ).
          EXIT.
        ENDIF.
        CLEAR t152.
        READ TABLE t146->items INDEX t153 + 1 INTO t152.
        t153 = t153 + 1.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        CLEAR t151.
        IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t154 ?= t152.
          t151 = t154.
        ELSE.
          IF t152 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t155 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t155.
            t155 ?= t152.
            CLEAR t151.
            IF t155 IS BOUND.
              CREATE OBJECT t151.
              t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t151->cval = t155.
            ENDIF.
          ELSE.
            CLEAR t151.
            IF t152 IS BOUND.
              DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t156.
              CLEAR t156.
              TRY.
                  t151 ?= t152.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t151 IS NOT BOUND.
                TRY.
                    t156 ?= t152.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t156 IS BOUND.
                  t151 = t156->source( ).
                ENDIF.
                IF t151 IS NOT BOUND.
                  CREATE OBJECT t151.
                  t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t151->oval = t152.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t159) = VALUE string( ).
        IF t151 IS BOUND.
          t159 = t151->type_of( ).
          IF t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t151->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t159 = `function`.
          ENDIF.
        ELSE.
          t159 = `undefined`.
        ENDIF.
        IF xsdbool( t159 = |string| ) = abap_true.
          DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t162 = me->includes.
          DATA(t164) = VALUE string( ).
          t164 = t151->as_string( ).
          t162->load( ).
          APPEND t164 TO t162->items.
          t162->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t174 = t11.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = VALUE abap_bool( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174 IS BOUND.
      t178 = t174.
    ENDIF.
    IF t178 IS NOT BOUND.
      t177 = abap_true.
    ELSE.
      t177 = xsdbool( t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t177 = abap_true.
    ELSE.
      t176 = t174->get( p0 = |abapGit| ).
    ENDIF.
    t172 = t176.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t186) = VALUE abap_bool( ).
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      t187 = t172.
    ENDIF.
    IF t187 IS NOT BOUND.
      t186 = abap_true.
    ELSE.
      t186 = xsdbool( t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t186 = abap_true.
    ELSE.
      t185 = t172->get( p0 = |asx:abap| ).
    ENDIF.
    t170 = t185.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = VALUE abap_bool( ).
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t170 IS BOUND.
      t196 = t170.
    ENDIF.
    IF t196 IS NOT BOUND.
      t195 = abap_true.
    ELSE.
      t195 = xsdbool( t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t195 = abap_true.
    ELSE.
      t194 = t170->get( p0 = |asx:values| ).
    ENDIF.
    t168 = t194.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = VALUE abap_bool( ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t168 IS BOUND.
      t205 = t168.
    ENDIF.
    IF t205 IS NOT BOUND.
      t204 = abap_true.
    ELSE.
      t204 = xsdbool( t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t204 = abap_true.
    ELSE.
      t203 = t168->get( p0 = |FUNCTIONS| ).
    ENDIF.
    t166 = t203.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t166 IS INITIAL ) = abap_true.
    ELSE.
      t213 = t166.
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t222 = t213.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = VALUE abap_bool( ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t222 IS BOUND.
      t226 = t222.
    ENDIF.
    IF t226 IS NOT BOUND.
      t225 = abap_true.
    ELSE.
      t225 = xsdbool( t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t225 = abap_true.
    ELSE.
      t224 = t222->get( p0 = |item| ).
    ENDIF.
    t221 = t224.
    IF t221 IS BOUND.
      t220 = t221.
    ENDIF.
    t219 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t220 ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t234 TYPE REF TO object.
    DATA(t235) = VALUE i( ).
    DO.
      t219->load( ).
      IF t235 >= lines( t219->items ).
        EXIT.
      ENDIF.
      CLEAR t234.
      READ TABLE t219->items INDEX t235 + 1 INTO t234.
      t235 = t235 + 1.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      CLEAR t233.
      IF t234 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t236 ?= t234.
        t233 = t236.
      ELSE.
        IF t234 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t237 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t237.
          t237 ?= t234.
          CLEAR t233.
          IF t237 IS BOUND.
            CREATE OBJECT t233.
            t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t233->cval = t237.
          ENDIF.
        ELSE.
          CLEAR t233.
          IF t234 IS BOUND.
            DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t238.
            CLEAR t238.
            TRY.
                t233 ?= t234.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t233 IS NOT BOUND.
              TRY.
                  t238 ?= t234.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t238 IS BOUND.
                t233 = t238->source( ).
              ENDIF.
              IF t233 IS NOT BOUND.
                CREATE OBJECT t233.
                t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t233->oval = t234.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t240 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t240.
      TRY.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t241.
          t241 = me->modules.
          DATA t243 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t243.
          t243 = NEW zcl_lnt_fnctn_mdl_dfntn( i_data_dc02 = t233 ).
          t241->load( ).
          APPEND t243 TO t241->items.
          t241->save( ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t240.
          DATA(t245) = t240->payload.
      ENDTRY.
    ENDDO.
  ENDMETHOD.

  METHOD find_text_file.
    DATA t1 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = me.
    t3 = t4->name.
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
    DATA(t12) = strlen( t3 ).
    t1 = t8->replace( p0 = t3 p1 = |#| ).
    DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA(t20) = strlen( t1 ).
    t17 = |{ t1 }{ `\.fugr\.(#\w+#)?sapl` }|.
    DATA t21 TYPE string.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^#[A-Za-z0-9_]+#| flags = ||.
    t23->source = `^#\w+#`.
    DATA(t28) = strlen( t1 ).
    t21 = t23->replace( p0 = t1 p1 = || ).
    DATA(t29) = strlen( t17 ).
    t16 = |{ t17 }{ t21 }|.
    DATA(t31) = strlen( t16 ).
    CREATE OBJECT t13 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |{ t16 }{ `\.xml` }| flags = |i|.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_abstract_object.
    t34 = me.
    t33 = t34->files.
    DATA t38 TYPE REF TO zif_lnt_file.
    DATA t39 TYPE REF TO object.
    DATA(t40) = VALUE i( ).
    DO.
      t33->load( ).
      IF t40 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t33->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      IF t13->test( p0 = t38->get_filename( ) ) = abap_true.
        result = t38.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1259_917940fd10fd.
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_dynpros.
    result = me->get_dynpros( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~update_file.
    me->update_file( i_file = i_file ).
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

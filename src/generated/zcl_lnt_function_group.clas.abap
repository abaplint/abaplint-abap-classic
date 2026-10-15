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
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    me->includes = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    me->modules = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    me->description = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    me->dynpros = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |FUGR|.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t3) = me->description.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ELSEIF t7->has = abap_false.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA(t8) = me->description.
    result = t8.

  ENDMETHOD.

  METHOD set_dirty.
    super->set_dirty( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    me->includes = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    me->modules = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    me->description = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    me->dynpros = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 26 ).
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

  METHOD get_dynpros.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->dynpros.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = me->dynpros.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE abap_bool.
    DATA(t13) = t9.
    t12 = xsdbool( t13 IS BOUND ).
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t9.
      t14 = t15.
      t11 = t14.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t11 = t16.
    ENDIF.
    t8 = t11.
    result = t8.

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
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA(t15) = t13.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA(t17) = t1.
    t16 = t17.
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
    DATA(t18) = t13.
    t12 = t18.
    t11 = t12.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_modules( ) ).
    DATA t20 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
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
      DATA t26 TYPE string.
      DATA t27 TYPE string.
      DATA(t28) = |.|.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      DATA(t33) = t20.
      t32 = t33.
      DATA t34 TYPE string.
      DATA(t35) = t32.
      t34 = t35->name.
      t31 = t34.
      DATA(t36) = strlen( t31 ).
      t30 = t31.
      TRANSLATE t30 TO LOWER CASE.
      DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t37.
      DATA(t38) = `\/`.
      DATA(t39) = |g|.
      CREATE OBJECT t37 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t38 flags = t39 checked = abap_true.
      DATA(t40) = |#|.
      DATA(t41) = strlen( t30 ).
      t29 = t37->replace( p0 = t30 p1 = t40 ).
      DATA(t42) = strlen( t28 ).
      t27 = |{ t28 }{ t29 }|.
      DATA(t43) = |.abap|.
      DATA(t44) = strlen( t27 ).
      t26 = |{ t27 }{ t43 }|.
      t25 = t26.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zcl_lnt_abap_object.
      DATA(t47) = me.
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t49) = t46.
      t48 = t49->parsed.
      t45 = t48.
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
        DATA(t59) = t50.
        t58 = t59.
        DATA t60 TYPE string.
        DATA(t61) = t58.
        t60 = t61->filename.
        t57 = t60.
        DATA(t62) = strlen( t57 ).
        t56 = t57.
        TRANSLATE t56 TO LOWER CASE.
        DATA(t63) = t25.
        DATA(t64) = strlen( t56 ).
        DATA t65 TYPE i.
        DATA(t66) = VALUE i( ).
        DATA(t67) = VALUE string( ).
        t65 = strlen( t63 ).
        IF t65 = 0.
          t55 = abap_true.
        ELSEIF t65 <= t64.
          t66 = 0.
          t66 = t64 - t65.
          t67 = t56+t66(t65).
          IF t67 = t63.
            t55 = abap_true.
          ENDIF.
        ENDIF.
        IF t55 = abap_true.
          DATA t68 TYPE abap_bool.
          DATA t69 TYPE i.
          DATA(t70) = t11.
          DATA(t71) = t50.
          t69 = t70->indexof( p0 = t71 ).
          DATA(t72) = 0.
          t68 = xsdbool( t69 < t72 ).
          IF t68 = abap_true.
            DATA(t73) = t11.
            DATA(t74) = t50.
            t73->load( ).
            APPEND t74 TO t73->items.
            t73->save( ).
          ENDIF.
          EXIT.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t75) = t11.
    result = t75.

  ENDMETHOD.

  METHOD get_modules.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = me->modules.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = me->modules.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |getIncludes, undefined|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      IF t16 IS BOUND.
        DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        CLEAR t22.
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
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = me->modules.
    t24 = t25.
    result = t24.

  ENDMETHOD.

  METHOD get_include_files.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->get_includes( ) ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_object.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->parsed.
    t5 = t8.
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
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
      DATA(t15) = t3.
      DATA(t16) = VALUE string( ).
      t15->dense( ).
      DATA(t17) = VALUE i( ).
      DO.
        t15->load( ).
        IF t17 >= lines( t15->items ).
          EXIT.
        ENDIF.
        CLEAR t16.
        READ TABLE t15->items INDEX t17 + 1 INTO t16.
        IF t15->has( t17 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t17 = t17 + 1.
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = t16.
        DATA(t22) = |/|.
        DATA(t23) = strlen( t21 ).
        DATA t24 TYPE i.
        DATA(t25) = VALUE i( ).
        DATA(t26) = VALUE string( ).
        t24 = strlen( t22 ).
        IF t24 = 0.
          t20 = abap_true.
        ELSEIF t24 <= t23.
          t25 = 0.
          t26 = t21+t25(t24).
          IF t26 = t22.
            t20 = abap_true.
          ENDIF.
        ENDIF.
        t19 = t20.
        IF t20 = abap_true.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE i( ).
          DATA(t29) = t16.
          DATA(t30) = |/L|.
          DATA(t31) = strlen( t29 ).
          IF t30 IS INITIAL.
            t28 = 0.
          ELSE.
            FIND t30 IN t29 MATCH OFFSET t28.
            IF sy-subrc <> 0.
              t28 = -1.
            ENDIF.
          ENDIF.
          DATA(t32) = 0.
          t27 = xsdbool( t28 >= t32 ).
          t19 = t27.
        ENDIF.
        t18 = t19.
        DATA t33 TYPE string.
        DATA(t34) = t16.
        t33 = t34.
        DATA(t35) = t18.
        IF t35 = abap_true.
          DATA t36 TYPE string.
          DATA(t37) = t33.
          DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t38.
          DATA(t39) = `\/`.
          DATA(t40) = |g|.
          CREATE OBJECT t38 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t39 flags = t40 checked = abap_true.
          DATA(t41) = |#|.
          DATA(t42) = strlen( t37 ).
          t36 = t38->replace( p0 = t37 p1 = t41 ).
          t33 = t36.
        ENDIF.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = t16.
        DATA(t47) = |L|.
        DATA(t48) = strlen( t46 ).
        DATA t49 TYPE i.
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE string( ).
        t49 = strlen( t47 ).
        IF t49 = 0.
          t45 = abap_true.
        ELSEIF t49 <= t48.
          t50 = 0.
          t51 = t46+t50(t49).
          IF t51 = t47.
            t45 = abap_true.
          ENDIF.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          DATA(t52) = t18.
          t44 = t52.
        ENDIF.
        t43 = t44.
        IF t44 = abap_true.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE i( ).
          DATA t55 TYPE string.
          DATA t56 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t57) = t10.
          t56 = t57.
          DATA t58 TYPE string.
          DATA(t59) = t56.
          t58 = t59->filename.
          t55 = t58.
          DATA t60 TYPE string.
          DATA t61 TYPE string.
          DATA(t62) = t33.
          DATA(t63) = strlen( t62 ).
          t61 = t62.
          TRANSLATE t61 TO LOWER CASE.
          DATA(t64) = |.|.
          DATA(t65) = strlen( t61 ).
          t60 = |{ t61 }{ t64 }|.
          DATA(t66) = strlen( t55 ).
          IF t60 IS INITIAL.
            t54 = 0.
          ELSE.
            FIND t60 IN t55 MATCH OFFSET t54.
            IF sy-subrc <> 0.
              t54 = -1.
            ENDIF.
          ENDIF.
          DATA(t67) = 0.
          t53 = xsdbool( t54 >= t67 ).
          t43 = t53.
        ENDIF.
        IF t43 = abap_true.
          DATA(t68) = t1.
          DATA t69 TYPE REF TO zcl_lnt_shape_124357cf.
          CLEAR t69.
          DATA t70 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t71.
          DATA(t72) = abap_true.
          IF t72 = abap_true.
            DATA(t73) = t10.
            t71 = t73.
          ELSE.
            DATA t74 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t74.
            t71 = t74.
          ENDIF.
          t70 = t71.
          DATA t75 TYPE string.
          DATA(t76) = t16.
          t75 = t76.
          t69 = NEW zcl_lnt_shape_124357cf( i_file = t70 i_name = t75 ).
          CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
          t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t77 ).
          ENDIF.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t78 ).
          ENDIF.
          CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
          t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t79) = |file|.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
          ENDIF.
          DATA(t81) = |name|.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
          ENDIF.
          t68->load( ).
          APPEND t69 TO t68->items.
          t68->save( ).
          EXIT.
        ENDIF.
        DATA(t83) = t18.
        IF t83 = abap_true.
          DATA t84 TYPE string.
          DATA(t85) = t16.
          DATA t86 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t86.
          DATA(t87) = `\/`.
          DATA(t88) = |g|.
          CREATE OBJECT t86 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t87 flags = t88 checked = abap_true.
          DATA(t89) = |%23|.
          DATA(t90) = strlen( t85 ).
          t84 = t86->replace( p0 = t85 p1 = t89 ).
          t33 = t84.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = VALUE i( ).
          DATA t93 TYPE string.
          DATA t94 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t95) = t10.
          t94 = t95.
          DATA t96 TYPE string.
          DATA(t97) = t94.
          t96 = t97->filename.
          t93 = t96.
          DATA t98 TYPE string.
          DATA t99 TYPE string.
          DATA(t100) = t33.
          DATA(t101) = strlen( t100 ).
          t99 = t100.
          TRANSLATE t99 TO LOWER CASE.
          DATA(t102) = |.|.
          DATA(t103) = strlen( t99 ).
          t98 = |{ t99 }{ t102 }|.
          DATA(t104) = strlen( t93 ).
          IF t98 IS INITIAL.
            t92 = 0.
          ELSE.
            FIND t98 IN t93 MATCH OFFSET t92.
            IF sy-subrc <> 0.
              t92 = -1.
            ENDIF.
          ENDIF.
          DATA(t105) = 0.
          t91 = xsdbool( t92 >= t105 ).
          IF t91 = abap_true.
            DATA(t106) = t1.
            DATA t107 TYPE REF TO zcl_lnt_shape_124357cf.
            CLEAR t107.
            DATA t108 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t108.
            DATA t109 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t109.
            DATA(t110) = abap_true.
            IF t110 = abap_true.
              DATA(t111) = t10.
              t109 = t111.
            ELSE.
              DATA t112 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t112.
              t109 = t112.
            ENDIF.
            t108 = t109.
            DATA t113 TYPE string.
            DATA(t114) = t16.
            t113 = t114.
            t107 = NEW zcl_lnt_shape_124357cf( i_file = t108 i_name = t113 ).
            CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
            t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t115 ).
            ENDIF.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t116 ).
            ENDIF.
            CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
            t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t117) = |file|.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
            ENDIF.
            DATA(t119) = |name|.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
            ENDIF.
            t106->load( ).
            APPEND t107 TO t106->items.
            t106->save( ).
            EXIT.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t121) = t1.
    result = t121.

  ENDMETHOD.

  METHOD get_include.
    DATA(t1) = i_name.
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
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_include_files( ) ).
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zcl_lnt_shape_124357cf.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = t9.
      t16 = t17->name.
      DATA(t18) = strlen( t16 ).
      t15 = t16.
      IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t15 TO UPPER CASE.
      ELSE.
        t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
      ENDIF.
      DATA(t19) = t2.
      t14 = xsdbool( t15 = t19 ).
      IF t14 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t20.
        DATA(t21) = abap_true.
        IF t21 = abap_true.
          DATA t22 TYPE REF TO zcl_lnt_abap_file.
          DATA(t23) = t9.
          t22 = t23->file.
          t20 = t22.
        ELSE.
          DATA t24 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t24.
          t20 = t24.
        ENDIF.
        result = t20.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t25 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t25.
    result = t25.

  ENDMETHOD.

  METHOD get_main_abap_file.
    DATA t1 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t2 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t2.
    DATA(t3) = `\.fugr\.(#\w+#)?sapl`.
    DATA(t4) = `\.fugr\.(#[A-Za-z0-9_]+#)?sapl`.
    DATA(t5) = |i|.
    CREATE OBJECT t2 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t5.
    t2->source = t3.
    t1 = t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA(t8) = me.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->parsed.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
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
      DATA t16 TYPE abap_bool.
      DATA(t17) = t1.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t20) = t11.
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = t19.
      t21 = t22->filename.
      t18 = t21.
      t16 = t17->test( p0 = t18 ).
      IF t16 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA(t25) = t11.
          t23 = t25.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t26.
          t23 = t26.
        ENDIF.
        result = t23.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t27 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t27.
    result = t27.

  ENDMETHOD.

  METHOD get_includes.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA(t3) = me->includes.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      me->parse_xml( ).
    ENDIF.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = me->includes.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |getIncludes, undefined|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      IF t16 IS BOUND.
        DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        CLEAR t22.
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
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = me->includes.
    t24 = t25.
    result = t24.

  ENDMETHOD.

  METHOD get_module.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_modules( ) ).
    DATA t3 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
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
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE string.
      DATA t10 TYPE string.
      DATA t11 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      DATA(t12) = t3.
      t11 = t12.
      DATA t13 TYPE string.
      DATA(t14) = t11.
      t13 = t14->name.
      t10 = t13.
      DATA(t15) = strlen( t10 ).
      t9 = t10.
      IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t9 TO UPPER CASE.
      ELSE.
        t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
      ENDIF.
      DATA t16 TYPE string.
      DATA(t17) = t1.
      DATA(t18) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      t8 = xsdbool( t9 = t16 ).
      IF t8 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA(t21) = t3.
          t19 = t21.
        ELSE.
          DATA t22 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t22.
          t19 = t22.
        ENDIF.
        result = t19.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t23 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t23.
    result = t23.

  ENDMETHOD.

  METHOD get_text_symbols.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    CLEAR t2.
    DATA(t3) = me->texts.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_file.
      CLEAR t8.
      DATA(t9) = CAST zif_lnt_file( me->find_text_file( ) ).
      t8 = t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zif_lnt_file.
      CLEAR t11.
      DATA(t12) = t8.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t18.
        DATA(t19) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
        t18 = t19.
        DATA(t20) = t18.
        t17 = t20.
        result = t17.
        RETURN.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t21.
      TRY.
          DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t22.
          DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t23.
          DATA(t24) = VALUE string( ).
          DATA t25 TYPE REF TO zif_lnt_file.
          CLEAR t25.
          DATA(t26) = t8.
          t25 = t26.
          t24 = t25->get_raw( ).
          t23 = zlnt_runtime_xmlw_d7bcce7c35ad=>parse( t24 ).
          t22 = t23.
          DATA(t27) = t22.
          me->find_texts( i_parsed = t27 ).
        CATCH zlnt_exception_cl_30eec8e8805d INTO t21.
          DATA(t28) = t21->payload.
          DATA t29 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
          CLEAR t29.
          DATA(t30) = abap_true.
          IF t30 = abap_true.
            DATA t31 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
            CLEAR t31.
            DATA t32 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
            CLEAR t32.
            DATA(t33) = NEW zlnt_runtime_map__f8cd1b113b3e( ).
            t32 = t33.
            DATA(t34) = t32.
            t31 = t34.
            t29 = t31.
          ELSE.
            DATA t35 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
            CLEAR t35.
            t29 = t35.
          ENDIF.
          me->texts = t29.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
      ENDTRY.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    CLEAR t39.
    DATA(t40) = me->texts.
    t39 = t40.
    DATA(t41) = |I|.
    t38 = t39->get( p0 = t41 ).
    t37 = t38.
    DATA t42 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t37.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t46.
      DATA(t47) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
      t46 = t47.
      DATA(t48) = t46.
      t45 = t48.
      t42 = t45.
    ELSE.
      DATA t49 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t49.
      DATA(t50) = t37.
      t49 = t50.
      t42 = t49.
    ENDIF.
    t36 = t42.
    result = t36.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA(t2) = abap_true.
    IF t2 = abap_true.
      DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t3.
      CREATE OBJECT t3.
      t1 = t3.
    ELSE.
      DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t4.
      t1 = t4.
    ENDIF.
    me->includes = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `includes`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t7.
      CREATE OBJECT t7.
      t5 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    me->modules = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modules`.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17.
      t12 = t16.
    ENDIF.
    t11 = t12.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = t11.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = t11.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = t33.
    CLEAR t37.
    IF t38 IS BOUND.
      t37 = t38.
    ENDIF.
    IF t37 IS NOT BOUND.
      t36 = abap_true.
    ELSE.
      t36 = xsdbool( t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t36 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t35 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA(t42) = t33.
      t41 = t42.
      DATA(t43) = |abapGit|.
      t40 = t41->get( p0 = t43 ).
      t35 = t40.
    ENDIF.
    t32 = t35.
    t31 = t32.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t31.
    CLEAR t46.
    IF t47 IS BOUND.
      t46 = t47.
    ENDIF.
    IF t46 IS NOT BOUND.
      t45 = abap_true.
    ELSE.
      t45 = xsdbool( t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t45 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t44 = t48.
    ELSE.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      DATA(t51) = t31.
      t50 = t51.
      DATA(t52) = |asx:abap|.
      t49 = t50->get( p0 = t52 ).
      t44 = t49.
    ENDIF.
    t30 = t44.
    t29 = t30.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = t29.
    CLEAR t55.
    IF t56 IS BOUND.
      t55 = t56.
    ENDIF.
    IF t55 IS NOT BOUND.
      t54 = abap_true.
    ELSE.
      t54 = xsdbool( t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t54 = abap_true.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      t53 = t57.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      DATA(t60) = t29.
      t59 = t60.
      DATA(t61) = |asx:values|.
      t58 = t59->get( p0 = t61 ).
      t53 = t58.
    ENDIF.
    t28 = t53.
    t27 = t28.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = t27.
    CLEAR t64.
    IF t65 IS BOUND.
      t64 = t65.
    ENDIF.
    IF t64 IS NOT BOUND.
      t63 = abap_true.
    ELSE.
      t63 = xsdbool( t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t63 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t62 = t66.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      DATA(t69) = t27.
      t68 = t69.
      DATA(t70) = |AREAT|.
      t67 = t68->get( p0 = t70 ).
      t62 = t67.
    ENDIF.
    t26 = t62.
    t25 = t26.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = t25.
    IF t73 IS INITIAL.
      t72 = abap_true.
    ENDIF.
    IF t72 = abap_true.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      t71 = t74.
    ELSE.
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      DATA(t77) = t25.
      t76 = t77.
      t75 = t76->as_string( ).
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t75.
      t71 = t78.
    ENDIF.
    me->description = t71.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA(t80) = abap_true.
    IF t80 = abap_true.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      DATA(t83) = t11.
      CLEAR t82.
      IF t83 IS BOUND.
        t82 = t83.
      ENDIF.
      t81 = zcl_lnt_dynpros_module=>parse_dynpros( i_parsed = t82 ).
      t79 = t81.
    ELSE.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t84.
      t79 = t84.
    ENDIF.
    me->dynpros = t79.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynpros`.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = t11.
    t93 = t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = t93.
    CLEAR t97.
    IF t98 IS BOUND.
      t97 = t98.
    ENDIF.
    IF t97 IS NOT BOUND.
      t96 = abap_true.
    ELSE.
      t96 = xsdbool( t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t96 = abap_true.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      t95 = t99.
    ELSE.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      DATA(t102) = t93.
      t101 = t102.
      DATA(t103) = |abapGit|.
      t100 = t101->get( p0 = t103 ).
      t95 = t100.
    ENDIF.
    t92 = t95.
    t91 = t92.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = VALUE abap_bool( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = t91.
    CLEAR t106.
    IF t107 IS BOUND.
      t106 = t107.
    ENDIF.
    IF t106 IS NOT BOUND.
      t105 = abap_true.
    ELSE.
      t105 = xsdbool( t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t105 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      t104 = t108.
    ELSE.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      DATA(t111) = t91.
      t110 = t111.
      DATA(t112) = |asx:abap|.
      t109 = t110->get( p0 = t112 ).
      t104 = t109.
    ENDIF.
    t90 = t104.
    t89 = t90.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = VALUE abap_bool( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t89.
    CLEAR t115.
    IF t116 IS BOUND.
      t115 = t116.
    ENDIF.
    IF t115 IS NOT BOUND.
      t114 = abap_true.
    ELSE.
      t114 = xsdbool( t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t114 = abap_true.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      t113 = t117.
    ELSE.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      DATA(t120) = t89.
      t119 = t120.
      DATA(t121) = |asx:values|.
      t118 = t119->get( p0 = t121 ).
      t113 = t118.
    ENDIF.
    t88 = t113.
    t87 = t88.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = VALUE abap_bool( ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = t87.
    CLEAR t124.
    IF t125 IS BOUND.
      t124 = t125.
    ENDIF.
    IF t124 IS NOT BOUND.
      t123 = abap_true.
    ELSE.
      t123 = xsdbool( t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t123 = abap_true.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      t122 = t126.
    ELSE.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      DATA(t129) = t87.
      t128 = t129.
      DATA(t130) = |INCLUDES|.
      t127 = t128->get( p0 = t130 ).
      t122 = t127.
    ENDIF.
    t86 = t122.
    t85 = t86.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = t85.
    IF t134 IS INITIAL.
      t133 = abap_true.
    ENDIF.
    IF t133 = abap_true.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      t132 = t135.
    ELSE.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      DATA(t137) = t85.
      t136 = t137.
      t132 = t136.
    ENDIF.
    t131 = t132.
    DATA(t138) = VALUE abap_bool( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = t131.
    t139 = t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    t141 = t142.
    DATA(t143) = VALUE abap_bool( ).
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = t139.
    IF t145 IS INITIAL.
      t144 = abap_true.
    ENDIF.
    t143 = xsdbool( t144 = abap_false ).
    t138 = t143.
    IF t138 = abap_true.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t146.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA(t149) = t131.
      t148 = t149.
      DATA(t150) = |SOBJ_NAME|.
      t147 = t148->get( p0 = t150 ).
      t146 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t147 ).
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      DATA t152 TYPE REF TO object.
      CLEAR t152.
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
              DATA t157 TYPE REF TO object.
              CLEAR t157.
              CLEAR t156.
              t157 = t152.
              TRY.
                  t151 ?= t157.
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
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = VALUE string( ).
        DATA(t160) = t151.
        IF t160 IS BOUND.
          t159 = t160->type_of( ).
          IF t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t160->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t159 = `function`.
          ENDIF.
        ELSE.
          t159 = `undefined`.
        ENDIF.
        DATA(t161) = |string|.
        t158 = xsdbool( t159 = t161 ).
        IF t158 = abap_true.
          DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t162.
          DATA(t163) = me->includes.
          t162 = t163.
          DATA(t164) = VALUE string( ).
          DATA(t165) = t151.
          t164 = t165->as_string( ).
          t162->load( ).
          APPEND t164 TO t162->items.
          t162->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = t11.
    t174 = t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = VALUE abap_bool( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t174.
    CLEAR t178.
    IF t179 IS BOUND.
      t178 = t179.
    ENDIF.
    IF t178 IS NOT BOUND.
      t177 = abap_true.
    ELSE.
      t177 = xsdbool( t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t177 = abap_true.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      t176 = t180.
    ELSE.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      DATA(t183) = t174.
      t182 = t183.
      DATA(t184) = |abapGit|.
      t181 = t182->get( p0 = t184 ).
      t176 = t181.
    ENDIF.
    t173 = t176.
    t172 = t173.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA(t188) = t172.
    CLEAR t187.
    IF t188 IS BOUND.
      t187 = t188.
    ENDIF.
    IF t187 IS NOT BOUND.
      t186 = abap_true.
    ELSE.
      t186 = xsdbool( t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t186 = abap_true.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      t185 = t189.
    ELSE.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      DATA(t192) = t172.
      t191 = t192.
      DATA(t193) = |asx:abap|.
      t190 = t191->get( p0 = t193 ).
      t185 = t190.
    ENDIF.
    t171 = t185.
    t170 = t171.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = VALUE abap_bool( ).
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = t170.
    CLEAR t196.
    IF t197 IS BOUND.
      t196 = t197.
    ENDIF.
    IF t196 IS NOT BOUND.
      t195 = abap_true.
    ELSE.
      t195 = xsdbool( t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t195 = abap_true.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      t194 = t198.
    ELSE.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      DATA(t201) = t170.
      t200 = t201.
      DATA(t202) = |asx:values|.
      t199 = t200->get( p0 = t202 ).
      t194 = t199.
    ENDIF.
    t169 = t194.
    t168 = t169.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA(t204) = VALUE abap_bool( ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = t168.
    CLEAR t205.
    IF t206 IS BOUND.
      t205 = t206.
    ENDIF.
    IF t205 IS NOT BOUND.
      t204 = abap_true.
    ELSE.
      t204 = xsdbool( t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t204 = abap_true.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      t203 = t207.
    ELSE.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      DATA(t210) = t168.
      t209 = t210.
      DATA(t211) = |FUNCTIONS|.
      t208 = t209->get( p0 = t211 ).
      t203 = t208.
    ENDIF.
    t167 = t203.
    t166 = t167.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = VALUE abap_bool( ).
    DATA(t215) = t166.
    IF t215 IS INITIAL.
      t214 = abap_true.
    ENDIF.
    IF t214 = abap_true.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      t213 = t216.
    ELSE.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      DATA(t218) = t166.
      t217 = t218.
      t213 = t217.
    ENDIF.
    t212 = t213.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = t212.
    t222 = t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = VALUE abap_bool( ).
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = t222.
    CLEAR t226.
    IF t227 IS BOUND.
      t226 = t227.
    ENDIF.
    IF t226 IS NOT BOUND.
      t225 = abap_true.
    ELSE.
      t225 = xsdbool( t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t225 = abap_true.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      t224 = t228.
    ELSE.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t230.
      DATA(t231) = t222.
      t230 = t231.
      DATA(t232) = |item|.
      t229 = t230->get( p0 = t232 ).
      t224 = t229.
    ENDIF.
    t221 = t224.
    CLEAR t220.
    IF t221 IS BOUND.
      t220 = t221.
    ENDIF.
    t219 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t220 ).
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO object.
    CLEAR t234.
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
            DATA t239 TYPE REF TO object.
            CLEAR t239.
            CLEAR t238.
            t239 = t234.
            TRY.
                t233 ?= t239.
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
          DATA(t242) = me->modules.
          t241 = t242.
          DATA t243 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t243.
          DATA(t244) = t233.
          t243 = NEW zcl_lnt_fnctn_mdl_dfntn( i_data_dc02 = t244 ).
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
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = t4.
    t6 = t7->name.
    t3 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t8.
    DATA(t9) = `\/`.
    DATA(t10) = |g|.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t9 flags = t10 checked = abap_true.
    DATA(t11) = |#|.
    DATA(t12) = strlen( t3 ).
    t2 = t8->replace( p0 = t3 p1 = t11 ).
    t1 = t2.
    DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t14.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE string.
    DATA(t18) = t1.
    DATA(t19) = `\.fugr\.(#\w+#)?sapl`.
    DATA(t20) = strlen( t18 ).
    t17 = |{ t18 }{ t19 }|.
    DATA t21 TYPE string.
    DATA(t22) = t1.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t23.
    DATA(t24) = `^#\w+#`.
    DATA(t25) = |^#[A-Za-z0-9_]+#|.
    DATA(t26) = ||.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t25 flags = t26.
    t23->source = t24.
    DATA(t27) = ||.
    DATA(t28) = strlen( t22 ).
    t21 = t23->replace( p0 = t22 p1 = t27 ).
    DATA(t29) = strlen( t17 ).
    t16 = |{ t17 }{ t21 }|.
    DATA(t30) = `\.xml`.
    DATA(t31) = strlen( t16 ).
    t15 = |{ t16 }{ t30 }|.
    DATA(t32) = |i|.
    CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t15 flags = t32.
    t13 = t14.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t35) = me.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t37) = t34.
    t36 = t37->files.
    t33 = t36.
    DATA t38 TYPE REF TO zif_lnt_file.
    CLEAR t38.
    DATA t39 TYPE REF TO object.
    CLEAR t39.
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
      DATA t43 TYPE abap_bool.
      DATA(t44) = t13.
      DATA t45 TYPE string.
      DATA(t46) = t38.
      t45 = t46->get_filename( ).
      t43 = t44->test( p0 = t45 ).
      IF t43 = abap_true.
        DATA t47 TYPE REF TO zif_lnt_file.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = t38.
          t47 = t49.
        ELSE.
          DATA t50 TYPE REF TO zif_lnt_file.
          CLEAR t50.
          t47 = t50.
        ENDIF.
        result = t47.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t51 TYPE REF TO zif_lnt_file.
    CLEAR t51.
    result = t51.

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

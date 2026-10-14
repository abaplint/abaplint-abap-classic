* TS: src/objects/_abap_object.ts:13:1 ABAPObject
CLASS zcl_lnt_abap_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA texts TYPE REF TO zlnt_runtime_map__bcb2c8cdc8fe.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA raw_xml_cache TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA syntax_result TYPE REF TO zcl_lnt_isyntax_result.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    METHODS get_sequenced_files ABSTRACT RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS is IMPORTING i_x TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS pr_in_sr_ob_abp_obj_ts_abp_obj IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS set_dirty REDEFINITION.
    METHODS get_parsed_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_abap_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_abap_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_main_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_text_symbols RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    METHODS get_text_elements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    METHODS get_text_elements_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_texts IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS find_texts_translations IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->parsed = t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__bcb2c8cdc8fe.
    CLEAR t4.
    me->texts = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    me->raw_xml_cache = t5.
  ENDMETHOD.
  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:20|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_x ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    IF t6 IS BOUND.
      t5 = t6->truth( ).
    ENDIF.
    t4 = xsdbool( t5 = abap_false ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE REF TO object.
      DATA(t9) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
      DATA t10 TYPE REF TO object.
      t10 = t9->as_ref( ).
      t8 ?= t10.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_abap_object ).
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.
  METHOD pr_in_sr_ob_abp_obj_ts_abp_obj.
    DATA(t1) = CAST zcl_lnt_abap_release( i_release_7928 ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA(t3) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_language_version_0e1d ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = |Normal|.
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t15) = CAST zcl_lnt_abap_object( me ).
    t14 = t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = CAST zcl_lnt_abstract_object( t14 ).
    t16 = t17->dirty.
    t13 = t16.
    DATA(t18) = abap_false.
    t12 = xsdbool( t13 = t18 ).
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_iparse_result.
      DATA(t20) = abap_false.
      DATA(t21) = CONV int8( 0 ).
      DATA t22 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t22.
      t19 = NEW zcl_lnt_iparse_result( i_updated = t20 i_runtime = t21 i_runtime_extra = t22 ).
      result = t19.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t29) = CAST zcl_lnt_abap_object( me ).
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t31) = CAST zcl_lnt_abstract_object( t28 ).
    t30 = t31->files.
    t27 = t30.
    DATA t32 TYPE REF TO zif_lnt_file.
    CLEAR t32.
    DATA t33 TYPE REF TO object.
    CLEAR t33.
    LOOP AT t27->items INTO t33.
      t32 ?= t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE string.
      DATA(t36) = CAST zif_lnt_file( t32 ).
      t35 = t36->get_filename( ).
      DATA(t37) = |.abap|.
      DATA(t38) = strlen( t35 ).
      DATA t39 TYPE i.
      DATA(t40) = VALUE i( ).
      DATA(t41) = VALUE string( ).
      t39 = strlen( t37 ).
      IF t39 = 0.
        t34 = abap_true.
      ELSEIF t39 <= t38.
        t40 = 0.
        t40 = t38 - t39.
        t41 = t35+t40(t39).
        IF t41 = t37.
          t34 = abap_true.
        ENDIF.
      ENDIF.
      IF t34 = abap_true.
        DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
        DATA(t43) = CAST zif_lnt_file( t32 ).
        APPEND t43 TO t42->items.
      ENDIF.
    ENDLOOP.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t24 = t44.
    t23 = t24.
    DATA t45 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_abap_parser.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_iabapparser_options.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = CAST zcl_lnt_abap_release( t1 ).
      t49 = t51.
    ELSE.
      DATA t52 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t52.
      t49 = t52.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    DATA(t54) = abap_true.
    IF t54 = abap_true.
      DATA t55 TYPE string.
      DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
      t55 = t56->value.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t55.
      t53 = t57.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t53 = t58.
    ENDIF.
    DATA(t59) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t60) = CAST zif_lnt_registry( t3 ).
    t48 = NEW zcl_lnt_iabapparser_options( i_release_7928 = t49 i_language_version_0e1d = t53 i_global_macros_5535 = t59 i_reg_f149 = t60 ).
    DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_registry.
    CLEAR t62.
    t47 = NEW zcl_lnt_abap_parser( i_options_or_release = t48 i_global_macros_5535 = t61 i_reg_f149 = t62 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t46 = t47->parse( i_files = t63 ).
    t45 = t46.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t65) = CAST zcl_lnt_iabapparser_result( t45 ).
    t64 = t65->output.
    me->parsed = t64.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t67) = CAST zcl_lnt_iabapparser_result( t45 ).
    t66 = t67->issues.
    me->old = t66.
    DATA(t68) = abap_false.
    me->dirty = t68.
    DATA t69 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t69.
    DATA(t70) = abap_true.
    DATA t71 TYPE int8.
    DATA(t72) = CAST zcl_lnt_iabapparser_result( t45 ).
    t71 = t72->runtime.
    DATA t73 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t73.
    DATA(t74) = abap_true.
    IF t74 = abap_true.
      DATA t75 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t76) = CAST zcl_lnt_iabapparser_result( t45 ).
      t75 = t76->runtime_extra.
      t73 = t75.
    ELSE.
      DATA t77 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t77.
      t73 = t77.
    ENDIF.
    t69 = NEW zcl_lnt_iparse_result( i_updated = t70 i_runtime = t71 i_runtime_extra = t73 ).
    result = t69.

  ENDMETHOD.
  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t1.
    me->syntax_result = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__bcb2c8cdc8fe.
    CLEAR t2.
    me->texts = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    me->texts_translations = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    me->raw_xml_cache = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->parsed = t5.
    super->set_dirty( ).
  ENDMETHOD.
  METHOD get_parsed_xml.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:62|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_abap_files.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->parsed ).
    result = t1.

  ENDMETHOD.
  METHOD get_abap_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->parsed ).
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE string.
      DATA t7 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t8) = CAST zcl_lnt_abap_file( t3 ).
      t7 = t8.
      DATA t9 TYPE string.
      DATA(t10) = CAST zcl_lnt_abstract_file( t7 ).
      t9 = t10->filename.
      t6 = t9.
      DATA(t11) = t1.
      t5 = xsdbool( t6 = t11 ).
      IF t5 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t12.
        DATA(t13) = abap_true.
        IF t13 = abap_true.
          DATA(t14) = CAST zcl_lnt_abap_file( t3 ).
          t12 = t14.
        ELSE.
          DATA t15 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t15.
          t12 = t15.
        ENDIF.
        result = t12.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t16.
    result = t16.

  ENDMETHOD.
  METHOD get_main_abap_file.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t9) = CAST zcl_lnt_abap_object( me ).
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = CAST zcl_lnt_abstract_object( t8 ).
    t10 = t11->name.
    t7 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t12.
    DATA(t13) = `\/`.
    DATA(t14) = |g|.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t13 flags = t14.
    DATA(t15) = |#|.
    DATA(t16) = strlen( t7 ).
    t6 = t12->replace( p0 = t7 p1 = t15 ).
    DATA(t17) = strlen( t6 ).
    t5 = t6.
    TRANSLATE t5 TO LOWER CASE.
    DATA(t18) = |.|.
    DATA(t19) = strlen( t5 ).
    t4 = |{ t5 }{ t18 }|.
    DATA t20 TYPE string.
    DATA(t21) = CONV string( me->get_type( ) ).
    DATA(t22) = strlen( t21 ).
    t20 = t21.
    TRANSLATE t20 TO LOWER CASE.
    DATA(t23) = strlen( t4 ).
    t3 = |{ t4 }{ t20 }|.
    DATA(t24) = |.abap|.
    DATA(t25) = strlen( t3 ).
    t2 = |{ t3 }{ t24 }|.
    t1 = t2.
    DATA t26 TYPE string.
    DATA t27 TYPE string.
    DATA(t28) = t1.
    DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t29.
    DATA(t30) = |#|.
    DATA(t31) = |g|.
    CREATE OBJECT t29 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t30 flags = t31.
    DATA(t32) = |%23|.
    DATA(t33) = strlen( t28 ).
    t27 = t29->replace( p0 = t28 p1 = t32 ).
    t26 = t27.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( me->parsed ).
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    LOOP AT t34->items INTO t36.
      t35 ?= t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE string.
      DATA t40 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t41) = CAST zcl_lnt_abap_file( t35 ).
      t40 = t41.
      DATA t42 TYPE string.
      DATA(t43) = CAST zcl_lnt_abstract_file( t40 ).
      t42 = t43->filename.
      t39 = t42.
      DATA(t44) = t1.
      DATA(t45) = strlen( t39 ).
      DATA t46 TYPE i.
      DATA(t47) = VALUE i( ).
      DATA(t48) = VALUE string( ).
      t46 = strlen( t44 ).
      IF t46 = 0.
        t38 = abap_true.
      ELSEIF t46 <= t45.
        t47 = 0.
        t47 = t45 - t46.
        t48 = t39+t47(t46).
        IF t48 = t44.
          t38 = abap_true.
        ENDIF.
      ENDIF.
      t37 = t38.
      IF t38 = abap_false.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t52) = CAST zcl_lnt_abap_file( t35 ).
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = CAST zcl_lnt_abstract_file( t51 ).
        t53 = t54->filename.
        t50 = t53.
        DATA(t55) = t26.
        DATA(t56) = strlen( t50 ).
        DATA t57 TYPE i.
        DATA(t58) = VALUE i( ).
        DATA(t59) = VALUE string( ).
        t57 = strlen( t55 ).
        IF t57 = 0.
          t49 = abap_true.
        ELSEIF t57 <= t56.
          t58 = 0.
          t58 = t56 - t57.
          t59 = t50+t58(t57).
          IF t59 = t55.
            t49 = abap_true.
          ENDIF.
        ENDIF.
        t37 = t49.
      ENDIF.
      IF t37 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = CAST zcl_lnt_abap_file( t35 ).
          t60 = t62.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t63.
          t60 = t63.
        ENDIF.
        result = t60.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( me->parsed ).
    DATA t65 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t65.
    DATA t66 TYPE REF TO object.
    CLEAR t66.
    LOOP AT t64->items INTO t66.
      t65 ?= t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE i( ).
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t71) = CAST zcl_lnt_abap_file( t65 ).
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = CAST zcl_lnt_abstract_file( t70 ).
      t72 = t73->filename.
      t69 = t72.
      DATA(t74) = |.prog.screen_|.
      DATA(t75) = strlen( t69 ).
      IF t74 IS INITIAL.
        t68 = 0.
      ELSE.
        FIND t74 IN t69 MATCH OFFSET t68.
        IF sy-subrc <> 0.
          t68 = -1.
        ENDIF.
      ENDIF.
      DATA(t76) = 0.
      t67 = xsdbool( t68 >= t76 ).
      IF t67 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE string.
        DATA t79 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t80) = CAST zcl_lnt_abap_file( t65 ).
        t79 = t80.
        DATA t81 TYPE string.
        DATA(t82) = CAST zcl_lnt_abstract_file( t79 ).
        t81 = t82->filename.
        t78 = t81.
        DATA(t83) = |.abap|.
        DATA(t84) = strlen( t78 ).
        DATA t85 TYPE i.
        DATA(t86) = VALUE i( ).
        DATA(t87) = VALUE string( ).
        t85 = strlen( t83 ).
        IF t85 = 0.
          t77 = abap_true.
        ELSEIF t85 <= t84.
          t86 = 0.
          t86 = t84 - t85.
          t87 = t78+t86(t85).
          IF t87 = t83.
            t77 = abap_true.
          ENDIF.
        ENDIF.
        IF t77 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = CAST zcl_lnt_abap_file( t65 ).
            t88 = t90.
          ELSE.
            DATA t91 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t91.
            t88 = t91.
          ENDIF.
          result = t88.
          RETURN.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t92 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t92.
    result = t92.

  ENDMETHOD.
  METHOD get_text_symbols.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:101|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_text_elements.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:108|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_text_elements_translations.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:119|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD find_texts.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_parsed ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_abap_object.ts:126|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_texts_translations.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_parsed ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_abap_object.ts:155|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_abp_obj_ts_abp_obj( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
  ENDMETHOD.
ENDCLASS.

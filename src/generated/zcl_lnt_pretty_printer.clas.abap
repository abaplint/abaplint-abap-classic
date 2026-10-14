* TS: src/pretty_printer/pretty_printer.ts:10:1 PrettyPrinter
CLASS zcl_lnt_pretty_printer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA result_9728 TYPE string.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    DATA options TYPE REF TO zcl_lnt_iindentation_options.
    DATA config TYPE REF TO zif_lnt_configuration.
    METHODS constructor IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_config TYPE REF TO zif_lnt_configuration.
    METHODS run RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_pretty_printer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zif_lnt_configuration( i_config ).
    DATA t3 TYPE string.
    DATA(t4) = CAST zcl_lnt_abap_file( t1 ).
    t3 = t4->get_raw( ).
    me->result_9728 = t3.
    DATA(t5) = CAST zcl_lnt_abap_file( t1 ).
    me->file = t5.
    DATA(t6) = CAST zif_lnt_configuration( t2 ).
    me->config = t6.
    DATA t7 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_indentation_conf.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zif_lnt_configuration( t2 ).
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_indentation.
    DATA(t14) = NEW zcl_lnt_indentation( ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t15.
    DATA(t16) = |indentation|.
    DATA(t17) = |Indentation|.
    DATA(t18) = |Checks indentation|.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |CLASS lcl DEFINITION.|.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t22 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |PRIVATE SECTION.|.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t23 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |METHODS constructor.|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t24 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |ENDCLASS.|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t25 INTO t21 RESPECTING BLANKS.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t26 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |CLASS lcl IMPLEMENTATION.|.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t27 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |METHOD constructor.|.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t28 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |ENDMETHOD.|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t21 t29 INTO t21 RESPECTING BLANKS.
      t21 = t21 && |ENDCLASS.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t21.
      t19 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t19 = t31.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = abap_true.
    IF t33 = abap_true.
      DATA(t34) = |CLASS lcl DEFINITION.|.
      DATA t35 TYPE c LENGTH 1.
      CLEAR t35.
      t35 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t35 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |  PRIVATE SECTION.|.
      DATA t36 TYPE c LENGTH 1.
      CLEAR t36.
      t36 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t36 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |    METHODS constructor.|.
      DATA t37 TYPE c LENGTH 1.
      CLEAR t37.
      t37 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t37 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |ENDCLASS.|.
      DATA t38 TYPE c LENGTH 1.
      CLEAR t38.
      t38 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t38 INTO t34 RESPECTING BLANKS.
      DATA t39 TYPE c LENGTH 1.
      CLEAR t39.
      t39 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t39 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |CLASS lcl IMPLEMENTATION.|.
      DATA t40 TYPE c LENGTH 1.
      CLEAR t40.
      t40 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t40 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |  METHOD constructor.|.
      DATA t41 TYPE c LENGTH 1.
      CLEAR t41.
      t41 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t41 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |  ENDMETHOD.|.
      DATA t42 TYPE c LENGTH 1.
      CLEAR t42.
      t42 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t34 t42 INTO t34 RESPECTING BLANKS.
      t34 = t34 && |ENDCLASS.|.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t34.
      t32 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t32 = t44.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t46.
    DATA(t47) = abap_true.
    IF t47 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t50.
      t49 = t50.
      DATA(t51) = CAST zlnt_runtime_arra_8ecd6afe19e0( t49 ).
      DATA(t52) = |Whitespace|.
      APPEND t52 TO t51->items.
      DATA(t53) = CAST zlnt_runtime_arra_8ecd6afe19e0( t49 ).
      DATA(t54) = |Quickfix|.
      APPEND t54 TO t53->items.
      DATA(t55) = CAST zlnt_runtime_arra_8ecd6afe19e0( t49 ).
      DATA(t56) = |SingleFile|.
      APPEND t56 TO t55->items.
      DATA(t57) = CAST zlnt_runtime_arra_8ecd6afe19e0( t49 ).
      t48 = t57.
      t46 = t48.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t58.
      t46 = t58.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    t15 = NEW zcl_lnt_irule_metadata( i_key = t16 i_title = t17 i_short_description = t18 i_bad_example = t19 i_good_example = t32 i_extended_information = t45 i_tags = t46 i_pragma = t59 i_pseudo_comment = t60 ).
    t12 = t15.
    t11 = t12->key.
    t9 = t10->read_by_rule( i_rule = t11 ).
    DATA t61 TYPE REF TO object.
    t61 = t9->as_ref( ).
    t8 ?= t61.
    t7 = t8.
    DATA t62 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_indentation_conf.
    DATA(t65) = CAST zcl_lnt_indentation_conf( t7 ).
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = CAST zcl_lnt_indentation_conf( t64 ).
    IF t68 IS INITIAL.
      t67 = abap_true.
    ENDIF.
    IF t67 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t69.
      t66 = t69.
    ELSE.
      DATA t70 TYPE abap_bool.
      DATA(t71) = CAST zcl_lnt_indentation_conf( t64 ).
      t70 = t71->align_try_catch.
      DATA(t72) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t72->has = abap_true.
      t72->value = t70.
      t66 = t72.
    ENDIF.
    t63 = t66.
    DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t74.
    DATA t75 TYPE REF TO zcl_lnt_indentation_conf.
    DATA(t76) = CAST zcl_lnt_indentation_conf( t7 ).
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t77.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = CAST zcl_lnt_indentation_conf( t75 ).
    IF t79 IS INITIAL.
      t78 = abap_true.
    ENDIF.
    IF t78 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t80.
      t77 = t80.
    ELSE.
      DATA t81 TYPE abap_bool.
      DATA(t82) = CAST zcl_lnt_indentation_conf( t75 ).
      t81 = t82->global_class_skip_first.
      DATA(t83) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t83->has = abap_true.
      t83->value = t81.
      t77 = t83.
    ENDIF.
    t74 = t77.
    t62 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t63 i_slctn_scrn_blck_indnttn = t73 i_global_class_skip_first = t74 ).
    me->options = t62.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/pretty_printer/pretty_printer.ts:29|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1277_7d3819128f6e.
  ENDMETHOD.
ENDCLASS.

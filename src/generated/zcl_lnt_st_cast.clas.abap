* TS: src/abap/2_statements/expressions/cast.ts:8:1 Cast
CLASS zcl_lnt_st_cast DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_cast IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t10 = zcl_lnt_st_combi_module=>tok( i_t = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t12 TYPE REF TO object.
      t12 = t10.
      t9->oval = t12.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t16 i_second = t17 i_rest = t18 ).
    t2 = t15.
    t1 = t2.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = |CAST|.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
    t31 = zcl_lnt_st_combi_module=>tok( i_t = t32 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t31.
      t30->oval = t33.
    ENDIF.
    APPEND t30 TO t29->items.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>opt_prio( i_first = t37 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t36.
      t35->oval = t39.
    ENDIF.
    APPEND t35 TO t34->items.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    APPEND t41 TO t40->items.
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zif_lnt_statement_runnable( t1 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t45.
      t44->oval = t46.
    ENDIF.
    APPEND t44 TO t43->items.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt( i_first = t50 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t49.
      t48->oval = t52.
    ENDIF.
    APPEND t48 TO t47->items.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t54) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t20 = t53.
    t19 = t20.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t61.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t61 = zcl_lnt_version_module=>release_b8cd.
    DATA(t62) = |v740sp02|.
    t60 = t61->get( p0 = t62 ).
    t59 = t60.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t59.
      t58->oval = t63.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zif_lnt_statement_runnable( t19 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64->oval = t66.
    ENDIF.
    DATA t67 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA t69 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA(t71) = abap_true.
      IF t71 = abap_true.
        DATA(t72) = |OpenABAP|.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t72.
        t70 = t73.
      ELSE.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t70 = t74.
      ENDIF.
      t69 = NEW zcl_lnt_iver_options( i_also = t70 ).
      t67 = t69.
    ELSE.
      DATA t75 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t75.
      t67 = t75.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t58 i_first = t64 i_opts = t67 ).
    result = t57.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
  ENDMETHOD.
ENDCLASS.

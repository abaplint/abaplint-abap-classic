* TS: src/objects/type_pool.ts:4:1 TypePool
CLASS zcl_lnt_ob_type_pool DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_type_pool IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = |TYPE|.
    result = t1.

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
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t1.
    t15 = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = t12.
    t11 = t17.
    result = t11.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/type_pool.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = t12.
    IF t17 IS BOUND.
      t16 = t17.
    ENDIF.
    IF t16 IS NOT BOUND.
      t15 = abap_true.
    ELSE.
      t15 = xsdbool( t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t15 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t14 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t21) = t12.
      t20 = t21.
      DATA(t22) = |abapGit|.
      t19 = t20->get( p0 = t22 ).
      t14 = t19.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = t10.
    IF t26 IS BOUND.
      t25 = t26.
    ENDIF.
    IF t25 IS NOT BOUND.
      t24 = abap_true.
    ELSE.
      t24 = xsdbool( t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t24 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      t23 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t30) = t10.
      t29 = t30.
      DATA(t31) = |asx:abap|.
      t28 = t29->get( p0 = t31 ).
      t23 = t28.
    ENDIF.
    t9 = t23.
    t8 = t9.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = t8.
    IF t35 IS BOUND.
      t34 = t35.
    ENDIF.
    IF t34 IS NOT BOUND.
      t33 = abap_true.
    ELSE.
      t33 = xsdbool( t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t33 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t32 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t39) = t8.
      t38 = t39.
      DATA(t40) = |asx:values|.
      t37 = t38->get( p0 = t40 ).
      t32 = t37.
    ENDIF.
    t7 = t32.
    t6 = t7.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = t6.
    IF t44 IS BOUND.
      t43 = t44.
    ENDIF.
    IF t43 IS NOT BOUND.
      t42 = abap_true.
    ELSE.
      t42 = xsdbool( t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t42 = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t41 = t45.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t48) = t6.
      t47 = t48.
      DATA(t49) = |DDTEXT|.
      t46 = t47->get( p0 = t49 ).
      t41 = t46.
    ENDIF.
    t5 = t41.
    t4 = t5.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = t4.
    t51 = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    DATA t54 TYPE abap_bool.
    DATA(t55) = t4.
    t54 = xsdbool( t55 IS BOUND ).
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t4.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t50.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t60 = t63.
        ELSE.
          DATA t64 TYPE string.
          DATA(t65) = t50.
          t64 = t65->as_string( ).
          DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t66->has = abap_true.
          t66->value = t64.
          t60 = t66.
        ENDIF.
        t56 = t60.
      ENDIF.
      t53 = t56.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA(t69) = ||.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t67 = t71.
      ENDIF.
      t53 = t67.
    ENDIF.
    t3 = t53.
    result = t3.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1263_41918f34a737.
  ENDMETHOD.
ENDCLASS.

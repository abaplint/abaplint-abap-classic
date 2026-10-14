* TS: src/abap/types/method_implementation.ts:6:1 MethodImplementation
CLASS zcl_lnt_ty_mthd_implmnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_filename TYPE string.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_mthd_implmnttn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = i_filename.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_structure.
    DATA(t6) = CAST zcl_lnt_structure_node( t1 ).
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_method ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |MethodImplementation, expected Method as part of input node|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA(t16) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    t15 = t16->find_first_expression( i_type_9913 = t17 ).
    t14 = t15.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = CAST zcl_lnt_expression_node( t14 ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zcl_lnt_expression_node( t19 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    IF t18 = abap_true.
      DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = |MethodImplementation, expected MethodName as part of input n|.
        t29 = t29 && |ode|.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
      t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t27 ).
      t25 = NEW #( ).
      t25->payload = t26.
      RAISE EXCEPTION t25.
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_abstract_token.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA(t34) = CAST zcl_lnt_expression_node( t14 ).
    t33 = t34.
    t32 = t33->get_first_token( ).
    DATA(t35) = t2.
    super->constructor( i_token = t32 i_filename = t35 ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1042_57ec2010231a.
  ENDMETHOD.
ENDCLASS.

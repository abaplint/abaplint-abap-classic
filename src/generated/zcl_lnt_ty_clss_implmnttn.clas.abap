* TS: src/abap/types/class_implementation.ts:9:1 ClassImplementation
CLASS zcl_lnt_ty_clss_implmnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_class_implementation.
    DATA node TYPE REF TO zcl_lnt_structure_node.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_filename TYPE string.
    METHODS get_method_implementations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_method_implementation IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ty_mthd_implmnttn.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_clss_implmnttn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_structure_node( i_node ).
    DATA(t2) = i_filename.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_structure.
    DATA(t6) = CAST zcl_lnt_structure_node( t1 ).
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd(  ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_clss_implmnttn ).
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
        DATA(t11) = |ClassImplementation, unexpected node type|.
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
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_statement_node.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    DATA(t20) = CAST zcl_lnt_structure_node( t1 ).
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d396_f66c9403a435 ).
    t19 = t20->find_first_statement( i_type_9913 = t21 ).
    t18 = t19.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
    t17 = t18->find_first_expression( i_type_9913 = t22 ).
    t16 = t17.
    t15 = t16->get_first_token(  ).
    t14 = t15.
    DATA(t23) = CAST zcl_lnt_abstract_token( t14 ).
    DATA(t24) = t2.
    super->constructor( i_token = t23 i_filename = t24 ).
    DATA(t25) = CAST zcl_lnt_structure_node( t1 ).
    me->node = t25.
  ENDMETHOD.
  METHOD get_method_implementations.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/class_implementation.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_method_implementation.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/class_implementation.ts:30|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1033_4175388fb722.
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_method_implementations.
    result = me->get_method_implementations(  ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_method_implementation.
    result = me->get_method_implementation(  i_name = i_name ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~equals.
    result = me->equals(  i_id = i_id ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_end.
    result = me->get_end(  ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_filename.
    result = me->get_filename(  ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_name.
    result = me->get_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_start.
    result = me->get_start(  ).
  ENDMETHOD.
  METHOD zif_lnt_class_implementation~get_token.
    result = me->get_token(  ).
  ENDMETHOD.
ENDCLASS.

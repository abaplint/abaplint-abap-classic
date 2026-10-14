* TS: src/issue.ts:30:1 Issue
CLASS zcl_lnt_issue DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_eff0d09a.
    DATA data_56cc TYPE REF TO zcl_lnt_iissue_data.
    METHODS constructor IMPORTING i_data_dc02 TYPE REF TO zcl_lnt_iissue_data.
    CLASS-METHODS at_row IMPORTING i_file TYPE REF TO zif_lnt_file i_row TYPE int8 i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_statement IMPORTING i_file TYPE REF TO zif_lnt_file i_statement TYPE REF TO zcl_lnt_statement_node i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba i_alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_position IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_row_range IMPORTING i_file TYPE REF TO zif_lnt_file i_row TYPE int8 i_start_col TYPE int8 i_end_col TYPE int8 i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE
    REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_range IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba i_alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_token IMPORTING i_file TYPE REF TO zif_lnt_file i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_token_filename IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_identifier IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_iissue_data.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_key RETURNING VALUE(result) TYPE string.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS get_default_fix RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_alternative_fixes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_severity RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_issue IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_iissue_data( i_data_dc02 ).
    DATA(t2) = CAST zcl_lnt_iissue_data( t1 ).
    me->data_56cc = t2.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA(t5) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t4 = t5->start.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_virtual_position ).
    IF t3 = abap_true.
      DATA(t6) = CAST zcl_lnt_iissue_data( me->data_56cc ).
      DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t7.
      t6->default_fix = t7.
    ENDIF.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE int8.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t11 = t12->start.
    t10 = t11.
    DATA t13 TYPE int8.
    DATA(t14) = CAST zcl_lnt_position( t10 ).
    t13 = t14->col.
    t9 = t13.
    DATA(t15) = CONV int8( 1 ).
    t8 = xsdbool( t9 < t15 ).
    IF t8 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = |issue, start col < 1|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      RAISE EXCEPTION t16.
    ELSE.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE int8.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA(t27) = CAST zcl_lnt_iissue_data( me->data_56cc ).
      t26 = t27->end.
      t25 = t26.
      DATA t28 TYPE int8.
      DATA(t29) = CAST zcl_lnt_position( t25 ).
      t28 = t29->col.
      t24 = t28.
      DATA(t30) = CONV int8( 1 ).
      t23 = xsdbool( t24 < t30 ).
      IF t23 = abap_true.
        DATA t31 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA(t34) = abap_true.
        IF t34 = abap_true.
          DATA(t35) = |issue, end col < 1|.
          DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t36->has = abap_true.
          t36->value = t35.
          t33 = t36.
        ELSE.
          DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t37.
          t33 = t37.
        ENDIF.
        t32 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t33 ).
        t31 = NEW #( ).
        t31->payload = t32.
        RAISE EXCEPTION t31.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD at_row.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = i_row.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA(t8) = t2.
    DATA(t9) = CONV int8( 1 ).
    t7 = NEW zcl_lnt_position( i_row = t8 i_col = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zcl_lnt_position.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    DATA(t12) = t2.
    DATA(t13) = VALUE int8( ).
    DATA(t14) = VALUE int8( ).
    DATA(t15) = VALUE i( ).
    DATA(t16) = VALUE string( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t18) = CAST zif_lnt_file( t1 ).
    t17 = t18->get_raw_rows( ).
    DATA(t19) = VALUE i( ).
    DATA t20 TYPE int8.
    DATA(t21) = t2.
    DATA(t22) = CONV int8( 1 ).
    t20 = t21 - t22.
    IF t20 < range_int8_bound_min OR t20 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    IF t20 < range_int_check_lo_nzik0zk OR t20 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t19 = t20.
    t19 = t19 + 1.
    READ TABLE t17->items INDEX t19 INTO t16.
    DATA(t23) = strlen( t16 ).
    t15 = t23.
    t14 = t15.
    DATA(t24) = CONV int8( 1 ).
    t13 = t14 + t24.
    IF t13 < range_int8_bound_min OR t13 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t11 = NEW zcl_lnt_position( i_row = t12 i_col = t13 ).
    t10 = t11.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = VALUE string( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t29) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
      t28 = t29.
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = CAST zlnt_runtime_opti_4ba3bdccd169( t28 ).
      IF t32 IS INITIAL.
        t31 = abap_true.
      ELSEIF t32->has = abap_false.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA(t33) = |Error|.
        t30 = t33.
      ELSE.
        DATA t34 TYPE string.
        DATA(t35) = CAST zlnt_runtime_opti_4ba3bdccd169( t28 ).
        t34 = t35->value.
        t30 = t34.
      ENDIF.
      t27 = t30.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t27.
      t25 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t25 = t37.
    ENDIF.
    t5 = t25.
    DATA t38 TYPE REF TO zcl_lnt_issue.
    DATA t39 TYPE REF TO zcl_lnt_iissue_data.
    DATA t40 TYPE string.
    DATA(t41) = CAST zif_lnt_file( t1 ).
    t40 = t41->get_filename( ).
    DATA(t42) = t3.
    DATA(t43) = t4.
    DATA(t44) = CAST zcl_lnt_position( t6 ).
    DATA(t45) = CAST zcl_lnt_position( t10 ).
    DATA t46 TYPE string.
    DATA(t47) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    t46 = t47->value.
    DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    t39 = NEW zcl_lnt_iissue_data( i_filename = t40 i_message_26cb = t42 i_key = t43 i_start = t44 i_end = t45 i_severity = t46 i_default_fix = t48 i_alternative_fixes = t49 ).
    t38 = NEW zcl_lnt_issue( i_data_dc02 = t39 ).
    result = t38.

  ENDMETHOD.
  METHOD at_statement.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t6) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( i_alternative_fixes ).
    DATA t8 TYPE REF TO zcl_lnt_issue.
    CLEAR t8.
    DATA(t9) = CAST zif_lnt_file( t1 ).
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = CAST zcl_lnt_statement_node( t2 ).
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = CAST zcl_lnt_statement_node( t11 ).
    t15 = t16->get_first_token( ).
    t14 = t15.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA(t18) = CAST zcl_lnt_abstract_token( t14 ).
    t17 = t18->start.
    t13 = t17.
    t10 = t13.
    DATA t19 TYPE REF TO zcl_lnt_position.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA(t21) = CAST zcl_lnt_statement_node( t2 ).
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_position.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = CAST zcl_lnt_statement_node( t20 ).
    t24 = t25->get_last_token( ).
    t23 = t24.
    DATA t26 TYPE REF TO zcl_lnt_position.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t28) = CAST zcl_lnt_abstract_token( t23 ).
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_position.
    CLEAR t29.
    DATA t30 TYPE int8.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA(t33) = CAST zcl_lnt_abstract_token( t27 ).
    t32 = t33->start.
    t31 = t32.
    DATA t34 TYPE int8.
    DATA(t35) = CAST zcl_lnt_position( t31 ).
    t34 = t35->row.
    t30 = t34.
    DATA t36 TYPE int8.
    DATA t37 TYPE int8.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA(t40) = CAST zcl_lnt_abstract_token( t27 ).
    t39 = t40->start.
    t38 = t39.
    DATA t41 TYPE int8.
    DATA(t42) = CAST zcl_lnt_position( t38 ).
    t41 = t42->col.
    t37 = t41.
    DATA t43 TYPE int8.
    DATA t44 TYPE i.
    DATA t45 TYPE string.
    DATA(t46) = CAST zcl_lnt_abstract_token( t27 ).
    t45 = t46->str.
    DATA(t47) = strlen( t45 ).
    t44 = t47.
    t43 = t44.
    t36 = t37 + t43.
    IF t36 < range_int8_bound_min OR t36 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t29 = NEW zcl_lnt_position( i_row = t30 i_col = t36 ).
    t26 = t29.
    t22 = t26.
    t19 = t22.
    DATA(t48) = t3.
    DATA(t49) = t4.
    DATA(t50) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    DATA(t51) = CAST zlnt_runtime_map__4fdf767b61ba( t6 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t8 = zcl_lnt_issue=>at_range( i_file = t9 i_start = t10 i_end = t19 i_message_26cb = t48 i_key = t49 i_severity = t50 i_fix = t51 i_alternative_fixes = t52 ).
    result = t8.

  ENDMETHOD.
  METHOD at_position.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_start ).
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t6) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA t7 TYPE int8.
    DATA t8 TYPE int8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = CAST zcl_lnt_position( t2 ).
    t9 = t10.
    DATA t11 TYPE int8.
    DATA(t12) = CAST zcl_lnt_position( t9 ).
    t11 = t12->row.
    t8 = t11.
    t7 = t8.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    DATA(t15) = t7.
    DATA(t16) = VALUE int8( ).
    DATA(t17) = VALUE int8( ).
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t21) = CAST zif_lnt_file( t1 ).
    t20 = t21->get_raw_rows( ).
    DATA(t22) = VALUE i( ).
    DATA t23 TYPE int8.
    DATA(t24) = t7.
    DATA(t25) = CONV int8( 1 ).
    t23 = t24 - t25.
    IF t23 < range_int8_bound_min OR t23 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    IF t23 < range_int_check_lo_nzik0zk OR t23 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t22 = t23.
    t22 = t22 + 1.
    READ TABLE t20->items INDEX t22 INTO t19.
    DATA(t26) = strlen( t19 ).
    t18 = t26.
    t17 = t18.
    DATA(t27) = CONV int8( 1 ).
    t16 = t17 + t27.
    IF t16 < range_int8_bound_min OR t16 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t16 ).
    t13 = t14.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = VALUE string( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
      t31 = t32.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = CAST zlnt_runtime_opti_4ba3bdccd169( t31 ).
      IF t35 IS INITIAL.
        t34 = abap_true.
      ELSEIF t35->has = abap_false.
        t34 = abap_true.
      ENDIF.
      IF t34 = abap_true.
        DATA(t36) = |Error|.
        t33 = t36.
      ELSE.
        DATA t37 TYPE string.
        DATA(t38) = CAST zlnt_runtime_opti_4ba3bdccd169( t31 ).
        t37 = t38->value.
        t33 = t37.
      ENDIF.
      t30 = t33.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t30.
      t28 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t28 = t40.
    ENDIF.
    t5 = t28.
    DATA t41 TYPE REF TO zcl_lnt_issue.
    DATA t42 TYPE REF TO zcl_lnt_iissue_data.
    DATA t43 TYPE string.
    DATA(t44) = CAST zif_lnt_file( t1 ).
    t43 = t44->get_filename( ).
    DATA(t45) = t3.
    DATA(t46) = t4.
    DATA(t47) = CAST zcl_lnt_position( t2 ).
    DATA(t48) = CAST zcl_lnt_position( t13 ).
    DATA t49 TYPE string.
    DATA(t50) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    t49 = t50->value.
    DATA(t51) = CAST zlnt_runtime_map__4fdf767b61ba( t6 ).
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    t42 = NEW zcl_lnt_iissue_data( i_filename = t43 i_message_26cb = t45 i_key = t46 i_start = t47 i_end = t48 i_severity = t49 i_default_fix = t51 i_alternative_fixes = t52 ).
    t41 = NEW zcl_lnt_issue( i_data_dc02 = t42 ).
    result = t41.

  ENDMETHOD.
  METHOD at_row_range.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = i_row.
    DATA(t3) = i_start_col.
    DATA(t4) = i_end_col.
    DATA(t5) = i_message_26cb.
    DATA(t6) = i_key.
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t8) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t2.
    DATA(t12) = t3.
    t10 = NEW zcl_lnt_position( i_row = t11 i_col = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t2.
    DATA(t16) = t4.
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t16 ).
    t13 = t14.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
      t20 = t21.
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = CAST zlnt_runtime_opti_4ba3bdccd169( t20 ).
      IF t24 IS INITIAL.
        t23 = abap_true.
      ELSEIF t24->has = abap_false.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA(t25) = |Error|.
        t22 = t25.
      ELSE.
        DATA t26 TYPE string.
        DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t20 ).
        t26 = t27->value.
        t22 = t26.
      ENDIF.
      t19 = t22.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t19.
      t17 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t17 = t29.
    ENDIF.
    t7 = t17.
    DATA t30 TYPE REF TO zcl_lnt_issue.
    DATA t31 TYPE REF TO zcl_lnt_iissue_data.
    DATA t32 TYPE string.
    DATA(t33) = CAST zif_lnt_file( t1 ).
    t32 = t33->get_filename( ).
    DATA(t34) = t5.
    DATA(t35) = t6.
    DATA(t36) = CAST zcl_lnt_position( t9 ).
    DATA(t37) = CAST zcl_lnt_position( t13 ).
    DATA t38 TYPE string.
    DATA(t39) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    t38 = t39->value.
    DATA(t40) = CAST zlnt_runtime_map__4fdf767b61ba( t8 ).
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    t31 = NEW zcl_lnt_iissue_data( i_filename = t32 i_message_26cb = t34 i_key = t35 i_start = t36 i_end = t37 i_severity = t38 i_default_fix = t40 i_alternative_fixes = t41 ).
    t30 = NEW zcl_lnt_issue( i_data_dc02 = t31 ).
    result = t30.

  ENDMETHOD.
  METHOD at_range.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_start ).
    DATA(t3) = CAST zcl_lnt_position( i_end ).
    DATA(t4) = i_message_26cb.
    DATA(t5) = i_key.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t7) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( i_alternative_fixes ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
      t12 = t13.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
      IF t16 IS INITIAL.
        t15 = abap_true.
      ELSEIF t16->has = abap_false.
        t15 = abap_true.
      ENDIF.
      IF t15 = abap_true.
        DATA(t17) = |Error|.
        t14 = t17.
      ELSE.
        DATA t18 TYPE string.
        DATA(t19) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
        t18 = t19->value.
        t14 = t18.
      ENDIF.
      t11 = t14.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t11.
      t9 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t6 = t9.
    DATA t22 TYPE REF TO zcl_lnt_issue.
    DATA t23 TYPE REF TO zcl_lnt_iissue_data.
    DATA t24 TYPE string.
    DATA(t25) = CAST zif_lnt_file( t1 ).
    t24 = t25->get_filename( ).
    DATA(t26) = t4.
    DATA(t27) = t5.
    DATA(t28) = CAST zcl_lnt_position( t2 ).
    DATA(t29) = CAST zcl_lnt_position( t3 ).
    DATA t30 TYPE string.
    DATA(t31) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    t30 = t31->value.
    DATA(t32) = CAST zlnt_runtime_map__4fdf767b61ba( t7 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t23 = NEW zcl_lnt_iissue_data( i_filename = t24 i_message_26cb = t26 i_key = t27 i_start = t28 i_end = t29 i_severity = t30 i_default_fix = t32 i_alternative_fixes = t33 ).
    t22 = NEW zcl_lnt_issue( i_data_dc02 = t23 ).
    result = t22.

  ENDMETHOD.
  METHOD at_token.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t6) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
      t10 = t11.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
      IF t14 IS INITIAL.
        t13 = abap_true.
      ELSEIF t14->has = abap_false.
        t13 = abap_true.
      ENDIF.
      IF t13 = abap_true.
        DATA(t15) = |Error|.
        t12 = t15.
      ELSE.
        DATA t16 TYPE string.
        DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
        t16 = t17->value.
        t12 = t16.
      ENDIF.
      t9 = t12.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t9.
      t7 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t7 = t19.
    ENDIF.
    t5 = t7.
    DATA t20 TYPE REF TO zcl_lnt_issue.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    CLEAR t21.
    DATA t22 TYPE string.
    DATA(t23) = CAST zif_lnt_file( t1 ).
    t22 = t23->get_filename( ).
    DATA(t24) = t3.
    DATA(t25) = t4.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t28) = CAST zcl_lnt_abstract_token( t2 ).
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA(t30) = CAST zcl_lnt_abstract_token( t27 ).
    t29 = t30->start.
    t26 = t29.
    DATA t31 TYPE REF TO zcl_lnt_position.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t33) = CAST zcl_lnt_abstract_token( t2 ).
    t32 = t33.
    DATA t34 TYPE REF TO zcl_lnt_position.
    CLEAR t34.
    DATA t35 TYPE int8.
    DATA t36 TYPE REF TO zcl_lnt_position.
    DATA t37 TYPE REF TO zcl_lnt_position.
    DATA(t38) = CAST zcl_lnt_abstract_token( t32 ).
    t37 = t38->start.
    t36 = t37.
    DATA t39 TYPE int8.
    DATA(t40) = CAST zcl_lnt_position( t36 ).
    t39 = t40->row.
    t35 = t39.
    DATA t41 TYPE int8.
    DATA t42 TYPE int8.
    DATA t43 TYPE REF TO zcl_lnt_position.
    DATA t44 TYPE REF TO zcl_lnt_position.
    DATA(t45) = CAST zcl_lnt_abstract_token( t32 ).
    t44 = t45->start.
    t43 = t44.
    DATA t46 TYPE int8.
    DATA(t47) = CAST zcl_lnt_position( t43 ).
    t46 = t47->col.
    t42 = t46.
    DATA t48 TYPE int8.
    DATA t49 TYPE i.
    DATA t50 TYPE string.
    DATA(t51) = CAST zcl_lnt_abstract_token( t32 ).
    t50 = t51->str.
    DATA(t52) = strlen( t50 ).
    t49 = t52.
    t48 = t49.
    t41 = t42 + t48.
    IF t41 < range_int8_bound_min OR t41 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t34 = NEW zcl_lnt_position( i_row = t35 i_col = t41 ).
    t31 = t34.
    DATA t53 TYPE string.
    DATA(t54) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    t53 = t54->value.
    DATA(t55) = CAST zlnt_runtime_map__4fdf767b61ba( t6 ).
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t24 i_key = t25 i_start = t26 i_end = t31 i_severity = t53 i_default_fix = t55 i_alternative_fixes = t56 ).
    t20 = NEW zcl_lnt_issue( i_data_dc02 = t21 ).
    result = t20.

  ENDMETHOD.
  METHOD at_token_filename.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t6) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
      t10 = t11.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
      IF t14 IS INITIAL.
        t13 = abap_true.
      ELSEIF t14->has = abap_false.
        t13 = abap_true.
      ENDIF.
      IF t13 = abap_true.
        DATA(t15) = |Error|.
        t12 = t15.
      ELSE.
        DATA t16 TYPE string.
        DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
        t16 = t17->value.
        t12 = t16.
      ENDIF.
      t9 = t12.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t9.
      t7 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t7 = t19.
    ENDIF.
    t5 = t7.
    DATA t20 TYPE REF TO zcl_lnt_issue.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    CLEAR t21.
    DATA(t22) = t1.
    DATA(t23) = t3.
    DATA(t24) = t4.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t27) = CAST zcl_lnt_abstract_token( t2 ).
    t26 = t27.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA(t29) = CAST zcl_lnt_abstract_token( t26 ).
    t28 = t29->start.
    t25 = t28.
    DATA t30 TYPE REF TO zcl_lnt_position.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t32) = CAST zcl_lnt_abstract_token( t2 ).
    t31 = t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    CLEAR t33.
    DATA t34 TYPE int8.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_position.
    DATA(t37) = CAST zcl_lnt_abstract_token( t31 ).
    t36 = t37->start.
    t35 = t36.
    DATA t38 TYPE int8.
    DATA(t39) = CAST zcl_lnt_position( t35 ).
    t38 = t39->row.
    t34 = t38.
    DATA t40 TYPE int8.
    DATA t41 TYPE int8.
    DATA t42 TYPE REF TO zcl_lnt_position.
    DATA t43 TYPE REF TO zcl_lnt_position.
    DATA(t44) = CAST zcl_lnt_abstract_token( t31 ).
    t43 = t44->start.
    t42 = t43.
    DATA t45 TYPE int8.
    DATA(t46) = CAST zcl_lnt_position( t42 ).
    t45 = t46->col.
    t41 = t45.
    DATA t47 TYPE int8.
    DATA t48 TYPE i.
    DATA t49 TYPE string.
    DATA(t50) = CAST zcl_lnt_abstract_token( t31 ).
    t49 = t50->str.
    DATA(t51) = strlen( t49 ).
    t48 = t51.
    t47 = t48.
    t40 = t41 + t47.
    IF t40 < range_int8_bound_min OR t40 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t33 = NEW zcl_lnt_position( i_row = t34 i_col = t40 ).
    t30 = t33.
    DATA t52 TYPE string.
    DATA(t53) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    t52 = t53->value.
    DATA(t54) = CAST zlnt_runtime_map__4fdf767b61ba( t6 ).
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t23 i_key = t24 i_start = t25 i_end = t30 i_severity = t52 i_default_fix = t54 i_alternative_fixes = t55 ).
    t20 = NEW zcl_lnt_issue( i_data_dc02 = t21 ).
    result = t20.

  ENDMETHOD.
  METHOD at_identifier.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_key.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_severity ).
    DATA(t5) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = VALUE string( ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
      t9 = t10.
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
      IF t13 IS INITIAL.
        t12 = abap_true.
      ELSEIF t13->has = abap_false.
        t12 = abap_true.
      ENDIF.
      IF t12 = abap_true.
        DATA(t14) = |Error|.
        t11 = t14.
      ELSE.
        DATA t15 TYPE string.
        DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
        t15 = t16->value.
        t11 = t15.
      ENDIF.
      t8 = t11.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t8.
      t6 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t6 = t18.
    ENDIF.
    t4 = t6.
    DATA t19 TYPE REF TO zcl_lnt_issue.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_iissue_data.
    CLEAR t20.
    DATA t21 TYPE string.
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t23) = CAST zcl_lnt_fi_identifier( t1 ).
    t22 = t23.
    DATA t24 TYPE string.
    DATA(t25) = CAST zcl_lnt_fi_identifier( t22 ).
    t24 = t25->filename.
    t21 = t24.
    DATA(t26) = t2.
    DATA(t27) = t3.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t30) = CAST zcl_lnt_fi_identifier( t1 ).
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA t32 TYPE REF TO zcl_lnt_abstract_token.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t34) = CAST zcl_lnt_fi_identifier( t29 ).
    t33 = t34->token.
    t32 = t33.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA(t36) = CAST zcl_lnt_abstract_token( t32 ).
    t35 = t36->start.
    t31 = t35.
    t28 = t31.
    DATA t37 TYPE REF TO zcl_lnt_position.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t39) = CAST zcl_lnt_fi_identifier( t1 ).
    t38 = t39.
    DATA t40 TYPE REF TO zcl_lnt_position.
    CLEAR t40.
    DATA t41 TYPE REF TO zcl_lnt_abstract_token.
    DATA t42 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t43) = CAST zcl_lnt_fi_identifier( t38 ).
    t42 = t43->token.
    t41 = t42.
    DATA t44 TYPE REF TO zcl_lnt_position.
    CLEAR t44.
    DATA t45 TYPE int8.
    DATA t46 TYPE REF TO zcl_lnt_position.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA(t48) = CAST zcl_lnt_abstract_token( t41 ).
    t47 = t48->start.
    t46 = t47.
    DATA t49 TYPE int8.
    DATA(t50) = CAST zcl_lnt_position( t46 ).
    t49 = t50->row.
    t45 = t49.
    DATA t51 TYPE int8.
    DATA t52 TYPE int8.
    DATA t53 TYPE REF TO zcl_lnt_position.
    DATA t54 TYPE REF TO zcl_lnt_position.
    DATA(t55) = CAST zcl_lnt_abstract_token( t41 ).
    t54 = t55->start.
    t53 = t54.
    DATA t56 TYPE int8.
    DATA(t57) = CAST zcl_lnt_position( t53 ).
    t56 = t57->col.
    t52 = t56.
    DATA t58 TYPE int8.
    DATA t59 TYPE i.
    DATA t60 TYPE string.
    DATA(t61) = CAST zcl_lnt_abstract_token( t41 ).
    t60 = t61->str.
    DATA(t62) = strlen( t60 ).
    t59 = t62.
    t58 = t59.
    t51 = t52 + t58.
    IF t51 < range_int8_bound_min OR t51 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t44 = NEW zcl_lnt_position( i_row = t45 i_col = t51 ).
    t40 = t44.
    t37 = t40.
    DATA t63 TYPE string.
    DATA(t64) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    t63 = t64->value.
    DATA(t65) = CAST zlnt_runtime_map__4fdf767b61ba( t5 ).
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    t20 = NEW zcl_lnt_iissue_data( i_filename = t21 i_message_26cb = t26 i_key = t27 i_start = t28 i_end = t37 i_severity = t63 i_default_fix = t65 i_alternative_fixes = t66 ).
    t19 = NEW zcl_lnt_issue( i_data_dc02 = t20 ).
    result = t19.

  ENDMETHOD.
  METHOD get_data.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/issue.ts:154|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_message.
    DATA t1 TYPE string.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->message_25cb.
    result = t1.

  ENDMETHOD.
  METHOD get_key.
    DATA t1 TYPE string.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->key.
    result = t1.

  ENDMETHOD.
  METHOD get_start.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->start.
    result = t1.

  ENDMETHOD.
  METHOD get_end.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->end.
    result = t1.

  ENDMETHOD.
  METHOD get_filename.
    DATA t1 TYPE string.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->filename.
    result = t1.

  ENDMETHOD.
  METHOD get_default_fix.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/issue.ts:178|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_alternative_fixes.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/issue.ts:182|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_severity.
    DATA t1 TYPE string.
    DATA(t2) = CAST zcl_lnt_iissue_data( me->data_56cc ).
    t1 = t2->severity.
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1061_f55ce9cf1de0.
  ENDMETHOD.
  METHOD zif_lnt_union_eff0d09a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.

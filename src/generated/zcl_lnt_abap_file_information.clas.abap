* TS: src/abap/4_file_information/abap_file_information.ts:4:1 ABAPFileInformation
CLASS zcl_lnt_abap_file_information DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_abap_file_information.
    DATA parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS constructor IMPORTING i_parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS list_class_implementations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_interface_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_intrfc_dfntn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS list_class_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_class_definition_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS gt_clss_implmnttn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    METHODS list_form_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_file_information IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_prsd_fl_infrmtn( i_parsed ).
    DATA(t2) = CAST zcl_lnt_prsd_fl_infrmtn( t1 ).
    me->parsed = t2.
  ENDMETHOD.

  METHOD list_class_implementations.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t1 = t2->implementations.
    result = t1.

  ENDMETHOD.

  METHOD list_interface_definitions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t1 = t2->interfaces.
    result = t1.

  ENDMETHOD.

  METHOD gt_intrfc_dfntn_by_nm.
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
    DATA(t7) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t6 = t7->interfaces.
    DATA t8 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t6->items INTO t9.
      t8 ?= t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t15) = CAST zcl_lnt_inf_intrfc_dfntn( t8 ).
      t14 = t15->identifier.
      t13 = t14.
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = CAST zcl_lnt_fi_identifier( t13 ).
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE string.
      DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
      t22 = t23->str.
      t18 = t22.
      t17 = t18.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = t17.
      DATA(t27) = 0.
      DATA(t28) = 1.
      DATA(t29) = strlen( t26 ).
      IF t27 < 0.
        t27 = t27 + t29.
        IF t27 < 0.
          t27 = 0.
        ENDIF.
      ENDIF.
      IF t27 > t29 OR t28 <= 0.
        CLEAR t25.
      ELSE.
        IF t28 > t29 - t27.
          t28 = t29 - t27.
        ENDIF.
        t25 = t26+t27(t28).
      ENDIF.
      DATA(t30) = |!|.
      t24 = xsdbool( t25 = t30 ).
      IF t24 = abap_true.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE string.
        DATA(t33) = t17.
        t32 = t33.
        DATA(t34) = VALUE string( ).
        DATA(t35) = t32.
        DATA(t36) = 1.
        DATA t37 TYPE i.
        DATA(t38) = t32.
        DATA(t39) = strlen( t38 ).
        t37 = t39.
        DATA(t40) = strlen( t35 ).
        IF t36 < 0.
          t36 = t36 + t40.
          IF t36 < 0.
            t36 = 0.
          ENDIF.
        ENDIF.
        IF t36 > t40 OR t37 <= 0.
          CLEAR t34.
        ELSE.
          IF t37 > t40 - t36.
            t37 = t40 - t36.
          ENDIF.
          t34 = t35+t36(t37).
        ENDIF.
        t31 = t34.
        t17 = t31.
      ENDIF.
      DATA(t41) = t17.
      t16 = t41.
      t12 = t16.
      DATA(t42) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA(t43) = t2.
      t10 = xsdbool( t11 = t43 ).
      IF t10 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = CAST zcl_lnt_inf_intrfc_dfntn( t8 ).
          t44 = t46.
        ELSE.
          DATA t47 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          CLEAR t47.
          t44 = t47.
        ENDIF.
        result = t44.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t48 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t48.
    result = t48.

  ENDMETHOD.

  METHOD list_class_definitions.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t1 = t2->classes.
    result = t1.

  ENDMETHOD.

  METHOD get_class_definition_by_name.
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
    DATA(t7) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t6 = t7->classes.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t6->items INTO t9.
      t8 ?= t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t15) = CAST zcl_lnt_info_class_definition( t8 ).
      t14 = t15->identifier.
      t13 = t14.
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = CAST zcl_lnt_fi_identifier( t13 ).
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE string.
      DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
      t22 = t23->str.
      t18 = t22.
      t17 = t18.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = t17.
      DATA(t27) = 0.
      DATA(t28) = 1.
      DATA(t29) = strlen( t26 ).
      IF t27 < 0.
        t27 = t27 + t29.
        IF t27 < 0.
          t27 = 0.
        ENDIF.
      ENDIF.
      IF t27 > t29 OR t28 <= 0.
        CLEAR t25.
      ELSE.
        IF t28 > t29 - t27.
          t28 = t29 - t27.
        ENDIF.
        t25 = t26+t27(t28).
      ENDIF.
      DATA(t30) = |!|.
      t24 = xsdbool( t25 = t30 ).
      IF t24 = abap_true.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE string.
        DATA(t33) = t17.
        t32 = t33.
        DATA(t34) = VALUE string( ).
        DATA(t35) = t32.
        DATA(t36) = 1.
        DATA t37 TYPE i.
        DATA(t38) = t32.
        DATA(t39) = strlen( t38 ).
        t37 = t39.
        DATA(t40) = strlen( t35 ).
        IF t36 < 0.
          t36 = t36 + t40.
          IF t36 < 0.
            t36 = 0.
          ENDIF.
        ENDIF.
        IF t36 > t40 OR t37 <= 0.
          CLEAR t34.
        ELSE.
          IF t37 > t40 - t36.
            t37 = t40 - t36.
          ENDIF.
          t34 = t35+t36(t37).
        ENDIF.
        t31 = t34.
        t17 = t31.
      ENDIF.
      DATA(t41) = t17.
      t16 = t41.
      t12 = t16.
      DATA(t42) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA(t43) = t2.
      t10 = xsdbool( t11 = t43 ).
      IF t10 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = CAST zcl_lnt_info_class_definition( t8 ).
          t44 = t46.
        ELSE.
          DATA t47 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t47.
          t44 = t47.
        ENDIF.
        result = t44.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t48 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t48.
    result = t48.

  ENDMETHOD.

  METHOD gt_clss_implmnttn_by_nm.
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
    DATA(t7) = CAST zcl_lnt_prsd_fl_infrmtn( me->parsed ).
    t6 = t7->implementations.
    DATA t8 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t6->items INTO t9.
      t8 ?= t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE string( ).
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t15) = CAST zcl_lnt_inf_clss_implmnttn( t8 ).
      t14 = t15->identifier.
      t13 = t14.
      DATA(t16) = VALUE string( ).
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = CAST zcl_lnt_fi_identifier( t13 ).
      t20 = t21->token.
      t19 = t20.
      DATA t22 TYPE string.
      DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
      t22 = t23->str.
      t18 = t22.
      t17 = t18.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE string( ).
      DATA(t26) = t17.
      DATA(t27) = 0.
      DATA(t28) = 1.
      DATA(t29) = strlen( t26 ).
      IF t27 < 0.
        t27 = t27 + t29.
        IF t27 < 0.
          t27 = 0.
        ENDIF.
      ENDIF.
      IF t27 > t29 OR t28 <= 0.
        CLEAR t25.
      ELSE.
        IF t28 > t29 - t27.
          t28 = t29 - t27.
        ENDIF.
        t25 = t26+t27(t28).
      ENDIF.
      DATA(t30) = |!|.
      t24 = xsdbool( t25 = t30 ).
      IF t24 = abap_true.
        DATA(t31) = VALUE string( ).
        DATA t32 TYPE string.
        DATA(t33) = t17.
        t32 = t33.
        DATA(t34) = VALUE string( ).
        DATA(t35) = t32.
        DATA(t36) = 1.
        DATA t37 TYPE i.
        DATA(t38) = t32.
        DATA(t39) = strlen( t38 ).
        t37 = t39.
        DATA(t40) = strlen( t35 ).
        IF t36 < 0.
          t36 = t36 + t40.
          IF t36 < 0.
            t36 = 0.
          ENDIF.
        ENDIF.
        IF t36 > t40 OR t37 <= 0.
          CLEAR t34.
        ELSE.
          IF t37 > t40 - t36.
            t37 = t40 - t36.
          ENDIF.
          t34 = t35+t36(t37).
        ENDIF.
        t31 = t34.
        t17 = t31.
      ENDIF.
      DATA(t41) = t17.
      t16 = t41.
      t12 = t16.
      DATA(t42) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA(t43) = t2.
      t10 = xsdbool( t11 = t43 ).
      IF t10 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = CAST zcl_lnt_inf_clss_implmnttn( t8 ).
          t44 = t46.
        ELSE.
          DATA t47 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t47.
          t44 = t47.
        ENDIF.
        result = t44.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t48 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t48.
    result = t48.

  ENDMETHOD.

  METHOD list_form_definitions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/4_file_information/abap_file_information.ts:53|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_interface_definitions.
    result = me->list_interface_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_intrfc_dfntn_by_nm.
    result = me->gt_intrfc_dfntn_by_nm( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_definitions.
    result = me->list_class_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~get_class_definition_by_name.
    result = me->get_class_definition_by_name( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_form_definitions.
    result = me->list_form_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_implementations.
    result = me->list_class_implementations( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_clss_implmnttn_by_nm.
    result = me->gt_clss_implmnttn_by_nm( i_name = i_name ).
  ENDMETHOD.
ENDCLASS.

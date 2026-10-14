* TS: src/rules/check_subrc.ts:12:1 CheckSubrcConf
CLASS zcl_lnt_check_subrc_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA open_dataset_35d7 TYPE abap_bool.
    DATA authority_check_563f TYPE abap_bool.
    DATA select_single TYPE abap_bool.
    DATA select_table TYPE abap_bool.
    DATA update_database_9ce9 TYPE abap_bool.
    DATA insert_database_2b77 TYPE abap_bool.
    DATA modify_database_355a TYPE abap_bool.
    DATA delete_database_9ac4 TYPE abap_bool.
    DATA read_table_cafb TYPE abap_bool.
    DATA assign_dabe TYPE abap_bool.
    DATA find_8f95 TYPE abap_bool.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_subrc_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = abap_true.
    me->open_dataset_35d7 = t1.
    DATA(t2) = abap_true.
    me->authority_check_563f = t2.
    DATA(t3) = abap_true.
    me->select_single = t3.
    DATA(t4) = abap_true.
    me->select_table = t4.
    DATA(t5) = abap_true.
    me->update_database_9ce9 = t5.
    DATA(t6) = abap_true.
    me->insert_database_2b77 = t6.
    DATA(t7) = abap_true.
    me->modify_database_355a = t7.
    DATA(t8) = abap_true.
    me->delete_database_9ac4 = t8.
    DATA(t9) = abap_true.
    me->read_table_cafb = t9.
    DATA(t10) = abap_true.
    me->assign_dabe = t10.
    DATA(t11) = abap_true.
    me->find_8f95 = t11.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1342_0dfa84a8b679.
  ENDMETHOD.
ENDCLASS.

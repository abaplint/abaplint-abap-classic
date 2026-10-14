* TS: src/pretty_printer/fix_keyword_case.ts:8:1 FixCase
CLASS zcl_lnt_fix_case DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file_contents TYPE string.
    DATA config TYPE REF TO zif_lnt_configuration.
    DATA keyword_case TYPE REF TO zcl_lnt_keyword_case.
    METHODS constructor IMPORTING i_file_contents TYPE string i_config TYPE REF TO zif_lnt_configuration.
    METHODS execute IMPORTING i_statement TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE string.
    METHODS format_non_keyword IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE string.
    METHODS format_keyword IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE string.
    METHODS replace_string IMPORTING i_pos TYPE REF TO zcl_lnt_position i_str TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fix_case IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file_contents.
    DATA(t2) = CAST zif_lnt_configuration( i_config ).
    DATA(t3) = NEW zcl_lnt_keyword_case(  ).
    me->keyword_case = t3.
    DATA(t4) = CAST zcl_lnt_keyword_case( me->keyword_case ).
    DATA t5 TYPE REF TO zcl_lnt_keyword_case_conf.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = CAST zif_lnt_configuration( t2 ).
    DATA(t8) = VALUE string( ).
    DATA t9 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_keyword_case.
    DATA(t11) = CAST zcl_lnt_keyword_case( me->keyword_case ).
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t12.
    DATA(t13) = |keyword_case|.
    DATA(t14) = |Keyword case|.
    DATA(t15) = |Checks that keywords have the same case. Non-keywords must b|.
    t15 = t15 && |e lower case.|.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |write 'hello world'.|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |WRITE 'hello world'.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t28 = t28 && |nABAP.md#use-your-teams-abap-formatter-settings|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t26 = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t35.
      t34 = t35.
      DATA(t36) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t37) = |Styleguide|.
      APPEND t37 TO t36->items.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t39) = |SingleFile|.
      APPEND t39 TO t38->items.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      DATA(t41) = |Quickfix|.
      APPEND t41 TO t40->items.
      DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t34 ).
      t33 = t42.
      t31 = t33.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t43.
      t31 = t43.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t12 = NEW zcl_lnt_irule_metadata( i_key = t13 i_title = t14 i_short_description = t15 i_bad_example = t16 i_good_example = t21 i_extended_information = t26 i_tags = t31 i_pragma = t44 i_pseudo_comment = t45 ).
    t9 = t12.
    t8 = t9->key.
    t6 = t7->read_by_rule( i_rule = t8 ).
    DATA t46 TYPE REF TO object.
    t46 = t6->as_ref( ).
    t5 ?= t46.
    t4->st_cn_in_sr_rl_ky_cs_ts_kyw_cs( i_conf = t5 ).
    DATA(t47) = t1.
    me->file_contents = t47.
    DATA(t48) = CAST zif_lnt_configuration( t2 ).
    me->config = t48.
  ENDMETHOD.
  METHOD execute.
    DATA(t1) = CAST zif_lnt_union_bb14dc41( i_statement ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/pretty_printer/fix_keyword_case.ts:20|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD format_non_keyword.
    DATA(t1) = i_str.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/pretty_printer/fix_keyword_case.ts:45|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD format_keyword.
    DATA(t1) = i_keyword.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/pretty_printer/fix_keyword_case.ts:49|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD replace_string.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = i_str.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/pretty_printer/fix_keyword_case.ts:56|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1274_4174c8443f25.
  ENDMETHOD.
ENDCLASS.

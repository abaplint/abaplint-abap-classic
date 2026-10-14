* TS: src/rules/keyword_case.ts:40:1 Skip
CLASS zcl_lnt_rl_skip DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_keyword_case_conf.
    DATA skip_0892 TYPE abap_bool.
    DATA is_global_class TYPE abap_bool.
    DATA is_global_if TYPE abap_bool.
    METHODS constructor IMPORTING i_conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS skip_statement IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_skip IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_conf.
    DATA(t2) = abap_false.
    me->skip_0892 = t2.
    DATA(t3) = abap_false.
    me->is_global_class = t3.
    DATA(t4) = abap_false.
    me->is_global_if = t4.
    DATA(t5) = t1.
    me->conf = t5.
  ENDMETHOD.

  METHOD skip_statement.
    DATA(t1) = i_statement.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/keyword_case.ts:50|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1457_bf75ef99856e.
  ENDMETHOD.
ENDCLASS.

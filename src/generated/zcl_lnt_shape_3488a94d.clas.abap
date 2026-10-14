* TS: src/rules/unused_variables.ts:32:3 shape.cf26b458fc74140e407e7b8f31dd4a4da28eafde8af9d9d2f64c729d6d65a81c
CLASS zcl_lnt_shape_3488a94d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA id TYPE REF TO zcl_lnt_typed_identifier.
    DATA count TYPE int8.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier OPTIONAL i_count TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_3488a94d IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_id ).
    DATA(t2) = i_count.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = CAST zcl_lnt_typed_identifier( t1 ).
    t3 = t4.
    me->id = t3.
    DATA(t5) = t2.
    me->count = t5.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1825_fd2cd1dcf8bd.
  ENDMETHOD.
ENDCLASS.

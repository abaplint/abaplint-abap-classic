* TS: src/abap/2_statements/expand_macros.ts:132:63 shape.859df1ada61dae887a32b020d02fbfb71ae31388135681ee5955fb458d381116
CLASS zcl_lnt_shape_df3d0820 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA contains_unknown TYPE abap_bool.
    METHODS constructor IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_contains_unknown TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_df3d0820 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_statements.
    DATA(t2) = i_contains_unknown.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4.
    me->statements = t3.
    DATA(t5) = t2.
    me->contains_unknown = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1743_e00bb59a0ccf.
  ENDMETHOD.
ENDCLASS.

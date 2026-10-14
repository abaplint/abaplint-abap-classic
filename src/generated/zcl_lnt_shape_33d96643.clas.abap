* TS: src/abap/5_syntax/structures/type_enum.ts:14:62 shape.ab42cb8c670c504bf8a18f845acf91f4c004d47b2d13c2631a92b450e4e9606b
CLASS zcl_lnt_shape_33d96643 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA values TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA types TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_values TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_types TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_33d96643 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_values.
    DATA(t2) = i_types.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4.
    me->values = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t2.
    t5 = t6.
    me->types = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1758_6018aa39bf96.
  ENDMETHOD.
ENDCLASS.

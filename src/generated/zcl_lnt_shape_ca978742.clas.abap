* TS: src/abap/5_syntax/spaghetti_scope.ts:79:38 shape.ae92c38604f1079e51f41552b7e643db8aeaadfbff5c6a3a1aa17462edbf6747
CLASS zcl_lnt_shape_ca978742 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA id TYPE REF TO zcl_lnt_fi_identifier.
    DATA oo_type TYPE string.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier OPTIONAL i_oo_type TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_ca978742 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = i_oo_type.
    DATA(t3) = CAST zcl_lnt_fi_identifier( t1 ).
    me->id = t3.
    DATA(t4) = t2.
    me->oo_type = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1755_c4a82a448f6e.
  ENDMETHOD.
ENDCLASS.

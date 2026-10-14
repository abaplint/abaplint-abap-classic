* TS: src/ddic.ts:16:1 ILookupResult
CLASS zcl_lnt_ilookup_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    DATA object_a393 TYPE REF TO zif_lnt_object.
    METHODS constructor IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_object_19cd TYPE REF TO zif_lnt_object OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ilookup_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = CAST zif_lnt_object( i_object_19cd ).
    DATA(t3) = CAST zcl_lnt_abstract_type( t1 ).
    me->type_cba0 = t3.
    DATA(t4) = CAST zif_lnt_object( t2 ).
    me->object_a393 = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1051_bc853270bead.
  ENDMETHOD.
ENDCLASS.

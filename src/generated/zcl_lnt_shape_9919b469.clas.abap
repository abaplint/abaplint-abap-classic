* TS: src/objects/rename/_object_renamer.ts:5:63 shape.cf033f6365911362102c1cfc6b5b6485a5a41229e18b58f1354dcca395fcc258
CLASS zcl_lnt_shape_9919b469 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA label TYPE string.
    DATA needs_confirmation TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_label TYPE string i_needs_confirmation TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9919b469 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_label.
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_needs_confirmation ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t4) = t1.
    me->label = t4.
    DATA(t5) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    me->needs_confirmation = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->description = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1740_677967e27e11.
  ENDMETHOD.
ENDCLASS.

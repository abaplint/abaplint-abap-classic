* TS: src/rules_runner.ts:118:19 shape.dd44bc035e4c4e168337ddd005068db21044dc68e68eaa08e83ca7f9852155c1
CLASS zcl_lnt_shape_45cab92f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA time TYPE int8.
    METHODS constructor IMPORTING i_name TYPE string i_time TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_45cab92f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_time.
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = t2.
    me->time = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1904_05f3fe64ec7f.
  ENDMETHOD.
ENDCLASS.

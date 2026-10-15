CLASS zlnt_runtime_rege_8d1cc1058680 DEFINITION PUBLIC INHERITING FROM zlnt_runtime_rege_5a210f82384e CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS exec_legacy IMPORTING p0 TYPE REF TO zlnt_runtime_rege_5a210f82384e p1 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.

    DATA sticky TYPE abap_bool.
    DATA exec_pattern TYPE string.
    METHODS constructor IMPORTING pattern TYPE string flags TYPE string excluded_pattern TYPE string OPTIONAL checked TYPE abap_bool OPTIONAL.
    METHODS match REDEFINITION.
    METHODS exec IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS unit_text IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS pcre_pattern IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS test REDEFINITION.
    METHODS match_test REDEFINITION.
    METHODS replace REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS class_hyphens IMPORTING pattern TYPE string RETURNING VALUE(result) TYPE string.
ENDCLASS.
CLASS zlnt_runtime_rege_8d1cc1058680 IMPLEMENTATION.
  METHOD constructor.
    super->constructor( pattern = pattern flags = flags excluded_pattern = excluded_pattern ).
    CLEAR: source, posix, excluded, ignore_case, global.
    DATA i TYPE i.
    DATA n TYPE i.
    DATA c TYPE string.
    DATA in_class TYPE abap_bool.
    DATA escaped TYPE abap_bool.
    DATA whitespace TYPE string.
    DATA dot_class TYPE string.
    DATA normalized TYPE string.
    whitespace = cl_abap_conv_in_ce=>uccpi( 9 ) &&
    cl_abap_conv_in_ce=>uccpi( 10 ) &&
    cl_abap_conv_in_ce=>uccpi( 11 ) &&
    cl_abap_conv_in_ce=>uccpi( 12 ) &&
    cl_abap_conv_in_ce=>uccpi( 13 ) &&
    `    - ` &&
    cl_abap_conv_in_ce=>uccpi( 8232 ) &&
    cl_abap_conv_in_ce=>uccpi( 8233 ) &&
    `  　` &&
    cl_abap_conv_in_ce=>uccpi( 65279 ).
    dot_class = `[^` &&
    cl_abap_conv_in_ce=>uccpi( 10 ) &&
    cl_abap_conv_in_ce=>uccpi( 13 ) &&
    cl_abap_conv_in_ce=>uccpi( 8232 ) &&
    cl_abap_conv_in_ce=>uccpi( 8233 ) &&
    `]`.
    me->flags = flags.
    n = strlen( pattern ).
    WHILE i < n.
      c = pattern+i(1).
      IF escaped = abap_true.
        escaped = abap_false.
        source = source && c.
      ELSEIF c = '\'.
        escaped = abap_true.
        source = source && c.
      ELSEIF c = '/' AND in_class = abap_false.
        source = source && '\/'.
      ELSEIF c = cl_abap_char_utilities=>newline.
        source = source && '\n'.
      ELSE.
        IF c = '['.
          in_class = abap_true.
        ELSEIF c = ']'.
          in_class = abap_false.
        ENDIF.
        source = source && c.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    IF source IS INITIAL.
      source = '(?:)'.
    ENDIF.
    i = 0.
    in_class = abap_false.
    excluded = excluded_pattern.
    normalized = class_hyphens( pattern ).
    n = strlen( normalized ).
    WHILE i < n.
      c = normalized+i(1).
      IF c = '\'.
        i = i + 1.
        IF i >= n.
          EXIT.
        ENDIF.
        c = normalized+i(1).
        CASE c.
          WHEN 'w'.
            IF in_class = abap_true.
              CONCATENATE posix 'A-Za-z0-9_' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[A-Za-z0-9_]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'W'.
            IF in_class = abap_true.
              CONCATENATE posix '\W' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[^A-Za-z0-9_]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'd'.
            IF in_class = abap_true.
              CONCATENATE posix '0-9' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[0-9]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'D'.
            IF in_class = abap_true.
              CONCATENATE posix '\D' INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[^0-9]' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 's'.
            IF in_class = abap_true.
              CONCATENATE posix whitespace INTO posix RESPECTING BLANKS.
            ELSE.
              CONCATENATE posix '[' whitespace ']' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN 'S'.
            IF in_class = abap_true.
              RAISE EXCEPTION TYPE zlnt_runtime_rege_57df8b70dc9e EXPORTING pattern = pattern flags = flags.
            ELSE.
              CONCATENATE posix '[^' whitespace ']' INTO posix RESPECTING BLANKS.
            ENDIF.
          WHEN OTHERS.
            CONCATENATE posix '\' c INTO posix RESPECTING BLANKS.
        ENDCASE.
      ELSEIF in_class = abap_false AND c = '.' AND flags NA 's'.
        CONCATENATE posix dot_class INTO posix RESPECTING BLANKS.
      ELSEIF in_class = abap_false AND c = '^' AND flags NA 'm'.
        CONCATENATE posix '\A' INTO posix RESPECTING BLANKS.
      ELSEIF in_class = abap_false AND c = '$' AND flags NA 'm'.
        CONCATENATE posix '\z' INTO posix RESPECTING BLANKS.
      ELSE.
        IF c = '['.
          in_class = abap_true.
        ELSEIF c = ']'.
          in_class = abap_false.
        ENDIF.
        CONCATENATE posix c INTO posix RESPECTING BLANKS.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    n = strlen( flags ).
    i = 0.
    WHILE i < n.
      c = flags+i(1).
      IF c = 'i'.
        ignore_case = abap_true.
      ELSEIF c = 'y'.
        sticky = abap_true.
      ELSEIF c = 'g'.
        global = abap_true.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    exec_pattern = posix.
    IF checked = abap_true.
      DATA dispatch_key TYPE string.
      dispatch_key = pattern && `/` && flags.
      IF dispatch_key = `^(?!(?:DEPTH|MULTIPLE|ORPHAN|CACHE|CYCLE|LOAD|GENERATE|RETAIN|DEPTH)$)(\/\w+\/)?` &&
      `(\*?\w+~(\/\w+\/)?(\w+|\*)|\w+)$/i`.
        posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?(\*?[A-Za-z0-9_]+~(/[A-Za-z0-9_]+/)?([A-Za-z0-9_]+|` &&
        `\*)|[A-Za-z0-9_]+)(?![\s\S])`.
        excluded = `(?<![\s\S])(?:[Dd][Ee][Pp][Tt][Hh]|[Mm][Uu][Ll][Tt][Ii][Pp][Ll][Ee]|[Oo][Rr][Pp]` &&
        `[Hh][Aa][Nn]|[Cc][Aa][Cc][Hh][Ee]|[Cc][Yy][Cc][Ll][Ee]|[Ll][Oo][Aa][Dd]|[Gg][Ee]` &&
        `[Nn][Ee][Rr][Aa][Tt][Ee]|[Rr][Ee][Tt][Aa][Ii][Nn]|[Dd][Ee][Pp][Tt][Hh])(?![\s\S]` &&
        `)`.
        ignore_case = abap_false.
      ELSEIF dispatch_key = `^(?!(?:FROM|INTO|HAVING|FOR|DISTINCT|UNION|INTERSECT|EXCEPT|NOT|WHEN|CASE|AS|APP` &&
      `ENDING|WHERE|CONNECTION|EXISTS|INSERT|MODIFY)$)(\/\w+\/)?(\*?\w+~(\/\w+\/)?(\w+|` &&
      `\*)|\w+)$/i`.
        posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?(\*?[A-Za-z0-9_]+~(/[A-Za-z0-9_]+/)?([A-Za-z0-9_]+|` &&
        `\*)|[A-Za-z0-9_]+)(?![\s\S])`.
        excluded = `(?<![\s\S])(?:[Ff][Rr][Oo][Mm]|[Ii][Nn][Tt][Oo]|[Hh][Aa][Vv][Ii][Nn][Gg]|[Ff][Oo` &&
        `][Rr]|[Dd][Ii][Ss][Tt][Ii][Nn][Cc][Tt]|[Uu][Nn][Ii][Oo][Nn]|[Ii][Nn][Tt][Ee][Rr]` &&
        `[Ss][Ee][Cc][Tt]|[Ee][Xx][Cc][Ee][Pp][Tt]|[Nn][Oo][Tt]|[Ww][Hh][Ee][Nn]|[Cc][Aa]` &&
        `[Ss][Ee]|[Aa][Ss]|[Aa][Pp][Pp][Ee][Nn][Dd][Ii][Nn][Gg]|[Ww][Hh][Ee][Rr][Ee]|[Cc]` &&
        `[Oo][Nn][Nn][Ee][Cc][Tt][Ii][Oo][Nn]|[Ee][Xx][Ii][Ss][Tt][Ss]|[Ii][Nn][Ss][Ee][R` &&
        `r][Tt]|[Mm][Oo][Dd][Ii][Ff][Yy])(?![\s\S])`.
        ignore_case = abap_false.
      ELSEIF dispatch_key = `^(?:int[1-9]|int8|sstring|sstr|char|numc|dats|datn|tims|timn|utcl|utclong|fltp|d` &&
      `ecfloat\d+|dec|string|rawstring|rstr|raw|xstring|clnt|lang|unit|cuky|curr|quan|g` &&
      `eom_ewkb|d34n|d16n|d34d|d16d|d34s|d16s|d34r|d16r|d|t|p|n|c|x|f)$/i`.
        posix = `(?<![\s\S])(?:[Ii][Nn][Tt][123456789]|[Ii][Nn][Tt]8|[Ss][Ss][Tt][Rr][Ii][Nn][Gg]` &&
        `|[Ss][Ss][Tt][Rr]|[Cc][Hh][Aa][Rr]|[Nn][Uu][Mm][Cc]|[Dd][Aa][Tt][Ss]|[Dd][Aa][Tt` &&
        `][Nn]|[Tt][Ii][Mm][Ss]|[Tt][Ii][Mm][Nn]|[Uu][Tt][Cc][Ll]|[Uu][Tt][Cc][Ll][Oo][Nn` &&
        `][Gg]|[Ff][Ll][Tt][Pp]|[Dd][Ee][Cc][Ff][Ll][Oo][Aa][Tt][0-9]+|[Dd][Ee][Cc]|[Ss][` &&
        `Tt][Rr][Ii][Nn][Gg]|[Rr][Aa][Ww][Ss][Tt][Rr][Ii][Nn][Gg]|[Rr][Ss][Tt][Rr]|[Rr][A` &&
        `a][Ww]|[Xx][Ss][Tt][Rr][Ii][Nn][Gg]|[Cc][Ll][Nn][Tt]|[Ll][Aa][Nn][Gg]|[Uu][Nn][I` &&
        `i][Tt]|[Cc][Uu][Kk][Yy]|[Cc][Uu][Rr][Rr]|[Qq][Uu][Aa][Nn]|[Gg][Ee][Oo][Mm]_[Ee][` &&
        `Ww][Kk][Bb]|[Dd]34[Nn]|[Dd]16[Nn]|[Dd]34[Dd]|[Dd]16[Dd]|[Dd]34[Ss]|[Dd]16[Ss]|[D` &&
        `d]34[Rr]|[Dd]16[Rr]|[Dd]|[Tt]|[Pp]|[Nn]|[Cc]|[Xx]|[Ff])(?![\s\S])`.
        excluded = ``.
        ignore_case = abap_false.
      ELSE.
        CASE dispatch_key.
          WHEN ` (abap_true|abap_false)\s*\./i`.
            posix = `[ ]([Aa][Bb][Aa][Pp]_[Tt][Rr][Uu][Ee]|[Aa][Bb][Aa][Pp]_[Ff][Aa][Ll][Ss][Ee])[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*\.`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN ` +\r?$/`.
            posix = `[ ]+\r?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN ` /g`.
            posix = `[ ]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN ` \{[0-9A-Fa-f]{16,32}\}/`.
            posix = `[ ]\{[0123456789ABCDEFabcdef]{16,32}\}`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `"/g`.
            posix = `"`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `#/g`.
            posix = `[#]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `%23/g`.
            posix = `%23`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `%3c/g`.
            posix = `%3c`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `%3e/g`.
            posix = `%3e`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&&/g`.
            posix = `&&`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&/g`.
            posix = `&`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&amp;/g`.
            posix = `&amp;`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&apos;/g`.
            posix = `&apos;`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&gt;/g`.
            posix = `&gt;`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&lt;/g`.
            posix = `&lt;`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `&quot;/g`.
            posix = `&quot;`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `''/g`.
            posix = `''`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `'/g`.
            posix = `'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `(?:SEMANTICS\.AMOUNT|SEMANTICS:\{AMOUNT:\{)\.?CURRENCYCODE:'([^']+)'/i`.
            posix = `(?:[Ss][Ee][Mm][Aa][Nn][Tt][Ii][Cc][Ss]\.[Aa][Mm][Oo][Uu][Nn][Tt]|[Ss][Ee][Mm][A` &&
            `a][Nn][Tt][Ii][Cc][Ss]:\{[Aa][Mm][Oo][Uu][Nn][Tt]:\{)\.?[Cc][Uu][Rr][Rr][Ee][Nn]` &&
            `[Cc][Yy][Cc][Oo][Dd][Ee]:'([^']+)'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `(?:SEMANTICS\.QUANTITY|SEMANTICS:\{QUANTITY:\{)\.?UNITOFMEASURE:'([^']+)'/i`.
            posix = `(?:[Ss][Ee][Mm][Aa][Nn][Tt][Ii][Cc][Ss]\.[Qq][Uu][Aa][Nn][Tt][Ii][Tt][Yy]|[Ss][E` &&
            `e][Mm][Aa][Nn][Tt][Ii][Cc][Ss]:\{[Qq][Uu][Aa][Nn][Tt][Ii][Tt][Yy]:\{)\.?[Uu][Nn]` &&
            `[Ii][Tt][Oo][Ff][Mm][Ee][Aa][Ss][Uu][Rr][Ee]:'([^']+)'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `(a)(b)/`.
            posix = `(a)(b)`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `(a)(b)/g`.
            posix = `(a)(b)`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `(a)(b)/y`.
            posix = `(a)(b)`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `,$/`.
            posix = `,(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `,/g`.
            posix = `,`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `-/g`.
            posix = `-`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `.*/`.
            posix = `[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `.*/i`.
            posix = `[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `/i`.
            posix = `(?:)`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `</g`.
            posix = `<`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `<CLSPROXY>(.)</CLSPROXY>/`.
            posix = `<CLSPROXY>([^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `])</CLSPROXY>`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `<CLSPROXY>(.)<\/CLSPROXY>/`.
            posix = `<CLSPROXY>([^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `])</CLSPROXY>`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `>/g`.
            posix = `>`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `@AbapCatalog\.sqlViewName: '([\w/]+)'/`.
            posix = `@AbapCatalog\.sqlViewName:[ ]'([/0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghij` &&
            `klmnopqrstuvwxyz]+)'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `@EndUserText\.label: '([\w,.:-=#%&() ]+)'/`.
            posix = `@EndUserText\.label:[ ]'([ #%&(),.0123456789:;<=ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcde` &&
            `fghijklmnopqrstuvwxyz]+)'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `@\s*<?\s*EndUserText/i`.
            posix = `@[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*<?[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*[Ee][Nn][Dd][Uu][Ss][Ee][Rr][Tt][Ee][Xx][Tt]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `DATA/i`.
            posix = `[Dd][Aa][Tt][Aa]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `THROW /i`.
            posix = `[Tt][Hh][Rr][Oo][Ww][ ]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[.{,]DEFAULTSEARCHELEMENT:TRUE/`.
            posix = `[.{,]DEFAULTSEARCHELEMENT:TRUE`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[.{,]SEARCHABLE:TRUE/`.
            posix = `[.{,]SEARCHABLE:TRUE`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[\s.,:(]+/`.
            posix = `[(,.:` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[\u007f-\uffff]/`.
            posix = `[` &&
            cl_abap_conv_in_ce=>uccpi( 127 ) &&
            `-￿]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[\w\/]+/`.
            posix = `[A-Za-z0-9_/]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `[\w~]+/`.
            posix = `[A-Za-z0-9_~]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\(.+$/`.
            posix = `\([^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\.$/`.
            posix = `\.(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\.clas\.abap$/`.
            posix = `\.clas\.abap(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\.fugr\.(#\w+#)?sapl/i`.
            posix = `\.[Ff][Uu][Gg][Rr]\.([#][A-Za-z0-9_]+[#])?[Ss][Aa][Pp][Ll]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\.intf\.abap$/`.
            posix = `\.intf\.abap(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\.screen\_\d+\.abap$/i`.
            posix = `\.[Ss][Cc][Rr][Ee][Ee][Nn]_[0-9]+\.[Aa][Bb][Aa][Pp](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\//g`.
            posix = `/`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\/\/.*$/gm`.
            posix = `//[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\[\]$/`.
            posix = `\[\](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\\/g`.
            posix = `\\`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\bdefine\s+(?:\w+\s+)*?behavior\s+for\s+([\w/]+)(?:\s+alias\s+(\w+))?/gi`.
            posix = `\b[dD][eE][fF][iI][nN][eE][` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+(?:[A-Za-z0-9_]+[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+)*?[bB][eE][hH][aA][vV][iI][oO][rR][` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+[fF][oO][rR][` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+([A-Za-z0-9_/]+)(?:[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+[aA][lL][iI][aA][sS][` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+([A-Za-z0-9_]+))?`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\d+/`.
            posix = `[0-9]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\d\d\d/`.
            posix = `[0-9][0-9][0-9]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\r.+$/`.
            posix = `\r[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\s+/`.
            posix = `[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\s+/g`.
            posix = `[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\s/g`.
            posix = `[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\u000b/g`.
            posix = `[` &&
            cl_abap_conv_in_ce=>uccpi( 11 ) &&
            `]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `\u00a0/g`.
            posix = ` `.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!/`.
            posix = `(?<![\s\S])!`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!?((\w*\/\w+\/)|(\w*\/\w+\/)*[\w\*$%#]+)$/`.
            posix = `(?<![\s\S])!?(([A-Za-z0-9_]*/[A-Za-z0-9_]+/)|([A-Za-z0-9_]*/[A-Za-z0-9_]+/)*[A-Z` &&
            `a-z0-9_\*$%#]+)(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!?(\/\w+\/)?\w+$/`.
            posix = `(?<![\s\S])!?(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!?[\w%$\*\/\?<>]+$/`.
            posix = `(?<![\s\S])!?[A-Za-z0-9_%$\*/\?<>]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!?\w*(\/\w+\/)?\w+$/`.
            posix = `(?<![\s\S])!?[A-Za-z0-9_]*(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^!?\w*(\/\w{3,}\/)?\w+$/`.
            posix = `(?<![\s\S])!?[A-Za-z0-9_]*(/[A-Za-z0-9_]{3,}/)?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^"(?:[^"]|"")*"$/`.
            posix = `(?<![\s\S])"(?:[^"]|"")*"(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^"[^"]*"$/`.
            posix = `(?<![\s\S])"[^"]*"(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^#[A-Z][A-Z0-9_]*$/i`.
            posix = `(?<![\s\S])[#][A-Za-z][A-Za-z0-9_]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^#[\w_]+$/`.
            posix = `(?<![\s\S])[#][0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]+` &&
            `(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^#\w+#/`.
            posix = `(?<![\s\S])[#][A-Za-z0-9_]+[#]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^%?\w+$/`.
            posix = `(?<![\s\S])%?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^&?\*?(\/\w+\/)?[\w\*\$]+(~\w+)?$/`.
            posix = `(?<![\s\S])&?\*?(/[A-Za-z0-9_]+/)?[A-Za-z0-9_\*\$]+(~[A-Za-z0-9_]+)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^&|&?((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%\?#]+)$/`.
            posix = `(?<![\s\S])&|&?(([A-Za-z0-9_]*/[A-Za-z0-9_]+/)|([A-Za-z0-9_]*/[A-Za-z0-9_]+/)?[A` &&
            `-Za-z0-9_\*$%\?#]+)(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^'(?:[^'\\]|''|\\'|\\\\|\\(?!'))*'$/`.
            posix = `(?<![\s\S])'(?:[^'\\]|''|\\+'|\\+[^'\\]|\\{2,})*'(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^'.*'$/`.
            posix = `(?<![\s\S])'[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*'(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^'[^']*'$/`.
            posix = `(?<![\s\S])'[^']*'(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^('.*')|(``.*``)$/`.
            posix = `(?<![\s\S])('[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*')|(``[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*``)(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^((\/[A-Z_\d]{3,8}\/)|[a-zA-Z0-9]{3}|CI_)\w+$/`.
            posix = `(?<![\s\S])((/[A-Z_0-9]{3,8}/)|[a-zA-Z0-9]{3}|CI_)[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^((\w*\/\w+\/)|(\w*\/\w+\/)?[\w\*$%]+)$/`.
            posix = `(?<![\s\S])(([A-Za-z0-9_]*/[A-Za-z0-9_]+/)|([A-Za-z0-9_]*/[A-Za-z0-9_]+/)?[A-Za-` &&
            `z0-9_\*$%]+)(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(0?[1-9]|[1234567][0-9]|8[0-3])$/`.
            posix = `(?<![\s\S])(0?[1-9]|[1234567][0-9]|8[0-3])(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(?!(?:FROM|BETWEEN|WHERE)$)(\/\w+\/)?(\w+~(\w+|\*)|\w+)$/i`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?([A-Za-z0-9_]+~([A-Za-z0-9_]+|\*)|[A-Za-z0-9_]+)(?!` &&
            `[\s\S])`.
            excluded = `(?<![\s\S])(?:[Ff][Rr][Oo][Mm]|[Bb][Ee][Tt][Ww][Ee][Ee][Nn]|[Ww][Hh][Ee][Rr][Ee]` &&
            `)(?![\s\S])`.
            ignore_case = abap_false.
          WHEN `^(KEY|VIRTUAL)\s+/i`.
            posix = `(?<![\s\S])([Kk][Ee][Yy]|[Vv][Ii][Rr][Tt][Uu][Aa][Ll])[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(Z|Y|LT?CL_|TY_|LIF_)/i`.
            posix = `(?<![\s\S])([Zz]|[Yy]|[Ll][Tt]?[Cc][Ll]_|[Tt][Yy]_|[Ll][Ii][Ff]_)`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/[A-Z_\d]{3,8}\/)?E[A-Z0-9_]+$/i`.
            posix = `(?<![\s\S])(/[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]{3` &&
            `,8}/)?[Ee][0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]+(?![` &&
            `\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/[A-Z_\d]{3,8}\/)?[A-Z_-\d<> ]+$/i`.
            posix = `(?<![\s\S])(/[A-Za-z_0-9]{3,8}/)?[-A-Za-z_0-9<> ]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/[A-Z_\d]{3,8}\/)?[A-Z_\d<> ]+$/i`.
            posix = `(?<![\s\S])(/[A-Za-z_0-9]{3,8}/)?[A-Za-z_0-9<> ]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?(?!\*)[\w\d_\*\~%]+$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?[A-Za-z0-9_0-9_~%][A-Za-z0-9_0-9_\*~%]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?L.+XX$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?L[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]+XX(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?[\w\*%\?$&]+>?$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?[A-Za-z0-9_\*%\?$&]+>?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?\w+(~\w+)?$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+(~[A-Za-z0-9_]+)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?\w+~$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+~(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^(\/\w+\/)?\w+~(\/\w+\/)?\w+$/`.
            posix = `(?<![\s\S])(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+~(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+(?![\s` &&
            `\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^.+$/`.
            posix = `(?<![\s\S])[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^.?cx_.*$/i`.
            posix = `(?<![\s\S])[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]?[Cc][Xx]_[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^0+/`.
            posix = `(?<![\s\S])0+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^<?(\/\w+\/)?[\w%#]+(~\w+)?>?$/`.
            posix = `(?<![\s\S])<?(/[A-Za-z0-9_]+/)?[A-Za-z0-9_%#]+(~[A-Za-z0-9_]+)?>?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^<[\w\/%$\*\?]+>$/`.
            posix = `(?<![\s\S])<[A-Za-z0-9_/%$\*\?]+>(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^<[\w\/%$\*]+$/`.
            posix = `(?<![\s\S])<[A-Za-z0-9_/%$\*]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^>?[\w\/]+#?@?\/?!?&?>?\$?\??<?§?~?$/`.
            posix = `(?<![\s\S])>?[A-Za-z0-9_/]+[#]?@?/?!?&?>?\$?\??<?§?~?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^@/`.
            posix = `(?<![\s\S])@`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^@</`.
            posix = `(?<![\s\S])@<`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^@\w+$/`.
            posix = `(?<![\s\S])@[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^BOOLC$/i`.
            posix = `(?<![\s\S])[Bb][Oo][Oo][Ll][Cc](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^PF\d\d?$/i`.
            posix = `(?<![\s\S])[Pp][Ff][0-9][0-9]?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^XSDBOOL$/i`.
            posix = `(?<![\s\S])[Xx][Ss][Dd][Bb][Oo][Oo][Ll](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^Y/`.
            posix = `(?<![\s\S])Y`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^Z/`.
            posix = `(?<![\s\S])Z`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[%\w]+$/`.
            posix = `(?<![\s\S])[%A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[&_!#\*]?[\w\d\*%\$\?#]+$/`.
            posix = `(?<![\s\S])[&_!#\*]?[A-Za-z0-9_0-9\*%\$\?#]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[&_!?]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/`.
            posix = `(?<![\s\S])[&_!?]?\*?[A-Za-z0-9_]*(/[A-Za-z0-9_]+/)?[0-9]*[a-zA-Z_%\$][A-Za-z0-9` &&
            `_\*%\$\?#]*(~[A-Za-z0-9_]+)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?#]*(~\w+)?$/`.
            posix = `(?<![\s\S])[&_!]?\*?[A-Za-z0-9_]*(/[A-Za-z0-9_]+/)?[0-9]*[a-zA-Z_%\$][A-Za-z0-9_` &&
            `\*%\$\?#]*(~[A-Za-z0-9_]+)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$/`.
            posix = `(?<![\s\S])[&_!]?\*?[A-Za-z0-9_]*(/[A-Za-z0-9_]+/)?[0-9]*[a-zA-Z_%\$][A-Za-z0-9_` &&
            `\*%\$\?]*(~[A-Za-z0-9_]+)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[0-9A-Fa-f]+$/`.
            posix = `(?<![\s\S])[0123456789ABCDEFabcdef]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[0-9]+$/`.
            posix = `(?<![\s\S])[0-9]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[A-Z][A-Z0-9]*(?:_[A-Z0-9]+)+$/i`.
            posix = `(?<![\s\S])[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz][0123456789ABCD` &&
            `EFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]*(?:_[0123456789ABCDEFGHIJKLMNO` &&
            `PQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]+)+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[A-Z_-\d/<> ]+$/i`.
            posix = `(?<![\s\S])[-A-Za-z_0-9/<> ]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[A-Z_]\w*$/i`.
            posix = `(?<![\s\S])[A-Za-z_][A-Za-z0-9_]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\/\w\d_%$\*\~]+$/`.
            posix = `(?<![\s\S])[/A-Za-z0-9_0-9_%$\*~]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\/\w]+$/`.
            posix = `(?<![\s\S])[/A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\d]+$/`.
            posix = `(?<![\s\S])[0-9]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w$%\^]{2}$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_$%\^]{2}(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w$%\^~]{2}$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_$%\^~]{2}(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w$%]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_$%]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w$&\*%\/]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_$&\*%/]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w%$\$\*]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_%$\$\*]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w%\$\*]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_%\$\*]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w%]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_%]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w/$%&=]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_/$%&=]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w\*]{1,3}$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_\*]{1,3}(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w\/%$\*]+>$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_/%$\*]+>(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w\/]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_/]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w\?\/]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_\?/]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w\d%]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_0-9%]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w]+$/`.
            posix = `(?<![\s\S])[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]+(?!` &&
            `[\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w_]+$/`.
            posix = `(?<![\s\S])[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]+(?!` &&
            `[\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[\w~\/%$]+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_~/%$]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[^ ]+/`.
            posix = `(?<![\s\S])[^ ]+`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[a-zA-Z]{1,3}_.*$/i`.
            posix = `(?<![\s\S])[A-Za-z]{1,3}_[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^[iweaxs]\d\d\d$/i`.
            posix = `(?<![\s\S])[iIwWeEaAxXsS][0-9][0-9][0-9](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\$?#?[\w_]+$/`.
            posix = `(?<![\s\S])\$?[#]?[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwx` &&
            `yz]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\)?\. *(\".*)?$/`.
            posix = `(?<![\s\S])\)?\.[ ]*("[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*)?(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\*$/`.
            posix = `(?<![\s\S])\*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\*/`.
            posix = `(?<![\s\S])\*`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\*?!?&?(\/\w+\/)?[a-zA-Z_%$\?][\w%$\$\*]*$/`.
            posix = `(?<![\s\S])\*?!?&?(/[A-Za-z0-9_]+/)?[a-zA-Z_%$\?][A-Za-z0-9_%$\$\*]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\*?(\/\w+\/)?\w+$/`.
            posix = `(?<![\s\S])\*?(/[A-Za-z0-9_]+/)?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\/.+\/cx_.*$/i`.
            posix = `(?<![\s\S])/[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]+/[Cc][Xx]_[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\/?[\d\w]+$/`.
            posix = `(?<![\s\S])/?[0-9A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\/?[\w\d]+$/`.
            posix = `(?<![\s\S])/?[A-Za-z0-9_0-9]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\/[A-Z_\d]{3,8}\/$/i`.
            posix = `(?<![\s\S])/[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz]{3,` &&
            `8}/(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\\[\w]+$/`.
            posix = `(?<![\s\S])\\[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d*$/`.
            posix = `(?<![\s\S])[0-9]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d+$/`.
            posix = `(?<![\s\S])[0-9]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d+E$/i`.
            posix = `(?<![\s\S])[0-9]+[Ee](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d+[eE]$/`.
            posix = `(?<![\s\S])[0-9]+[Ee](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d\d\d$/i`.
            posix = `(?<![\s\S])[0-9][0-9][0-9](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\d\d\d\d$/`.
            posix = `(?<![\s\S])[0-9][0-9][0-9][0-9](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\s*$/`.
            posix = `(?<![\s\S])[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\w*(\/\w{3,}\/)?\w+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_]*(/[A-Za-z0-9_]{3,}/)?[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\w+$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\w+$/i`.
            posix = `(?<![\s\S])[A-Za-z0-9_]+(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\w+~$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_]+~(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^\w{3}$/`.
            posix = `(?<![\s\S])[A-Za-z0-9_]{3}(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^``.*``$/`.
            posix = `(?<![\s\S])``[^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `]*``(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^a/g`.
            posix = `(?<![\s\S])a`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^cast$/i`.
            posix = `(?<![\s\S])[Cc][Aa][Ss][Tt](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^check /i`.
            posix = `(?<![\s\S])[Cc][Hh][Ee][Cc][Kk][ ]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^count\(\s*\*\s*\)$/i`.
            posix = `(?<![\s\S])[Cc][Oo][Uu][Nn][Tt]\([` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*\*[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*\)(?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `^v\d\.\d\.\d$/`.
            posix = `(?<![\s\S])v[0-9]\.[0-9]\.[0-9](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `_DPC$/i`.
            posix = `_[Dd][Pp][Cc](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `_MPC$/i`.
            posix = `_[Mm][Pp][Cc](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN ```/g`.
            posix = ````.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `a*/g`.
            posix = `a*`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `a.c/i`.
            posix = `[Aa][^\n\r` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `][Cc]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `a/g`.
            posix = `a`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `a/y`.
            posix = `a`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `label\s*:\s*'((?:[^']|'')*)'/gi`.
            posix = `[lL][aA][bB][eE][lL][` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*:[` &&
            cl_abap_conv_in_ce=>uccpi( 9 ) &&
            `-` &&
            cl_abap_conv_in_ce=>uccpi( 13 ) &&
            `    - ` &&
            cl_abap_conv_in_ce=>uccpi( 8232 ) &&
            cl_abap_conv_in_ce=>uccpi( 8233 ) &&
            `  　` &&
            cl_abap_conv_in_ce=>uccpi( 65279 ) &&
            `]*'((?:[^']|'')*)'`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `test$/i`.
            posix = `[Tt][Ee][Ss][Tt](?![\s\S])`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN `x/y/gi`.
            posix = `[Xx]/[Yy]`.
            excluded = ``.
            ignore_case = abap_false.
          WHEN OTHERS.
            IF flags = 'g'.
              FIND PCRE '\A&[1-9][0-9]*\z' IN pattern.
            ELSEIF flags = '' OR flags = 'i'.
              FIND PCRE '\A\^[A-Za-z0-9_|()?]+\$?\z' IN pattern.
            ELSE.
              sy-subrc = 4.
            ENDIF.
            IF sy-subrc <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            posix = pattern.
            IF flags = 'i'.
              CLEAR posix.
              i = 0.
              WHILE i < strlen( pattern ).
                c = pattern+i(1).
                IF ( c >= 'A' AND c <= 'Z' ) OR ( c >= 'a' AND c <= 'z' ).
                  posix = posix && '[' && to_upper( c ) && to_lower( c ) && ']'.
                ELSE.
                  posix = posix && c.
                ENDIF.
                i = i + 1.
              ENDWHILE.
              ignore_case = abap_false.
            ENDIF.
        ENDCASE.
      ENDIF.
      posix = me->pcre_pattern( posix ).
      TRY.
          FIND PCRE posix IN ' '.
        CATCH cx_root.
          RAISE EXCEPTION TYPE zlnt_runtime_rege_57df8b70dc9e EXPORTING pattern = pattern flags = flags.
      ENDTRY.
    ENDIF.
    exec_pattern = posix.
    IF posix IS INITIAL.
      posix = '(?:)'.
    ENDIF.
  ENDMETHOD.

  METHOD test.
    DATA hit TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    hit = me->exec( p0 ).
    IF hit IS BOUND.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD match_test.
    IF global = abap_true.
      last_index = 0.
    ENDIF.
    result = me->test( p0 ).
    IF global = abap_true.
      last_index = 0.
    ENDIF.
  ENDMETHOD.

  METHOD replace.
    DATA text TYPE string.
    DATA last TYPE i.
    DATA n TYPE i.
    DATA matches TYPE match_result_tab.
    DATA hit TYPE match_result.
    IF p1 CS '$'.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    text = me->unit_text( p0 ).
    IF excluded IS NOT INITIAL.
      FIND PCRE excluded IN text.
      IF sy-subrc = 0.
        result = p0.
        RETURN.
      ENDIF.
    ENDIF.
    IF global = abap_true.
      last_index = 0.
      FIND ALL OCCURRENCES OF PCRE posix IN text RESULTS matches.
    ELSE.
      FIND FIRST OCCURRENCE OF PCRE posix IN text RESULTS hit.
      IF sy-subrc = 0.
        APPEND hit TO matches.
      ENDIF.
    ENDIF.
    LOOP AT matches INTO hit.
      n = hit-offset - last.
      result = result && p0+last(n) && p1.
      last = hit-offset + hit-length.
    ENDLOOP.
    n = strlen( p0 ) - last.
    result = result && p0+last(n).
  ENDMETHOD.

  METHOD match.
    IF global = abap_false.
      result = me->exec( p0 ).
      RETURN.
    ENDIF.
    DATA text TYPE string.
    text = me->unit_text( p0 ).
    IF global = abap_true.
      last_index = 0.
    ENDIF.
    DATA matches TYPE match_result_tab.
    DATA hit TYPE match_result.
    DATA group TYPE submatch_result.
    DATA groups TYPE submatch_result_tab.
    DATA part TYPE string.
    IF excluded IS NOT INITIAL.
      IF ignore_case = abap_true.
        FIND PCRE excluded IN text IGNORING CASE.
      ELSE.
        FIND PCRE excluded IN text.
      ENDIF.
      IF sy-subrc = 0.
        RETURN.
      ENDIF.
    ENDIF.
    IF global = abap_true.
      IF ignore_case = abap_true.
        FIND ALL OCCURRENCES OF PCRE posix IN text IGNORING CASE RESULTS matches.
      ELSE.
        FIND ALL OCCURRENCES OF PCRE posix IN text RESULTS matches.
      ENDIF.
    ELSE.
      IF ignore_case = abap_true.
        FIND FIRST OCCURRENCE OF PCRE posix IN text IGNORING CASE RESULTS hit.
        IF sy-subrc = 0.
          APPEND hit TO matches.
        ENDIF.
      ELSE.
        FIND FIRST OCCURRENCE OF PCRE posix IN text RESULTS hit.
        IF sy-subrc = 0.
          APPEND hit TO matches.
        ENDIF.
      ENDIF.
    ENDIF.
    IF matches IS INITIAL.
      RETURN.
    ENDIF.
    CREATE OBJECT result.
    LOOP AT matches INTO hit.
      IF global = abap_false.
        result->match_index = hit-offset.
        result->match_has_index = abap_true.
      ENDIF.
      part = p0+hit-offset(hit-length).
      APPEND part TO result->items.
      IF global = abap_false.
        groups = hit-submatches.
        LOOP AT groups INTO group.
          IF group-offset < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          part = p0+group-offset(group-length).
          APPEND part TO result->items.
        ENDLOOP.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD class_hyphens.
    TYPES: BEGIN OF atom,
    text   TYPE string,
    is_set TYPE abap_bool,
    END OF atom.
    DATA atoms TYPE STANDARD TABLE OF atom WITH DEFAULT KEY.
    DATA item TYPE atom.
    DATA middle TYPE atom.
    DATA last TYPE atom.
    DATA i TYPE i.
    DATA start TYPE i.
    DATA count TYPE i.
    DATA j TYPE i.
    DATA next_atom TYPE i.
    DATA c TYPE string.
    DATA body TYPE string.
    DATA negative TYPE abap_bool.
    DATA hyphen TYPE abap_bool.
    WHILE i < strlen( pattern ).
      c = pattern+i(1).
      IF c = '\' AND i + 1 < strlen( pattern ).
        CONCATENATE result pattern+i(2) INTO result RESPECTING BLANKS.
        i = i + 2.
        CONTINUE.
      ENDIF.
      IF c <> '['.
        CONCATENATE result c INTO result RESPECTING BLANKS.
        i = i + 1.
        CONTINUE.
      ENDIF.
      start = i.
      i = i + 1.
      CLEAR: negative, hyphen, body, atoms.
      IF i < strlen( pattern ) AND pattern+i(1) = '^'.
        negative = abap_true.
        i = i + 1.
      ENDIF.
      WHILE i < strlen( pattern ) AND pattern+i(1) <> ']'.
        CLEAR item.
        count = 1.
        IF pattern+i(1) = '\' AND i + 1 < strlen( pattern ).
          j = i + 1.
          c = pattern+j(1).
          count = 2.
          item-is_set = xsdbool( c CA 'dDsSwW' ).
          IF c = 'x' AND i + 4 <= strlen( pattern ).
            count = 4.
          ELSEIF c = 'u' AND i + 6 <= strlen( pattern ).
            count = 6.
          ENDIF.
        ENDIF.
        item-text = pattern+i(count).
        APPEND item TO atoms.
        i = i + count.
      ENDWHILE.
      IF i >= strlen( pattern ).
        body = substring( val = pattern off = start ).
        CONCATENATE result body INTO result RESPECTING BLANKS.
        RETURN.
      ENDIF.
      j = 1.
      WHILE j <= lines( atoms ).
        READ TABLE atoms INDEX j INTO item.
        CLEAR: middle, last.
        next_atom = j + 1.
        READ TABLE atoms INDEX next_atom INTO middle.
        next_atom = j + 2.
        READ TABLE atoms INDEX next_atom INTO last.
        IF middle-text = '-' AND last-text IS NOT INITIAL AND item-is_set = abap_false AND last-is_set = abap_false.
          CONCATENATE body item-text '-' last-text INTO body RESPECTING BLANKS.
          j = j + 3.
        ELSE.
          IF item-text = '-' OR item-text = '\-'.
            hyphen = abap_true.
          ELSE.
            CONCATENATE body item-text INTO body RESPECTING BLANKS.
          ENDIF.
          j = j + 1.
        ENDIF.
      ENDWHILE.
      CONCATENATE result '[' INTO result RESPECTING BLANKS.
      IF negative = abap_true.
        CONCATENATE result '^' INTO result RESPECTING BLANKS.
      ENDIF.
      IF hyphen = abap_true AND body NP '-*'.
        CONCATENATE result '-' INTO result RESPECTING BLANKS.
      ENDIF.
      CONCATENATE result body INTO result RESPECTING BLANKS.
      IF hyphen = abap_true AND body CP '-*'.
        CONCATENATE result '-' INTO result RESPECTING BLANKS.
      ENDIF.
      CONCATENATE result ']' INTO result RESPECTING BLANKS.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD exec.
    DATA start TYPE i.
    DATA text TYPE string.
    DATA part TYPE string.
    DATA idx TYPE i.
    DATA search TYPE string.
    DATA hit TYPE match_result.
    DATA groups TYPE submatch_result_tab.
    DATA group TYPE submatch_result.
    IF global = abap_true OR sticky = abap_true.
      start = nmax( val1 = 0 val2 = last_index ).
    ENDIF.
    IF start > strlen( p0 ).
      last_index = 0.
      RETURN.
    ENDIF.
    text = me->unit_text( p0 ).
    IF excluded IS NOT INITIAL.
      FIND PCRE excluded IN text.
      IF sy-subrc = 0.
        IF global = abap_true OR sticky = abap_true.
          last_index = 0.
        ENDIF.
        RETURN.
      ENDIF.
    ENDIF.
    IF global = abap_true OR sticky = abap_true.
      search = '(?<![\s\S])[\s\S]{' && |{ start }| && '}'.
      IF sticky = abap_false.
        search = search && '[\s\S]*?'.
      ENDIF.
      search = search && '(' && exec_pattern && ')'.
    ELSE.
      search = exec_pattern.
    ENDIF.
    IF ignore_case = abap_true.
      FIND FIRST OCCURRENCE OF PCRE search IN text IGNORING CASE RESULTS hit.
    ELSE.
      FIND FIRST OCCURRENCE OF PCRE search IN text RESULTS hit.
    ENDIF.
    IF sy-subrc <> 0.
      IF global = abap_true OR sticky = abap_true.
        last_index = 0.
      ENDIF.
      RETURN.
    ENDIF.
    groups = hit-submatches.
    IF global = abap_true OR sticky = abap_true.
      READ TABLE groups INDEX 1 INTO group.
      hit-offset = hit-offset + hit-length - group-length.
      hit-length = group-length.
      DELETE groups INDEX 1.
    ENDIF.
    IF global = abap_true OR sticky = abap_true.
      last_index = hit-offset + hit-length.
    ENDIF.
    CREATE OBJECT result.
    result->match_index = hit-offset.
    result->match_has_index = abap_true.
    part = p0+hit-offset(hit-length).
    APPEND part TO result->items.
    LOOP AT groups INTO group.
      IF group-offset < 0.
        idx = lines( result->items ).
        INSERT idx INTO TABLE result->match_missing.
        CLEAR part.
      ELSE.
        part = p0+group-offset(group-length).
      ENDIF.
      APPEND part TO result->items.
    ENDLOOP.
  ENDMETHOD.

  METHOD unit_text.
    DATA i TYPE i.
    DATA c TYPE string.
    DATA cp TYPE i.
    WHILE i < strlen( p0 ).
      c = p0+i(1).
      cp = cl_abap_conv_out_ce=>uccpi( c ).
      IF ( cp >= 55296 AND cp <= 57343 ) OR cp = 65533.
        c = cl_abap_conv_in_ce=>uccp( 'FFFD' ).
      ENDIF.
      result = result && c.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD pcre_pattern.
    DATA i TYPE i.
    DATA c TYPE string.
    DATA escaped TYPE abap_bool.
    DATA in_class TYPE abap_bool.
    WHILE i < strlen( p0 ).
      c = p0+i(1).
      IF escaped = abap_true.
        result = result && c.
        escaped = abap_false.
      ELSEIF c = '\'.
        result = result && c.
        escaped = abap_true.
      ELSEIF c = '['.
        in_class = abap_true.
        result = result && c.
      ELSEIF c = ']'.
        in_class = abap_false.
        result = result && c.
      ELSEIF in_class = abap_false AND c = '^'.
        result = result && '(?<![\s\S])'.
      ELSEIF in_class = abap_false AND c = '$'.
        result = result && '(?![\s\S])'.
      ELSE.
        result = result && c.
      ENDIF.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD exec_legacy.
    DATA js TYPE REF TO zlnt_runtime_rege_8d1cc1058680.
    TRY.
        js ?= p0.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF js IS NOT BOUND.
      CREATE OBJECT js EXPORTING pattern = p0->source flags = p0->flags checked = abap_true.
    ENDIF.
    js->last_index = p0->last_index.
    result = js->exec( p1 ).
    p0->last_index = js->last_index.
  ENDMETHOD.
ENDCLASS.

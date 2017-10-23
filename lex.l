%option main
LP              \(
RP              \)
LCBRACE         \{
RCBRACE         \}
LSBRACKET       \[
RSBRACKET       \]
COMMA           \,
COMMENT         \/\/[^\n]*
TRUE            true
FALSE           false
AND             \/\\
OR              \\\/
IMPLIES         \-\>
NEGATION        \~
ADD_OP          \+
SUB_OP          \-
EQUALS          \=\=
MULT_OP         \*
DIV_OP          \/
MOD_OP          \%
GREATER         \>
LESS            \<
GREATER_EQ      \>\=
LESS_EQ         \<\=
NOT_EQ          \~\=
LETTER          [A-Za-z]
ASSIGN          \=
GIVE            give
TAKE            take
IF              if
THEN            then
ELSE            else
LOOP            loop
ENDLOOP         endloop
STRING          \"(\\.|[^"\\])*\"
DIGIT           [0-9]
BOOLEAN         {TRUE}|{FALSE}
POSITIVE_D      \(\+{DIGIT}+\)
NEGATIVE_D      \(\-{DIGIT}+\)
INT             {POSITIVE_D}|{NEGATIVE_D}|{DIGIT}+
RAT             {INT}\.[0-9]+|\.{INT}
CONSTANT        {STRING}|{INT}|{RAT}|{BOOLEAN}
IDENTIFIER      {LETTER}+(\_|\-|{DIGIT}|{LETTER})*
LOGIC_OP        {AND}|{OR}|{IMPLIES}|{NEGATION}
COMP_OP         {GREATER}|{GREATER_EQ}|{LESS}|{LESS_EQ}|{EQUALS}|{NOT_EQ}
ALGEB_OP        {ADD_OP}|{SUB_OP}|{MULT_OP}|{DIV_OP}|{MOD_OP}
FUNCTION        function

%%
{ALGEB_OP} {printf("ALGEBRIC_OPERATOR ");}
{FUNCTION} {printf("FUNCTION");}
{COMMA} {printf("COMMA ");}
{COMMENT} {printf("COMMENT ");}
{IF} {printf("IF ");}
{LOOP} {printf("LOOP_BEGINS ");}
{ENDLOOP} {printf("LOOP_BLOCK_ENDS ");}
{LP}    {printf("LP ");}
{ASSIGN} {printf("ASSIGNMENT OPERATOR ");}
{RP}    {printf("RP ");}
{LCBRACE} {printf("LCBRACE ");}
{RCBRACE} {printf("RCBRACE ");}
{LSBRACKET}  {printf("LSBRACKET ");}
{RSBRACKET}  {printf("RSBRACKET ");}
{TRUE} {printf("TRUE ");}
{FALSE} {printf("FALSE ");}
{THEN} {printf("THEN ");}
{ELSE} {printf("ELSE ");}
{GIVE} {printf("GIVE ");}
{TAKE} {printf("TAKE ");}
{INT}  {printf("INT " );}
{RAT}  {printf("RAT " );}
{STRING} {printf("STRING " );}
{COMP_OP} {printf("COMPARISON_OPERATOR ");}
{LOGIC_OP} {printf("LOGIC_OPERATOR ");}
{IDENTIFIER} {printf("IDENTIFIER ");}

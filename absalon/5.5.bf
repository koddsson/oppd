012 is the counter from 999 down to 0
3456789 10 11 12 13 14 15 are temp numbers
16 and up is sum backwards (1234 will be 4321 in memory)
first number will be 999 into the sum so the fourth number (20)
will be an end of memory character (20)=10 This character will
be shifted as the sum increases in length and will be used to
find out from where to start printing the solution in the end

>>>+++++++++[<<<+>+>+>-] 9990{0_3} ;3
<----> DEBUG set to 995
>>>>>>>>>>>>>>>>>       ;20
--  (20)=254 EOF        ;20
<<<<<<<<<<<<<<          ;6

DEBUG START
>>>>>>>>>>+++++++++
>+++++++++
>+++++++++
>+++++++++
<<<<<<<<<<<<<
DEBUG END

init (6)=(0)plus(1)plus(2)

<<[-]<[-]> (3) = (4) = 0   ;4

(3) = (3) plus (2)
<<[>+>+<<-] (3) = (4) = (2) and (2) = 0 ;2
>>[<<+>>-]  (2) = (4) and (4) = 0       ;4

(3) = (3) plus (1)
<<<[>>+>+<<<-]  (3) = (3) plus (1) and (4) = (1) and (1) = 0 ;1
>>>[<<<+>>>-]   (1) = (4) and (4) = 0   ;4

(3) = (3) plus (1)
<<<<[>>>+>+<<<<-] (3) = (3) plus (0) and (4) = (0) and (0) = 0 ;0
>>>>[<<<<+>>>>-] (0) = (4) and (4) = 0  ;4
< ;3
[
    [-]>[-]>[-]    (5) = 0 and (4) = 0 and (3) = 0     ;3
    <<<[>+>+>+<<<-]   (5) = (4) = (3) = (2) and (2) = 0   ;2
    >>>[<<<+>>>-]   (2) = (5)   ;5
    +++++           (5) = 5     ;5

    (3) = (3) is 5
 
    >[-]>[-]                ;7
    <<<<3[>>>>7+<<<<3-]+    ;3
    >>5[>>7-<6+<5-]         ;5
    >6[<5+>6-]              ;6
    >7[<<<<3->>>>7[-]]      ;7

    (4) = (4) is 0
    <<[-]   (5) = 0         ;5

    >6[-]>7[-]          ;7
    <<<4[>>>7+<<<4-]+   ;4
    >5[>>7-<6+<5-]      ;5
    >6[<5+>6-]          ;6
    >7[<<<4->>>7[-]]    ;7

    (3) = (3) or (4)

    <<5[-]>6[-]         ;6
    <<<3[>>>6+<<<3-]    ;3
    >>>6[<<<3->>>6[-]]  ;6
    <<4[>>6+<5+<4-]>5[<4+>5-]   ;5
    >6[<<<3[-]->>>6[-]] ;6

    if (3):
        temp 3 in use

        0 = (4)
        1 = (5)
        x = (3)

        <<4[-]>5[-]                 ;5
        <<3[>4+>5+<<3-]>4[<3+>4-]+  ;4
        >5[     ;5
            (16) = (16) plus (2)
            >6[-]   ;6
            <<<<2[>>>>>>>>>>>>>>16+<<<<<<<<<<6+<<<<2-]          ;2
            >>>>6[<<<<2+>>>>6-]         ;6

            (17) = (17) plus (1)
            <<<<<1[>>>>>>>>>>>>>>>>17+<<<<<<<<<<<6+<<<<<1-]     ;1
            >>>>>6[<<<<<1+>>>>>6-]      ;6

            (18) = (18) plus (0)
            <<<<<<0[>>>>>>>>>>>>>>>>>>18+<<<<<<<<<<<<+<<<<<<0-] ;0
            >>>>>>6[<<<<<<0+>>>>>>6-]   ;6
            <<-   ;4
        >5[-]]    ;5
        <4[         ;3
        else:
            >>>>>[-]   (9)=0   ;9
            
            (9) = (9) plus (0)
            >10[-]  (10)=0      ;10
            <<<<<<<<<<0[>>>>>>>>>9+>10+<<<<<<<<<<0-]    ;0
            >>>>>>>>>>10[<<<<<<<<<<0+>>>>>>>>>>10-]     ;10

            (9) = (9) plus (1)
            <<<<<<<<<1[>>>>>>>>9+>10+<<<<<<<<<1-]   ;1
            >>>>>>>>>10[<<<<<<<<<1+>>>>>>>>>10-]    ;10

            (9) = (9) plus (2)
            <<<<<<<<2[>>>>>>>9+>10+<<<<<<<<2-]  ;2 
            >>>>>>>>10[<<<<<<<<2+>>>>>>>>10-]   ;10
            >[-]+++ (11)=3  ;11
            >[-]>[-]>[-]>[-]<<<<<< 12 to 15 = 0 ;9

            divmod algo needs 7 temporary numbers
                (9)=total
                (10)=0
                (11)=divideby
                (12)=(13)=(14)=(15)=0

                after
                (9)=0
                (10)=total
                (11)=crap
                (12)=mod
                (13)=crap

            divmod from esolangs algos:
            [->+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]   ;9
            
            if (12) == 0:
                print 12
            [-]+>[-] (9)=1 and (10)=0       ;10
            >>12[<<<9->>>12[<<10+>>12-]]    ;12
            <<10[>>12-<<10-]                ;10
            <9[

            ===TODO REMOVE BELOW
                <<<<[-]        ;5
                ++++++++++
                ++++++++++
                ++++++++++
                ++++++++++
                ++++++++    (5)=48
                [<<+<+<+<+>>>>>-] ;5
                <<<<<.>.>.>      ;3
                [<-<-<->>>-]    ;3
                ++++++++++. space   ;3

            ===TODO REMOVE ABOVE
            >>>>>>9-]   ;9
        <<<<<4-]     ;4
                
            
    >[-] (5) = 0 (1)==0 check      ;5
   
    if (2) == 0: 
    <<3[-]>4[-]                  ;4
    <<2[>3+>4+<<2-]>3[<2+>3-]+  ;3
    >4[<3->4[-]]                ;4
    <3[                         ;3
        #
        <+++++++++ (2) = 9      ;2
        >>>>>>[-]   (8) = 0     ;8
        <<<<<<<[>>>>>>>+>+<<<<<<<<-] (8)=(9)=(1) and (1)=0  ;1
        >>>>>>>>[<<<<<<<<+>>>>>>>>-] (1)=(9) and (9)=0  ;9
        
        if (8):
            reduce (1)
        
        else:
            (1) = 9
            reduce (0)
 
        0 = (6)
        1 = (7)
        x = (8) 

        if (8)
        <<<6[-]+>7[-]     ;7
        >8[             ;8
            reduce (1)
            <<<<<<<-    ;1
            >>>>>6-     ;6
            >>8[<7+>8-] ;8
        ]
        else:
        <7[>8+<7-]      ;5
        <6[            ;6
            (1) = 9
            <<<<<+++++++++  ;1
            reduce (0)
            <-          ;0
        >>>>>>6-]        ;6

        <+   (5) = 1 do not reduce 2 ;5
    <<-3]                       ;3

    if (5) == 0: reduce 2
        >>>[-]+         ;6
        >[-]            ;7
        <<5[>6-<5[>>7+<<5-]]    ;5
        >>7[<<5+>>7-]   ;7
        <[              ;6
            <<<<-   reduce (2) ;2
        >>>>-]          ;6

SLED START
(14)=11 to park sled after running
goto (15)=1 and and start sled
>>>>>>>>[-]-    (14)=255    ;14
                       ;15
>>++ set first C (16) to be plusplus to check for EOF

"""
The sled starts by checking if the first number
of the sum is the EOF / that is go to C=(16) and
increment by 2 (since EOF is 254)
"""
[
SLED:
C = current
N = next
T = third
temp0   10 T(o) T(he) R(ight)
temp1   11 TTR
temp2   12 TTR
temp3   13 TTR

if C != EOF:
    """
    Since C wasn't EOF we decrement C by 2 again
    """ 
    -- set back to what it was since it wasn't 254
    
    """
    Now we goto temp0 and set it to 10 / we need to
    use an algorithm to check if C is currently 10 or
    more so we can reduce C by 10 and then increment
    N by 1
    We set temp0 as 10 / temp1 as C since the algorithm
    is destructive and finally use the algorithm:
        temp2 = temp1 more or equal to temp0
    """

    temp0 = 10
    >>>>>>>>>>t0[-]++++++++++=10  ;t0
    
    temp1 = C
    >>[-]t2<[-]t1       ;t1
    <<<<<<<<<<<C[>>>>>>>>>>>+>+<<<<<<<<<<<<-]   ;C
    >>>>>>>>>>>>[<<<<<<<<<<<<+>>>>>>>>>>>>-]    ;t2
    
    temp2 = temp1 more or eq temp0
    t2[-]>t3[-]>t4[-]           ;t4
    <<<t1[>>t3+                 ;t3
    <<<t0[->>>t3[-]>t4+<<<<t0]  ;t0
    >>>t3[-<t2+>t3]             ;t3
    >t4[-<<<<t0+>>>>t4]         ;t4
    <<<<t0->t1-]                ;t1
    
    """
    Now if temp2 is true (that is C is more or equal to 10)
    we need to reduce C by 10 and increment N by 1
    """
    ======t2 in use
    if temp2:
    t1[-]<t0[-]                 ;t0
    >>t2[<<t0+>t1+>t2-]<<t0[>>t2+<<t0-] ;t0
    >t1[    ;t1
        """
        C was more or equal to 10
        """
        ======t1 in use
        <<<<<<<<<<<                 ;C
        ----------  C minus 10      ;C

        """
        Before we increment N by 1 we first need to check N
        is EOF / if it is EOF we move EOF to T and set N to 0
        We do this by setting temp0 to EOF / temp2 to N and then 
        using and algorithm that does temp0 = temp0 == temp2
        """
        >>>>>>>>>>[-]-- t0=EOF=254  ;t0
        t2 = N
        >>[-]<<<<<<<<<<<[>>>>>>>>>>>+>+<<<<<<<<<<<<-]   ;N
        >>>>>>>>>>>>t3[<<<<<<<<<<<<N+>>>>>>>>>>>>-]<   ;t2

        t0 = t0 == t2
        <<t0[->>t2-<<t0]+>>t2[<<t0->>t2[-]]<<       ;t0
        
        """
        If temp0 is true / that means that N was EOF and we 
        need to shift it to the right
        """
        if t0:
        
        >>t2[-]>t3[-]                   ;t3
        <<<t0[>>t2+>t3+<<<t0-]>>t2[<<t0+>>t2-]  ;t2
        >t3[
            """
            Here we simply increment N by 2 since 254 plus 2 = 0
            and decrement set T=0 and decrement it by 2 to get
            0 minus 2 = 254
            """
            ======t3 in use
            T=N & N=0
            <<<t0<<<<<<<<<N++   ;N
            >T[-]--             ;T
        >>>>>>>>>>t3[-]]       ;t3
        """
        We finally increase N by one and end the work for the 
        'if C is more or equal to 10' part of the sled
        """
        <<<<<<<<<<<<N+  ;N
        >>>>>>>>>>t1[-]
    ]
    """
    We end the last loop on temp1 and need to go back to N
    and increase it by 2 / that is / we're shifting C to N
    (simply moving the sled by 1 to the right) and checking
    if the current C (last N) is EOF
    """
    <<<<<<<<<<++
]     ;C
--  fix EOF
park sled
#
+[-<+]-     ;14
SLED END

<<<<<<<<<<<[-]>[-] (3) = (4) = 0   ;4

TODO Fix result counters that are above 9
(3) = (3) plus (2)
<<[>+>+<<-] (3) = (4) = (2) and (2) = 0 ;2
>>[<<+>>-]  (2) = (4) and (4) = 0       ;4

(3) = (3) plus (1)
<<<[>>+>+<<<-]  (3) = (3) plus (1) and (4) = (1) and (1) = 0    ;1
>>>[<<<+>>>-]   (1) = (4) and (4) = 0   ;4

(3) = (3) plus (1)
<<<<[>>>+>+<<<<-] (3) = (3) plus (0) and (4) = (0) and (0) = 0  ;0
>>>>[<<<<+>>>>-] (0) = (4) and (4) = 0  ;4
<] ;3

>>>>>>>>>>>>[-]     ;15
++++++++++
++++++++++
++++++++++
++++++++++
++++++++    (15)=48 ;15

[>+>+>+>+>+>+<<<<<<-]
>>>>>>
.<.<.<.<.<.<

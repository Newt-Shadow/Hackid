.class public Lorg/apache/tika/sax/CleanPhoneText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cleanPhoneRegex:Ljava/lang/String; = "([2-9]\\d{2}[2-9]\\d{6})"

.field public static final cleanSubstitutions:[[[Ljava/lang/String;

.field static final phoneRegex:Ljava/lang/String; = "([{(<]{0,3}[2-9][\\W_]{0,3}\\d[\\W_]{0,3}\\d[\\W_]{0,6}[2-9][\\W_]{0,3}\\d[\\W_]{0,3}\\d[\\W_]{0,6}\\d[\\W_]{0,3}\\d[\\W_]{0,3}\\d[\\W_]{0,3}\\d)"


# direct methods
.method static constructor <clinit>()V
    .locals 118

    const-string v0, "&#\\d{1,3};"

    const-string v1, ""

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [[Ljava/lang/String;

    move-result-object v1

    const-string v0, "th0usand"

    const-string v2, "thousand"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "th1rteen"

    const-string v15, "thirteen"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "f0urteen"

    const-string v14, "fourteen"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "e1ghteen"

    const-string v13, "eighteen"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "n1neteen"

    const-string v12, "nineteen"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "f1fteen"

    const-string v11, "fifteen"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "s1xteen"

    const-string v10, "sixteen"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "th1rty"

    move-object/from16 v26, v1

    const-string v1, "thirty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v1

    move-object v1, v10

    move-object v10, v0

    const-string v0, "e1ghty"

    move-object/from16 v28, v1

    const-string v1, "eighty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v1

    move-object v1, v11

    move-object v11, v0

    const-string v0, "n1nety"

    move-object/from16 v30, v1

    const-string v1, "ninety"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v1

    move-object v1, v12

    move-object v12, v0

    const-string v0, "fourty"

    move-object/from16 v32, v1

    const-string v1, "forty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v13

    move-object v13, v0

    const-string v0, "f0urty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v14

    move-object v14, v0

    const-string v0, "e1ght"

    move-object/from16 v35, v2

    const-string v2, "eight"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v2

    move-object v2, v15

    move-object v15, v0

    const-string v0, "f0rty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "f1fty"

    move-object/from16 v37, v1

    const-string v1, "fifty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v17

    const-string v0, "s1xty"

    move-object/from16 v38, v1

    const-string v1, "sixty"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "zer0"

    move-object/from16 v39, v1

    const-string v1, "zero"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "f0ur"

    move-object/from16 v40, v1

    const-string v1, "four"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v20

    const-string v0, "f1ve"

    move-object/from16 v41, v1

    const-string v1, "five"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v21

    const-string v0, "n1ne"

    move-object/from16 v42, v1

    const-string v1, "nine"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v22

    const-string v0, "0ne"

    move-object/from16 v43, v1

    const-string v1, "one"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v23

    const-string v0, "tw0"

    move-object/from16 v44, v1

    const-string v1, "two"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v24

    const-string v0, "s1x"

    move-object/from16 v45, v1

    const-string v1, "six"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v25

    filled-new-array/range {v3 .. v25}, [[Ljava/lang/String;

    move-result-object v0

    const-string v1, "twenty[\\W_]{0,3}1"

    const-string v3, "twenty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v46

    const-string v1, "twenty[\\W_]{0,3}2"

    const-string v3, "twenty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v47

    const-string v1, "twenty[\\W_]{0,3}3"

    const-string v3, "twenty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v48

    const-string v1, "twenty[\\W_]{0,3}4"

    const-string v3, "twenty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v49

    const-string v1, "twenty[\\W_]{0,3}5"

    const-string v3, "twenty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v50

    const-string v1, "twenty[\\W_]{0,3}6"

    const-string v3, "twenty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v51

    const-string v1, "twenty[\\W_]{0,3}7"

    const-string v3, "twenty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v52

    const-string v1, "twenty[\\W_]{0,3}8"

    const-string v3, "twenty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v53

    const-string v1, "twenty[\\W_]{0,3}9"

    const-string v3, "twenty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v54

    const-string v1, "thirty[\\W_]{0,3}1"

    const-string v3, "thirty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v55

    const-string v1, "thirty[\\W_]{0,3}2"

    const-string v3, "thirty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v56

    const-string v1, "thirty[\\W_]{0,3}3"

    const-string v3, "thirty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v57

    const-string v1, "thirty[\\W_]{0,3}4"

    const-string v3, "thirty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v58

    const-string v1, "thirty[\\W_]{0,3}5"

    const-string v3, "thirty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v59

    const-string v1, "thirty[\\W_]{0,3}6"

    const-string v3, "thirty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v60

    const-string v1, "thirty[\\W_]{0,3}7"

    const-string v3, "thirty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v61

    const-string v1, "thirty[\\W_]{0,3}8"

    const-string v3, "thirty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v62

    const-string v1, "thirty[\\W_]{0,3}9"

    const-string v3, "thirty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v63

    const-string v1, "forty[\\W_]{0,3}1"

    const-string v3, "forty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v64

    const-string v1, "forty[\\W_]{0,3}2"

    const-string v3, "forty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v65

    const-string v1, "forty[\\W_]{0,3}3"

    const-string v3, "forty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v66

    const-string v1, "forty[\\W_]{0,3}4"

    const-string v3, "forty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v67

    const-string v1, "forty[\\W_]{0,3}5"

    const-string v3, "forty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v68

    const-string v1, "forty[\\W_]{0,3}6"

    const-string v3, "forty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v69

    const-string v1, "forty[\\W_]{0,3}7"

    const-string v3, "forty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v70

    const-string v1, "forty[\\W_]{0,3}8"

    const-string v3, "forty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v71

    const-string v1, "forty[\\W_]{0,3}9"

    const-string v3, "forty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v72

    const-string v1, "fifty[\\W_]{0,3}1"

    const-string v3, "fifty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v73

    const-string v1, "fifty[\\W_]{0,3}2"

    const-string v3, "fifty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v74

    const-string v1, "fifty[\\W_]{0,3}3"

    const-string v3, "fifty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v75

    const-string v1, "fifty[\\W_]{0,3}4"

    const-string v3, "fifty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v76

    const-string v1, "fifty[\\W_]{0,3}5"

    const-string v3, "fifty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v77

    const-string v1, "fifty[\\W_]{0,3}6"

    const-string v3, "fifty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v78

    const-string v1, "fifty[\\W_]{0,3}7"

    const-string v3, "fifty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v79

    const-string v1, "fifty[\\W_]{0,3}8"

    const-string v3, "fifty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v80

    const-string v1, "fifty[\\W_]{0,3}9"

    const-string v3, "fifty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v81

    const-string v1, "sixty[\\W_]{0,3}1"

    const-string v3, "sixty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v82

    const-string v1, "sixty[\\W_]{0,3}2"

    const-string v3, "sixty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v83

    const-string v1, "sixty[\\W_]{0,3}3"

    const-string v3, "sixty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v84

    const-string v1, "sixty[\\W_]{0,3}4"

    const-string v3, "sixty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v85

    const-string v1, "sixty[\\W_]{0,3}5"

    const-string v3, "sixty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v86

    const-string v1, "sixty[\\W_]{0,3}6"

    const-string v3, "sixty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v87

    const-string v1, "sixty[\\W_]{0,3}7"

    const-string v3, "sixty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v88

    const-string v1, "sixty[\\W_]{0,3}8"

    const-string v3, "sixty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v89

    const-string v1, "sixty[\\W_]{0,3}9"

    const-string v3, "sixty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v90

    const-string v1, "seventy[\\W_]{0,3}1"

    const-string v3, "seventy-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v91

    const-string v1, "seventy[\\W_]{0,3}2"

    const-string v3, "seventy-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v92

    const-string v1, "seventy[\\W_]{0,3}3"

    const-string v3, "seventy-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v93

    const-string v1, "seventy[\\W_]{0,3}4"

    const-string v3, "seventy-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v94

    const-string v1, "seventy[\\W_]{0,3}5"

    const-string v3, "seventy-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v95

    const-string v1, "seventy[\\W_]{0,3}6"

    const-string v3, "seventy-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v96

    const-string v1, "seventy[\\W_]{0,3}7"

    const-string v3, "seventy-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v97

    const-string v1, "seventy[\\W_]{0,3}8"

    const-string v3, "seventy-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v98

    const-string v1, "seventy[\\W_]{0,3}9"

    const-string v3, "seventy-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v99

    const-string v1, "eighty[\\W_]{0,3}1"

    const-string v3, "eighty-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v100

    const-string v1, "eighty[\\W_]{0,3}2"

    const-string v3, "eighty-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v101

    const-string v1, "eighty[\\W_]{0,3}3"

    const-string v3, "eighty-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v102

    const-string v1, "eighty[\\W_]{0,3}4"

    const-string v3, "eighty-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v103

    const-string v1, "eighty[\\W_]{0,3}5"

    const-string v3, "eighty-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v104

    const-string v1, "eighty[\\W_]{0,3}6"

    const-string v3, "eighty-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v105

    const-string v1, "eighty[\\W_]{0,3}7"

    const-string v3, "eighty-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v106

    const-string v1, "eighty[\\W_]{0,3}8"

    const-string v3, "eighty-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v107

    const-string v1, "eighty[\\W_]{0,3}9"

    const-string v3, "eighty-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v108

    const-string v1, "ninety[\\W_]{0,3}1"

    const-string v3, "ninety-one"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v109

    const-string v1, "ninety[\\W_]{0,3}2"

    const-string v3, "ninety-two"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v110

    const-string v1, "ninety[\\W_]{0,3}3"

    const-string v3, "ninety-three"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v111

    const-string v1, "ninety[\\W_]{0,3}4"

    const-string v3, "ninety-four"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v112

    const-string v1, "ninety[\\W_]{0,3}5"

    const-string v3, "ninety-five"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v113

    const-string v1, "ninety[\\W_]{0,3}6"

    const-string v3, "ninety-six"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v114

    const-string v1, "ninety[\\W_]{0,3}7"

    const-string v3, "ninety-seven"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v115

    const-string v1, "ninety[\\W_]{0,3}8"

    const-string v3, "ninety-eight"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v116

    const-string v1, "ninety[\\W_]{0,3}9"

    const-string v3, "ninety-nine"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v117

    filled-new-array/range {v46 .. v117}, [[Ljava/lang/String;

    move-result-object v3

    const-string v1, "twenty-one"

    const-string v4, "21"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v46

    const-string v1, "twenty-two"

    const-string v4, "22"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v47

    const-string v1, "twenty-three"

    const-string v4, "23"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v48

    const-string v1, "twenty-four"

    const-string v4, "24"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v49

    const-string v1, "twenty-five"

    const-string v4, "25"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v50

    const-string v1, "twenty-six"

    const-string v4, "26"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v51

    const-string v1, "twenty-seven"

    const-string v4, "27"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v52

    const-string v1, "twenty-eight"

    const-string v4, "28"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v53

    const-string v1, "twenty-nine"

    const-string v4, "29"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v54

    const-string v1, "thirty-one"

    const-string v4, "31"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v55

    const-string v1, "thirty-two"

    const-string v4, "32"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v56

    const-string v1, "thirty-three"

    const-string v4, "33"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v57

    const-string v1, "thirty-four"

    const-string v4, "34"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v58

    const-string v1, "thirty-five"

    const-string v4, "35"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v59

    const-string v1, "thirty-six"

    const-string v4, "36"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v60

    const-string v1, "thirty-seven"

    const-string v4, "37"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v61

    const-string v1, "thirty-eight"

    const-string v4, "38"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v62

    const-string v1, "thirty-nine"

    const-string v4, "39"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v63

    const-string v1, "forty-one"

    const-string v4, "41"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v64

    const-string v1, "forty-two"

    const-string v4, "42"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v65

    const-string v1, "forty-three"

    const-string v4, "43"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v66

    const-string v1, "forty-four"

    const-string v4, "44"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v67

    const-string v1, "forty-five"

    const-string v4, "45"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v68

    const-string v1, "forty-six"

    const-string v4, "46"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v69

    const-string v1, "forty-seven"

    const-string v4, "47"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v70

    const-string v1, "forty-eight"

    const-string v4, "48"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v71

    const-string v1, "forty-nine"

    const-string v4, "49"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v72

    const-string v1, "fifty-one"

    const-string v4, "51"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v73

    const-string v1, "fifty-two"

    const-string v4, "52"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v74

    const-string v1, "fifty-three"

    const-string v4, "53"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v75

    const-string v1, "fifty-four"

    const-string v4, "54"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v76

    const-string v1, "fifty-five"

    const-string v4, "55"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v77

    const-string v1, "fifty-six"

    const-string v4, "56"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v78

    const-string v1, "fifty-seven"

    const-string v4, "57"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v79

    const-string v1, "fifty-eight"

    const-string v4, "58"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v80

    const-string v1, "fifty-nine"

    const-string v4, "59"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v81

    const-string v1, "sixty-one"

    const-string v4, "61"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v82

    const-string v1, "sixty-two"

    const-string v4, "62"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v83

    const-string v1, "sixty-three"

    const-string v4, "63"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v84

    const-string v1, "sixty-four"

    const-string v4, "64"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v85

    const-string v1, "sixty-five"

    const-string v4, "65"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v86

    const-string v1, "sixty-six"

    const-string v4, "66"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v87

    const-string v1, "sixty-seven"

    const-string v4, "67"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v88

    const-string v1, "sixty-eight"

    const-string v4, "68"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v89

    const-string v1, "sixty-nine"

    const-string v4, "69"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v90

    const-string v1, "seventy-one"

    const-string v4, "71"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v91

    const-string v1, "seventy-two"

    const-string v4, "72"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v92

    const-string v1, "seventy-three"

    const-string v4, "73"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v93

    const-string v1, "seventy-four"

    const-string v4, "74"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v94

    const-string v1, "seventy-five"

    const-string v4, "75"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v95

    const-string v1, "seventy-six"

    const-string v4, "76"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v96

    const-string v1, "seventy-seven"

    const-string v4, "77"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v97

    const-string v1, "seventy-eight"

    const-string v4, "78"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v98

    const-string v1, "seventy-nine"

    const-string v4, "79"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v99

    const-string v1, "eighty-one"

    const-string v4, "81"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v100

    const-string v1, "eighty-two"

    const-string v4, "82"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v101

    const-string v1, "eighty-three"

    const-string v4, "83"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v102

    const-string v1, "eighty-four"

    const-string v4, "84"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v103

    const-string v1, "eighty-five"

    const-string v4, "85"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v104

    const-string v1, "eighty-six"

    const-string v4, "86"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v105

    const-string v1, "eighty-seven"

    const-string v4, "87"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v106

    const-string v1, "eighty-eight"

    const-string v4, "88"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v107

    const-string v1, "eighty-nine"

    const-string v4, "89"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v108

    const-string v1, "ninety-one"

    const-string v4, "91"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v109

    const-string v1, "ninety-two"

    const-string v4, "92"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v110

    const-string v1, "ninety-three"

    const-string v4, "93"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v111

    const-string v1, "ninety-four"

    const-string v4, "94"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v112

    const-string v1, "ninety-five"

    const-string v4, "95"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v113

    const-string v1, "ninety-six"

    const-string v4, "96"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v114

    const-string v1, "ninety-seven"

    const-string v4, "97"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v115

    const-string v1, "ninety-eight"

    const-string v4, "98"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v116

    const-string v1, "ninety-nine"

    const-string v4, "99"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v117

    filled-new-array/range {v46 .. v117}, [[Ljava/lang/String;

    move-result-object v4

    const-string v1, "hundred"

    const-string v5, "00"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "000"

    move-object/from16 v6, v35

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v5}, [[Ljava/lang/String;

    move-result-object v5

    const-string v1, "seventeen"

    const-string v6, "17"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v46

    const-string v1, "13"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v47

    const-string v1, "14"

    move-object/from16 v2, v34

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v48

    const-string v1, "18"

    move-object/from16 v2, v33

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v49

    const-string v1, "19"

    move-object/from16 v2, v32

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v50

    const-string v1, "15"

    move-object/from16 v2, v30

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v51

    const-string v1, "16"

    move-object/from16 v2, v28

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v52

    const-string v1, "seventy"

    const-string v2, "70"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v53

    const-string v1, "eleven"

    const-string v2, "11"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v54

    const-string v1, "twelve"

    const-string v2, "12"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v55

    const-string v1, "twenty"

    const-string v2, "20"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v56

    const-string v1, "30"

    move-object/from16 v2, v27

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v57

    const-string v1, "80"

    move-object/from16 v2, v29

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v58

    const-string v1, "90"

    move-object/from16 v2, v31

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v59

    const-string v1, "three"

    const-string v2, "3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v60

    const-string v1, "seven"

    const-string v2, "7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v61

    const-string v1, "8"

    move-object/from16 v2, v36

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v62

    const-string v1, "40"

    move-object/from16 v2, v37

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v63

    const-string v1, "50"

    move-object/from16 v2, v38

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v64

    const-string v1, "60"

    move-object/from16 v2, v39

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v65

    const-string v1, "0"

    move-object/from16 v2, v40

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v66

    const-string v2, "4"

    move-object/from16 v6, v41

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v67

    const-string v2, "5"

    move-object/from16 v6, v42

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v68

    const-string v2, "9"

    move-object/from16 v6, v43

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v69

    const-string v2, "1"

    move-object/from16 v6, v44

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v70

    const-string v6, "2"

    move-object/from16 v7, v45

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v71

    const-string v6, "six"

    const-string v7, "6"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v72

    const-string v6, "ten"

    const-string v7, "10"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v73

    filled-new-array/range {v46 .. v73}, [[Ljava/lang/String;

    move-result-object v6

    const-string v7, "oh"

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "o"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v8, "i"

    filled-new-array {v8, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "l"

    filled-new-array {v9, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v7, v1, v8, v2}, [[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, v26

    move-object v2, v0

    filled-new-array/range {v1 .. v7}, [[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/CleanPhoneText;->cleanSubstitutions:[[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lorg/apache/tika/sax/CleanPhoneText;->cleanSubstitutions:[[[Ljava/lang/String;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    array-length v5, v4

    .line 17
    move v6, v2

    .line 18
    :goto_1
    if-ge v6, v5, :cond_0

    .line 19
    .line 20
    aget-object v7, v4, v6

    .line 21
    .line 22
    aget-object v8, v7, v2

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    aget-object v7, v7, v9

    .line 26
    .line 27
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    add-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "[\\D+\\s]"

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static extractPhoneNumbers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/tika/sax/CleanPhoneText;->clean(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "([2-9]\\d{2}[2-9]\\d{6})"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->end(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-lez v5, :cond_0

    .line 41
    .line 42
    add-int/lit8 v6, v5, -0x1

    .line 43
    .line 44
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v5, ""

    .line 50
    .line 51
    :goto_1
    const-string v6, "82"

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    const-string v6, "*"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move v2, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-object v1
.end method

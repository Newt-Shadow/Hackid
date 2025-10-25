.class public final Ljb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;
.implements Lmb/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb/a$a;
    }
.end annotation


# static fields
.field private static final s:Ljb/a$a;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Leb/h;

.field private i:Leb/d;

.field private j:Ljava/util/List;

.field private final k:Ljava/lang/String;

.field private l:Ljava/util/Map;

.field private final m:Ljava/util/Set;

.field private final n:Ljava/util/Map;

.field private final o:Ljava/util/Map;

.field private p:Z

.field private q:Lcom/posthog/surveys/Survey;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljb/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljb/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljb/a;->s:Ljb/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->I_CONTAINS:Lcom/posthog/surveys/SurveyMatchType;

    .line 10
    .line 11
    sget-object v1, Ljb/a$e;->e:Ljb/a$e;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->NOT_I_CONTAINS:Lcom/posthog/surveys/SurveyMatchType;

    .line 18
    .line 19
    sget-object v1, Ljb/a$f;->e:Ljb/a$f;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->REGEX:Lcom/posthog/surveys/SurveyMatchType;

    .line 26
    .line 27
    sget-object v1, Ljb/a$g;->e:Ljb/a$g;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->NOT_REGEX:Lcom/posthog/surveys/SurveyMatchType;

    .line 34
    .line 35
    sget-object v1, Ljb/a$h;->e:Ljb/a$h;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->EXACT:Lcom/posthog/surveys/SurveyMatchType;

    .line 42
    .line 43
    sget-object v1, Ljb/a$i;->e:Ljb/a$i;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v0, Lcom/posthog/surveys/SurveyMatchType;->IS_NOT:Lcom/posthog/surveys/SurveyMatchType;

    .line 50
    .line 51
    sget-object v1, Ljb/a$j;->e:Ljb/a$j;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    filled-new-array/range {v2 .. v7}, [Lxc/k;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Ljb/a;->a:Ljava/util/Map;

    .line 66
    .line 67
    invoke-static {p1}, Lgb/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_0

    .line 72
    .line 73
    const-string p1, "Mobile"

    .line 74
    .line 75
    :cond_0
    iput-object p1, p0, Ljb/a;->b:Ljava/lang/String;

    .line 76
    .line 77
    new-instance p1, Ljava/lang/Object;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Ljb/a;->c:Ljava/lang/Object;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/Object;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Ljb/a;->d:Ljava/lang/Object;

    .line 90
    .line 91
    new-instance p1, Ljava/lang/Object;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Ljb/a;->e:Ljava/lang/Object;

    .line 97
    .line 98
    new-instance p1, Ljava/lang/Object;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Ljb/a;->f:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance p1, Ljava/lang/Object;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Ljb/a;->g:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Ljb/a;->j:Ljava/util/List;

    .line 117
    .line 118
    const-string p1, "seenSurvey_"

    .line 119
    .line 120
    iput-object p1, p0, Ljb/a;->k:Ljava/lang/String;

    .line 121
    .line 122
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Ljb/a;->m:Ljava/util/Set;

    .line 128
    .line 129
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Ljb/a;->n:Ljava/util/Map;

    .line 135
    .line 136
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Ljb/a;->o:Ljava/util/Map;

    .line 142
    .line 143
    return-void
.end method

.method private final A(Lcom/posthog/surveys/Survey;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "$survey_name"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "$survey_id"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getCurrentIteration()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "$survey_iteration"

    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getCurrentIterationStartDate()Ljava/util/Date;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const-string v1, "$survey_iteration_start_date"

    .line 50
    .line 51
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    return-object v0
.end method

.method private final B(Lcom/posthog/surveys/Survey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lyc/m;->R(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/posthog/surveys/SurveyQuestion;

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    sub-int/2addr v2, v3

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyQuestion;->getBranching()Lcom/posthog/surveys/SurveyQuestionBranching;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_0
    const/4 v4, 0x0

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    new-instance p3, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    sub-int/2addr p1, v3

    .line 49
    if-ne p2, p1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v3, v4

    .line 53
    :goto_1
    invoke-direct {p3, v1, v3}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_2
    instance-of v5, v2, Lcom/posthog/surveys/SurveyQuestionBranching$End;

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    new-instance p1, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 62
    .line 63
    invoke-direct {p1, p2, v3}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_3
    instance-of v5, v2, Lcom/posthog/surveys/SurveyQuestionBranching$Next;

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    new-instance p3, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sub-int/2addr p1, v3

    .line 83
    if-ne p2, p1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v3, v4

    .line 87
    :goto_2
    invoke-direct {p3, v1, v3}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 88
    .line 89
    .line 90
    :goto_3
    move-object p1, p3

    .line 91
    goto :goto_6

    .line 92
    :cond_5
    instance-of p2, v2, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;

    .line 93
    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    check-cast v2, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;->getIndex()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    sub-int/2addr p3, v3

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    new-instance p3, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sub-int/2addr p1, v3

    .line 126
    if-ne p2, p1, :cond_6

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    move v3, v4

    .line 130
    :goto_4
    invoke-direct {p3, p2, v3}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    instance-of p2, v2, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;

    .line 135
    .line 136
    if-eqz p2, :cond_a

    .line 137
    .line 138
    check-cast v2, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;->getResponseValues()Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-direct {p0, p1, v0, p3, p2}, Ljb/a;->D(Lcom/posthog/surveys/Survey;Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse;Ljava/util/Map;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-nez p2, :cond_9

    .line 149
    .line 150
    new-instance p2, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    sub-int/2addr p1, v3

    .line 161
    if-ne v1, p1, :cond_8

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    move v3, v4

    .line 165
    :goto_5
    invoke-direct {p2, v1, v3}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 166
    .line 167
    .line 168
    :cond_9
    move-object p1, p2

    .line 169
    :goto_6
    return-object p1

    .line 170
    :cond_a
    new-instance p1, Lxc/i;

    .line 171
    .line 172
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 173
    .line 174
    .line 175
    throw p1
.end method

.method private final C(II)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "positive"

    const-string v1, "neutral"

    const-string v2, "negative"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v3, :cond_11

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq p1, v6, :cond_c

    const/4 v3, 0x7

    if-eq p1, v3, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    move-object v0, v4

    goto/16 :goto_a

    :cond_1
    if-ltz p2, :cond_2

    if-ge p2, v3, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v8

    :goto_1
    if-eqz p1, :cond_3

    const-string v0, "detractors"

    goto/16 :goto_a

    :cond_3
    const/16 p1, 0x9

    if-gt v3, p2, :cond_4

    if-ge p2, p1, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    if-eqz v0, :cond_5

    const-string v0, "passives"

    goto/16 :goto_a

    :cond_5
    if-gt p1, p2, :cond_6

    const/16 p1, 0xb

    if-ge p2, p1, :cond_6

    goto :goto_3

    :cond_6
    move v5, v8

    :goto_3
    if-eqz v5, :cond_0

    const-string v0, "promoters"

    goto :goto_a

    :cond_7
    if-gt v5, p2, :cond_8

    if-ge p2, v7, :cond_8

    move p1, v5

    goto :goto_4

    :cond_8
    move p1, v8

    :goto_4
    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    if-ne p2, v7, :cond_a

    goto :goto_8

    :cond_a
    if-gt v6, p2, :cond_b

    const/16 p1, 0x8

    if-ge p2, p1, :cond_b

    goto :goto_5

    :cond_b
    move v5, v8

    :goto_5
    if-eqz v5, :cond_0

    goto :goto_a

    :cond_c
    if-gt v5, p2, :cond_d

    if-ge p2, v3, :cond_d

    move p1, v5

    goto :goto_6

    :cond_d
    move p1, v8

    :goto_6
    if-eqz p1, :cond_e

    goto :goto_9

    :cond_e
    if-ne p2, v3, :cond_f

    goto :goto_8

    :cond_f
    if-gt v7, p2, :cond_10

    const/4 p1, 0x6

    if-ge p2, p1, :cond_10

    goto :goto_7

    :cond_10
    move v5, v8

    :goto_7
    if-eqz v5, :cond_0

    goto :goto_a

    :cond_11
    if-eq p2, v5, :cond_13

    const/4 p1, 0x2

    if-eq p2, p1, :cond_12

    if-eq p2, v3, :cond_14

    goto :goto_0

    :cond_12
    :goto_8
    move-object v0, v1

    goto :goto_a

    :cond_13
    :goto_9
    move-object v0, v2

    :cond_14
    :goto_a
    return-object v0
.end method

.method private final D(Lcom/posthog/surveys/Survey;Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse;Ljava/util/Map;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Ljb/a;->i:Leb/d;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p2, "[Surveys] Got response based branching, but missing the actual question."

    .line 15
    .line 16
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    instance-of v1, p3, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast p3, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {p0, p2, p3, p4, p1}, Ljb/a;->L(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;Ljava/util/Map;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v1, p3, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast p3, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p0, p2, p3, p4, p1}, Ljb/a;->K(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse$Rating;Ljava/util/Map;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p1, p0, Ljb/a;->i:Leb/d;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    const-string p2, "[Surveys] Got response based branching for an unsupported question type."

    .line 69
    .line 70
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_0
    return-object v0
.end method

.method private final E(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "$survey_response"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "$survey_response_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method

.method private final F()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Ljb/a;->l:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Ljb/a;->h:Leb/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Leb/h;->getConfig()Leb/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Leb/d;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v2, "surveySeen"

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v0, v2, v1, v3, v1}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v0, v1

    .line 39
    :goto_2
    instance-of v2, v0, Ljava/util/Map;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Ljava/util/Map;

    .line 45
    .line 46
    :cond_3
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-static {v1}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    :cond_5
    iput-object v0, p0, Ljb/a;->l:Ljava/util/Map;

    .line 60
    .line 61
    :cond_6
    iget-object v0, p0, Ljb/a;->l:Ljava/util/Map;

    .line 62
    .line 63
    if-nez v0, :cond_7

    .line 64
    .line 65
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_7
    return-object v0
.end method

.method private final G(Lcom/posthog/surveys/Survey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getCurrentIteration()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "$survey_"

    .line 6
    .line 7
    const/16 v2, 0x2f

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    return-object p1
.end method

.method private final H(Lcom/posthog/surveys/Survey;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->t(Lcom/posthog/surveys/Survey;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Ljb/a;->I(Lcom/posthog/surveys/Survey;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Ljb/a;->d:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-direct {p0}, Ljb/a;->F()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    return v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0

    .line 36
    throw p1
.end method

.method private final I(Lcom/posthog/surveys/Survey;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ljb/a;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getCurrentIteration()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x5f

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method

.method private final J()Lcom/posthog/surveys/PostHogSurveysDelegate;
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a;->i:Leb/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Leb/d;->J()Lcom/posthog/surveys/PostHogSurveysConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveysConfig;->getSurveysDelegate()Lcom/posthog/surveys/PostHogSurveysDelegate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;

    .line 18
    .line 19
    iget-object v1, p0, Ljb/a;->i:Leb/d;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Leb/d;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object v0
.end method

.method private final K(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse$Rating;Ljava/util/Map;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/posthog/surveys/RatingSurveyQuestion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    check-cast p1, Lcom/posthog/surveys/RatingSurveyQuestion;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getScale()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->getRating()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p0, p1, p2}, Ljb/a;->C(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, p1, p4}, Ljb/a;->O(Ljava/lang/Object;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    iget-object p1, p0, Ljb/a;->i:Leb/d;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const-string p2, "[Surveys] Could not get response bucket for rating question."

    .line 57
    .line 58
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-object v1
.end method

.method private final L(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;Ljava/util/Map;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;->getSelectedChoice()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getChoices()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, -0x1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const-string p2, ""

    .line 23
    .line 24
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p2, v2

    .line 30
    :goto_0
    if-ne p2, v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getHasOpenChoice()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getChoices()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    :goto_1
    add-int/lit8 p2, p1, -0x1

    .line 57
    .line 58
    :cond_4
    if-ltz p2, :cond_5

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-direct {p0, p1, p4}, Ljb/a;->O(Ljava/lang/Object;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_5
    iget-object p1, p0, Ljb/a;->i:Leb/d;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    const-string p2, "[Surveys] Could not find response index for specific question."

    .line 86
    .line 87
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    return-object v1
.end method

.method private final M(Lcom/posthog/surveys/Survey;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getConditions()Lcom/posthog/surveys/SurveyConditions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyConditions;->getEvents()Lcom/posthog/surveys/SurveyEventConditions;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyEventConditions;->getValues()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    check-cast p1, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v1, 0x1

    .line 27
    xor-int/2addr p1, v1

    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_0
    return v0
.end method

.method private final N(Lcom/posthog/surveys/Survey;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ljb/a;->m:Ljava/util/Set;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    .line 18
    throw p1
.end method

.method private final O(Ljava/lang/Object;I)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/lit8 v0, p2, -0x1

    .line 13
    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    new-instance v0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 19
    .line 20
    if-lt p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "end"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance v0, Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 54
    .line 55
    sub-int/2addr p2, v1

    .line 56
    invoke-direct {v0, p2, v1}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;-><init>(IZ)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_1
    return-object v0
.end method

.method private final P(Ljava/util/List;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/posthog/surveys/Survey;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/posthog/surveys/Survey;->getConditions()Lcom/posthog/surveys/SurveyConditions;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyConditions;->getEvents()Lcom/posthog/surveys/SurveyEventConditions;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyEventConditions;->getValues()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    check-cast v2, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/posthog/surveys/SurveyEventCondition;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/posthog/surveys/SurveyEventCondition;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lez v4, :cond_2

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v4, 0x0

    .line 73
    :goto_1
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object p1, p0, Ljb/a;->n:Ljava/util/Map;

    .line 100
    .line 101
    monitor-enter p1

    .line 102
    :try_start_0
    iget-object v1, p0, Ljb/a;->n:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Ljb/a;->n:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit p1

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p1

    .line 118
    throw v0
.end method

.method private final Q(Lcom/posthog/surveys/Survey;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lxc/k;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/posthog/surveys/SurveyQuestion;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/posthog/surveys/SurveyQuestion;->getQuestion()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "$survey_questions"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    const-string v1, "dismissed"

    .line 55
    .line 56
    invoke-direct {p0, p1, v1}, Ljb/a;->G(Lcom/posthog/surveys/Survey;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "$set"

    .line 71
    .line 72
    invoke-static {v2, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x1

    .line 77
    aput-object v1, v0, v2

    .line 78
    .line 79
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "survey dismissed"

    .line 84
    .line 85
    invoke-direct {p0, v1, p1, v0}, Ljb/a;->R(Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private final R(Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ljb/a;->h:Leb/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p2}, Ljb/a;->A(Lcom/posthog/surveys/Survey;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v3, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/16 v7, 0x3a

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static synthetic S(Ljb/a;Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljb/a;->R(Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final T(Lcom/posthog/surveys/Survey;Ljava/util/Map;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lxc/k;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/posthog/surveys/SurveyQuestion;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/posthog/surveys/SurveyQuestion;->getQuestion()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "$survey_questions"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    invoke-static {v0}, Lyc/e0;->i([Lxc/k;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "responded"

    .line 59
    .line 60
    invoke-direct {p0, p1, v1}, Ljb/a;->G(Lcom/posthog/surveys/Survey;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "$set"

    .line 75
    .line 76
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/posthog/surveys/PostHogSurveyResponse;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/posthog/surveys/PostHogSurveyResponse;->toResponseValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const/4 v2, 0x0

    .line 128
    :goto_2
    if-eqz v2, :cond_1

    .line 129
    .line 130
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-static {v1}, Lyc/e0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {v0, p2}, Lyc/e0;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const-string v0, "survey sent"

    .line 143
    .line 144
    invoke-direct {p0, v0, p1, p2}, Ljb/a;->R(Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private final U(Lcom/posthog/surveys/Survey;)V
    .locals 6

    .line 1
    const-string v1, "survey shown"

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    invoke-static/range {v0 .. v5}, Ljb/a;->S(Ljb/a;Ljava/lang/String;Lcom/posthog/surveys/Survey;Ljava/util/Map;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final V(Lcom/posthog/surveys/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Ljb/a;->q:Lcom/posthog/surveys/Survey;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ljb/a;->p:Z

    .line 8
    .line 9
    iget-object p1, p0, Ljb/a;->o:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    .line 20
    throw p1
.end method

.method private final W(Lcom/posthog/surveys/Survey;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->I(Lcom/posthog/surveys/Survey;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Ljb/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0}, Ljb/a;->F()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Ljb/a;->l:Ljava/util/Map;

    .line 22
    .line 23
    iget-object p1, p0, Ljb/a;->h:Leb/h;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Leb/h;->getConfig()Leb/d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p1, v2

    .line 34
    :goto_0
    instance-of v3, p1, Leb/d;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move-object v2, p1

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Leb/d;->d()Llb/m;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-string v2, "surveySeen"

    .line 48
    .line 49
    invoke-interface {p1, v2, v1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :cond_2
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    .line 58
    throw p1
.end method

.method public static final synthetic e(Ljb/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljb/a;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Ljb/a;)Lcom/posthog/surveys/Survey;
    .locals 0

    .line 1
    iget-object p0, p0, Ljb/a;->q:Lcom/posthog/surveys/Survey;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Ljb/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ljb/a;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Ljb/a;)Leb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Ljb/a;->i:Leb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Ljb/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ljb/a;->o:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Ljb/a;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Ljb/a;->m:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Ljb/a;Lcom/posthog/surveys/Survey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljb/a;->B(Lcom/posthog/surveys/Survey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Ljb/a;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->E(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Ljb/a;Lcom/posthog/surveys/Survey;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->M(Lcom/posthog/surveys/Survey;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->Q(Lcom/posthog/surveys/Survey;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Ljb/a;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljb/a;->T(Lcom/posthog/surveys/Survey;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->U(Lcom/posthog/surveys/Survey;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->V(Lcom/posthog/surveys/Survey;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Ljb/a;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ljb/a;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljb/a;->W(Lcom/posthog/surveys/Survey;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t(Lcom/posthog/surveys/Survey;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getConditions()Lcom/posthog/surveys/SurveyConditions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyConditions;->getEvents()Lcom/posthog/surveys/SurveyEventConditions;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyEventConditions;->getRepeatedActivation()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljb/a;->M(Lcom/posthog/surveys/Survey;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    return v1
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Ljb/a;->q:Lcom/posthog/surveys/Survey;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Ljb/a;->p:Z

    .line 9
    .line 10
    iget-object v1, p0, Ljb/a;->o:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method private final w(Lcom/posthog/surveys/SurveyMatchType;)Lcom/posthog/surveys/SurveyMatchType;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->I_CONTAINS:Lcom/posthog/surveys/SurveyMatchType;

    .line 4
    .line 5
    :cond_0
    return-object p1
.end method

.method private final x(Lcom/posthog/surveys/Survey;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getConditions()Lcom/posthog/surveys/SurveyConditions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyConditions;->getDeviceTypes()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getConditions()Lcom/posthog/surveys/SurveyConditions;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyConditions;->getDeviceTypesMatchType()Lcom/posthog/surveys/SurveyMatchType;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-direct {p0, p1}, Ljb/a;->w(Lcom/posthog/surveys/SurveyMatchType;)Lcom/posthog/surveys/SurveyMatchType;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Ljb/a;->a:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lid/Function2;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Ljb/a;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1, v0, v1}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_3
    :goto_1
    return v1
.end method

.method private final y()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/a;->i:Leb/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->I()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    iget-object v0, p0, Ljb/a;->c:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Ljb/a;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    invoke-direct {p0, v1}, Ljb/a;->z(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0

    .line 34
    throw v1
.end method

.method private final z(Ljava/util/List;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Ljb/a;->h:Leb/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_18

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v2

    .line 32
    check-cast v3, Lcom/posthog/surveys/Survey;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getStartDate()Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_17

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getEndDate()Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    :cond_2
    invoke-direct {p0, v3}, Ljb/a;->x(Lcom/posthog/surveys/Survey;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    goto/16 :goto_d

    .line 56
    .line 57
    :cond_3
    invoke-direct {p0, v3}, Ljb/a;->H(Lcom/posthog/surveys/Survey;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getLinkedFlagKey()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x1

    .line 76
    if-eqz v6, :cond_7

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-lez v9, :cond_5

    .line 83
    .line 84
    move v9, v8

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v9, v5

    .line 87
    :goto_1
    if-eqz v9, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    move-object v6, v7

    .line 91
    :goto_2
    if-eqz v6, :cond_7

    .line 92
    .line 93
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getTargetingFlagKey()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_a

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-lez v9, :cond_8

    .line 107
    .line 108
    move v9, v8

    .line 109
    goto :goto_3

    .line 110
    :cond_8
    move v9, v5

    .line 111
    :goto_3
    if-eqz v9, :cond_9

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_9
    move-object v6, v7

    .line 115
    :goto_4
    if-eqz v6, :cond_a

    .line 116
    .line 117
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_a
    invoke-direct {p0, v3}, Ljb/a;->t(Lcom/posthog/surveys/Survey;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_d

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getInternalTargetingFlagKey()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-eqz v6, :cond_d

    .line 131
    .line 132
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-lez v9, :cond_b

    .line 137
    .line 138
    move v9, v8

    .line 139
    goto :goto_5

    .line 140
    :cond_b
    move v9, v5

    .line 141
    :goto_5
    if-eqz v9, :cond_c

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_c
    move-object v6, v7

    .line 145
    :goto_6
    if-eqz v6, :cond_d

    .line 146
    .line 147
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_d
    invoke-virtual {v3}, Lcom/posthog/surveys/Survey;->getFeatureFlagKeys()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_12

    .line 155
    .line 156
    check-cast v6, Ljava/lang/Iterable;

    .line 157
    .line 158
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    :cond_e
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_12

    .line 167
    .line 168
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;

    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;->getValue()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v9}, Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;->getKey()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-lez v9, :cond_f

    .line 187
    .line 188
    move v9, v8

    .line 189
    goto :goto_8

    .line 190
    :cond_f
    move v9, v5

    .line 191
    :goto_8
    if-eqz v9, :cond_e

    .line 192
    .line 193
    if-eqz v10, :cond_11

    .line 194
    .line 195
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-nez v9, :cond_10

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_10
    move v9, v5

    .line 203
    goto :goto_a

    .line 204
    :cond_11
    :goto_9
    move v9, v8

    .line 205
    :goto_a
    if-nez v9, :cond_e

    .line 206
    .line 207
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_12
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_14

    .line 216
    .line 217
    :cond_13
    move v4, v8

    .line 218
    goto :goto_b

    .line 219
    :cond_14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_13

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    const/4 v9, 0x2

    .line 236
    invoke-static {v0, v6, v5, v9, v7}, Leb/h$a;->d(Leb/h;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-nez v6, :cond_15

    .line 241
    .line 242
    move v4, v5

    .line 243
    :goto_b
    invoke-direct {p0, v3}, Ljb/a;->M(Lcom/posthog/surveys/Survey;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_16

    .line 248
    .line 249
    invoke-direct {p0, v3}, Ljb/a;->N(Lcom/posthog/surveys/Survey;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    goto :goto_c

    .line 254
    :cond_16
    move v3, v8

    .line 255
    :goto_c
    if-eqz v4, :cond_17

    .line 256
    .line 257
    if-eqz v3, :cond_17

    .line 258
    .line 259
    move v5, v8

    .line 260
    :cond_17
    :goto_d
    if-eqz v5, :cond_1

    .line 261
    .line 262
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_18
    return-object v1
.end method


# virtual methods
.method public final X()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljb/a;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljb/a;->y()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lyc/m;->Q(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/posthog/surveys/Survey;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljb/a;->Y(Lcom/posthog/surveys/Survey;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final Y(Lcom/posthog/surveys/Survey;)V
    .locals 4

    .line 1
    const-string v0, "survey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljb/a;->u()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Ljb/a;->i:Leb/d;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "Cannot show survey - another survey is already active"

    .line 23
    .line 24
    invoke-interface {p1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurvey;->Companion:Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;->toDisplaySurvey(Lcom/posthog/surveys/Survey;)Lcom/posthog/surveys/PostHogDisplaySurvey;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljb/a$d;

    .line 35
    .line 36
    invoke-direct {v1, p1, p0}, Ljb/a$d;-><init>(Lcom/posthog/surveys/Survey;Ljb/a;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljb/a$c;

    .line 40
    .line 41
    invoke-direct {v2, p0, p1}, Ljb/a$c;-><init>(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljb/a$b;

    .line 45
    .line 46
    invoke-direct {v3, p0, p1}, Ljb/a$b;-><init>(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Ljb/a;->J()Lcom/posthog/surveys/PostHogSurveysDelegate;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/posthog/surveys/PostHogSurveysDelegate;->renderSurvey(Lcom/posthog/surveys/PostHogDisplaySurvey;Lid/l;Lid/p;Lid/l;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljb/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Ljb/a;->n:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-object v0, p0, Ljb/a;->e:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, p0, Ljb/a;->m:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    iget-object p1, p0, Ljb/a;->g:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p1

    .line 69
    :try_start_2
    iget-boolean v0, p0, Ljb/a;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    monitor-exit p1

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Ljb/a;->X()V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p1

    .line 80
    throw v0

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    monitor-exit v0

    .line 83
    throw p1

    .line 84
    :catchall_2
    move-exception p1

    .line 85
    monitor-exit v0

    .line 86
    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Ljb/a;->r:Z

    .line 6
    .line 7
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    invoke-direct {p0}, Ljb/a;->v()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ljb/a;->h:Leb/h;

    .line 15
    .line 16
    iput-object v0, p0, Ljb/a;->i:Leb/d;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public c(Leb/h;)V
    .locals 1

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ljb/a;->h:Leb/h;

    .line 7
    .line 8
    invoke-interface {p1}, Leb/h;->getConfig()Leb/d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, Leb/d;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iput-object p1, p0, Ljb/a;->i:Leb/d;

    .line 19
    .line 20
    iget-object p1, p0, Ljb/a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    iput-boolean v0, p0, Ljb/a;->r:Z

    .line 25
    .line 26
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    invoke-virtual {p0}, Ljb/a;->X()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p1

    .line 35
    throw v0
.end method

.method public d(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "surveys"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljb/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iput-object p1, p0, Ljb/a;->j:Ljava/util/List;

    .line 10
    .line 11
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    iget-object v0, p0, Ljb/a;->e:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_1
    invoke-direct {p0, p1}, Ljb/a;->P(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object p1, p0, Ljb/a;->g:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_2
    iget-boolean v0, p0, Ljb/a;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljb/a;->X()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p1

    .line 35
    throw v0

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v0

    .line 38
    throw p1

    .line 39
    :catchall_2
    move-exception p1

    .line 40
    monitor-exit v0

    .line 41
    throw p1
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ljb/a;->q:Lcom/posthog/surveys/Survey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

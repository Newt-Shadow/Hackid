.class public final Llb/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Leb/d;

.field private final b:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 3

    .line 1
    const-string v0, "config"

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
    iput-object p1, p0, Llb/b0;->a:Leb/d;

    .line 10
    .line 11
    new-instance v0, Lcom/google/gson/e;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Llb/a;

    .line 17
    .line 18
    invoke-direct {v1}, Llb/a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/gson/e;->g(Lcom/google/gson/v;)Lcom/google/gson/e;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/posthog/internal/GsonDateTypeAdapter;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/posthog/internal/GsonDateTypeAdapter;-><init>(Leb/d;)V

    .line 27
    .line 28
    .line 29
    const-class v2, Ljava/util/Date;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/gson/e;->f()Lcom/google/gson/e;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/posthog/internal/replay/GsonRREventTypeSerializer;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRREventTypeSerializer;-><init>(Leb/d;)V

    .line 41
    .line 42
    .line 43
    const-class v2, Lcom/posthog/internal/replay/RREventType;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/posthog/internal/replay/GsonRRIncrementalSourceSerializer;

    .line 49
    .line 50
    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRRIncrementalSourceSerializer;-><init>(Leb/d;)V

    .line 51
    .line 52
    .line 53
    const-class v2, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;

    .line 59
    .line 60
    invoke-direct {v1, p1}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;-><init>(Leb/d;)V

    .line 61
    .line 62
    .line 63
    const-class v2, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyAppearancePositionAdapter;

    .line 69
    .line 70
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyAppearancePositionAdapter;-><init>(Leb/d;)V

    .line 71
    .line 72
    .line 73
    const-class v2, Lcom/posthog/surveys/SurveyAppearancePosition;

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyAppearanceWidgetTypeAdapter;

    .line 79
    .line 80
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyAppearanceWidgetTypeAdapter;-><init>(Leb/d;)V

    .line 81
    .line 82
    .line 83
    const-class v2, Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyMatchTypeAdapter;

    .line 89
    .line 90
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyMatchTypeAdapter;-><init>(Leb/d;)V

    .line 91
    .line 92
    .line 93
    const-class v2, Lcom/posthog/surveys/SurveyMatchType;

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionTypeAdapter;

    .line 99
    .line 100
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyQuestionTypeAdapter;-><init>(Leb/d;)V

    .line 101
    .line 102
    .line 103
    const-class v2, Lcom/posthog/surveys/SurveyQuestionType;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;

    .line 109
    .line 110
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyRatingDisplayTypeAdapter;-><init>(Leb/d;)V

    .line 111
    .line 112
    .line 113
    const-class v2, Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyTextContentTypeAdapter;

    .line 119
    .line 120
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyTextContentTypeAdapter;-><init>(Leb/d;)V

    .line 121
    .line 122
    .line 123
    const-class v2, Lcom/posthog/surveys/SurveyTextContentType;

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyTypeAdapter;

    .line 129
    .line 130
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyTypeAdapter;-><init>(Leb/d;)V

    .line 131
    .line 132
    .line 133
    const-class v2, Lcom/posthog/surveys/SurveyType;

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;

    .line 139
    .line 140
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;-><init>(Leb/d;)V

    .line 141
    .line 142
    .line 143
    const-class v2, Lcom/posthog/surveys/SurveyQuestion;

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;

    .line 149
    .line 150
    invoke-direct {v1, p1}, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;-><init>(Leb/d;)V

    .line 151
    .line 152
    .line 153
    const-class p1, Lcom/posthog/surveys/SurveyQuestionBranching;

    .line 154
    .line 155
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/e;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/google/gson/e;->b()Lcom/google/gson/Gson;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v0, "GsonBuilder().apply {\n  \u2026nfig))\n        }.create()"

    .line 163
    .line 164
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Llb/b0;->b:Lcom/google/gson/Gson;

    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/b0;->b:Lcom/google/gson/Gson;

    .line 7
    .line 8
    const-class v1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->m(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final b()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b0;->b:Lcom/google/gson/Gson;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/b0;->b:Lcom/google/gson/Gson;

    .line 7
    .line 8
    const-class v1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->w(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

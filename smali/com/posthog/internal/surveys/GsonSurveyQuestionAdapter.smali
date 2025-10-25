.class public final Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/p;
.implements Lcom/google/gson/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/p;",
        "Lcom/google/gson/h;"
    }
.end annotation


# instance fields
.field private final a:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 1

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
    iput-object p1, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;->a:Leb/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyQuestion;
    .locals 2

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfT"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "context"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/i;->l()Lcom/google/gson/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "type"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/gson/l;->A(Ljava/lang/String;)Lcom/google/gson/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sparse-switch v1, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :sswitch_0
    const-string v1, "single_choice"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const-class v0, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 51
    .line 52
    invoke-interface {p3, p1, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Lcom/posthog/surveys/SurveyQuestion;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_1
    const-string v1, "multiple_choice"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-class v0, Lcom/posthog/surveys/MultipleSurveyQuestion;

    .line 69
    .line 70
    invoke-interface {p3, p1, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Lcom/posthog/surveys/SurveyQuestion;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :sswitch_2
    const-string v1, "open"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const-class v0, Lcom/posthog/surveys/OpenSurveyQuestion;

    .line 86
    .line 87
    invoke-interface {p3, p1, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    check-cast p3, Lcom/posthog/surveys/SurveyQuestion;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :sswitch_3
    const-string v1, "link"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-class v0, Lcom/posthog/surveys/LinkSurveyQuestion;

    .line 104
    .line 105
    invoke-interface {p3, p1, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lcom/posthog/surveys/SurveyQuestion;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :sswitch_4
    const-string v1, "rating"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const-class v0, Lcom/posthog/surveys/RatingSurveyQuestion;

    .line 122
    .line 123
    invoke-interface {p3, p1, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Lcom/posthog/surveys/SurveyQuestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    :goto_0
    move-object p2, p3

    .line 130
    :cond_4
    :goto_1
    return-object p2

    .line 131
    :catchall_0
    move-exception p3

    .line 132
    iget-object v0, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;->a:Leb/d;

    .line 133
    .line 134
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, " isn\'t a known type: "

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const/16 p1, 0x2e

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object p2

    .line 171
    :sswitch_data_0
    .sparse-switch
        -0x37ea4e63 -> :sswitch_4
        0x32affa -> :sswitch_3
        0x34264a -> :sswitch_2
        0x6380c2b0 -> :sswitch_1
        0x698cf578 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/posthog/surveys/SurveyQuestion;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 1

    .line 1
    const-string v0, "src"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfSrc"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p1, p2}, Lcom/google/gson/o;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "context.serialize(src, typeOfSrc)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyQuestion;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/SurveyQuestion;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyQuestionAdapter;->b(Lcom/posthog/surveys/SurveyQuestion;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

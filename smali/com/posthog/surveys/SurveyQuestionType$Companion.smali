.class public final Lcom/posthog/surveys/SurveyQuestionType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyQuestionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/surveys/SurveyQuestionType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyQuestionType;
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "single_choice"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/posthog/surveys/SurveyQuestionType;->SINGLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v0, "multiple_choice"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object p1, Lcom/posthog/surveys/SurveyQuestionType;->MULTIPLE_CHOICE:Lcom/posthog/surveys/SurveyQuestionType;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string v0, "open"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    sget-object p1, Lcom/posthog/surveys/SurveyQuestionType;->OPEN:Lcom/posthog/surveys/SurveyQuestionType;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :sswitch_3
    const-string v0, "link"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object p1, Lcom/posthog/surveys/SurveyQuestionType;->LINK:Lcom/posthog/surveys/SurveyQuestionType;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_4
    const-string v0, "rating"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    sget-object p1, Lcom/posthog/surveys/SurveyQuestionType;->RATING:Lcom/posthog/surveys/SurveyQuestionType;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 74
    :goto_1
    return-object p1

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x37ea4e63 -> :sswitch_4
        0x32affa -> :sswitch_3
        0x34264a -> :sswitch_2
        0x6380c2b0 -> :sswitch_1
        0x698cf578 -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lcom/posthog/surveys/SurveyMatchType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyMatchType;
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
    invoke-direct {p0}, Lcom/posthog/surveys/SurveyMatchType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/posthog/surveys/SurveyMatchType;
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
    const-string v0, "not_regex"

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
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->NOT_REGEX:Lcom/posthog/surveys/SurveyMatchType;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :sswitch_1
    const-string v0, "regex"

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
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->REGEX:Lcom/posthog/surveys/SurveyMatchType;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string v0, "exact"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->EXACT:Lcom/posthog/surveys/SurveyMatchType;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v0, "is_not"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->IS_NOT:Lcom/posthog/surveys/SurveyMatchType;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_4
    const-string v0, "icontains"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->I_CONTAINS:Lcom/posthog/surveys/SurveyMatchType;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :sswitch_5
    const-string v0, "not_icontains"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget-object p1, Lcom/posthog/surveys/SurveyMatchType;->NOT_I_CONTAINS:Lcom/posthog/surveys/SurveyMatchType;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_0
    const/4 p1, 0x0

    .line 87
    :goto_1
    return-object p1

    .line 88
    nop

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x608b88e4 -> :sswitch_5
        -0x51c10278 -> :sswitch_4
        -0x4651bdc2 -> :sswitch_3
        0x5c74aff -> :sswitch_2
        0x675f047 -> :sswitch_1
        0x60ef53db -> :sswitch_0
    .end sparse-switch
.end method

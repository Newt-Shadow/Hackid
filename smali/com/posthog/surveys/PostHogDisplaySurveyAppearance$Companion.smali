.class public final Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
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
    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSurveyAppearance$posthog(Lcom/posthog/surveys/SurveyAppearance;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 16

    .line 1
    const-string v0, "appearance"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyTextContentType;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v2, "html"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->HTML:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 32
    .line 33
    :goto_1
    move-object v15, v0

    .line 34
    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getFontFamily()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getBackgroundColor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getBorderColor()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonColor()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonText()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonTextColor()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getDescriptionTextColor()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getRatingButtonColor()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getRatingButtonActiveColor()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getPlaceholder()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getDisplayThankYouMessage()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    if-eqz v12, :cond_2

    .line 81
    .line 82
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/4 v12, 0x0

    .line 88
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageHeader()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageDescription()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    move-object v1, v0

    .line 97
    invoke-direct/range {v1 .. v15}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

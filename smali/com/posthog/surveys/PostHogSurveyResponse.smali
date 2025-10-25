.class public abstract Lcom/posthog/surveys/PostHogSurveyResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogSurveyResponse$Link;,
        Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;,
        Lcom/posthog/surveys/PostHogSurveyResponse$Rating;,
        Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;,
        Lcom/posthog/surveys/PostHogSurveyResponse$Text;
    }
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
    invoke-direct {p0}, Lcom/posthog/surveys/PostHogSurveyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResponseValue()Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Text;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/posthog/surveys/PostHogSurveyResponse$Text;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveyResponse$Text;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveyResponse$SingleChoice;->getSelectedChoice()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveyResponse$MultipleChoice;->getSelectedChoices()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    instance-of v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    move-object v0, p0

    .line 42
    check-cast v0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->getRating()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    instance-of v0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    check-cast v0, Lcom/posthog/surveys/PostHogSurveyResponse$Link;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/posthog/surveys/PostHogSurveyResponse$Link;->getClicked()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const-string v0, "link clicked"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 71
    :cond_5
    new-instance v0, Lxc/i;

    .line 72
    .line 73
    invoke-direct {v0}, Lxc/i;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

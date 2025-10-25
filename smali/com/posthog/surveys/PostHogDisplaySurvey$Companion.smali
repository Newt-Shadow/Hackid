.class public final Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurvey;
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
    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toDisplaySurvey(Lcom/posthog/surveys/Survey;)Lcom/posthog/surveys/PostHogDisplaySurvey;
    .locals 8

    .line 1
    const-string v0, "survey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/posthog/surveys/SurveyQuestion;

    .line 40
    .line 41
    sget-object v5, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    .line 42
    .line 43
    invoke-virtual {v5, v1}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;->fromSurveyQuestion$posthog(Lcom/posthog/surveys/SurveyQuestion;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getAppearance()Lcom/posthog/surveys/SurveyAppearance;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;->fromSurveyAppearance$posthog(Lcom/posthog/surveys/SurveyAppearance;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_1
    move-object v5, v0

    .line 68
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getStartDate()Ljava/util/Date;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getEndDate()Ljava/util/Date;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-instance p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    .line 77
    .line 78
    move-object v1, p1

    .line 79
    invoke-direct/range {v1 .. v7}, Lcom/posthog/surveys/PostHogDisplaySurvey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)V

    .line 80
    .line 81
    .line 82
    return-object p1
.end method

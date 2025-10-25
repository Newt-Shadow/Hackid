.class public final Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/posthog/surveys/PostHogSurveysDelegate;


# instance fields
.field private config:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Leb/d;

    return-void
.end method

.method public synthetic constructor <init>(Leb/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Leb/d;)V

    return-void
.end method


# virtual methods
.method public cleanupSurveys()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Leb/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "Survey cleanup requested"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public renderSurvey(Lcom/posthog/surveys/PostHogDisplaySurvey;Lid/l;Lid/p;Lid/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;",
            "Lid/l;",
            "Lid/p;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "survey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onSurveyShown"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "onSurveyResponse"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "onSurveyClosed"

    .line 17
    .line 18
    invoke-static {p4, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Leb/d;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p4, "Survey requested to be shown: "

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p4, " - "

    .line 49
    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Leb/d;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    const-string p2, "Implement your own PostHogSurveysDelegate to render surveys"

    .line 78
    .line 79
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

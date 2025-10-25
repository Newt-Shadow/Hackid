.class final Ljb/a$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljb/a;->Y(Lcom/posthog/surveys/Survey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljb/a;

.field final synthetic f:Lcom/posthog/surveys/Survey;


# direct methods
.method constructor <init>(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb/a$c;->e:Ljb/a;

    iput-object p2, p0, Ljb/a$c;->f:Lcom/posthog/surveys/Survey;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/posthog/surveys/PostHogDisplaySurvey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;
    .locals 2

    .line 1
    const-string v0, "responseSurvey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljb/a$c;->e:Ljb/a;

    .line 12
    .line 13
    invoke-static {v0}, Ljb/a;->f(Ljb/a;)Lcom/posthog/surveys/Survey;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Ljb/a$c;->e:Ljb/a;

    .line 35
    .line 36
    iget-object v0, p0, Ljb/a$c;->f:Lcom/posthog/surveys/Survey;

    .line 37
    .line 38
    invoke-static {p1, v0, p2, p3}, Ljb/a;->k(Ljb/a;Lcom/posthog/surveys/Survey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Ljb/a$c;->e:Ljb/a;

    .line 43
    .line 44
    invoke-static {v0}, Ljb/a;->i(Ljb/a;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Ljb/a$c;->e:Ljb/a;

    .line 49
    .line 50
    invoke-static {v1, p2}, Ljb/a;->l(Ljb/a;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Ljb/a$c;->e:Ljb/a;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogNextSurveyQuestion;->isSurveyCompleted()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-static {p2, p3}, Ljb/a;->r(Ljb/a;Z)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Ljb/a$c;->e:Ljb/a;

    .line 67
    .line 68
    invoke-static {p2}, Ljb/a;->g(Ljb/a;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    iget-object p2, p0, Ljb/a$c;->e:Ljb/a;

    .line 75
    .line 76
    iget-object p3, p0, Ljb/a$c;->f:Lcom/posthog/surveys/Survey;

    .line 77
    .line 78
    invoke-static {p2}, Ljb/a;->i(Ljb/a;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p2, p3, v0}, Ljb/a;->o(Ljb/a;Lcom/posthog/surveys/Survey;Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iget-object p1, p0, Ljb/a$c;->e:Ljb/a;

    .line 87
    .line 88
    invoke-static {p1}, Ljb/a;->h(Ljb/a;)Leb/d;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    const-string p2, "Received a response event for a non-active survey"

    .line 101
    .line 102
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    const/4 p1, 0x0

    .line 106
    :cond_3
    :goto_1
    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Lcom/posthog/surveys/PostHogSurveyResponse;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Ljb/a$c;->a(Lcom/posthog/surveys/PostHogDisplaySurvey;ILcom/posthog/surveys/PostHogSurveyResponse;)Lcom/posthog/surveys/PostHogNextSurveyQuestion;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

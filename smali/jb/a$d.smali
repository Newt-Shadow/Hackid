.class final Ljb/a$d;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljb/a;->Y(Lcom/posthog/surveys/Survey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/posthog/surveys/Survey;

.field final synthetic f:Ljb/a;


# direct methods
.method constructor <init>(Lcom/posthog/surveys/Survey;Ljb/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    iput-object p2, p0, Ljb/a$d;->f:Ljb/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/posthog/surveys/PostHogDisplaySurvey;)V
    .locals 3

    .line 1
    const-string v0, "shownSurvey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Ljb/a$d;->f:Ljb/a;

    .line 23
    .line 24
    invoke-static {p1}, Ljb/a;->f(Ljb/a;)Lcom/posthog/surveys/Survey;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Ljb/a$d;->f:Ljb/a;

    .line 31
    .line 32
    iget-object v0, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljb/a;->q(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Ljb/a$d;->f:Ljb/a;

    .line 38
    .line 39
    iget-object v0, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 40
    .line 41
    invoke-static {p1, v0}, Ljb/a;->p(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Ljb/a$d;->f:Ljb/a;

    .line 45
    .line 46
    iget-object v0, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 47
    .line 48
    invoke-static {p1, v0}, Ljb/a;->m(Ljb/a;Lcom/posthog/surveys/Survey;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Ljb/a$d;->f:Ljb/a;

    .line 55
    .line 56
    invoke-static {p1}, Ljb/a;->j(Ljb/a;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Ljb/a$d;->f:Ljb/a;

    .line 71
    .line 72
    invoke-static {v0}, Ljb/a;->h(Ljb/a;)Leb/d;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "Received a show event for a non-matching survey: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " vs "

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Ljb/a$d;->e:Lcom/posthog/surveys/Survey;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljb/a$d;->a(Lcom/posthog/surveys/PostHogDisplaySurvey;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method

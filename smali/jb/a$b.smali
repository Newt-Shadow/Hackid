.class final Ljb/a$b;
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
.field final synthetic e:Ljb/a;

.field final synthetic f:Lcom/posthog/surveys/Survey;


# direct methods
.method constructor <init>(Ljb/a;Lcom/posthog/surveys/Survey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb/a$b;->e:Ljb/a;

    iput-object p2, p0, Ljb/a$b;->f:Lcom/posthog/surveys/Survey;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ljb/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljb/a$b;->d(Ljb/a;)V

    return-void
.end method

.method private static final d(Ljb/a;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2ee

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljb/a;->X()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lcom/posthog/surveys/PostHogDisplaySurvey;)V
    .locals 2

    .line 1
    const-string v0, "<anonymous parameter 0>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 7
    .line 8
    invoke-static {p1}, Ljb/a;->f(Ljb/a;)Lcom/posthog/surveys/Survey;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Ljb/a$b;->f:Lcom/posthog/surveys/Survey;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 32
    .line 33
    invoke-static {p1}, Ljb/a;->g(Ljb/a;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 40
    .line 41
    iget-object v0, p0, Ljb/a$b;->f:Lcom/posthog/surveys/Survey;

    .line 42
    .line 43
    invoke-static {p1, v0}, Ljb/a;->n(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 47
    .line 48
    iget-object v0, p0, Ljb/a$b;->f:Lcom/posthog/surveys/Survey;

    .line 49
    .line 50
    invoke-static {p1, v0}, Ljb/a;->s(Ljb/a;Lcom/posthog/surveys/Survey;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 54
    .line 55
    invoke-static {p1}, Ljb/a;->e(Ljb/a;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/Thread;

    .line 59
    .line 60
    iget-object v0, p0, Ljb/a$b;->e:Ljb/a;

    .line 61
    .line 62
    new-instance v1, Ljb/b;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljb/b;-><init>(Ljb/a;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_0
    iget-object p1, p0, Ljb/a$b;->e:Ljb/a;

    .line 75
    .line 76
    invoke-static {p1}, Ljb/a;->h(Ljb/a;)Leb/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const-string v0, "[Surveys] Received a close event for a non-active survey"

    .line 89
    .line 90
    invoke-interface {p1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/PostHogDisplaySurvey;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljb/a$b;->b(Lcom/posthog/surveys/PostHogDisplaySurvey;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method

.class public Lcom/yandex/metrica/impl/ob/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/P0;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/o1;

.field private c:Lcom/yandex/metrica/impl/ob/j1;

.field private final d:Lcom/yandex/metrica/impl/ob/T;

.field private e:Lcom/yandex/metrica/impl/ob/ji;

.field private final f:Lcom/yandex/metrica/impl/ob/P6;

.field private final g:Lcom/yandex/metrica/impl/ob/v6;

.field private final h:Lcom/yandex/metrica/impl/ob/U1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/A3;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/o1;Lcom/yandex/metrica/impl/ob/P6;Lcom/yandex/metrica/impl/ob/v6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T1;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance p2, Lcom/yandex/metrica/impl/ob/T;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/T;-><init>(Lcom/yandex/metrica/impl/ob/A3;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/T1;->f:Lcom/yandex/metrica/impl/ob/P6;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/T1;->g:Lcom/yandex/metrica/impl/ob/v6;

    .line 18
    .line 19
    new-instance p1, Lcom/yandex/metrica/impl/ob/U1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/U1;-><init>(Lcom/yandex/metrica/impl/ob/P0;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    .line 25
    .line 26
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;
    .locals 0

    .line 106
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/U1$f;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/U1$f;->a()Lcom/yandex/metrica/impl/ob/Q1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T1;->e:Lcom/yandex/metrica/impl/ob/ji;

    .line 103
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Q1;->a(Lcom/yandex/metrica/impl/ob/ji;)V

    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/U1;->queueReport(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/A3;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/A3;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/U1;->queuePauseUserSession(Lcom/yandex/metrica/impl/ob/A3;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;Ljava/util/Map;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/c0;",
            "Lcom/yandex/metrica/impl/ob/Q1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->c:Lcom/yandex/metrica/impl/ob/a1;

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->f()V

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 24
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/yandex/metrica/impl/ob/T1$a;

    invoke-direct {p1, p0, p3, p2}, Lcom/yandex/metrica/impl/ob/T1$a;-><init>(Lcom/yandex/metrica/impl/ob/T1;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Q1;)V

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    .line 26
    :cond_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 0

    .line 98
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Q1;->c()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/c0;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yandex/metrica/IMetricaService;->reportData(Landroid/os/Bundle;)V

    .line 99
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->c:Lcom/yandex/metrica/impl/ob/j1;

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Q1;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/o1;->g()V

    :cond_1
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->f()V

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->g:Lcom/yandex/metrica/impl/ob/v6;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/v6;->a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/U1$f;->a()Lcom/yandex/metrica/impl/ob/Q1;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->e:Lcom/yandex/metrica/impl/ob/ji;

    .line 57
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/Q1;->a(Lcom/yandex/metrica/impl/ob/ji;)V

    .line 58
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/U1;->sendCrash(Lcom/yandex/metrica/impl/ob/U1$f;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/Sg;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 82
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>(Lcom/yandex/metrica/impl/ob/cm;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->n:Lcom/yandex/metrica/impl/ob/a1;

    .line 84
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v1

    .line 85
    iput v1, v2, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 86
    invoke-direct {v0, v2, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/T1$e;

    invoke-direct {p2, p0, p1}, Lcom/yandex/metrica/impl/ob/T1$e;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Sg;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/W1;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 74
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>(Lcom/yandex/metrica/impl/ob/cm;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->m:Lcom/yandex/metrica/impl/ob/a1;

    .line 76
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v1

    .line 77
    iput v1, v2, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 78
    invoke-direct {v0, v2, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/T1$d;

    invoke-direct {p2, p0, p1}, Lcom/yandex/metrica/impl/ob/T1$d;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/W1;)V

    .line 79
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/Za;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 4

    .line 89
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/Za;->toProto()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Na;

    .line 90
    new-instance v1, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 91
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/yandex/metrica/impl/ob/J;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/ob/J;-><init>(Lcom/yandex/metrica/impl/ob/cm;)V

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->o:Lcom/yandex/metrica/impl/ob/a1;

    .line 93
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v2

    .line 94
    iput v2, v3, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 95
    invoke-direct {v1, v3, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/T1$f;

    invoke-direct {v2, p0, v0}, Lcom/yandex/metrica/impl/ob/T1$f;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Na;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 1

    .line 46
    iget v0, p1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 47
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/z0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/Q1;->c:Lcom/yandex/metrica/impl/ob/x0;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x0;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    :cond_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;Ljava/util/Map;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/eg;)V
    .locals 7

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.yandex.metrica.impl.referrer.common.ReferrerResultReceiver"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    sget p1, Lcom/yandex/metrica/impl/ob/Ul;->e:I

    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v6

    .line 40
    sget-object p1, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 41
    new-instance p1, Lcom/yandex/metrica/impl/ob/J;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->A:Lcom/yandex/metrica/impl/ob/a1;

    .line 42
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    const-string v2, ""

    const-string v3, ""

    const/4 v5, 0x0

    move-object v1, p1

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 44
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->c(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->c:Lcom/yandex/metrica/impl/ob/j1;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->e:Lcom/yandex/metrica/impl/ob/ji;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Q1;->a(Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/vf;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 67
    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->k:Lcom/yandex/metrica/impl/ob/a1;

    .line 68
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v2

    .line 69
    iput v2, v1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 70
    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/T1$b;

    invoke-direct {p2, p0, p1}, Lcom/yandex/metrica/impl/ob/T1$b;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/vf;)V

    .line 71
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->o(Z)V

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/CounterConfiguration;->u(Z)V

    .line 8
    :cond_1
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/CounterConfiguration;->i(Z)V

    .line 11
    :cond_2
    new-instance p1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object p2, Lcom/yandex/metrica/impl/ob/a1;->X:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result p2

    .line 12
    iput p2, p1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 13
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A3;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 5

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->f:Lcom/yandex/metrica/impl/ob/P6;

    new-instance v1, Lcom/yandex/metrica/impl/ob/d7;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    const-string v2, "UTF-8"

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/c7;

    sget-object v3, Lcom/yandex/metrica/impl/ob/g7;->b:Lcom/yandex/metrica/impl/ob/g7;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/c7;-><init>(Lcom/yandex/metrica/impl/ob/g7;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/d7;-><init>([BLcom/yandex/metrica/impl/ob/c7;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/P6;->a(Lcom/yandex/metrica/impl/ob/d7;)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/z0;->c(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 60
    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->B:Lcom/yandex/metrica/impl/ob/a1;

    .line 61
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v2

    .line 62
    iput v2, v1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 63
    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 64
    invoke-direct {v0, p1, p3}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Landroid/os/ResultReceiver;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    new-instance v1, Lcom/yandex/metrica/impl/ob/V0;

    invoke-direct {v1, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/V0;-><init>(Ljava/util/List;Ljava/util/Map;Landroid/os/ResultReceiver;)V

    const-string p1, "com.yandex.metrica.impl.IdentifiersData"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    sget-object p1, Lcom/yandex/metrica/impl/ob/a1;->s:Lcom/yandex/metrica/impl/ob/a1;

    .line 31
    sget p2, Lcom/yandex/metrica/impl/ob/Ul;->e:I

    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v6

    .line 32
    sget-object p2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 33
    new-instance p2, Lcom/yandex/metrica/impl/ob/J;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    const-string v2, ""

    const-string v3, ""

    const/4 v5, 0x0

    move-object v1, p2

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 35
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/c0;->c(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A3;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b()Lec/k;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/impl/ob/A3;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/A3;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->h:Lcom/yandex/metrica/impl/ob/U1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/U1;->queueResumeUserSession(Lcom/yandex/metrica/impl/ob/A3;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->f()V

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->g:Lcom/yandex/metrica/impl/ob/v6;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/v6;->a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/Q1;->d:Lcom/yandex/metrica/impl/ob/ie;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Q1;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v7

    .line 4
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/ie;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/J;

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->O:Lcom/yandex/metrica/impl/ob/a1;

    .line 9
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v5

    const-string v4, ""

    const/4 v6, 0x0

    move-object v2, v0

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/J;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->d:Lcom/yandex/metrica/impl/ob/T;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A3;->b(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 19
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v1

    .line 20
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/J;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/T1$c;

    invoke-direct {p2, p0, p1}, Lcom/yandex/metrica/impl/ob/T1$c;-><init>(Lcom/yandex/metrica/impl/ob/T1;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Lcom/yandex/metrica/impl/ob/U1$e;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c()Lcom/yandex/metrica/impl/ob/o1;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    return-object v0
.end method

.method public c(Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->C:Lcom/yandex/metrica/impl/ob/a1;

    .line 3
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v2

    .line 4
    iput v2, v1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/U1$f;)Ljava/util/concurrent/Future;

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1;->b:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

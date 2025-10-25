.class public abstract Landroidx/privacysandbox/ads/adservices/measurement/k;
.super Landroidx/privacysandbox/ads/adservices/measurement/b;
.source "SourceFile"


# instance fields
.field private final b:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 1

    .line 1
    const-string v0, "mMeasurementManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/measurement/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/k;->b:Landroid/adservices/measurement/MeasurementManager;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic h(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/a;Lad/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroidx/privacysandbox/ads/adservices/measurement/a;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ltd/n;

    .line 2
    .line 3
    invoke-static {p2}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, p2, v0}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method static synthetic j(Landroidx/privacysandbox/ads/adservices/measurement/k;Lad/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ltd/n;

    .line 2
    .line 3
    invoke-static {p1}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Landroidx/privacysandbox/ads/adservices/measurement/j;

    .line 19
    .line 20
    invoke-direct {v1}, Landroidx/privacysandbox/ads/adservices/measurement/j;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lz/m;->a(Lad/e;)Landroid/os/OutcomeReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p0, v1, v2}, Landroidx/privacysandbox/ads/adservices/measurement/i;->a(Landroid/adservices/measurement/MeasurementManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-ne p0, v0, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object p0
.end method

.method static synthetic k(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ltd/n;

    .line 2
    .line 3
    invoke-static {p3}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Landroidx/privacysandbox/ads/adservices/measurement/j;

    .line 19
    .line 20
    invoke-direct {v1}, Landroidx/privacysandbox/ads/adservices/measurement/j;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lz/m;->a(Lad/e;)Landroid/os/OutcomeReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/privacysandbox/ads/adservices/measurement/g;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-ne p0, p1, :cond_0

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p0, p1, :cond_1

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 51
    .line 52
    return-object p0
.end method

.method static synthetic l(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/l;Lad/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroidx/privacysandbox/ads/adservices/measurement/l;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/k$a;-><init>(Landroidx/privacysandbox/ads/adservices/measurement/l;Landroidx/privacysandbox/ads/adservices/measurement/k;Lad/e;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Ltd/m0;->d(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p0
.end method

.method static synthetic m(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroid/net/Uri;Lad/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroid/net/Uri;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ltd/n;

    .line 2
    .line 3
    invoke-static {p2}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Landroidx/privacysandbox/ads/adservices/measurement/j;

    .line 19
    .line 20
    invoke-direct {v1}, Landroidx/privacysandbox/ads/adservices/measurement/j;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lz/m;->a(Lad/e;)Landroid/os/OutcomeReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p0, p1, v1, v2}, Landroidx/privacysandbox/ads/adservices/measurement/h;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-ne p0, p1, :cond_0

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p0, p1, :cond_1

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 51
    .line 52
    return-object p0
.end method

.method static synthetic n(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/m;Lad/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroidx/privacysandbox/ads/adservices/measurement/m;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ltd/n;

    .line 2
    .line 3
    invoke-static {p2}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, p2, v0}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method static synthetic o(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/n;Lad/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/k;",
            "Landroidx/privacysandbox/ads/adservices/measurement/n;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ltd/n;

    .line 2
    .line 3
    invoke-static {p2}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, p2, v0}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/measurement/k;->i()Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method


# virtual methods
.method public a(Landroidx/privacysandbox/ads/adservices/measurement/a;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/a;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k;->h(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/a;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/measurement/k;->j(Landroidx/privacysandbox/ads/adservices/measurement/k;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/privacysandbox/ads/adservices/measurement/k;->k(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/privacysandbox/ads/adservices/measurement/l;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/l;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k;->l(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/l;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/net/Uri;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k;->m(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroid/net/Uri;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/privacysandbox/ads/adservices/measurement/m;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/m;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k;->n(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/m;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/privacysandbox/ads/adservices/measurement/n;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/n;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k;->o(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/n;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final i()Landroid/adservices/measurement/MeasurementManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/k;->b:Landroid/adservices/measurement/MeasurementManager;

    .line 2
    .line 3
    return-object v0
.end method

.class public final Lio/appmetrica/analytics/impl/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ab;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ab;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ab;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ab;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lio/appmetrica/analytics/impl/R2;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, v1, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 22
    .line 23
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Gh;->f()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    xor-int/2addr v2, v3

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const-string v6, ""

    .line 32
    .line 33
    iget-object v9, v1, Lio/appmetrica/analytics/impl/R2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 34
    .line 35
    sget-object v4, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    .line 36
    .line 37
    new-instance v10, Lio/appmetrica/analytics/impl/e4;

    .line 38
    .line 39
    sget-object v4, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    const-string v5, ""

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v4, v10

    .line 46
    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, v1, Lio/appmetrica/analytics/impl/R2;->h:Lio/appmetrica/analytics/impl/wi;

    .line 50
    .line 51
    iget-object v5, v1, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v10, v5}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/e6;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {v4, v6, v5, v3, v7}, Lio/appmetrica/analytics/impl/wi;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gh;ILjava/util/Map;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/impl/zb;->a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/R2;Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.class public final Lio/appmetrica/analytics/impl/Ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/c;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Z;

.field public final b:Lio/appmetrica/analytics/impl/jn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ob;->a:Lio/appmetrica/analytics/impl/Z;

    .line 5
    .line 6
    new-instance p1, Lio/appmetrica/analytics/impl/jn;

    .line 7
    .line 8
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/jn;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ob;->b:Lio/appmetrica/analytics/impl/jn;

    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Ob;Lio/appmetrica/analytics/impl/P;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ob;->a:Lio/appmetrica/analytics/impl/Z;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Z;->a(Lio/appmetrica/analytics/impl/P;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppNotResponding()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ob;->b:Lio/appmetrica/analytics/impl/jn;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/jn;->a:Lio/appmetrica/analytics/impl/in;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/in;->a()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lio/appmetrica/analytics/impl/P;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    iget-object v4, v0, Lio/appmetrica/analytics/impl/jn;->a:Lio/appmetrica/analytics/impl/in;

    .line 13
    .line 14
    invoke-interface {v4}, Lio/appmetrica/analytics/impl/in;->b()[Ljava/lang/StackTraceElement;

    .line 15
    .line 16
    .line 17
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 21
    .line 22
    .line 23
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-object v4, v3

    .line 26
    :catch_1
    :cond_0
    :goto_0
    iget-object v5, v0, Lio/appmetrica/analytics/impl/jn;->b:Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;

    .line 27
    .line 28
    invoke-interface {v5, v1, v4}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lio/appmetrica/analytics/impl/cn;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Lio/appmetrica/analytics/impl/jn;->a(Ljava/lang/Thread;Ljava/lang/Thread;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v0, v0, Lio/appmetrica/analytics/impl/jn;->c:Lio/appmetrica/analytics/impl/rc;

    .line 39
    .line 40
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/rc;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, v4, v1, v0}, Lio/appmetrica/analytics/impl/P;-><init>(Lio/appmetrica/analytics/impl/cn;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lio/appmetrica/analytics/impl/fp;

    .line 58
    .line 59
    invoke-direct {v1, p0, v2}, Lio/appmetrica/analytics/impl/fp;-><init>(Lio/appmetrica/analytics/impl/Ob;Lio/appmetrica/analytics/impl/P;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Lio/appmetrica/analytics/impl/L9;

    .line 63
    .line 64
    iget-object v0, v0, Lio/appmetrica/analytics/impl/L9;->b:Landroid/os/Handler;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

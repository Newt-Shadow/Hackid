.class public final Lio/appmetrica/analytics/impl/Q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ra;

.field public final b:Lio/appmetrica/analytics/impl/rc;

.field public final c:Lio/appmetrica/analytics/impl/B6;

.field public final d:Lio/appmetrica/analytics/impl/jn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/impl/Q1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/y6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->a:Lio/appmetrica/analytics/impl/Ra;

    .line 5
    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/t4;->m()Lio/appmetrica/analytics/impl/rc;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->b:Lio/appmetrica/analytics/impl/rc;

    .line 15
    .line 16
    new-instance p1, Lio/appmetrica/analytics/impl/B6;

    .line 17
    .line 18
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/B6;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->c:Lio/appmetrica/analytics/impl/B6;

    .line 22
    .line 23
    new-instance p1, Lio/appmetrica/analytics/impl/jn;

    .line 24
    .line 25
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/jn;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->d:Lio/appmetrica/analytics/impl/jn;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Q1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Q1;->a:Lio/appmetrica/analytics/impl/Ra;

    .line 9
    .line 10
    new-instance v2, Lio/appmetrica/analytics/impl/P;

    .line 11
    .line 12
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Q1;->c:Lio/appmetrica/analytics/impl/B6;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/impl/B6;->a(Ljava/lang/Thread;)Lio/appmetrica/analytics/impl/cn;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Q1;->d:Lio/appmetrica/analytics/impl/jn;

    .line 19
    .line 20
    iget-object v5, v4, Lio/appmetrica/analytics/impl/jn;->a:Lio/appmetrica/analytics/impl/in;

    .line 21
    .line 22
    invoke-interface {v5}, Lio/appmetrica/analytics/impl/in;->a()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v4, v5, p1}, Lio/appmetrica/analytics/impl/jn;->a(Ljava/lang/Thread;Ljava/lang/Thread;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eq p1, v5, :cond_1

    .line 31
    .line 32
    :try_start_1
    iget-object p1, v4, Lio/appmetrica/analytics/impl/jn;->a:Lio/appmetrica/analytics/impl/in;

    .line 33
    .line 34
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/in;->b()[Ljava/lang/StackTraceElement;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 p1, 0x0

    .line 46
    :catch_1
    :cond_0
    :goto_0
    :try_start_3
    iget-object v4, v4, Lio/appmetrica/analytics/impl/jn;->b:Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;

    .line 47
    .line 48
    invoke-interface {v4, v5, p1}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lio/appmetrica/analytics/impl/cn;

    .line 53
    .line 54
    invoke-virtual {v6, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->b:Lio/appmetrica/analytics/impl/rc;

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/rc;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v2, v3, v6, p1}, Lio/appmetrica/analytics/impl/P;-><init>(Lio/appmetrica/analytics/impl/cn;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, p2, v2}, Lio/appmetrica/analytics/impl/Ra;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/P;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p2, p1, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

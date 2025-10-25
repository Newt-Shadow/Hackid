.class public final Lcom/google/android/gms/ads/identifier/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/google/android/gms/ads/identifier/f;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/time/Duration;


# instance fields
.field private final a:Ln5/w;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/ads/identifier/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const-wide/16 v0, 0x1e

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/identifier/d;->a(J)Ljava/time/Duration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/ads/identifier/f;->e:Ljava/time/Duration;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/ads/identifier/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-static {}, Ln5/x;->a()Ln5/x$a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "ads_identifier:api"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ln5/x$a;->b(Ljava/lang/String;)Ln5/x$a;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ln5/x$a;->a()Ln5/x;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Ln5/v;->b(Landroid/content/Context;Ln5/x;)Ln5/w;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/f;->a:Ln5/w;

    .line 32
    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/f;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/identifier/f;->c:Lcom/google/android/gms/ads/identifier/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/ads/identifier/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/identifier/f;->c:Lcom/google/android/gms/ads/identifier/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/ads/identifier/f;

    .line 13
    .line 14
    const-string v2, "ads_identifier:api"

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/identifier/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/ads/identifier/f;->c:Lcom/google/android/gms/ads/identifier/f;

    .line 20
    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/ads/identifier/f;->c:Lcom/google/android/gms/ads/identifier/f;

    .line 27
    .line 28
    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/gms/ads/identifier/f;JLjava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "AdvertisingIdClient"

    .line 10
    .line 11
    const-string v2, "getting error as "

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    instance-of v0, p3, Lcom/google/android/gms/common/api/b;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p3, Lcom/google/android/gms/common/api/b;

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/Status;->g()Ll5/b;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p3}, Ll5/b;->g()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/16 v0, 0x18

    .line 41
    .line 42
    if-ne p3, v0, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/google/android/gms/ads/identifier/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized c(IIJJI)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/ads/identifier/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "shouldSendLog "

    .line 20
    .line 21
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v4, "AdvertisingIdClient"

    .line 32
    .line 33
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lcom/google/android/gms/ads/identifier/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const-wide/16 v6, -0x1

    .line 43
    .line 44
    cmp-long v0, v4, v6

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/ads/identifier/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    sub-long v4, v2, v4

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/gms/ads/identifier/f;->e:Ljava/time/Duration;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/e;->a(Ljava/time/Duration;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    cmp-long v0, v4, v6

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/ads/identifier/f;->a:Ln5/w;

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v4, Ln5/u;

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    new-array v5, v5, [Ln5/n;

    .line 76
    .line 77
    new-instance v18, Ln5/n;

    .line 78
    .line 79
    const v7, 0x8a49

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v14, 0x0

    .line 84
    const/4 v15, 0x0

    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    move-object/from16 v6, v18

    .line 88
    .line 89
    move/from16 v8, p2

    .line 90
    .line 91
    move-wide/from16 v10, p3

    .line 92
    .line 93
    move-wide/from16 v12, p5

    .line 94
    .line 95
    move/from16 v17, p7

    .line 96
    .line 97
    invoke-direct/range {v6 .. v17}, Ln5/n;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    aput-object v18, v5, v6

    .line 102
    .line 103
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v4, v6, v5}, Ln5/u;-><init>(ILjava/util/List;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v4}, Ln5/w;->c(Ln5/u;)Lm6/Task;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v4, Lcom/google/android/gms/ads/identifier/c;

    .line 115
    .line 116
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/ads/identifier/c;-><init>(Lcom/google/android/gms/ads/identifier/f;J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v4}, Lm6/Task;->e(Lm6/g;)Lm6/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 124
    :cond_2
    :goto_1
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0

    .line 128
    throw v0
.end method

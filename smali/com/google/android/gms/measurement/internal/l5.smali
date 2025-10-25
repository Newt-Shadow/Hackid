.class public final Lcom/google/android/gms/measurement/internal/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/google/android/gms/measurement/internal/l5;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/w6;

.field private final b:Ln5/w;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-static {}, Ln5/x;->a()Ln5/x$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "measurement:api"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ln5/x$a;->b(Ljava/lang/String;)Ln5/x$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ln5/x$a;->a()Ln5/x;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Ln5/v;->b(Landroid/content/Context;Ln5/x;)Ln5/w;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l5;->b:Ln5/w;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 34
    .line 35
    return-void
.end method

.method static a(Lcom/google/android/gms/measurement/internal/w6;)Lcom/google/android/gms/measurement/internal/l5;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/l5;->d:Lcom/google/android/gms/measurement/internal/l5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/l5;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/l5;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/w6;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/measurement/internal/l5;->d:Lcom/google/android/gms/measurement/internal/l5;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/l5;->d:Lcom/google/android/gms/measurement/internal/l5;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(IIJJI)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, -0x1

    .line 21
    .line 22
    cmp-long v4, v4, v6

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sub-long v4, v2, v4

    .line 32
    .line 33
    const-wide/32 v6, 0x1b7740

    .line 34
    .line 35
    .line 36
    cmp-long v0, v4, v6

    .line 37
    .line 38
    if-gtz v0, :cond_1

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l5;->b:Ln5/w;

    .line 43
    .line 44
    new-instance v4, Ln5/u;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    new-array v5, v5, [Ln5/n;

    .line 48
    .line 49
    new-instance v18, Ln5/n;

    .line 50
    .line 51
    const v7, 0x8dcd

    .line 52
    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v14, 0x0

    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    move-object/from16 v6, v18

    .line 60
    .line 61
    move/from16 v8, p2

    .line 62
    .line 63
    move-wide/from16 v10, p3

    .line 64
    .line 65
    move-wide/from16 v12, p5

    .line 66
    .line 67
    move/from16 v17, p7

    .line 68
    .line 69
    invoke-direct/range {v6 .. v17}, Ln5/n;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    aput-object v18, v5, v6

    .line 74
    .line 75
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-direct {v4, v6, v5}, Ln5/u;-><init>(ILjava/util/List;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v4}, Ln5/w;->c(Ln5/u;)Lm6/Task;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v4, Lcom/google/android/gms/measurement/internal/k5;

    .line 87
    .line 88
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/k5;-><init>(Lcom/google/android/gms/measurement/internal/l5;J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4}, Lm6/Task;->e(Lm6/g;)Lm6/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0

    .line 98
    throw v0
.end method

.method final synthetic c(JLjava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/l5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

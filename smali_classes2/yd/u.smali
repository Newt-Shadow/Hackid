.class public final Lyd/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyd/u;

.field private static final b:Z

.field public static final c:Ltd/d2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lyd/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lyd/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyd/u;->a:Lyd/u;

    .line 7
    .line 8
    const-string v1, "kotlinx.coroutines.fast.service.loader"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2}, Lyd/g0;->f(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lyd/u;->a()Ltd/d2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lyd/u;->c:Ltd/d2;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ltd/d2;
    .locals 7

    .line 1
    const-class v0, Lyd/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-boolean v2, Lyd/u;->b:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    sget-object v0, Lyd/j;->a:Lyd/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Lyd/j;->c()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lqd/f;->b(Ljava/util/Iterator;)Lqd/e;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lqd/f;->l(Lqd/e;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    move-object v2, v0

    .line 36
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    move-object v3, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v4, v3

    .line 62
    check-cast v4, Lyd/t;

    .line 63
    .line 64
    invoke-interface {v4}, Lyd/t;->c()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    move-object v6, v5

    .line 73
    check-cast v6, Lyd/t;

    .line 74
    .line 75
    invoke-interface {v6}, Lyd/t;->c()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-ge v4, v6, :cond_4

    .line 80
    .line 81
    move-object v3, v5

    .line 82
    move v4, v6

    .line 83
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    :goto_1
    check-cast v3, Lyd/t;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-static {v3, v0}, Lyd/v;->e(Lyd/t;Ljava/util/List;)Ltd/d2;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    :cond_5
    const/4 v0, 0x3

    .line 100
    invoke-static {v1, v1, v0, v1}, Lyd/v;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lyd/w;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    const/4 v2, 0x2

    .line 107
    invoke-static {v0, v1, v2, v1}, Lyd/v;->b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lyd/w;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_6
    :goto_2
    return-object v0
.end method

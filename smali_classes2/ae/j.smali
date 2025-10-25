.class public abstract Lae/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static f:Lae/g;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 2
    .line 3
    const-string v1, "DefaultDispatcher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lyd/g0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lae/j;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 12
    .line 13
    const-wide/32 v2, 0x186a0

    .line 14
    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/16 v8, 0xc

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-static/range {v1 .. v9}, Lyd/g0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lae/j;->b:J

    .line 28
    .line 29
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 30
    .line 31
    invoke-static {}, Lyd/g0;->a()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-static {v0, v1}, Lod/g;->b(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    const/16 v6, 0x8

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v2 .. v7}, Lyd/g0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Lae/j;->c:I

    .line 50
    .line 51
    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 52
    .line 53
    const v2, 0x1ffffe

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const v4, 0x1ffffe

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lyd/g0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sput v0, Lae/j;->d:I

    .line 67
    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 71
    .line 72
    const-wide/16 v2, 0x3c

    .line 73
    .line 74
    const-wide/16 v4, 0x0

    .line 75
    .line 76
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    invoke-static/range {v1 .. v9}, Lyd/g0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    sput-wide v0, Lae/j;->e:J

    .line 87
    .line 88
    sget-object v0, Lae/e;->a:Lae/e;

    .line 89
    .line 90
    sput-object v0, Lae/j;->f:Lae/g;

    .line 91
    .line 92
    return-void
.end method

.method public static final synthetic a(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lae/j;->c(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Ljava/lang/Runnable;JZ)Lae/h;
    .locals 1

    .line 1
    new-instance v0, Lae/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lae/i;-><init>(Ljava/lang/Runnable;JZ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final c(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const-string p0, "Blocking"

    goto :goto_0

    :cond_0
    const-string p0, "Non-blocking"

    :goto_0
    return-object p0
.end method

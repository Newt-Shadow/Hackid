.class public abstract Lce/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Lyd/f0;

.field private static final c:Lyd/f0;

.field private static final d:Lyd/f0;

.field private static final e:Lyd/f0;

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0xc

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lyd/g0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lce/j;->a:I

    .line 15
    .line 16
    new-instance v0, Lyd/f0;

    .line 17
    .line 18
    const-string v1, "PERMIT"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lce/j;->b:Lyd/f0;

    .line 24
    .line 25
    new-instance v0, Lyd/f0;

    .line 26
    .line 27
    const-string v1, "TAKEN"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lce/j;->c:Lyd/f0;

    .line 33
    .line 34
    new-instance v0, Lyd/f0;

    .line 35
    .line 36
    const-string v1, "BROKEN"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lce/j;->d:Lyd/f0;

    .line 42
    .line 43
    new-instance v0, Lyd/f0;

    .line 44
    .line 45
    const-string v1, "CANCELLED"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lce/j;->e:Lyd/f0;

    .line 51
    .line 52
    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    .line 53
    .line 54
    const/16 v3, 0x10

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    const/16 v6, 0xc

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lyd/g0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sput v0, Lce/j;->f:I

    .line 66
    .line 67
    return-void
.end method

.method public static final synthetic a(JLce/k;)Lce/k;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lce/j;->h(JLce/k;)Lce/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lce/j;->d:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lce/j;->e:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Lce/j;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic e()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lce/j;->b:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lce/j;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic g()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lce/j;->c:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final h(JLce/k;)Lce/k;
    .locals 2

    .line 1
    new-instance v0, Lce/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lce/k;-><init>(JLce/k;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

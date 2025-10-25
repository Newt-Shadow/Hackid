.class public final Lae/b;
.super Ltd/k1;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final d:Lae/b;

.field private static final e:Ltd/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lae/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lae/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lae/b;->d:Lae/b;

    .line 7
    .line 8
    sget-object v0, Lae/k;->c:Lae/k;

    .line 9
    .line 10
    const-string v1, "kotlinx.coroutines.io.parallelism"

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    invoke-static {}, Lyd/g0;->a()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v2, v3}, Lod/g;->b(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/16 v5, 0xc

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lyd/g0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v0, v1, v2, v3, v2}, Ltd/i0;->D0(Ltd/i0;ILjava/lang/String;ILjava/lang/Object;)Ltd/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lae/b;->e:Ltd/i0;

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/k1;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A0(ILjava/lang/String;)Ltd/i0;
    .locals 1

    .line 1
    sget-object v0, Lae/k;->c:Lae/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lae/k;->A0(ILjava/lang/String;)Ltd/i0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot be invoked on Dispatchers.IO"

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lad/j;->a:Lad/j;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lae/b;->q0(Lad/i;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0(Lad/i;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lae/b;->e:Ltd/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ltd/i0;->q0(Lad/i;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    return-object v0
.end method

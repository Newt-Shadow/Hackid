.class public final Lx4/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/e0$g;,
        Lx4/e0$d;,
        Lx4/e0$c;,
        Lx4/e0$f;,
        Lx4/e0$b;,
        Lx4/e0$e;,
        Lx4/e0$h;
    }
.end annotation


# static fields
.field public static final d:Lx4/e0$c;

.field public static final e:Lx4/e0$c;

.field public static final f:Lx4/e0$c;

.field public static final g:Lx4/e0$c;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lx4/e0$d;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lx4/e0;->d:Lx4/e0$c;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lx4/e0;->e:Lx4/e0$c;

    .line 19
    .line 20
    new-instance v0, Lx4/e0$c;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v0, v3, v1, v2, v4}, Lx4/e0$c;-><init>(IJLx4/e0$a;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lx4/e0;->f:Lx4/e0$c;

    .line 28
    .line 29
    new-instance v0, Lx4/e0$c;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v0, v3, v1, v2, v4}, Lx4/e0$c;-><init>(IJLx4/e0$a;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lx4/e0;->g:Lx4/e0$c;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "ExoPlayer:Loader:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Ly4/q0;->B0(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lx4/e0;->a:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic b(Lx4/e0;)Lx4/e0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lx4/e0;Lx4/e0$d;)Lx4/e0$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lx4/e0;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    iput-object p1, p0, Lx4/e0;->c:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lx4/e0;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lx4/e0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static h(ZJ)Lx4/e0$c;
    .locals 2

    .line 1
    new-instance v0, Lx4/e0$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lx4/e0$c;-><init>(IJLx4/e0$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lx4/e0;->k(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx4/e0$d;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lx4/e0$d;->a(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx4/e0;->c:Ljava/io/IOException;

    .line 3
    .line 4
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/e0;->c:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/e0;->c:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    iget p1, v0, Lx4/e0$d;->a:I

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lx4/e0$d;->e(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    throw v0
.end method

.method public l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lx4/e0;->m(Lx4/e0$f;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m(Lx4/e0$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/e0;->b:Lx4/e0$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lx4/e0$d;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lx4/e0;->a:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    new-instance v1, Lx4/e0$g;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lx4/e0$g;-><init>(Lx4/e0$f;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lx4/e0;->a:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public n(Lx4/e0$e;Lx4/e0$b;I)J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Landroid/os/Looper;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lx4/e0;->c:Ljava/io/IOException;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    new-instance v0, Lx4/e0$d;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v2, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move v6, p3

    .line 26
    move-wide v7, v9

    .line 27
    invoke-direct/range {v1 .. v8}, Lx4/e0$d;-><init>(Lx4/e0;Landroid/os/Looper;Lx4/e0$e;Lx4/e0$b;IJ)V

    .line 28
    .line 29
    .line 30
    const-wide/16 p1, 0x0

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lx4/e0$d;->f(J)V

    .line 33
    .line 34
    .line 35
    return-wide v9
.end method

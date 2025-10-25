.class final Ly4/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/k0$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/List;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly4/k0;->b:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic l(Ly4/k0$b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ly4/k0;->n(Ly4/k0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static m()Ly4/k0$b;
    .locals 3

    .line 1
    sget-object v0, Ly4/k0;->b:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ly4/k0$b;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Ly4/k0$b;-><init>(Ly4/k0$a;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ly4/k0$b;

    .line 28
    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method private static n(Ly4/k0$b;)V
    .locals 3

    .line 1
    sget-object v0, Ly4/k0;->b:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x32

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method


# virtual methods
.method public a(III)Ly4/n$a;
    .locals 2

    .line 1
    invoke-static {}, Ly4/k0;->m()Ly4/k0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p0}, Ly4/k0$b;->d(Landroid/os/Message;Ly4/k0;)Ly4/k0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public b(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(I)Ly4/n$a;
    .locals 2

    .line 1
    invoke-static {}, Ly4/k0;->m()Ly4/k0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p0}, Ly4/k0$b;->d(Landroid/os/Message;Ly4/k0;)Ly4/k0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public d(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(IIILjava/lang/Object;)Ly4/n$a;
    .locals 2

    .line 1
    invoke-static {}, Ly4/k0;->m()Ly4/k0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p0}, Ly4/k0$b;->d(Landroid/os/Message;Ly4/k0;)Ly4/k0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public g(IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Ly4/n$a;)Z
    .locals 1

    .line 1
    check-cast p1, Ly4/k0$b;

    .line 2
    .line 3
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ly4/k0$b;->c(Landroid/os/Handler;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(ILjava/lang/Object;)Ly4/n$a;
    .locals 2

    .line 1
    invoke-static {}, Ly4/k0;->m()Ly4/k0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p0}, Ly4/k0$b;->d(Landroid/os/Message;Ly4/k0;)Ly4/k0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/k0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

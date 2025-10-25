.class final Lhb/l$b$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhb/l$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lhb/l;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/Window;


# direct methods
.method constructor <init>(Lhb/l;Landroid/view/View;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/l$b$b;->e:Lhb/l;

    iput-object p2, p0, Lhb/l$b$b;->f:Landroid/view/View;

    iput-object p3, p0, Lhb/l$b$b;->g:Landroid/view/Window;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lhb/l;Landroid/view/View;Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhb/l$b$b;->d(Lhb/l;Landroid/view/View;Landroid/view/Window;)V

    return-void
.end method

.method private static final d(Lhb/l;Landroid/view/View;Landroid/view/Window;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$decorView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$window"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1}, Lhb/l;->i(Lhb/l;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    invoke-static {p0}, Lhb/l;->j(Lhb/l;)Lfb/b;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Leb/d;->o()Llb/i;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "Session Replay generateSnapshot failed: "

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x2e

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhb/l$b$b;->e:Lhb/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhb/l;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lhb/l$b$b;->e:Lhb/l;

    .line 10
    .line 11
    invoke-static {v0}, Lhb/l;->o(Lhb/l;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lhb/l$b$b;->e:Lhb/l;

    .line 19
    .line 20
    invoke-static {v0}, Lhb/l;->m(Lhb/l;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lhb/l$b$b;->e:Lhb/l;

    .line 25
    .line 26
    iget-object v2, p0, Lhb/l$b$b;->f:Landroid/view/View;

    .line 27
    .line 28
    iget-object v3, p0, Lhb/l$b$b;->g:Landroid/view/Window;

    .line 29
    .line 30
    new-instance v4, Lhb/m;

    .line 31
    .line 32
    invoke-direct {v4, v1, v2, v3}, Lhb/m;-><init>(Lhb/l;Landroid/view/View;Landroid/view/Window;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhb/l$b$b;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method

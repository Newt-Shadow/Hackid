.class Lxb/b$c;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/b;->e(Ljava/util/Map;Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/k;

.field final synthetic b:Lxb/d;

.field final synthetic c:Lxb/b;


# direct methods
.method constructor <init>(Lxb/b;Lcom/android/billingclient/api/k;Lxb/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/b$c;->c:Lxb/b;

    .line 2
    .line 3
    iput-object p2, p0, Lxb/b$c;->a:Lcom/android/billingclient/api/k;

    .line 4
    .line 5
    iput-object p3, p0, Lxb/b$c;->b:Lxb/d;

    .line 6
    .line 7
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxb/b$c;->c:Lxb/b;

    .line 2
    .line 3
    invoke-static {v0}, Lxb/b;->g(Lxb/b;)Lcom/android/billingclient/api/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/d;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lxb/b$c;->c:Lxb/b;

    .line 14
    .line 15
    invoke-static {v0}, Lxb/b;->g(Lxb/b;)Lcom/android/billingclient/api/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lxb/b$c;->a:Lcom/android/billingclient/api/k;

    .line 20
    .line 21
    iget-object v2, p0, Lxb/b$c;->b:Lxb/d;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/k;Lc2/r;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lxb/b$c;->c:Lxb/b;

    .line 28
    .line 29
    invoke-static {v0}, Lxb/b;->h(Lxb/b;)Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lxb/b$c$a;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lxb/b$c$a;-><init>(Lxb/b$c;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

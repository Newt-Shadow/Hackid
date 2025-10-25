.class Lxb/a$b;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/a;->b(Lcom/android/billingclient/api/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxb/b;

.field final synthetic c:Lxb/a;


# direct methods
.method constructor <init>(Lxb/a;Ljava/lang/String;Lxb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/a$b;->c:Lxb/a;

    .line 2
    .line 3
    iput-object p2, p0, Lxb/a$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lxb/a$b;->b:Lxb/b;

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
    iget-object v0, p0, Lxb/a$b;->c:Lxb/a;

    .line 2
    .line 3
    invoke-static {v0}, Lxb/a;->a(Lxb/a;)Lcom/android/billingclient/api/d;

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
    iget-object v0, p0, Lxb/a$b;->c:Lxb/a;

    .line 14
    .line 15
    invoke-static {v0}, Lxb/a;->a(Lxb/a;)Lcom/android/billingclient/api/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lxb/a$b;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lxb/a$b;->b:Lxb/b;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->m(Ljava/lang/String;Lc2/m;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lxb/a$b;->c:Lxb/a;

    .line 28
    .line 29
    invoke-static {v0}, Lxb/a;->e(Lxb/a;)Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lxb/a$b$a;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lxb/a$b$a;-><init>(Lxb/a$b;)V

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

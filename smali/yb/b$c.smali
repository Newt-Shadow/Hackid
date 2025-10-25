.class public final Lyb/b$c;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/b;->c(Ljava/util/List;Ljava/util/List;Lid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/b;

.field final synthetic b:Lcom/android/billingclient/api/k;

.field final synthetic c:Lyb/e;


# direct methods
.method constructor <init>(Lyb/b;Lcom/android/billingclient/api/k;Lyb/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/b$c;->a:Lyb/b;

    .line 2
    .line 3
    iput-object p2, p0, Lyb/b$c;->b:Lcom/android/billingclient/api/k;

    .line 4
    .line 5
    iput-object p3, p0, Lyb/b$c;->c:Lyb/e;

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
    iget-object v0, p0, Lyb/b$c;->a:Lyb/b;

    .line 2
    .line 3
    invoke-static {v0}, Lyb/b;->d(Lyb/b;)Lcom/android/billingclient/api/d;

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
    iget-object v0, p0, Lyb/b$c;->a:Lyb/b;

    .line 14
    .line 15
    invoke-static {v0}, Lyb/b;->d(Lyb/b;)Lcom/android/billingclient/api/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lyb/b$c;->b:Lcom/android/billingclient/api/k;

    .line 20
    .line 21
    iget-object v2, p0, Lyb/b$c;->c:Lyb/e;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/k;Lc2/r;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lyb/b$c;->a:Lyb/b;

    .line 28
    .line 29
    invoke-static {v0}, Lyb/b;->g(Lyb/b;)Lcom/yandex/metrica/impl/ob/j;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lyb/b$c$a;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lyb/b$c$a;-><init>(Lyb/b$c;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

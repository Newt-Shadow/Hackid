.class public final Lyb/e$b;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e;->b(Lcom/android/billingclient/api/h;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/e;

.field final synthetic b:Lyb/c;


# direct methods
.method constructor <init>(Lyb/e;Lyb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/e$b;->a:Lyb/e;

    .line 2
    .line 3
    iput-object p2, p0, Lyb/e$b;->b:Lyb/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyb/e$b;->a:Lyb/e;

    .line 2
    .line 3
    invoke-static {v0}, Lyb/e;->c(Lyb/e;)Lcom/android/billingclient/api/d;

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
    iget-object v0, p0, Lyb/e$b;->a:Lyb/e;

    .line 14
    .line 15
    invoke-static {v0}, Lyb/e;->c(Lyb/e;)Lcom/android/billingclient/api/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lyb/e$b;->a:Lyb/e;

    .line 20
    .line 21
    invoke-static {v1}, Lyb/e;->e(Lyb/e;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lyb/e$b;->b:Lyb/c;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->o(Ljava/lang/String;Lc2/n;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lyb/e$b;->a:Lyb/e;

    .line 32
    .line 33
    invoke-static {v0}, Lyb/e;->f(Lyb/e;)Lcom/yandex/metrica/impl/ob/j;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lyb/e$b$a;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lyb/e$b$a;-><init>(Lyb/e$b;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

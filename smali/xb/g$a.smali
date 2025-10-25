.class Lxb/g$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/i;

.field final synthetic b:Lxb/g;


# direct methods
.method constructor <init>(Lxb/g;Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/g$a;->b:Lxb/g;

    .line 2
    .line 3
    iput-object p2, p0, Lxb/g$a;->a:Lcom/yandex/metrica/impl/ob/i;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lxb/g$a;->b:Lxb/g;

    .line 2
    .line 3
    invoke-static {v0}, Lxb/g;->a(Lxb/g;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/billingclient/api/d;->j(Landroid/content/Context;)Lcom/android/billingclient/api/d$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lxb/c;

    .line 12
    .line 13
    invoke-direct {v1}, Lxb/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d$a;->e(Lc2/o;)Lcom/android/billingclient/api/d$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->c()Lcom/android/billingclient/api/d$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v8, Lxb/a;

    .line 29
    .line 30
    iget-object v2, p0, Lxb/g$a;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 31
    .line 32
    iget-object v1, p0, Lxb/g$a;->b:Lxb/g;

    .line 33
    .line 34
    invoke-static {v1}, Lxb/g;->b(Lxb/g;)Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v1, p0, Lxb/g$a;->b:Lxb/g;

    .line 39
    .line 40
    invoke-static {v1}, Lxb/g;->d(Lxb/g;)Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v6, p0, Lxb/g$a;->b:Lxb/g;

    .line 45
    .line 46
    new-instance v7, Lxb/f;

    .line 47
    .line 48
    invoke-direct {v7, v0}, Lxb/f;-><init>(Lcom/android/billingclient/api/d;)V

    .line 49
    .line 50
    .line 51
    move-object v1, v8

    .line 52
    move-object v5, v0

    .line 53
    invoke-direct/range {v1 .. v7}, Lxb/a;-><init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lxb/f;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Lcom/android/billingclient/api/d;->r(Lc2/g;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

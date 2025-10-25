.class public final Lyb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/g;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Lcom/android/billingclient/api/d;

.field private final c:Lcom/yandex/metrica/impl/ob/j;

.field private final d:Lyb/g;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utilsProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lyb/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2}, Lyb/g;-><init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lyb/a;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lyb/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lyb/g;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utilsProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingLibraryConnectionHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/a;->a:Lcom/yandex/metrica/impl/ob/i;

    iput-object p2, p0, Lyb/a;->b:Lcom/android/billingclient/api/d;

    iput-object p3, p0, Lyb/a;->c:Lcom/yandex/metrica/impl/ob/j;

    iput-object p4, p0, Lyb/a;->d:Lyb/g;

    return-void
.end method

.method private final a(Lcom/android/billingclient/api/h;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "inapp"

    .line 9
    .line 10
    const-string v0, "subs"

    .line 11
    .line 12
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    new-instance v7, Lyb/b;

    .line 37
    .line 38
    iget-object v2, p0, Lyb/a;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 39
    .line 40
    iget-object v3, p0, Lyb/a;->b:Lcom/android/billingclient/api/d;

    .line 41
    .line 42
    iget-object v4, p0, Lyb/a;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 43
    .line 44
    iget-object v6, p0, Lyb/a;->d:Lyb/g;

    .line 45
    .line 46
    move-object v1, v7

    .line 47
    move-object v5, v0

    .line 48
    invoke-direct/range {v1 .. v6}, Lyb/b;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/lang/String;Lyb/g;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lyb/a;->d:Lyb/g;

    .line 52
    .line 53
    invoke-virtual {v1, v7}, Lyb/g;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lyb/a;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/j;->c()Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lyb/a$b;

    .line 63
    .line 64
    invoke-direct {v2, v0, v7, p0}, Lyb/a$b;-><init>(Ljava/lang/String;Lyb/b;Lyb/a;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public static final synthetic b(Lyb/a;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/a;->b:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lyb/a;)Lyb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/a;->d:Lyb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lyb/a;)Lcom/yandex/metrica/impl/ob/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/a;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lyb/a;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyb/a;->a(Lcom/android/billingclient/api/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/a;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lyb/a$a;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lyb/a$a;-><init>(Lyb/a;Lcom/android/billingclient/api/h;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

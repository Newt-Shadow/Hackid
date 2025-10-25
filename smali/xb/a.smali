.class Lxb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/g;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/android/billingclient/api/d;

.field private final e:Lcom/yandex/metrica/impl/ob/j;

.field private final f:Lxb/f;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lxb/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxb/a;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 5
    .line 6
    iput-object p2, p0, Lxb/a;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lxb/a;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lxb/a;->d:Lcom/android/billingclient/api/d;

    .line 11
    .line 12
    iput-object p5, p0, Lxb/a;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 13
    .line 14
    iput-object p6, p0, Lxb/a;->f:Lxb/f;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lxb/a;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/a;->d:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Lcom/android/billingclient/api/h;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "inapp"

    .line 8
    .line 9
    const-string v0, "subs"

    .line 10
    .line 11
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    new-instance v10, Lxb/b;

    .line 36
    .line 37
    iget-object v2, p0, Lxb/a;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 38
    .line 39
    iget-object v3, p0, Lxb/a;->b:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    iget-object v4, p0, Lxb/a;->c:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    iget-object v5, p0, Lxb/a;->d:Lcom/android/billingclient/api/d;

    .line 44
    .line 45
    iget-object v6, p0, Lxb/a;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 46
    .line 47
    iget-object v11, p0, Lxb/a;->f:Lxb/f;

    .line 48
    .line 49
    new-instance v9, Lzb/g;

    .line 50
    .line 51
    invoke-direct {v9}, Lzb/g;-><init>()V

    .line 52
    .line 53
    .line 54
    move-object v1, v10

    .line 55
    move-object v7, v0

    .line 56
    move-object v8, v11

    .line 57
    invoke-direct/range {v1 .. v9}, Lxb/b;-><init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/lang/String;Lxb/f;Lzb/g;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11, v10}, Lxb/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lxb/a;->c:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    new-instance v2, Lxb/a$b;

    .line 66
    .line 67
    invoke-direct {v2, p0, v0, v10}, Lxb/a$b;-><init>(Lxb/a;Ljava/lang/String;Lxb/b;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic c(Lxb/a;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxb/a;->b(Lcom/android/billingclient/api/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lxb/a;)Lxb/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/a;->f:Lxb/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lxb/a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/a;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
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
    iget-object v0, p0, Lxb/a;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lxb/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lxb/a$a;-><init>(Lxb/a;Lcom/android/billingclient/api/h;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

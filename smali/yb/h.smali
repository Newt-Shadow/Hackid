.class public final Lyb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/k;
.implements Lcom/yandex/metrica/impl/ob/j;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/yandex/metrica/impl/ob/m;

.field private final f:Lcom/yandex/metrica/impl/ob/l;

.field private final g:Lcom/yandex/metrica/impl/ob/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/n;Lcom/yandex/metrica/impl/ob/m;Lcom/yandex/metrica/impl/ob/l;Lcom/yandex/metrica/impl/ob/o;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "workerExecutor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "uiExecutor"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "billingInfoStorage"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p4, "billingInfoSender"

    .line 22
    .line 23
    invoke-static {p5, p4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p4, "billingInfoManager"

    .line 27
    .line 28
    invoke-static {p6, p4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p4, "updatePolicy"

    .line 32
    .line 33
    invoke-static {p7, p4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lyb/h;->b:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p2, p0, Lyb/h;->c:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    iput-object p3, p0, Lyb/h;->d:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    iput-object p5, p0, Lyb/h;->e:Lcom/yandex/metrica/impl/ob/m;

    .line 46
    .line 47
    iput-object p6, p0, Lyb/h;->f:Lcom/yandex/metrica/impl/ob/l;

    .line 48
    .line 49
    iput-object p7, p0, Lyb/h;->g:Lcom/yandex/metrica/impl/ob/o;

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic a(Lyb/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/h;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 3
    iget-object v0, p0, Lyb/h;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lyb/h;->a:Lcom/yandex/metrica/impl/ob/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyb/h;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lyb/h;->d:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v2, Lyb/h$a;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0}, Lyb/h$a;-><init>(Lyb/h;Lcom/yandex/metrica/impl/ob/i;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/h;->d:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/h;->e:Lcom/yandex/metrica/impl/ob/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/h;->f:Lcom/yandex/metrica/impl/ob/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/h;->g:Lcom/yandex/metrica/impl/ob/o;

    .line 2
    .line 3
    return-object v0
.end method

.class public Lxb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/k;
.implements Lcom/yandex/metrica/impl/ob/j;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/yandex/metrica/impl/ob/l;

.field private final e:Lcom/yandex/metrica/impl/ob/o;

.field private final f:Lcom/yandex/metrica/impl/ob/m;

.field private g:Lcom/yandex/metrica/impl/ob/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/l;Lcom/yandex/metrica/impl/ob/o;Lcom/yandex/metrica/impl/ob/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxb/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lxb/g;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lxb/g;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lxb/g;->d:Lcom/yandex/metrica/impl/ob/l;

    .line 11
    .line 12
    iput-object p5, p0, Lxb/g;->e:Lcom/yandex/metrica/impl/ob/o;

    .line 13
    .line 14
    iput-object p6, p0, Lxb/g;->f:Lcom/yandex/metrica/impl/ob/m;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lxb/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lxb/g;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/g;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lxb/g;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/g;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 3
    iget-object v0, p0, Lxb/g;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lxb/g;->g:Lcom/yandex/metrica/impl/ob/i;
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

    .line 2
    iget-object v0, p0, Lxb/g;->g:Lcom/yandex/metrica/impl/ob/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lxb/g;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lxb/g$a;

    invoke-direct {v2, p0, v0}, Lxb/g$a;-><init>(Lxb/g;Lcom/yandex/metrica/impl/ob/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/g;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/m;
    .locals 1

    .line 2
    iget-object v0, p0, Lxb/g;->f:Lcom/yandex/metrica/impl/ob/m;

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/g;->d:Lcom/yandex/metrica/impl/ob/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/g;->e:Lcom/yandex/metrica/impl/ob/o;

    .line 2
    .line 3
    return-object v0
.end method

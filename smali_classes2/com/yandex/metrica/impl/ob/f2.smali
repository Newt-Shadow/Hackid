.class public Lcom/yandex/metrica/impl/ob/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/p$b;


# static fields
.field private static volatile g:Lcom/yandex/metrica/impl/ob/f2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/c2;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/b9;

.field private final e:Lcom/yandex/metrica/impl/ob/d2;

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/d2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->c:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/f2;->a:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/f2;->d:Lcom/yandex/metrica/impl/ob/b9;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/f2;->e:Lcom/yandex/metrica/impl/ob/d2;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/b9;->s()Lcom/yandex/metrica/impl/ob/c2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/b9;->x()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/f2;->f:Z

    .line 29
    .line 30
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/P;->a()Lcom/yandex/metrica/impl/ob/p;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/p;->a(Lcom/yandex/metrica/impl/ob/p$b;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/f2;
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/f2;->g:Lcom/yandex/metrica/impl/ob/f2;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yandex/metrica/impl/ob/f2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/f2;->g:Lcom/yandex/metrica/impl/ob/f2;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/f2;

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/b9;

    .line 6
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ja;->c()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/b9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/d2;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/d2;-><init>()V

    .line 7
    invoke-direct {v1, p0, v2, v3}, Lcom/yandex/metrica/impl/ob/f2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/d2;)V

    .line 8
    sput-object v1, Lcom/yandex/metrica/impl/ob/f2;->g:Lcom/yandex/metrica/impl/ob/f2;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/f2;->g:Lcom/yandex/metrica/impl/ob/f2;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->e:Lcom/yandex/metrica/impl/ob/d2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/d2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/c2;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c2;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->d:Lcom/yandex/metrica/impl/ob/b9;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/c2;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/yandex/metrica/impl/ob/c2;
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/f2;->b(Landroid/content/Context;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    .line 13
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f2;->f:Z

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/f2;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/f2;->f:Z

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->d:Lcom/yandex/metrica/impl/ob/b9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b9;->z()V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/f2;->b(Landroid/content/Context;)V

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->c:Ljava/lang/ref/WeakReference;

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/f2;->b:Lcom/yandex/metrica/impl/ob/c2;

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/f2;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

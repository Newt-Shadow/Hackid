.class public Lcom/yandex/metrica/impl/ob/Eh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/Mh;

.field private final c:Lcom/yandex/metrica/impl/ob/uh;

.field private d:Lcom/yandex/metrica/impl/ob/Jh;

.field private e:Lcom/yandex/metrica/impl/ob/Jh;

.field private f:Lcom/yandex/metrica/impl/ob/pi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Mh;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Mh;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/uh;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/uh;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/Eh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Mh;Lcom/yandex/metrica/impl/ob/uh;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Mh;Lcom/yandex/metrica/impl/ob/uh;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Eh;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Eh;->b:Lcom/yandex/metrica/impl/ob/Mh;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Eh;->c:Lcom/yandex/metrica/impl/ob/uh;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->d:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jh;->a()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->e:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Eh;->f:Lcom/yandex/metrica/impl/ob/pi;

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->d:Lcom/yandex/metrica/impl/ob/Jh;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->b:Lcom/yandex/metrica/impl/ob/Mh;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eh;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v9, Lcom/yandex/metrica/impl/ob/Jh;

    new-instance v4, Lcom/yandex/metrica/impl/ob/rh;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/rh;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Kh;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/Kh;-><init>(Lcom/yandex/metrica/impl/ob/Mh;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/wh;

    const-string v0, "open"

    const-string v1, "http"

    invoke-direct {v6, v0, v1}, Lcom/yandex/metrica/impl/ob/wh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/wh;

    const-string v0, "port_already_in_use"

    const-string v1, "http"

    invoke-direct {v7, v0, v1}, Lcom/yandex/metrica/impl/ob/wh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Http"

    move-object v1, v9

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/Jh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Fh;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wh;Lcom/yandex/metrica/impl/ob/wh;Ljava/lang/String;)V

    .line 6
    iput-object v9, p0, Lcom/yandex/metrica/impl/ob/Eh;->d:Lcom/yandex/metrica/impl/ob/Jh;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->c:Lcom/yandex/metrica/impl/ob/uh;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Eh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/io/File;)V
    .locals 10

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->e:Lcom/yandex/metrica/impl/ob/Jh;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->b:Lcom/yandex/metrica/impl/ob/Mh;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eh;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Eh;->f:Lcom/yandex/metrica/impl/ob/pi;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v9, Lcom/yandex/metrica/impl/ob/Jh;

    new-instance v4, Lcom/yandex/metrica/impl/ob/vh;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/ob/vh;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Lh;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/Lh;-><init>(Lcom/yandex/metrica/impl/ob/Mh;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/wh;

    const-string p1, "open"

    const-string v0, "https"

    invoke-direct {v6, p1, v0}, Lcom/yandex/metrica/impl/ob/wh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/wh;

    const-string p1, "port_already_in_use"

    const-string v0, "https"

    invoke-direct {v7, p1, v0}, Lcom/yandex/metrica/impl/ob/wh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Https"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/Jh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Fh;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wh;Lcom/yandex/metrica/impl/ob/wh;Ljava/lang/String;)V

    .line 17
    iput-object v9, p0, Lcom/yandex/metrica/impl/ob/Eh;->e:Lcom/yandex/metrica/impl/ob/Jh;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eh;->f:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->d:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jh;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->e:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Jh;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Eh;->f:Lcom/yandex/metrica/impl/ob/pi;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->c:Lcom/yandex/metrica/impl/ob/uh;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Eh;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->d:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Eh;->e:Lcom/yandex/metrica/impl/ob/Jh;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

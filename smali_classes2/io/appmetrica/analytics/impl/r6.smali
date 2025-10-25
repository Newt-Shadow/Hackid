.class public final Lio/appmetrica/analytics/impl/r6;
.super Lio/appmetrica/analytics/impl/Ng;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lio/appmetrica/analytics/impl/wh;

.field public final h:Lio/appmetrica/analytics/impl/rc;

.field public final i:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/Lk;Lio/appmetrica/analytics/impl/wh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lio/appmetrica/analytics/impl/Ng;-><init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/Lk;Lio/appmetrica/analytics/impl/wh;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/r6;->f:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/r6;->g:Lio/appmetrica/analytics/impl/wh;

    .line 7
    .line 8
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/t4;->k()Lio/appmetrica/analytics/impl/rc;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/r6;->h:Lio/appmetrica/analytics/impl/rc;

    .line 17
    .line 18
    new-instance p2, Lio/appmetrica/analytics/impl/A6;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/A6;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lio/appmetrica/analytics/impl/r6;->i:Lio/appmetrica/analytics/impl/A6;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13
    :try_start_1
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->h:Lio/appmetrica/analytics/impl/rc;

    const-string v1, "AppMetrica"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/rc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->g:Lio/appmetrica/analytics/impl/wh;

    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/impl/r6;->i:Lio/appmetrica/analytics/impl/A6;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/A6;->a(Lio/appmetrica/analytics/impl/wh;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    .line 18
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/h0;->c()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    .line 20
    invoke-super {p0}, Lio/appmetrica/analytics/impl/yh;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/wh;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/wh;->a:Lio/appmetrica/analytics/impl/e6;

    .line 2
    iget v0, v0, Lio/appmetrica/analytics/impl/e6;->g:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->f:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/mk;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wh;->a:Lio/appmetrica/analytics/impl/e6;

    .line 5
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const/16 v2, 0x1702

    .line 6
    iput v2, v1, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 7
    iget-object v2, p1, Lio/appmetrica/analytics/impl/wh;->e:Lio/appmetrica/analytics/impl/Gh;

    .line 8
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Gh;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/e6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/r6;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->i:Lio/appmetrica/analytics/impl/A6;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/A6;->a(Lio/appmetrica/analytics/impl/wh;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->i:Lio/appmetrica/analytics/impl/A6;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/A6;->a(Lio/appmetrica/analytics/impl/wh;)V

    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->g:Lio/appmetrica/analytics/impl/wh;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/r6;->a(Lio/appmetrica/analytics/impl/wh;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/r6;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method

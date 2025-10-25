.class public final Lio/appmetrica/analytics/impl/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/s1;
.implements Lio/appmetrica/analytics/impl/k0;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public volatile c:Lio/appmetrica/analytics/impl/r1;

.field public final d:Lio/appmetrica/analytics/impl/s4;

.field public final e:Lio/appmetrica/analytics/impl/N1;

.field public f:Lio/appmetrica/analytics/impl/Ug;

.field public final g:Lio/appmetrica/analytics/impl/qa;

.field public final h:Lio/appmetrica/analytics/impl/Pd;

.field public final i:Lio/appmetrica/analytics/impl/i2;

.field public final j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final k:Lio/appmetrica/analytics/impl/H1;

.field public final l:Lio/appmetrica/analytics/impl/E1;

.field public final m:Lio/appmetrica/analytics/impl/eh;

.field public n:Lio/appmetrica/analytics/impl/s6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/r1;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/u5;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/u5;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/G1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/r1;Lio/appmetrica/analytics/impl/u5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/r1;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/impl/N1;Lio/appmetrica/analytics/impl/qa;Lio/appmetrica/analytics/impl/i2;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/H1;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/G1;->a:Z

    .line 8
    new-instance v0, Lio/appmetrica/analytics/impl/E1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/E1;-><init>(Lio/appmetrica/analytics/impl/G1;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/G1;->l:Lio/appmetrica/analytics/impl/E1;

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/G1;->c:Lio/appmetrica/analytics/impl/r1;

    .line 11
    iput-object p3, p0, Lio/appmetrica/analytics/impl/G1;->d:Lio/appmetrica/analytics/impl/s4;

    .line 12
    iput-object p4, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    .line 13
    iput-object p5, p0, Lio/appmetrica/analytics/impl/G1;->g:Lio/appmetrica/analytics/impl/qa;

    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/G1;->i:Lio/appmetrica/analytics/impl/i2;

    .line 15
    iput-object p7, p0, Lio/appmetrica/analytics/impl/G1;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 16
    iput-object p8, p0, Lio/appmetrica/analytics/impl/G1;->k:Lio/appmetrica/analytics/impl/H1;

    .line 17
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/za;->q()Lio/appmetrica/analytics/impl/Pd;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G1;->h:Lio/appmetrica/analytics/impl/Pd;

    .line 18
    new-instance p1, Lio/appmetrica/analytics/impl/eh;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/eh;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G1;->m:Lio/appmetrica/analytics/impl/eh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/r1;Lio/appmetrica/analytics/impl/u5;)V
    .locals 9

    .line 2
    new-instance v3, Lio/appmetrica/analytics/impl/s4;

    invoke-direct {v3, p1, p3}, Lio/appmetrica/analytics/impl/s4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;)V

    new-instance v4, Lio/appmetrica/analytics/impl/N1;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/N1;-><init>()V

    sget-object v5, Lio/appmetrica/analytics/impl/qa;->d:Lio/appmetrica/analytics/impl/qa;

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/za;->d()Lio/appmetrica/analytics/impl/i2;

    move-result-object v6

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/za;->w()Lio/appmetrica/analytics/impl/dk;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/dk;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/H1;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/H1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/G1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/r1;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/impl/N1;Lio/appmetrica/analytics/impl/qa;Lio/appmetrica/analytics/impl/i2;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/H1;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, v0, Lio/appmetrica/analytics/impl/N1;->a:Lio/appmetrica/analytics/impl/Ba;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/N1;->a(Landroid/content/Intent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/N1;->b:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/M1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/L1;

    .line 10
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/L1;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v2, p1}, Lio/appmetrica/analytics/impl/M1;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/G1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p3}, Lio/appmetrica/analytics/impl/G1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .line 13
    const-class v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    invoke-static {p1}, Lio/appmetrica/analytics/impl/e6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/e6;

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->f:Lio/appmetrica/analytics/impl/Ug;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/e6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/e6;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/e6;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    new-instance v2, Lio/appmetrica/analytics/impl/mh;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ug;->a:Landroid/content/Context;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/Ug;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-direct {v2, v3, v1, p1, v4}, Lio/appmetrica/analytics/impl/mh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/e6;Landroid/os/Bundle;Lio/appmetrica/analytics/impl/s4;)V

    .line 18
    iget-object p1, v0, Lio/appmetrica/analytics/impl/Ug;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {p1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/r1;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/appmetrica/analytics/impl/G1;->c:Lio/appmetrica/analytics/impl/r1;

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 5

    .line 20
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->f:Lio/appmetrica/analytics/impl/Ug;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Lio/appmetrica/analytics/impl/yb;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/yb;-><init>()V

    .line 22
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ug;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v3, Lio/appmetrica/analytics/impl/Pf;

    new-instance v4, Lio/appmetrica/analytics/impl/Qg;

    invoke-direct {v4, v0}, Lio/appmetrica/analytics/impl/Qg;-><init>(Lio/appmetrica/analytics/impl/Ug;)V

    invoke-direct {v3, p1, v1, v1, v4}, Lio/appmetrica/analytics/impl/Pf;-><init>(Ljava/io/File;Lio/appmetrica/analytics/coreapi/internal/backport/Function;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;)V

    invoke-interface {v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/N1;->d(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "io.appmetrica.analytics.IAppMetricaService"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/client"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pid"

    .line 7
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "psid"

    .line 8
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/impl/G1;->d:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v2, v0, v1, p1}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lio/appmetrica/analytics/impl/G1;->i:Lio/appmetrica/analytics/impl/i2;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/i2;->a(I)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Intent;I)V
    .locals 4

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/Z3;->a(Landroid/content/Context;Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/Z3;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/e6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->l()Z

    move-result v1

    .line 17
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->m()Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->f:Lio/appmetrica/analytics/impl/Ug;

    .line 19
    invoke-static {v0}, Lio/appmetrica/analytics/impl/h4;->a(Lio/appmetrica/analytics/impl/Z3;)Lio/appmetrica/analytics/impl/h4;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/G4;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/Z3;)V

    .line 20
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ug;->c:Lio/appmetrica/analytics/impl/s4;

    .line 21
    invoke-virtual {v0, v2, v3}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1, v3}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V

    .line 23
    iget-object p1, v1, Lio/appmetrica/analytics/impl/Ug;->c:Lio/appmetrica/analytics/impl/s4;

    .line 24
    iget-object v0, v2, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    .line 25
    iget-object v1, v2, Lio/appmetrica/analytics/impl/h4;->c:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 27
    iget-object v2, v2, Lio/appmetrica/analytics/impl/h4;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1, v0, v2}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :catchall_0
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/G1;->c:Lio/appmetrica/analytics/impl/r1;

    check-cast p1, Lio/appmetrica/analytics/impl/p1;

    .line 30
    iget-object p1, p1, Lio/appmetrica/analytics/impl/p1;->a:Lio/appmetrica/analytics/internal/AppMetricaService;

    .line 31
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopSelfResult(I)Z

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lio/appmetrica/analytics/impl/N1;->a:Lio/appmetrica/analytics/impl/Ba;

    .line 19
    .line 20
    invoke-static {p1}, Lio/appmetrica/analytics/impl/N1;->a(Landroid/content/Intent;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/N1;->b:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lio/appmetrica/analytics/impl/M1;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lio/appmetrica/analytics/impl/L1;

    .line 64
    .line 65
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/L1;->a(Landroid/content/Intent;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-interface {v2, p1}, Lio/appmetrica/analytics/impl/M1;->a(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/dj;->a(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/G1;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->g:Lio/appmetrica/analytics/impl/qa;

    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/qa;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/za;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->initAsync()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lio/appmetrica/analytics/impl/za;->u:Lio/appmetrica/analytics/impl/Sl;

    .line 21
    .line 22
    iget-object v2, v0, Lio/appmetrica/analytics/impl/za;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sl;->a(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lio/appmetrica/analytics/impl/za;->u:Lio/appmetrica/analytics/impl/Sl;

    .line 28
    .line 29
    new-instance v2, Lio/appmetrica/analytics/impl/Pn;

    .line 30
    .line 31
    iget-object v3, v0, Lio/appmetrica/analytics/impl/za;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    .line 32
    .line 33
    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Pn;-><init>(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sl;->a(Lio/appmetrica/analytics/impl/Vl;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->init()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->k()Lio/appmetrica/analytics/impl/Qb;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, v0, Lio/appmetrica/analytics/impl/za;->q:Lio/appmetrica/analytics/impl/ya;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Qb;->a(Lio/appmetrica/analytics/impl/ya;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    sget-object v0, Lio/appmetrica/analytics/impl/Sj;->a:Lio/appmetrica/analytics/impl/Tj;

    .line 56
    .line 57
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Tj;->e()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 61
    .line 62
    iget-object v0, v0, Lio/appmetrica/analytics/impl/za;->u:Lio/appmetrica/analytics/impl/Sl;

    .line 63
    .line 64
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Sl;->b()Lio/appmetrica/analytics/impl/Ql;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Sl;->b()Lio/appmetrica/analytics/impl/Ql;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v2, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 72
    .line 73
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/za;->o()Lio/appmetrica/analytics/impl/kk;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v3, Lio/appmetrica/analytics/impl/Wj;

    .line 78
    .line 79
    new-instance v4, Lio/appmetrica/analytics/impl/md;

    .line 80
    .line 81
    iget-object v5, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    .line 82
    .line 83
    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/md;-><init>(Lio/appmetrica/analytics/impl/N1;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Wj;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3, v1}, Lio/appmetrica/analytics/impl/kk;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/impl/Ql;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Sl;->a(Lio/appmetrica/analytics/impl/Vl;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 96
    .line 97
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->y()Lio/appmetrica/analytics/impl/T2;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lio/appmetrica/analytics/impl/ll;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->e:Lio/appmetrica/analytics/impl/N1;

    .line 107
    .line 108
    new-instance v1, Lio/appmetrica/analytics/impl/F1;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/F1;-><init>(Lio/appmetrica/analytics/impl/G1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/N1;->c(Lio/appmetrica/analytics/impl/M1;)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 117
    .line 118
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->l()Lio/appmetrica/analytics/impl/Vb;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Yb;->init()V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 126
    .line 127
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/O;->init()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->k:Lio/appmetrica/analytics/impl/H1;

    .line 135
    .line 136
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 137
    .line 138
    iget-object v2, p0, Lio/appmetrica/analytics/impl/G1;->d:Lio/appmetrica/analytics/impl/s4;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v0, Lio/appmetrica/analytics/impl/Ug;

    .line 144
    .line 145
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 146
    .line 147
    iget-object v3, v3, Lio/appmetrica/analytics/impl/za;->d:Lio/appmetrica/analytics/impl/dk;

    .line 148
    .line 149
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/dk;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v4, Lio/appmetrica/analytics/impl/ma;

    .line 154
    .line 155
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ma;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/Ug;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s4;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/ma;)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lio/appmetrica/analytics/impl/G1;->f:Lio/appmetrica/analytics/impl/Ug;

    .line 162
    .line 163
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 164
    .line 165
    sget-object v1, Lio/appmetrica/analytics/impl/l1;->a:Lio/appmetrica/analytics/impl/k1;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/k1;->b(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getCrashesDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->k:Lio/appmetrica/analytics/impl/H1;

    .line 184
    .line 185
    iget-object v2, p0, Lio/appmetrica/analytics/impl/G1;->l:Lio/appmetrica/analytics/impl/E1;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v1, Lio/appmetrica/analytics/impl/s6;

    .line 191
    .line 192
    new-instance v3, Lio/appmetrica/analytics/impl/t6;

    .line 193
    .line 194
    new-instance v4, Lio/appmetrica/analytics/impl/ma;

    .line 195
    .line 196
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ma;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-direct {v3, v0, v2, v4}, Lio/appmetrica/analytics/impl/t6;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/E1;Lio/appmetrica/analytics/impl/ma;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lio/appmetrica/analytics/impl/u6;

    .line 203
    .line 204
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/u6;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v3, v0, v2}, Lio/appmetrica/analytics/impl/s6;-><init>(Lio/appmetrica/analytics/impl/t6;Ljava/io/File;Lio/appmetrica/analytics/impl/u6;)V

    .line 208
    .line 209
    .line 210
    iput-object v1, p0, Lio/appmetrica/analytics/impl/G1;->n:Lio/appmetrica/analytics/impl/s6;

    .line 211
    .line 212
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 213
    .line 214
    new-instance v2, Lio/appmetrica/analytics/impl/Qf;

    .line 215
    .line 216
    iget-object v3, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 217
    .line 218
    iget-object v4, p0, Lio/appmetrica/analytics/impl/G1;->l:Lio/appmetrica/analytics/impl/E1;

    .line 219
    .line 220
    invoke-static {v3}, Lio/appmetrica/analytics/impl/la;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/la;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-direct {v2, v0, v4, v3}, Lio/appmetrica/analytics/impl/Qf;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/E1;Lio/appmetrica/analytics/impl/la;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->n:Lio/appmetrica/analytics/impl/s6;

    .line 231
    .line 232
    iget-object v1, v0, Lio/appmetrica/analytics/impl/s6;->c:Lio/appmetrica/analytics/impl/u6;

    .line 233
    .line 234
    iget-object v2, v0, Lio/appmetrica/analytics/impl/s6;->b:Ljava/io/File;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    if-nez v2, :cond_0

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_2

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_1

    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_3

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 266
    .line 267
    .line 268
    :cond_3
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/s6;->a:Landroid/os/FileObserver;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 271
    .line 272
    .line 273
    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->h:Lio/appmetrica/analytics/impl/Pd;

    .line 274
    .line 275
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 276
    .line 277
    iget-object v2, p0, Lio/appmetrica/analytics/impl/G1;->f:Lio/appmetrica/analytics/impl/Ug;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getNativeCrashDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    const/4 v4, 0x0

    .line 287
    if-eqz v3, :cond_5

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    goto :goto_1

    .line 294
    :cond_5
    move-object v3, v4

    .line 295
    :goto_1
    if-nez v3, :cond_6

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_6
    iget-object v5, v0, Lio/appmetrica/analytics/impl/Pd;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    .line 299
    .line 300
    new-instance v6, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;

    .line 301
    .line 302
    invoke-direct {v6, v3}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v1, v6}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->init(Landroid/content/Context;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Lio/appmetrica/analytics/impl/Nd;

    .line 309
    .line 310
    new-instance v3, Lio/appmetrica/analytics/impl/Od;

    .line 311
    .line 312
    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/Od;-><init>(Lio/appmetrica/analytics/impl/Pd;)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/Nd;-><init>(Lio/appmetrica/analytics/impl/Ug;Lid/l;)V

    .line 316
    .line 317
    .line 318
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Pd;->b:Lio/appmetrica/analytics/impl/Nd;

    .line 319
    .line 320
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Pd;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    .line 321
    .line 322
    invoke-virtual {v2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->getAllCrashes()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Nd;->a(Ljava/util/List;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Pd;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    .line 330
    .line 331
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Pd;->b:Lio/appmetrica/analytics/impl/Nd;

    .line 332
    .line 333
    if-nez v0, :cond_7

    .line 334
    .line 335
    const-string v0, "crashReporter"

    .line 336
    .line 337
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_7
    move-object v4, v0

    .line 342
    :goto_2
    invoke-virtual {v1, v4}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->setDefaultCrashHandler(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashHandler;)V

    .line 343
    .line 344
    .line 345
    :goto_3
    new-instance v0, Lio/appmetrica/analytics/impl/X5;

    .line 346
    .line 347
    new-instance v1, Lio/appmetrica/analytics/impl/Zg;

    .line 348
    .line 349
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Zg;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-static {v1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/X5;-><init>(Ljava/util/List;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X5;->run()V

    .line 360
    .line 361
    .line 362
    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/G1;->a:Z

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :catchall_0
    move-exception v1

    .line 367
    monitor-exit v0

    .line 368
    throw v1

    .line 369
    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->b:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 380
    .line 381
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/dj;->a(Landroid/content/res/Configuration;)V

    .line 386
    .line 387
    .line 388
    :goto_4
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 389
    .line 390
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->k()Lio/appmetrica/analytics/impl/Qb;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Qb;->a()V

    .line 395
    .line 396
    .line 397
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->k()Lio/appmetrica/analytics/impl/Qb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Qb;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lio/appmetrica/analytics/impl/ek;

    .line 25
    .line 26
    invoke-interface {v2}, Lio/appmetrica/analytics/impl/ek;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public final pauseUserSession(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/yf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/appmetrica/analytics/impl/yf;->c:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lio/appmetrica/analytics/impl/yf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-object p1, v0

    .line 23
    :goto_0
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    .line 27
    .line 28
    const-string v0, "PROCESS_CFG_PROCESS_ID"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lio/appmetrica/analytics/impl/G1;->i:Lio/appmetrica/analytics/impl/i2;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/i2;->b(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G1;->m:Lio/appmetrica/analytics/impl/eh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 7
    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/za;->v:Lio/appmetrica/analytics/impl/Yj;

    .line 9
    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Yj;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lio/appmetrica/analytics/impl/Xj;

    .line 50
    .line 51
    invoke-interface {v1, p1, p2}, Lio/appmetrica/analytics/impl/Xj;->reportData(ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public final resumeUserSession(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/yf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/appmetrica/analytics/impl/yf;->c:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lio/appmetrica/analytics/impl/yf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-object p1, v0

    .line 23
    :goto_0
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/yf;->a:Landroid/content/ContentValues;

    .line 27
    .line 28
    const-string v0, "PROCESS_CFG_PROCESS_ID"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lio/appmetrica/analytics/impl/G1;->i:Lio/appmetrica/analytics/impl/i2;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/i2;->c(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

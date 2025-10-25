.class public final Lio/appmetrica/analytics/impl/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/m1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Oj;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/m1;->a:Landroid/content/Context;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Oj;->b:Lio/appmetrica/analytics/impl/hi;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    sget-object v2, Lio/appmetrica/analytics/impl/oi;->a:Lio/appmetrica/analytics/impl/pi;

    .line 11
    .line 12
    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 13
    .line 14
    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/pi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/hi;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Oj;->b:Lio/appmetrica/analytics/impl/hi;

    .line 19
    .line 20
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Oj;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lio/appmetrica/analytics/impl/cb;

    .line 37
    .line 38
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Oj;->b:Lio/appmetrica/analytics/impl/hi;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lio/appmetrica/analytics/impl/cb;->a(Lio/appmetrica/analytics/impl/db;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Oj;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    .line 53
    throw v1
.end method

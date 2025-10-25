.class public final Lio/appmetrica/analytics/impl/A5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Zd;

.field public final synthetic b:Lio/appmetrica/analytics/impl/B5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/B5;Lio/appmetrica/analytics/impl/Zd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/A5;->b:Lio/appmetrica/analytics/impl/B5;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/A5;->a:Lio/appmetrica/analytics/impl/Zd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/A5;->b:Lio/appmetrica/analytics/impl/B5;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/A5;->b:Lio/appmetrica/analytics/impl/B5;

    .line 5
    .line 6
    iget-object v2, v1, Lio/appmetrica/analytics/impl/B5;->a:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lio/appmetrica/analytics/impl/B5;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v2, p0, Lio/appmetrica/analytics/impl/A5;->a:Lio/appmetrica/analytics/impl/Zd;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/A5;->a:Lio/appmetrica/analytics/impl/Zd;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/Zd;->consume(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

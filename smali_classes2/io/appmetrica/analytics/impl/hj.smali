.class public final Lio/appmetrica/analytics/impl/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/hj;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/gj;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/gj;
    .locals 1

    .line 1
    new-instance p1, Lio/appmetrica/analytics/impl/gj;

    .line 2
    .line 3
    new-instance p4, Lio/appmetrica/analytics/impl/zc;

    .line 4
    .line 5
    iget-object v0, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p4, v0, p3}, Lio/appmetrica/analytics/impl/zc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p2, Lio/appmetrica/analytics/impl/u5;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/h5;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Lio/appmetrica/analytics/impl/zg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p2

    .line 26
    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/gj;-><init>(Lio/appmetrica/analytics/impl/zg;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p2

    .line 32
    throw p1
.end method

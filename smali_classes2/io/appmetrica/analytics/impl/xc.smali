.class public final Lio/appmetrica/analytics/impl/xc;
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/xc;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/yc;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/yc;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/zc;

    .line 2
    .line 3
    iget-object v1, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, p3}, Lio/appmetrica/analytics/impl/zc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lio/appmetrica/analytics/impl/Ag;

    .line 11
    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/Cc;

    .line 13
    .line 14
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Cc;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p3, v1}, Lio/appmetrica/analytics/impl/Ag;-><init>(Lio/appmetrica/analytics/impl/p5;)V

    .line 18
    .line 19
    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    iget-object v1, p2, Lio/appmetrica/analytics/impl/u5;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p2, v0, p4, p3, v1}, Lio/appmetrica/analytics/impl/u5;->a(Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/X7;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Sa;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lio/appmetrica/analytics/impl/zg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p2

    .line 30
    new-instance p2, Lio/appmetrica/analytics/impl/yc;

    .line 31
    .line 32
    invoke-direct {p2, p1, p3}, Lio/appmetrica/analytics/impl/yc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/zg;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p2

    .line 38
    throw p1
.end method

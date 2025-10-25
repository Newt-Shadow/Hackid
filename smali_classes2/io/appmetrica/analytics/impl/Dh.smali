.class public final Lio/appmetrica/analytics/impl/Dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x4;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/p5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/p5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Dh;->a:Lio/appmetrica/analytics/impl/p5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Dh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/yg;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/u5;Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/yg;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/h5;

    .line 2
    .line 3
    iget-object v1, p3, Lio/appmetrica/analytics/impl/h4;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p3, p3, Lio/appmetrica/analytics/impl/h4;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, p3}, Lio/appmetrica/analytics/impl/h5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lio/appmetrica/analytics/impl/Ag;

    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Dh;->a:Lio/appmetrica/analytics/impl/p5;

    .line 13
    .line 14
    invoke-direct {p3, v1}, Lio/appmetrica/analytics/impl/Ag;-><init>(Lio/appmetrica/analytics/impl/p5;)V

    .line 15
    .line 16
    .line 17
    monitor-enter p2

    .line 18
    :try_start_0
    iget-object v1, p2, Lio/appmetrica/analytics/impl/u5;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p2, v0, p4, p3, v1}, Lio/appmetrica/analytics/impl/u5;->a(Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/X7;Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/Sa;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lio/appmetrica/analytics/impl/zg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p2

    .line 27
    new-instance p2, Lio/appmetrica/analytics/impl/yg;

    .line 28
    .line 29
    invoke-direct {p2, p1, p3}, Lio/appmetrica/analytics/impl/yg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/zg;)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p2

    .line 35
    throw p1
.end method

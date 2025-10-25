.class public final Lio/appmetrica/analytics/impl/Q4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->k()Lio/appmetrica/analytics/impl/Qb;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Q4;-><init>(Lio/appmetrica/analytics/impl/Qb;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Qb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q4;->a:Lio/appmetrica/analytics/impl/Qb;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/O4;)Lio/appmetrica/analytics/impl/V4;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/V4;

    new-instance v1, Lio/appmetrica/analytics/impl/T4;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/T4;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/V4;-><init>(Lio/appmetrica/analytics/impl/zf;Lio/appmetrica/analytics/impl/O4;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Sm;
    .locals 2

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Sm;

    new-instance v1, Lio/appmetrica/analytics/impl/Gg;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/mm;)V

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/Sm;-><init>(Lio/appmetrica/analytics/impl/Qa;Lio/appmetrica/analytics/impl/vl;)V

    .line 3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Q4;->a:Lio/appmetrica/analytics/impl/Qb;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Qb;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 5
    monitor-exit p1

    throw p2
.end method

.class public final Lio/appmetrica/analytics/impl/Ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/appmetrica/analytics/impl/vk;

.field public final c:Lio/appmetrica/analytics/impl/zk;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/h5;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string v0, "session_extras"

    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/vk;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/vk;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/vk;

    .line 17
    .line 18
    new-instance v0, Lio/appmetrica/analytics/impl/zk;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/zk;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/zk;

    .line 24
    .line 25
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/k7;->a(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->get(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    xor-int/2addr v1, v2

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/vk;

    .line 22
    .line 23
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/zk;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/zk;->a([B)Lio/appmetrica/analytics/impl/xk;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/xk;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/vk;

    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/zk;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lio/appmetrica/analytics/impl/xk;

    .line 42
    .line 43
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/xk;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/xk;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.class public final Lio/appmetrica/analytics/impl/Wi;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->b()Lio/appmetrica/analytics/impl/h5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/h5;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 24
    .line 25
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->u:Lio/appmetrica/analytics/impl/wk;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [B

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    array-length v3, v0

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/wk;->b:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, [B

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    iget-object v0, v1, Lio/appmetrica/analytics/impl/wk;->b:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, [B

    .line 64
    .line 65
    :goto_2
    iget-object v0, v1, Lio/appmetrica/analytics/impl/wk;->a:Lio/appmetrica/analytics/impl/Ak;

    .line 66
    .line 67
    iget-object v1, v1, Lio/appmetrica/analytics/impl/wk;->b:Ljava/util/Map;

    .line 68
    .line 69
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 70
    .line 71
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ak;->a:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, v0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/zk;

    .line 74
    .line 75
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/vk;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/vk;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/xk;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v2, v3, v0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 p1, 0x1

    .line 93
    return p1
.end method

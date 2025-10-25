.class public final Lio/appmetrica/analytics/impl/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oc;

.field public final b:Lio/appmetrica/analytics/impl/Nc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oc;Lio/appmetrica/analytics/impl/Nc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/cl;->a:Lio/appmetrica/analytics/impl/Oc;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/cl;->b:Lio/appmetrica/analytics/impl/Nc;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Oc;

    invoke-direct {v0, p2, p1}, Lio/appmetrica/analytics/impl/Oc;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Nc;

    invoke-direct {v1, p2, p1}, Lio/appmetrica/analytics/impl/Nc;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/cl;-><init>(Lio/appmetrica/analytics/impl/Oc;Lio/appmetrica/analytics/impl/Nc;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Rc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/cl;->a:Lio/appmetrica/analytics/impl/Oc;

    .line 7
    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Oc;->c:Lio/appmetrica/analytics/impl/D4;

    .line 9
    .line 10
    iget v1, v1, Lio/appmetrica/analytics/impl/D4;->a:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/cl;->a:Lio/appmetrica/analytics/impl/Oc;

    .line 32
    .line 33
    iget-object p3, p1, Lio/appmetrica/analytics/impl/Oc;->d:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 34
    .line 35
    const-string v0, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    .line 36
    .line 37
    new-array v1, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Oc;->e:Ljava/lang/String;

    .line 40
    .line 41
    aput-object v3, v1, v5

    .line 42
    .line 43
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Oc;->c:Lio/appmetrica/analytics/impl/D4;

    .line 44
    .line 45
    iget p1, p1, Lio/appmetrica/analytics/impl/D4;->a:I

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    aput-object p1, v1, v4

    .line 52
    .line 53
    aput-object p2, v1, v2

    .line 54
    .line 55
    invoke-virtual {p3, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/cl;->b:Lio/appmetrica/analytics/impl/Nc;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget v0, p1, Lio/appmetrica/analytics/impl/Rc;->a:I

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sub-int/2addr v0, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4
    :goto_1
    const/16 v1, 0x1194

    .line 99
    .line 100
    if-le v0, v1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lio/appmetrica/analytics/impl/cl;->b:Lio/appmetrica/analytics/impl/Nc;

    .line 103
    .line 104
    iget-object p3, p1, Lio/appmetrica/analytics/impl/Nc;->b:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 105
    .line 106
    new-array v0, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Nc;->a:Ljava/lang/String;

    .line 109
    .line 110
    aput-object p1, v0, v5

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    aput-object p1, v0, v4

    .line 117
    .line 118
    aput-object p2, v0, v2

    .line 119
    .line 120
    const-string p1, "The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored"

    .line 121
    .line 122
    invoke-virtual {p3, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_2
    monitor-exit p0

    .line 126
    return v5

    .line 127
    :cond_5
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    monitor-exit p0

    .line 131
    return v4

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    .line 134
    throw p1
.end method

.method public final b(Lio/appmetrica/analytics/impl/Rc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/cl;->a:Lio/appmetrica/analytics/impl/Oc;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Oc;->a:Lio/appmetrica/analytics/impl/Hm;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/Hm;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/cl;->a:Lio/appmetrica/analytics/impl/Oc;

    .line 12
    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Oc;->b:Lio/appmetrica/analytics/impl/Hm;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/impl/Hm;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/cl;->a(Lio/appmetrica/analytics/impl/Rc;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/cl;->a(Lio/appmetrica/analytics/impl/Rc;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    return p1
.end method

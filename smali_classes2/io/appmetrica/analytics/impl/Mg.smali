.class public final Lio/appmetrica/analytics/impl/Mg;
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
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/n2;)Z
    .locals 3

    const-string v0, "reattribution"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    .line 30
    iget-object p2, p2, Lio/appmetrica/analytics/impl/n2;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 31
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lio/appmetrica/analytics/impl/m2;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m2;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "open"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 8
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/do;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/do;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const-string v0, "link"

    .line 10
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Mg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p1, Lio/appmetrica/analytics/impl/e6;->n:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Mg;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 17
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "referrer"

    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 21
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o5;->s()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ql;->z:Lio/appmetrica/analytics/impl/n2;

    const-string v2, "&"

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 24
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    const-string v5, "="

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 26
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v6, v4, v0}, Lio/appmetrica/analytics/impl/Mg;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/n2;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v1
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/do;->a()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    add-int/2addr v1, v2

    .line 12
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/do;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o5;->y()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 22
    .line 23
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->l:Lio/appmetrica/analytics/impl/V8;

    .line 24
    .line 25
    iget-object v1, v0, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/impl/X8;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/V8;->a()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/impl/X8;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v3, v1, Lio/appmetrica/analytics/impl/X8;->b:Ljava/util/Set;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iput v3, v1, Lio/appmetrica/analytics/impl/X8;->d:I

    .line 46
    .line 47
    iget-object v1, v0, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/impl/X8;

    .line 48
    .line 49
    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/X8;->a:Z

    .line 50
    .line 51
    iget-object v0, v0, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/a9;

    .line 52
    .line 53
    iget-object v2, v0, Lio/appmetrica/analytics/impl/a9;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 54
    .line 55
    const-string v3, "event_hashes"

    .line 56
    .line 57
    iget-object v4, v0, Lio/appmetrica/analytics/impl/a9;->b:Lio/appmetrica/analytics/impl/Z8;

    .line 58
    .line 59
    iget-object v0, v0, Lio/appmetrica/analytics/impl/a9;->a:Lio/appmetrica/analytics/impl/Y8;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Y8;->a(Lio/appmetrica/analytics/impl/X8;)Lio/appmetrica/analytics/impl/F9;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v2, v3, v0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0

    .line 81
    throw v1
.end method

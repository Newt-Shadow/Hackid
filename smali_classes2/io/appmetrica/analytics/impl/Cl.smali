.class public final Lio/appmetrica/analytics/impl/Cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/NetworkResponseHandler;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Jl;

.field public final b:Lio/appmetrica/analytics/impl/n3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Jl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Jl;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/n3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/n3;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Cl;-><init>(Lio/appmetrica/analytics/impl/Jl;Lio/appmetrica/analytics/impl/n3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Jl;Lio/appmetrica/analytics/impl/n3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Cl;->a:Lio/appmetrica/analytics/impl/Jl;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Cl;->b:Lio/appmetrica/analytics/impl/n3;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/Ol;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseData()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v3, "Content-Encoding"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :goto_0
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "encrypted"

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cl;->b:Lio/appmetrica/analytics/impl/n3;

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseData()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/n3;->a([B)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Cl;->a:Lio/appmetrica/analytics/impl/Jl;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lio/appmetrica/analytics/impl/Ol;

    .line 67
    .line 68
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    const/4 v4, 0x1

    .line 73
    :try_start_0
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Jl;->i:Lio/appmetrica/analytics/impl/tb;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v5, Lio/appmetrica/analytics/impl/rb;

    .line 79
    .line 80
    new-instance v6, Ljava/lang/String;

    .line 81
    .line 82
    const-string v7, "UTF-8"

    .line 83
    .line 84
    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/rb;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "device_id"

    .line 91
    .line 92
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    const-string v6, "hash"

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "value"

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const-string v6, ""

    .line 112
    .line 113
    move-object v0, v6

    .line 114
    :goto_1
    :try_start_1
    iput-object v0, v1, Lio/appmetrica/analytics/impl/Ol;->h:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v6, v1, Lio/appmetrica/analytics/impl/Ol;->i:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p1, v1, v5}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Ol;Lio/appmetrica/analytics/impl/rb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    iget-object p1, v1, Lio/appmetrica/analytics/impl/Ol;->i:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move v4, v3

    .line 131
    :goto_2
    iput v4, v1, Lio/appmetrica/analytics/impl/Ol;->a:I

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_0
    new-instance v1, Lio/appmetrica/analytics/impl/Ol;

    .line 135
    .line 136
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    .line 137
    .line 138
    .line 139
    iput v4, v1, Lio/appmetrica/analytics/impl/Ol;->a:I

    .line 140
    .line 141
    :goto_3
    iget p1, v1, Lio/appmetrica/analytics/impl/Ol;->a:I

    .line 142
    .line 143
    if-ne v3, p1, :cond_4

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_4
    return-object v2
.end method

.method public final bridge synthetic handle(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cl;->a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/Ol;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.class public Lcom/yandex/metrica/impl/ob/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/impl/ob/fh;

.field private final c:Lcom/yandex/metrica/impl/ob/M0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fh;-><init>()V

    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/gh;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/M0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gh;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gh;->b:Lcom/yandex/metrica/impl/ob/fh;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/gh;->c:Lcom/yandex/metrica/impl/ob/M0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gh;->c:Lcom/yandex/metrica/impl/ob/M0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gh;->b:Lcom/yandex/metrica/impl/ob/fh;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/gh;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/yandex/metrica/impl/ob/eh;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/yandex/metrica/impl/ob/hh;

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/hh;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iget-object v5, v3, Lcom/yandex/metrica/impl/ob/hh;->b:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_0

    .line 83
    .line 84
    new-instance v5, Lcom/yandex/metrica/impl/ob/hh;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/hh;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v5, v3, v4}, Lcom/yandex/metrica/impl/ob/hh;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :catchall_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/yandex/metrica/impl/ob/hh;

    .line 115
    .line 116
    :try_start_0
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/hh;->a:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v5, Lorg/json/JSONObject;

    .line 119
    .line 120
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    const-string v6, "classes"

    .line 124
    .line 125
    :try_start_1
    new-instance v7, Lorg/json/JSONArray;

    .line 126
    .line 127
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/hh;->b:Ljava/util/List;

    .line 128
    .line 129
    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v2, "sdk_list"

    .line 145
    .line 146
    invoke-interface {v0, v2, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

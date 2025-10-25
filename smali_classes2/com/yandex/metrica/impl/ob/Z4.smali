.class public Lcom/yandex/metrica/impl/ob/Z4;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Z4;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Z4;->b:Lcom/yandex/metrica/impl/ob/mn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b8;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->C()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/c9;->g()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lorg/json/JSONArray;

    .line 52
    .line 53
    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move v3, v2

    .line 57
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v3, v7, :cond_1

    .line 62
    .line 63
    new-instance v7, Lcom/yandex/metrica/impl/ob/sb;

    .line 64
    .line 65
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-direct {v7, v8}, Lcom/yandex/metrica/impl/ob/sb;-><init>(Lorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object v5, v4

    .line 79
    :catchall_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Z4;->b()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v5, v3}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->y()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    new-instance v4, Lorg/json/JSONArray;

    .line 94
    .line 95
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Lcom/yandex/metrica/impl/ob/sb;

    .line 113
    .line 114
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/sb;->a()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    .line 123
    .line 124
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v5, "features"

    .line 128
    .line 129
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->r()Lcom/yandex/metrica/impl/ob/a4;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a4;->c(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/c9;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c9;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .line 154
    .line 155
    :catchall_1
    :cond_4
    :goto_3
    return v2
.end method

.method b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/sb;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Z4;->b:Lcom/yandex/metrica/impl/ob/mn;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v3, 0x4000

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0, v3}, Lcom/yandex/metrica/impl/ob/mn;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x18

    .line 31
    .line 32
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    new-instance v2, Lcom/yandex/metrica/impl/ob/rb$a;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/rb$a;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/rb$b;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/rb$b;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    array-length v3, v0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_1
    if-ge v4, v3, :cond_1

    .line 58
    .line 59
    aget-object v5, v0, v4

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/rb;->a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    return-object v1

    .line 72
    :catchall_0
    const/4 v0, 0x0

    .line 73
    return-object v0
.end method

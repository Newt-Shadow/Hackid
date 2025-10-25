.class Lcom/yandex/metrica/impl/ob/m2$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final c:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/m2$f;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/B0;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$f;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$f;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/m2$f;->c:Lcom/yandex/metrica/impl/ob/B0;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "credentials.dat"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->h()Lcom/yandex/metrica/impl/ob/V7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/V7;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/m2$f;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/V7;->a()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$f;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/yandex/metrica/impl/ob/qi;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/qi;->r:Lcom/yandex/metrica/impl/ob/Sh;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/qi;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/m2$f;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4, v0}, Lcom/yandex/metrica/impl/ob/B0;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/io/File;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-object v4, v2

    .line 61
    :goto_0
    if-nez v4, :cond_1

    .line 62
    .line 63
    invoke-static {}, Lbc/a;->b()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    :try_start_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/m2$f;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v5, v0}, Lcom/yandex/metrica/impl/ob/B0;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v3, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/io/File;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    move-object v4, v3

    .line 89
    :catchall_1
    :cond_1
    if-eqz v4, :cond_2

    .line 90
    .line 91
    const-string v0, "device_id"

    .line 92
    .line 93
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v3, "device_id_hash"

    .line 98
    .line 99
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object v6, v2

    .line 104
    move-object v2, v0

    .line 105
    move-object v0, v6

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v0, v2

    .line 108
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/qi$b;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/qi$b;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 124
    .line 125
    .line 126
    :cond_4
    const/4 v0, 0x1

    .line 127
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/qi$b;->b(Z)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$f;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/qi$b;->a()Lcom/yandex/metrica/impl/ob/qi;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "com.yandex.metrica.configuration"

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

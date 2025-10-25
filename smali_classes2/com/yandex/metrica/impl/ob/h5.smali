.class public Lcom/yandex/metrica/impl/ob/h5;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/I1;

.field private final c:Lcom/yandex/metrica/impl/ob/b8;

.field private final d:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->k()Lcom/yandex/metrica/impl/ob/I1;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/h5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/I1;Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/I1;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 5
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/h5;->c:Lcom/yandex/metrica/impl/ob/b8;

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/h5;->b:Lcom/yandex/metrica/impl/ob/I1;

    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/h5;->d:Lcom/yandex/metrica/impl/ob/mn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/h5;->c:Lcom/yandex/metrica/impl/ob/b8;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b8;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Lg;->P()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/c0;->e(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/c0;->c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/h5;->d:Lcom/yandex/metrica/impl/ob/mn;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v5, 0x1e

    .line 60
    .line 61
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/ob/nn;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-object v3, v2

    .line 78
    :goto_1
    if-nez v3, :cond_2

    .line 79
    .line 80
    const-string v3, ""

    .line 81
    .line 82
    :cond_2
    :try_start_1
    const-string v4, "appInstaller"

    .line 83
    .line 84
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 85
    .line 86
    .line 87
    const-string v3, "preloadInfo"

    .line 88
    .line 89
    :try_start_2
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/h5;->b:Lcom/yandex/metrica/impl/ob/I1;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/r0;->b()Lcom/yandex/metrica/impl/ob/v0;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/yandex/metrica/impl/ob/ee;

    .line 96
    .line 97
    iget-boolean v5, v4, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    new-instance v2, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    .line 105
    .line 106
    const-string v5, "trackingId"

    .line 107
    .line 108
    :try_start_3
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    if-lez v5, :cond_3

    .line 120
    .line 121
    const-string v5, "additionalParams"

    .line 122
    .line 123
    :try_start_4
    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 124
    .line 125
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    .line 127
    .line 128
    :catchall_1
    :cond_3
    :try_start_5
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    .line 130
    .line 131
    :catchall_2
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->r()Lcom/yandex/metrica/impl/ob/a4;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/c0;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a4;->b(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/h5;->c:Lcom/yandex/metrica/impl/ob/b8;

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/b8;->b(Z)V

    .line 150
    .line 151
    .line 152
    :cond_4
    const/4 p1, 0x0

    .line 153
    return p1
.end method

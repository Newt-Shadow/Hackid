.class public Lcom/yandex/metrica/impl/ob/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/b2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/b2<",
        "Lcom/yandex/metrica/impl/ob/ee;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ae;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ee;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ae;->a:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v1, "content://com.yandex.preinstallsatellite.appmetrica.provider/preload_info"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const-string v2, "tracking_id"

    .line 32
    .line 33
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v2, "additional_parameters"

    .line 42
    .line 43
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_0

    .line 61
    .line 62
    new-instance v5, Lorg/json/JSONObject;

    .line 63
    .line 64
    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    :cond_0
    move-object v5, v3

    .line 69
    :goto_0
    const-string v2, "Preload info from Satellite: {tracking id = %s, additional parameters = %s}"

    .line 70
    .line 71
    :try_start_3
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/yandex/metrica/impl/ob/ee;

    .line 79
    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    xor-int/lit8 v6, v3, 0x1

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    sget-object v8, Lcom/yandex/metrica/impl/ob/u0;->d:Lcom/yandex/metrica/impl/ob/u0;

    .line 88
    .line 89
    move-object v3, v2

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/yandex/metrica/impl/ob/u0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_1
    const-string v3, "No Preload Info data in Satellite content provider"

    .line 98
    .line 99
    :try_start_4
    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string v3, "No Satellite content provider found"

    .line 106
    .line 107
    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-object v1, v0

    .line 114
    :catchall_2
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ae;->a()Lcom/yandex/metrica/impl/ob/ee;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

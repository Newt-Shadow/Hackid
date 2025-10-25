.class public Lcom/yandex/metrica/impl/ob/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/b2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/b2<",
        "Lcom/yandex/metrica/impl/ob/v3$a;",
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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a2;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/a2;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v2, "content://com.yandex.preinstallsatellite.appmetrica.provider/clids"

    .line 10
    .line 11
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    :catchall_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    :try_start_2
    const-string v4, "clid_key"

    .line 37
    .line 38
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "clid_value"

    .line 47
    .line 48
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_0

    .line 61
    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_0

    .line 67
    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string v6, "Invalid clid {%s : %s}"

    .line 73
    .line 74
    :try_start_3
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v6, v4}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string v4, "Clids from satellite: %s"

    .line 83
    .line 84
    :try_start_4
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v4, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 92
    .line 93
    sget-object v5, Lcom/yandex/metrica/impl/ob/u0;->d:Lcom/yandex/metrica/impl/ob/u0;

    .line 94
    .line 95
    invoke-direct {v4, v3, v5}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 99
    .line 100
    .line 101
    move-object v1, v4

    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception v3

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string v3, "No Satellite content provider found"

    .line 106
    .line 107
    :try_start_5
    new-array v4, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception v3

    .line 117
    move-object v2, v1

    .line 118
    :goto_1
    const-string v4, "Error while getting satellite clids"

    .line 119
    .line 120
    :try_start_6
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v3, v4, v0}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-object v1

    .line 129
    :catchall_3
    move-exception v0

    .line 130
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 131
    .line 132
    .line 133
    throw v0
.end method

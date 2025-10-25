.class public Lcom/yandex/metrica/impl/ob/V7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/g8;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/O7;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/i8;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/i8;-><init>(Lcom/yandex/metrica/impl/ob/O7;)V

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/V7;-><init>(Lcom/yandex/metrica/impl/ob/g8;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/g8;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/g8;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_1
    const-string v1, "DROP TABLE IF EXISTS permissions"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    const/4 v0, 0x0

    .line 16
    :catchall_1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/g8;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/g8;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    const-string v3, "permissions"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v2, v1

    .line 19
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string v4, "name"

    .line 37
    .line 38
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "granted"

    .line 43
    .line 44
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    new-instance v6, Lcom/yandex/metrica/impl/ob/Bd;

    .line 49
    .line 50
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    const-wide/16 v9, 0x1

    .line 59
    .line 60
    cmp-long v5, v7, v9

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v5, 0x0

    .line 67
    :goto_0
    invoke-direct {v6, v4, v5}, Lcom/yandex/metrica/impl/ob/Bd;-><init>(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    if-nez v4, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/g8;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 85
    .line 86
    .line 87
    return-object v3

    .line 88
    :catchall_0
    :cond_2
    move-object v2, v0

    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-object v1, v0

    .line 91
    move-object v2, v1

    .line 92
    :catchall_2
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/V7;->a:Lcom/yandex/metrica/impl/ob/g8;

    .line 93
    .line 94
    invoke-interface {v3, v1}, Lcom/yandex/metrica/impl/ob/g8;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

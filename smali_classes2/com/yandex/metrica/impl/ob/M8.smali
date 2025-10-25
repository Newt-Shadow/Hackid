.class public Lcom/yandex/metrica/impl/ob/M8;
.super Lcom/yandex/metrica/impl/ob/k8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/k8;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/Em;->b:Lcom/yandex/metrica/impl/ob/Em;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Em;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "reports"

    .line 14
    .line 15
    const-string v3, "encrypting_mode"

    .line 16
    .line 17
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v4, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d"

    .line 22
    .line 23
    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/yandex/metrica/impl/ob/Em;->c:Lcom/yandex/metrica/impl/ob/Em;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Em;->a()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v4, Lcom/yandex/metrica/impl/ob/a1;->t:Lcom/yandex/metrica/impl/ob/a1;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "type"

    .line 51
    .line 52
    filled-new-array {v2, v3, v1, v5, v4}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "UPDATE %s SET %s = %d where %s=%d"

    .line 57
    .line 58
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "ALTER TABLE reports ADD COLUMN profile_id TEXT "

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

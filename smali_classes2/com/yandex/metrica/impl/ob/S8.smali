.class public Lcom/yandex/metrica/impl/ob/S8;
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
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/E$b$a;->b:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/E$b$a;->a()I

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
    const-string v3, "battery_charge_type"

    .line 16
    .line 17
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d"

    .line 22
    .line 23
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "collection_mode"

    .line 31
    .line 32
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "ALTER TABLE %s ADD COLUMN %s TEXT"

    .line 37
    .line 38
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v3, "value"

    .line 56
    .line 57
    const-string v4, "type"

    .line 58
    .line 59
    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "UPDATE %s SET %s = \"\" WHERE %s == %d AND %2$s != \"\" AND %2$s IS NOT NULL"

    .line 64
    .line 65
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

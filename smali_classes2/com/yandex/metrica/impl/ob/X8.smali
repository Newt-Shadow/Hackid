.class public Lcom/yandex/metrica/impl/ob/X8;
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
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "reports"

    .line 15
    .line 16
    const-string v3, "open_id"

    .line 17
    .line 18
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d"

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

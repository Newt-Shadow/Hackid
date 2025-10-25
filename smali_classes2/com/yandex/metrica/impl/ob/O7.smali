.class public Lcom/yandex/metrica/impl/ob/O7;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cm;

.field protected final c:Lcom/yandex/metrica/impl/ob/X7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/X7;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Ul;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/O7;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/X7;Lcom/yandex/metrica/impl/ob/cm;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/X7;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 2

    .line 2
    sget v0, Lcom/yandex/metrica/impl/ob/j8;->a:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/O7;->c:Lcom/yandex/metrica/impl/ob/X7;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/O7;->a:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/O7;->b:Lcom/yandex/metrica/impl/ob/cm;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/O7;->b:Lcom/yandex/metrica/impl/ob/cm;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-virtual {v1, v0, v3, v2}, Lcom/yandex/metrica/coreutils/logger/a;->forceE(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/O7;->b:Lcom/yandex/metrica/impl/ob/cm;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O7;->a:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Could not get readable database %s due to an exception. AppMetrica SDK may behave unexpectedly."

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/yandex/metrica/coreutils/logger/a;->forceW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/yandex/metrica/impl/ob/nh;

    .line 35
    .line 36
    const-string v2, "db_read_error"

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/O7;->b:Lcom/yandex/metrica/impl/ob/cm;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-virtual {v1, v0, v3, v2}, Lcom/yandex/metrica/coreutils/logger/a;->forceE(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/O7;->b:Lcom/yandex/metrica/impl/ob/cm;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O7;->a:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Could not get writable database %s due to an exception. AppMetrica SDK may behave unexpectedly."

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/yandex/metrica/coreutils/logger/a;->forceW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/yandex/metrica/impl/ob/nh;

    .line 35
    .line 36
    const-string v2, "db_write_error"

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O7;->c:Lcom/yandex/metrica/impl/ob/X7;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/X7;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O7;->c:Lcom/yandex/metrica/impl/ob/X7;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/X7;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O7;->c:Lcom/yandex/metrica/impl/ob/X7;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/X7;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O7;->c:Lcom/yandex/metrica/impl/ob/X7;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/X7;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

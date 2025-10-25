.class public final Lio/appmetrica/analytics/impl/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Uc;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/co;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/co;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/co;

    .line 5
    .line 6
    const-string p1, "startup_state"

    .line 7
    .line 8
    iput-object p1, p0, Lio/appmetrica/analytics/impl/hk;->b:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lio/appmetrica/analytics/impl/a;

    .line 11
    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->f()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/a;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->b()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->a()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "AES/CBC/PKCS5Padding"

    .line 34
    .line 35
    invoke-direct {v0, v2, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;-><init>(Ljava/lang/String;[B[B)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Tl;Lio/appmetrica/analytics/impl/Lb;)V
    .locals 2

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/co;->a:Lio/appmetrica/analytics/impl/eo;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Lb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Lb;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/co;->a(Ljava/lang/String;)V

    .line 23
    :cond_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Lb;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Lb;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/co;->b(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object p0, p2, Lio/appmetrica/analytics/impl/Lb;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 26
    iget-object p0, p2, Lio/appmetrica/analytics/impl/Lb;->a:Ljava/lang/String;

    .line 27
    iput-object p0, p1, Lio/appmetrica/analytics/impl/Tl;->a:Ljava/lang/String;

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)Lio/appmetrica/analytics/impl/Lb;
    .locals 11

    const-string v0, "value"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "binary_data"

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const-string v5, "data_key = ?"

    new-array v6, v10, [Ljava/lang/String;

    .line 29
    iget-object v7, p0, Lio/appmetrica/analytics/impl/hk;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 30
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v10, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 33
    iget-object v2, p0, Lio/appmetrica/analytics/impl/hk;->c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;->decrypt([B)[B

    move-result-object v0

    .line 34
    new-instance v2, Lio/appmetrica/analytics/impl/Lb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Lb;-><init>()V

    invoke-static {v2, v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Lb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/CloseableUtilsKt;->closeSafely(Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 36
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-object p1, v1

    .line 37
    :catchall_1
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/CloseableUtilsKt;->closeSafely(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/k7;->h()Lio/appmetrica/analytics/impl/j7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/hk;->a(Landroid/database/sqlite/SQLiteDatabase;)Lio/appmetrica/analytics/impl/Lb;

    move-result-object v0

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/Tl;

    new-instance v2, Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/A4;-><init>()V

    .line 4
    new-instance v3, Lio/appmetrica/analytics/impl/C4;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/C4;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    .line 5
    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/Tl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/hk;->a:Lio/appmetrica/analytics/impl/co;

    invoke-static {v2, v1, v0}, Lio/appmetrica/analytics/impl/hk;->a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Tl;Lio/appmetrica/analytics/impl/Lb;)V

    .line 7
    iget-boolean v2, v0, Lio/appmetrica/analytics/impl/Lb;->c:Z

    .line 8
    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/Tl;->p:Z

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Lb;->b:Ljava/lang/String;

    .line 10
    iput-object v0, v1, Lio/appmetrica/analytics/impl/Tl;->r:Ljava/lang/String;

    .line 11
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/Ul;

    .line 12
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 13
    const-class v1, Lio/appmetrica/analytics/impl/Ul;

    .line 14
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Bm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Cm;->d(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v2

    .line 16
    invoke-virtual {v1, p1, v2}, Lio/appmetrica/analytics/impl/Cm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    .line 17
    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

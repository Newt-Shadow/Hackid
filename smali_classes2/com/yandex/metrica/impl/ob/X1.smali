.class public final Lcom/yandex/metrica/impl/ob/X1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/B0;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/X1;->a:Lcom/yandex/metrica/impl/ob/B0;

    .line 7
    .line 8
    const-string v1, "/sbin/"

    .line 9
    .line 10
    const-string v2, "/system/bin/"

    .line 11
    .line 12
    const-string v3, "/system/xbin/"

    .line 13
    .line 14
    const-string v4, "/data/local/xbin/"

    .line 15
    .line 16
    const-string v5, "/data/local/bin/"

    .line 17
    .line 18
    const-string v6, "/system/sd/xbin/"

    .line 19
    .line 20
    const-string v7, "/system/bin/failsafe/"

    .line 21
    .line 22
    const-string v8, "/data/local/"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/yandex/metrica/impl/ob/X1;->b:[Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/X1;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/X1;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "/system/app/Superuser/Superuser.apk"

    .line 10
    .line 11
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "/system/app/Superuser.apk"

    .line 18
    .line 19
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :catchall_0
    :cond_1
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public static c()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/X1;->b:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    const/16 v5, 0x1f

    .line 11
    .line 12
    :try_start_0
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "su"

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v5, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move v4, v2

    .line 46
    :goto_1
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v2
.end method

.class public final Lio/appmetrica/analytics/impl/Kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Function;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ld;

.field public final b:Lio/appmetrica/analytics/impl/Jd;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ld;Lio/appmetrica/analytics/impl/Jd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kd;->a:Lio/appmetrica/analytics/impl/Ld;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kd;->b:Lio/appmetrica/analytics/impl/Jd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {p1}, Lgd/a;->c(Ljava/io/InputStream;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-object p1, v0

    .line 27
    :catchall_1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object v1, v0

    .line 31
    :goto_0
    if-eqz v1, :cond_3

    .line 32
    .line 33
    array-length p1, v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    move p1, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_1
    xor-int/2addr p1, v2

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v1, v0

    .line 45
    :goto_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kd;->b:Lio/appmetrica/analytics/impl/Jd;

    .line 48
    .line 49
    new-instance v2, Lio/appmetrica/analytics/impl/Md;

    .line 50
    .line 51
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Kd;->a:Lio/appmetrica/analytics/impl/Ld;

    .line 52
    .line 53
    invoke-direct {v2, v1, v3}, Lio/appmetrica/analytics/impl/Md;-><init>([BLio/appmetrica/analytics/impl/Ld;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lio/appmetrica/analytics/impl/Jd;->a(Lio/appmetrica/analytics/impl/Md;)Lio/appmetrica/analytics/impl/k6;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/Base64Utils;->compressBase64([B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 68
    :catchall_2
    :cond_3
    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kd;->a(Ljava/io/File;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.class public final Lcb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcb/f;

    invoke-direct {v0}, Lcb/f;-><init>()V

    sput-object v0, Lcb/f;->a:Lcb/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcb/f;->e(Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcb/f;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcb/f;->r(Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcb/f;Lcb/c;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcb/f;->s(Lcb/c;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcb/f;->y(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcb/f;->w(Landroid/content/Context;Landroid/net/Uri;Z)Lcb/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final f(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, "/file_picker/"

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcb/f;->a:Lcb/f;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcb/f;->z(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "There was an error while clearing cached files: "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "FilePickerUtils"

    .line 58
    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public static final g(Landroid/net/Uri;ILandroid/content/Context;)Landroid/net/Uri;
    .locals 5

    .line 1
    const-string v0, "originalImageUri"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    sget-object v1, Lcb/f;->a:Lcb/f;

    .line 20
    .line 21
    invoke-direct {v1, p2, p0}, Lcb/f;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p2, p0}, Lcb/f;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v3, p0, p1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :try_start_2
    invoke-static {v0, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    :try_start_4
    invoke-static {v0, p0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method private final h(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd_HHmmss"

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "IMAGE_"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x5f

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const/16 v3, 0x2e

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, p2}, Lcb/f;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "createTempFile(...)"

    .line 73
    .line 74
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method private final i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcb/f;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "getDefault(...)"

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "toUpperCase(...)"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p2, "PNG"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p2, "WEBP"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 49
    .line 50
    :goto_0
    return-object p1
.end method

.method private final j(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lrd/l;

    .line 9
    .line 10
    const-string v1, ":"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Lrd/l;->g(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    move v3, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v3, v1

    .line 56
    :goto_0
    if-nez v3, :cond_0

    .line 57
    .line 58
    check-cast p1, Ljava/lang/Iterable;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v2

    .line 65
    invoke-static {p1, v0}, Lyc/m;->i0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 75
    .line 76
    new-array v0, v1, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, [Ljava/lang/String;

    .line 83
    .line 84
    array-length v0, p1

    .line 85
    const/4 v1, 0x2

    .line 86
    if-lt v0, v1, :cond_3

    .line 87
    .line 88
    aget-object p1, p1, v2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 92
    .line 93
    const-string v0, "separator"

    .line 94
    .line 95
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-object p1
.end method

.method private final k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static final m(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "_display_name"

    .line 2
    .line 3
    const-string v1, "uri"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "context"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "content"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 p1, 0x1

    .line 31
    new-array v5, p1, [Ljava/lang/String;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    aput-object v0, v5, p1

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v4, p0

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    :try_start_1
    move-object v2, p1

    .line 47
    check-cast v2, Landroid/database/Cursor;

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v0, v1

    .line 67
    :goto_0
    :try_start_2
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    :try_start_3
    invoke-static {p1, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    move-object v1, v0

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 78
    :catchall_2
    move-exception v0

    .line 79
    :try_start_5
    invoke-static {p1, p0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 83
    :cond_1
    move-object v0, v1

    .line 84
    :goto_2
    if-nez v0, :cond_3

    .line 85
    .line 86
    :try_start_6
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_2

    .line 91
    .line 92
    const/16 p1, 0x2f

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-static {p0, p1, v1, v2, v1}, Lrd/n;->I0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 99
    goto :goto_4

    .line 100
    :catch_0
    move-exception p0

    .line 101
    move-object v1, v0

    .line 102
    goto :goto_3

    .line 103
    :catch_1
    move-exception p0

    .line 104
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v0, "Failed to handle file name: "

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p1, "FilePickerUtils"

    .line 122
    .line 123
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_4
    move-object v0, v1

    .line 127
    :cond_3
    return-object v0
.end method

.method public static final n(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "con"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1e

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-ge v1, v2, :cond_7

    .line 18
    .line 19
    sget-object v1, Lcb/f;->a:Lcb/f;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcb/f;->t(Landroid/net/Uri;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_7

    .line 26
    .line 27
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v6, "downloads"

    .line 42
    .line 43
    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Lrd/l;

    .line 54
    .line 55
    const-string v7, "^ms[df]:.*"

    .line 56
    .line 57
    invoke-direct {v6, v7}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v1}, Lrd/l;->d(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-static {p0, p1}, Lcb/f;->m(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x2f

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_2
    const-string p0, "raw:"

    .line 92
    .line 93
    invoke-static {v1, p0, v5, v3, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    new-instance p0, Lrd/l;

    .line 100
    .line 101
    const-string p1, ":"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, v5}, Lrd/l;->g(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    move v0, v4

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    move v0, v5

    .line 145
    :goto_0
    if-nez v0, :cond_3

    .line 146
    .line 147
    check-cast p0, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    add-int/2addr p1, v4

    .line 154
    invoke-static {p0, p1}, Lyc/m;->i0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    :goto_1
    check-cast p0, Ljava/util/Collection;

    .line 164
    .line 165
    new-array p1, v5, [Ljava/lang/String;

    .line 166
    .line 167
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, [Ljava/lang/String;

    .line 172
    .line 173
    aget-object p0, p0, v4

    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_6
    return-object v0

    .line 177
    :cond_7
    sget-object p1, Lcb/f;->a:Lcb/f;

    .line 178
    .line 179
    invoke-direct {p1, p0}, Lcb/f;->q(Landroid/net/Uri;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 184
    .line 185
    const-string v6, "separator"

    .line 186
    .line 187
    invoke-static {v2, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v2, v5, v3, v0}, Lrd/n;->w(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    const-string v8, "substring(...)"

    .line 195
    .line 196
    if-eqz v7, :cond_8

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    sub-int/2addr v7, v4

    .line 203
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    invoke-direct {p1, p0}, Lcb/f;->j(Landroid/net/Uri;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {v2, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p0, v2, v5, v3, v0}, Lrd/n;->w(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    sub-int/2addr p1, v4

    .line 228
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {p0, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-lez p1, :cond_a

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_a
    move v4, v5

    .line 243
    :goto_2
    if-eqz v4, :cond_d

    .line 244
    .line 245
    invoke-static {v1, p0, v5, v3, v0}, Lrd/n;->w(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_b

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    invoke-static {v2, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {p0, v2, v5, v3, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_c

    .line 260
    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_3

    .line 277
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :cond_d
    :goto_3
    return-object v1
.end method

.method private final o(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/Tika;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tika/Tika;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 18
    :goto_1
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lorg/apache/tika/Tika;->detect([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "detect(...)"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tika/Tika;->getDetector()Lorg/apache/tika/detect/Detector;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2}, Lorg/apache/tika/io/TikaInputStream;->get([B)Lorg/apache/tika/io/TikaInputStream;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v1, Lorg/apache/tika/metadata/Metadata;

    .line 39
    .line 40
    invoke-direct {v1}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "resourceName"

    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, p2, v1}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "toString(...)"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method

.method private final q(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string p1, ":"

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x6

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lrd/n;->z0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x2f

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-le v0, v2, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "primary"

    .line 45
    .line 46
    invoke-static {v3, v0, v2}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "/storage/"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_0
    return-object p1
.end method

.method private final r(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const-string v2, "selectedItems"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const-class v0, Landroid/os/Parcelable;

    .line 10
    .line 11
    invoke-static {p1, v2, v0}, Lcb/e;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private final s(Lcb/c;Ljava/util/List;)V
    .locals 1

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p2, "unknown_path"

    .line 17
    .line 18
    const-string v0, "Failed to retrieve path."

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final t(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.providers.downloads.documents"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public static final u(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uri"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcb/f;->a:Lcb/f;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcb/f;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    const-string v0, "jpg"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "jpeg"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string v0, "png"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string v0, "webp"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :cond_1
    const/4 p1, 0x1

    .line 54
    :cond_2
    return p1
.end method

.method private final v(Ljava/io/File;Lcb/a$a;)V
    .locals 6

    .line 1
    const-string v0, "FilePickerUtils"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-int v1, v1

    .line 8
    new-array v2, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 12
    .line 13
    new-instance v5, Ljava/io/FileInputStream;

    .line 14
    .line 15
    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v4, v2, p1, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Failed to close file streams: "

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "File not found: "

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p2, v2}, Lcb/a$a;->b([B)Lcb/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-exception p1

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "Failed to load bytes into memory with error "

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, ". Probably the file is too big to fit device memory. Bytes won\'t be added to the file this time."

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void
.end method

.method public static final w(Landroid/content/Context;Landroid/net/Uri;Z)Lcb/a;
    .locals 13

    .line 1
    const-string v0, "Failed to close file streams: "

    .line 2
    .line 3
    const-string v1, "FilePickerUtils"

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "uri"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcb/a$a;

    .line 16
    .line 17
    invoke-direct {v2}, Lcb/a$a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Lcb/f;->m(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, "/file_picker/"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v5, 0x2f

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    const-string v5, "unamed"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v5, v3

    .line 63
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-instance v5, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_a

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_1

    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 100
    .line 101
    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    .line 105
    .line 106
    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .line 108
    .line 109
    const/16 v9, 0x2000

    .line 110
    .line 111
    new-array v9, v9, [B

    .line 112
    .line 113
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v9}, Ljava/io/InputStream;->read([B)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-ltz v10, :cond_2

    .line 121
    .line 122
    const/4 v11, 0x0

    .line 123
    invoke-virtual {v8, v9, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    if-eqz v6, :cond_3

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 143
    .line 144
    .line 145
    goto/16 :goto_c

    .line 146
    .line 147
    :catch_0
    move-exception p0

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    goto/16 :goto_c

    .line 171
    .line 172
    :catchall_0
    move-exception p1

    .line 173
    move-object v6, v7

    .line 174
    goto :goto_2

    .line 175
    :catch_1
    move-exception p1

    .line 176
    goto :goto_3

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    :goto_2
    move-object v12, p1

    .line 179
    move-object p1, p0

    .line 180
    move-object p0, v12

    .line 181
    goto :goto_8

    .line 182
    :catch_2
    move-exception p1

    .line 183
    move-object v7, v6

    .line 184
    :goto_3
    move-object v12, p1

    .line 185
    move-object p1, p0

    .line 186
    move-object p0, v12

    .line 187
    goto :goto_4

    .line 188
    :catchall_2
    move-exception p0

    .line 189
    move-object p1, v6

    .line 190
    goto :goto_8

    .line 191
    :catch_3
    move-exception p0

    .line 192
    move-object p1, v6

    .line 193
    move-object v7, p1

    .line 194
    :goto_4
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "Failed to retrieve and cache file: "

    .line 200
    .line 201
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 216
    .line 217
    .line 218
    if-eqz v7, :cond_4

    .line 219
    .line 220
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    if-eqz p0, :cond_4

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :catch_4
    move-exception p0

    .line 231
    goto :goto_6

    .line 232
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 235
    .line 236
    .line 237
    :cond_5
    if-eqz p1, :cond_6

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    :cond_6
    :goto_7
    return-object v6

    .line 266
    :catchall_3
    move-exception p0

    .line 267
    move-object v6, v7

    .line 268
    :goto_8
    if-eqz v6, :cond_7

    .line 269
    .line 270
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    if-eqz p2, :cond_7

    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    .line 277
    .line 278
    .line 279
    goto :goto_9

    .line 280
    :catch_5
    move-exception p1

    .line 281
    goto :goto_a

    .line 282
    :cond_7
    :goto_9
    if-eqz v6, :cond_8

    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 285
    .line 286
    .line 287
    :cond_8
    if-eqz p1, :cond_9

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 290
    .line 291
    .line 292
    goto :goto_b

    .line 293
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .line 314
    .line 315
    :cond_9
    :goto_b
    throw p0

    .line 316
    :cond_a
    :goto_c
    if-eqz p2, :cond_b

    .line 317
    .line 318
    sget-object p0, Lcb/f;->a:Lcb/f;

    .line 319
    .line 320
    invoke-direct {p0, v5, v2}, Lcb/f;->v(Ljava/io/File;Lcb/a$a;)V

    .line 321
    .line 322
    .line 323
    :cond_b
    invoke-virtual {v2, v4}, Lcb/a$a;->d(Ljava/lang/String;)Lcb/a$a;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p0, v3}, Lcb/a$a;->c(Ljava/lang/String;)Lcb/a$a;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {p0, p1}, Lcb/a$a;->f(Landroid/net/Uri;)Lcb/a$a;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 336
    .line 337
    .line 338
    move-result-wide p1

    .line 339
    invoke-virtual {p0, p1, p2}, Lcb/a$a;->e(J)Lcb/a$a;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Lcb/a$a;->a()Lcb/a;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    return-object p0
.end method

.method private final y(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 2

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getApplicationContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2}, Lcb/f;->u(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3, p1}, Lcb/f;->g(Landroid/net/Uri;ILandroid/content/Context;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    return-object p2
.end method

.method private final z(Ljava/io/File;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-array v0, v1, [Ljava/io/File;

    .line 30
    .line 31
    :cond_1
    array-length v2, v0

    .line 32
    :goto_0
    if-ge v1, v2, :cond_2

    .line 33
    .line 34
    aget-object v3, v0, v1

    .line 35
    .line 36
    invoke-direct {p0, v3}, Lcb/f;->z(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lcb/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p6}, Lcb/c;->v(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcb/c;->j:Lcb/c$a;

    .line 18
    .line 19
    invoke-virtual {p1, p6}, Lcb/c$a;->a(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p6, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    .line 26
    .line 27
    invoke-direct {p6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "android.intent.category.OPENABLE"

    .line 31
    .line 32
    invoke-virtual {p6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v2, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    move v2, v1

    .line 49
    :goto_1
    if-nez v2, :cond_3

    .line 50
    .line 51
    const-string v2, "android.intent.extra.TITLE"

    .line 52
    .line 53
    invoke-virtual {p6, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1, p5}, Lcb/c;->q([B)V

    .line 57
    .line 58
    .line 59
    const-string v2, "dir"

    .line 60
    .line 61
    invoke-static {v2, p3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    const-string v2, "FilePickerDelegate"

    .line 66
    .line 67
    if-nez p3, :cond_4

    .line 68
    .line 69
    :try_start_0
    invoke-direct {p0, p2, p5}, Lcb/f;->o(Ljava/lang/String;[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p6, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception p2

    .line 78
    const-string p3, "*/*"

    .line 79
    .line 80
    invoke-virtual {p6, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p5, "Failed to detect mime type. "

    .line 89
    .line 90
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 104
    .line 105
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    :cond_5
    move v0, v1

    .line 112
    :cond_6
    if-nez v0, :cond_7

    .line 113
    .line 114
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const/16 p3, 0x1a

    .line 117
    .line 118
    if-lt p2, p3, :cond_7

    .line 119
    .line 120
    const-string p2, "android.provider.extra.INITIAL_URI"

    .line 121
    .line 122
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-virtual {p1}, Lcb/c;->i()Landroid/app/Activity;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p6, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    if-eqz p2, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1}, Lcb/c;->i()Landroid/app/Activity;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    sget-object p2, Lcb/c;->j:Lcb/c$a;

    .line 148
    .line 149
    invoke-virtual {p2}, Lcb/c$a;->c()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {p1, p6, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    const-string p2, "Can\'t find a valid activity to handle the request. Make sure you\'ve a file explorer installed."

    .line 158
    .line 159
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    const-string p2, "invalid_format_type"

    .line 163
    .line 164
    const-string p3, "Can\'t handle the provided file type."

    .line 165
    .line 166
    invoke-virtual {p1, p2, p3}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void
.end method

.method public final B(Lcb/c;)V
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "dir"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "image/*"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v1, "android.intent.extra.MIME_TYPES"

    .line 45
    .line 46
    const-string v2, "multi-pick"

    .line 47
    .line 48
    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v5, "android.intent.action.PICK"

    .line 56
    .line 57
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcb/c;->n()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcb/c;->n()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    const/4 v3, 0x2

    .line 124
    const-string v5, ","

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static {v2, v5, v4, v3, v6}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    move-object v7, v2

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    move-object v7, v6

    .line 136
    :goto_0
    if-eqz v7, :cond_6

    .line 137
    .line 138
    filled-new-array {v5}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v11, 0x6

    .line 145
    const/4 v12, 0x0

    .line 146
    invoke-static/range {v7 .. v12}, Lrd/n;->z0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    check-cast v2, Ljava/lang/Iterable;

    .line 153
    .line 154
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    move-object v6, v5

    .line 174
    check-cast v6, Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-lez v6, :cond_4

    .line 181
    .line 182
    const/4 v6, 0x1

    .line 183
    goto :goto_2

    .line 184
    :cond_4
    move v6, v4

    .line 185
    :goto_2
    if-eqz v6, :cond_3

    .line 186
    .line 187
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2}, Lcb/c;->p(Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    invoke-virtual {p1}, Lcb/c;->j()Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1}, Lcb/c;->j()Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 214
    .line 215
    const-string v5, "android.intent.action.OPEN_DOCUMENT"

    .line 216
    .line 217
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v5, "android.intent.category.OPENABLE"

    .line 221
    .line 222
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcb/c;->k()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcb/c;->n()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcb/c;->n()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lcb/c;->j()Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_8

    .line 251
    .line 252
    new-array v3, v4, [Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, [Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcb/c;->i()Landroid/app/Activity;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_9

    .line 276
    .line 277
    invoke-virtual {p1}, Lcb/c;->i()Landroid/app/Activity;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    sget-object v1, Lcb/c;->j:Lcb/c$a;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcb/c$a;->b()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    const-string v0, "FilePickerDelegate"

    .line 292
    .line 293
    const-string v1, "Can\'t find a valid activity to handle the request. Make sure you\'ve a file explorer installed."

    .line 294
    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    const-string v0, "invalid_format_type"

    .line 299
    .line 300
    const-string v1, "Can\'t handle the provided file type."

    .line 301
    .line 302
    invoke-virtual {p1, v0, v1}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_4
    return-void
.end method

.method public final C(Lcb/c;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p7}, Lcb/c;->v(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcb/c;->j:Lcb/c$a;

    .line 19
    .line 20
    invoke-virtual {p1, p7}, Lcb/c$a;->a(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcb/c;->w(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    if-eqz p3, :cond_3

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p1, p2}, Lcb/c;->u(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    if-eqz p4, :cond_4

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, p2}, Lcb/c;->t(Z)V

    .line 49
    .line 50
    .line 51
    :cond_4
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-virtual {p1, p5}, Lcb/c;->p(Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    if-eqz p6, :cond_6

    .line 57
    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p1, p2}, Lcb/c;->r(I)V

    .line 65
    .line 66
    .line 67
    :cond_6
    if-eqz p1, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcb/f;->B(Lcb/c;)V

    .line 70
    .line 71
    .line 72
    :cond_7
    return-void
.end method

.method public final D(Landroid/content/Context;Landroid/net/Uri;[B)Landroid/net/Uri;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uri"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    sget-object p3, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p2

    .line 30
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :catchall_1
    move-exception p3

    .line 32
    invoke-static {p1, p2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p3

    .line 36
    :cond_0
    :goto_0
    const/4 p3, 0x0

    .line 37
    invoke-static {p1, p3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-object p2
.end method

.method public final l([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/Tika;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tika/Tika;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/tika/Tika;->detect([B)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-static {p1, v2, v0, v1, v0}, Lrd/n;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final p(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 14
    :goto_1
    if-eqz v1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_2
    if-ge v0, v2, :cond_4

    .line 28
    .line 29
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "Custom file type "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " is unsupported and will be ignored."

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "FilePickerUtils"

    .line 74
    .line 75
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    return-object v1
.end method

.method public final x(Lcb/c;Landroid/app/Activity;Landroid/content/Intent;IZLjava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object v3, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "activity"

    .line 8
    .line 9
    move-object v4, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "type"

    .line 14
    .line 15
    move-object/from16 v7, p6

    .line 16
    .line 17
    invoke-static {v7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    new-instance v11, Lcb/f$a;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v1, v11

    .line 34
    move-object v2, p3

    .line 35
    move/from16 v5, p4

    .line 36
    .line 37
    move/from16 v6, p5

    .line 38
    .line 39
    invoke-direct/range {v1 .. v8}, Lcb/f$a;-><init>(Landroid/content/Intent;Lcb/c;Landroid/app/Activity;IZLjava/lang/String;Lad/e;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    const/4 v2, 0x0

    .line 44
    move-object p1, v0

    .line 45
    move-object p2, v9

    .line 46
    move-object p3, v10

    .line 47
    move-object/from16 p4, v11

    .line 48
    .line 49
    move/from16 p5, v1

    .line 50
    .line 51
    move-object/from16 p6, v2

    .line 52
    .line 53
    invoke-static/range {p1 .. p6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 54
    .line 55
    .line 56
    return-void
.end method

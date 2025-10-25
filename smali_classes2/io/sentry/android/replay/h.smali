.class public final Lio/sentry/android/replay/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/h$a;
    }
.end annotation


# static fields
.field public static final j:Lio/sentry/android/replay/h$a;

.field public static final k:I


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/protocol/r;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/Object;

.field private e:Lio/sentry/android/replay/video/c;

.field private final f:Lxc/d;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/LinkedHashMap;

.field private final i:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/h;->j:Lio/sentry/android/replay/h$a;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/h;->k:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Lio/sentry/protocol/r;)V
    .locals 1

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "replayId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 15
    .line 16
    iput-object p2, p0, Lio/sentry/android/replay/h;->b:Lio/sentry/protocol/r;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/sentry/android/replay/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/sentry/android/replay/h;->d:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p1, Lio/sentry/android/replay/h$d;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lio/sentry/android/replay/h$d;-><init>(Lio/sentry/android/replay/h;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lio/sentry/android/replay/h;->f:Lxc/d;

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 50
    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    new-instance p1, Lio/sentry/android/replay/h$b;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lio/sentry/android/replay/h$b;-><init>(Lio/sentry/android/replay/h;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lio/sentry/android/replay/h;->i:Lxc/d;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic a(Lio/sentry/android/replay/h;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/replay/h;->k(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lio/sentry/android/replay/h;)Lio/sentry/s5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lio/sentry/android/replay/h;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/h;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lio/sentry/android/replay/h;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/h;->e(Ljava/io/File;JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic j(Lio/sentry/android/replay/h;JJIIIIILjava/io/File;ILjava/lang/Object;)Lio/sentry/android/replay/b;
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    move/from16 v8, p5

    .line 19
    .line 20
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, ".mp4"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v13, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move/from16 v8, p5

    .line 38
    .line 39
    move-object/from16 v13, p10

    .line 40
    .line 41
    :goto_0
    move-object v3, p0

    .line 42
    move-wide v4, p1

    .line 43
    move-wide/from16 v6, p3

    .line 44
    .line 45
    move/from16 v8, p5

    .line 46
    .line 47
    move/from16 v9, p6

    .line 48
    .line 49
    move/from16 v10, p7

    .line 50
    .line 51
    move/from16 v11, p8

    .line 52
    .line 53
    move/from16 v12, p9

    .line 54
    .line 55
    invoke-virtual/range {v3 .. v13}, Lio/sentry/android/replay/h;->h(JJIIIIILjava/io/File;)Lio/sentry/android/replay/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private final k(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "Failed to delete replay frame: %s"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v4, v3, v5

    .line 26
    .line 27
    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    iget-object v2, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 33
    .line 34
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v2, v3, v1, v0, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method private final q(Lio/sentry/android/replay/i;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/replay/i;->b()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lio/sentry/android/replay/h;->d:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const-string v3, "bitmap"

    .line 25
    .line 26
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lio/sentry/android/replay/video/c;->b(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v1

    .line 42
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    iget-object v1, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 45
    .line 46
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v3, "Unable to decode bitmap and encode it into a video, skipping frame"

    .line 53
    .line 54
    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/android/replay/video/c;->i()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 13
    .line 14
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    iget-object v0, p0, Lio/sentry/android/replay/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public final e(Ljava/io/File;JLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "screenshot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/sentry/android/replay/i;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lio/sentry/android/replay/i;-><init>(Ljava/io/File;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Landroid/graphics/Bitmap;JLjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "bitmap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ".jpg"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/io/FileOutputStream;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    .line 64
    iget-object v3, p0, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 65
    .line 66
    invoke-virtual {v3}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lio/sentry/u5;->h()Lio/sentry/u5$a;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v3, v3, Lio/sentry/u5$a;->screenshotQuality:I

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-static {v1, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, p2, p3, p4}, Lio/sentry/android/replay/h;->e(Ljava/io/File;JLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :catchall_1
    move-exception p2

    .line 95
    invoke-static {v1, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p2

    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(JJIIIIILjava/io/File;)Lio/sentry/android/replay/b;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v0, p10

    .line 6
    .line 7
    const-string v4, "videoFile"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-wide/16 v13, 0x0

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->length()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    cmp-long v4, v4, v13

    .line 25
    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v4, v1, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v15, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v0, v1, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 48
    .line 49
    const-string v3, "No captured frames, skipping generating a video segment"

    .line 50
    .line 51
    new-array v4, v12, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v15

    .line 57
    :cond_1
    iget-object v11, v1, Lio/sentry/android/replay/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v11

    .line 60
    :try_start_0
    new-instance v10, Lio/sentry/android/replay/video/c;

    .line 61
    .line 62
    iget-object v9, v1, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 63
    .line 64
    new-instance v16, Lio/sentry/android/replay/video/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x20

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    move-object/from16 v4, v16

    .line 73
    .line 74
    move-object/from16 v5, p10

    .line 75
    .line 76
    move/from16 v6, p7

    .line 77
    .line 78
    move/from16 v7, p6

    .line 79
    .line 80
    move/from16 v8, p8

    .line 81
    .line 82
    move-object/from16 v20, v9

    .line 83
    .line 84
    move/from16 v9, p9

    .line 85
    .line 86
    move-object/from16 p5, v10

    .line 87
    .line 88
    move-object/from16 v10, v17

    .line 89
    .line 90
    move-object/from16 v17, v11

    .line 91
    .line 92
    move/from16 v11, v18

    .line 93
    .line 94
    move v15, v12

    .line 95
    move-object/from16 v12, v19

    .line 96
    .line 97
    :try_start_1
    invoke-direct/range {v4 .. v12}, Lio/sentry/android/replay/video/a;-><init>(Ljava/io/File;IIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x4

    .line 102
    const/4 v9, 0x0

    .line 103
    move-object/from16 v4, p5

    .line 104
    .line 105
    move-object/from16 v5, v20

    .line 106
    .line 107
    move-object/from16 v6, v16

    .line 108
    .line 109
    invoke-direct/range {v4 .. v9}, Lio/sentry/android/replay/video/c;-><init>(Lio/sentry/s5;Lio/sentry/android/replay/video/a;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p5 .. p5}, Lio/sentry/android/replay/video/c;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    monitor-exit v17

    .line 116
    move-object/from16 v4, p5

    .line 117
    .line 118
    iput-object v4, v1, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 119
    .line 120
    const/16 v4, 0x3e8

    .line 121
    .line 122
    int-to-long v4, v4

    .line 123
    move/from16 v6, p8

    .line 124
    .line 125
    int-to-long v6, v6

    .line 126
    div-long/2addr v4, v6

    .line 127
    iget-object v6, v1, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {v6}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Lio/sentry/android/replay/i;

    .line 134
    .line 135
    add-long v7, v2, p1

    .line 136
    .line 137
    invoke-static {v2, v3, v7, v8}, Lod/g;->l(JJ)Lod/f;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2, v4, v5}, Lod/g;->j(Lod/d;J)Lod/d;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lod/d;->g()J

    .line 146
    .line 147
    .line 148
    move-result-wide v9

    .line 149
    invoke-virtual {v2}, Lod/d;->i()J

    .line 150
    .line 151
    .line 152
    move-result-wide v11

    .line 153
    invoke-virtual {v2}, Lod/d;->l()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    cmp-long v16, v2, v13

    .line 158
    .line 159
    if-lez v16, :cond_2

    .line 160
    .line 161
    cmp-long v17, v9, v11

    .line 162
    .line 163
    if-lez v17, :cond_3

    .line 164
    .line 165
    :cond_2
    if-gez v16, :cond_b

    .line 166
    .line 167
    cmp-long v16, v11, v9

    .line 168
    .line 169
    if-gtz v16, :cond_b

    .line 170
    .line 171
    :cond_3
    move/from16 v16, v15

    .line 172
    .line 173
    :goto_0
    iget-object v13, v1, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_7

    .line 184
    .line 185
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    check-cast v14, Lio/sentry/android/replay/i;

    .line 190
    .line 191
    add-long v21, v9, v4

    .line 192
    .line 193
    invoke-virtual {v14}, Lio/sentry/android/replay/i;->c()J

    .line 194
    .line 195
    .line 196
    move-result-wide v23

    .line 197
    cmp-long v17, v9, v23

    .line 198
    .line 199
    if-gtz v17, :cond_5

    .line 200
    .line 201
    cmp-long v17, v23, v21

    .line 202
    .line 203
    if-gtz v17, :cond_5

    .line 204
    .line 205
    const/16 v17, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    move/from16 v17, v15

    .line 209
    .line 210
    :goto_1
    if-eqz v17, :cond_6

    .line 211
    .line 212
    move-object v6, v14

    .line 213
    goto :goto_2

    .line 214
    :cond_6
    invoke-virtual {v14}, Lio/sentry/android/replay/i;->c()J

    .line 215
    .line 216
    .line 217
    move-result-wide v23

    .line 218
    cmp-long v14, v23, v21

    .line 219
    .line 220
    if-lez v14, :cond_4

    .line 221
    .line 222
    :cond_7
    :goto_2
    invoke-direct {v1, v6}, Lio/sentry/android/replay/h;->q(Lio/sentry/android/replay/i;)Z

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    if-eqz v13, :cond_8

    .line 227
    .line 228
    add-int/lit8 v16, v16, 0x1

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_8
    if-eqz v6, :cond_9

    .line 232
    .line 233
    invoke-virtual {v6}, Lio/sentry/android/replay/i;->b()Ljava/io/File;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    invoke-direct {v1, v13}, Lio/sentry/android/replay/h;->k(Ljava/io/File;)V

    .line 238
    .line 239
    .line 240
    iget-object v13, v1, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v13, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    const/4 v6, 0x0

    .line 246
    :cond_9
    :goto_3
    cmp-long v13, v9, v11

    .line 247
    .line 248
    if-eqz v13, :cond_a

    .line 249
    .line 250
    add-long/2addr v9, v2

    .line 251
    goto :goto_0

    .line 252
    :cond_a
    move/from16 v12, v16

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_b
    move v12, v15

    .line 256
    :goto_4
    if-nez v12, :cond_c

    .line 257
    .line 258
    iget-object v2, v1, Lio/sentry/android/replay/h;->a:Lio/sentry/s5;

    .line 259
    .line 260
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 265
    .line 266
    const-string v4, "Generated a video with no frames, not capturing a replay segment"

    .line 267
    .line 268
    new-array v5, v15, [Ljava/lang/Object;

    .line 269
    .line 270
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v1, v0}, Lio/sentry/android/replay/h;->k(Ljava/io/File;)V

    .line 274
    .line 275
    .line 276
    const/4 v0, 0x0

    .line 277
    return-object v0

    .line 278
    :cond_c
    iget-object v2, v1, Lio/sentry/android/replay/h;->d:Ljava/lang/Object;

    .line 279
    .line 280
    monitor-enter v2

    .line 281
    :try_start_2
    iget-object v3, v1, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 282
    .line 283
    if-eqz v3, :cond_d

    .line 284
    .line 285
    invoke-virtual {v3}, Lio/sentry/android/replay/video/c;->i()V

    .line 286
    .line 287
    .line 288
    :cond_d
    iget-object v3, v1, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 289
    .line 290
    if-eqz v3, :cond_e

    .line 291
    .line 292
    invoke-virtual {v3}, Lio/sentry/android/replay/video/c;->c()J

    .line 293
    .line 294
    .line 295
    move-result-wide v13

    .line 296
    const/4 v3, 0x0

    .line 297
    goto :goto_5

    .line 298
    :cond_e
    const/4 v3, 0x0

    .line 299
    const-wide/16 v13, 0x0

    .line 300
    .line 301
    :goto_5
    iput-object v3, v1, Lio/sentry/android/replay/h;->e:Lio/sentry/android/replay/video/c;

    .line 302
    .line 303
    sget-object v3, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    .line 305
    monitor-exit v2

    .line 306
    invoke-virtual {v1, v7, v8}, Lio/sentry/android/replay/h;->x(J)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    new-instance v2, Lio/sentry/android/replay/b;

    .line 310
    .line 311
    invoke-direct {v2, v0, v12, v13, v14}, Lio/sentry/android/replay/b;-><init>(Ljava/io/File;IJ)V

    .line 312
    .line 313
    .line 314
    return-object v2

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    monitor-exit v2

    .line 317
    throw v0

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    goto :goto_6

    .line 320
    :catchall_2
    move-exception v0

    .line 321
    move-object/from16 v17, v11

    .line 322
    .line 323
    :goto_6
    monitor-exit v17

    .line 324
    throw v0
.end method

.method public final s()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/h;->i:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/h;->f:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method public final declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "key"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/replay/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->u()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->u()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->u()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    sget-object v4, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    new-instance v5, Ljava/io/InputStreamReader;

    .line 63
    .line 64
    new-instance v6, Ljava/io/FileInputStream;

    .line 65
    .line 66
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v5, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    instance-of v0, v5, Ljava/io/BufferedReader;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    check-cast v5, Ljava/io/BufferedReader;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    .line 80
    .line 81
    const/16 v4, 0x2000

    .line 82
    .line 83
    invoke-direct {v0, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    .line 85
    .line 86
    move-object v5, v0

    .line 87
    :goto_1
    :try_start_2
    invoke-static {v5}, Lgd/n;->c(Ljava/io/BufferedReader;)Lqd/e;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v4, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-interface {v0}, Lqd/e;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    move-object v7, v6

    .line 108
    check-cast v7, Ljava/lang/String;

    .line 109
    .line 110
    new-array v8, v1, [Ljava/lang/String;

    .line 111
    .line 112
    const-string v6, "="

    .line 113
    .line 114
    aput-object v6, v8, v2

    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x2

    .line 118
    const/4 v11, 0x2

    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-static/range {v7 .. v12}, Lrd/n;->z0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v7, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v6}, Lxc/k;->c()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v6}, Lxc/k;->d()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    :try_start_3
    invoke-static {v5, v3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catchall_0
    move-exception p1

    .line 157
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :catchall_1
    move-exception p2

    .line 159
    :try_start_5
    invoke-static {v5, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw p2

    .line 163
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 164
    .line 165
    iget-object p2, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    iget-object v0, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :goto_4
    invoke-virtual {p0}, Lio/sentry/android/replay/h;->u()Ljava/io/File;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_7

    .line 181
    .line 182
    iget-object p2, p0, Lio/sentry/android/replay/h;->h:Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    const-string p2, "ongoingSegment.entries"

    .line 189
    .line 190
    invoke-static {v4, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v5, "\n"

    .line 194
    .line 195
    const/4 v6, 0x0

    .line 196
    const/4 v7, 0x0

    .line 197
    const/4 v8, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    sget-object v10, Lio/sentry/android/replay/h$c;->e:Lio/sentry/android/replay/h$c;

    .line 200
    .line 201
    const/16 v11, 0x1e

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    invoke-static/range {v4 .. v12}, Lyc/m;->X(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lid/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const/4 v0, 0x2

    .line 209
    invoke-static {p1, p2, v3, v0, v3}, Lgd/g;->i(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    .line 211
    .line 212
    :cond_7
    monitor-exit p0

    .line 213
    return-void

    .line 214
    :catchall_2
    move-exception p1

    .line 215
    monitor-exit p0

    .line 216
    throw p1
.end method

.method public final x(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/android/replay/h;->g:Ljava/util/List;

    .line 7
    .line 8
    new-instance v2, Lio/sentry/android/replay/h$e;

    .line 9
    .line 10
    invoke-direct {v2, p1, p2, p0, v0}, Lio/sentry/android/replay/h$e;-><init>(JLio/sentry/android/replay/h;Lkotlin/jvm/internal/c0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lyc/m;->A(Ljava/util/List;Lid/l;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    return-object p1
.end method

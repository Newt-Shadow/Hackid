.class public final Ljp/espresso3389/content_resolver/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private final c:Ltd/l0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ltd/z0;->b()Ltd/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ljp/espresso3389/content_resolver/a;->c:Ltd/l0;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic a(Ljp/espresso3389/content_resolver/a;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp/espresso3389/content_resolver/a;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Ljp/espresso3389/content_resolver/a;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljp/espresso3389/content_resolver/a;->h(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljp/espresso3389/content_resolver/a;->j(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljp/espresso3389/content_resolver/a;->l(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(I)Lxc/k;
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Ljp/espresso3389/content_resolver/ByteBufferHelper;->malloc(J)J

    .line 3
    .line 4
    .line 5
    move-result-wide v2

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljp/espresso3389/content_resolver/ByteBufferHelper;->newDirectBuffer(JJ)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private final f(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "flutterPluginBinding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v3, p1

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    check-cast p1, Ljava/io/Closeable;

    .line 32
    .line 33
    :try_start_0
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/database/Cursor;

    .line 35
    .line 36
    const-string v2, "_display_name"

    .line 37
    .line 38
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {p1, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    invoke-static {p1, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_1
    return-object v1
.end method

.method private final g(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "flutterPluginBinding"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private final h(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "flutterPluginBinding"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method private final i(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "flutterPluginBinding"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 20
    .line 21
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method private final j(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljp/espresso3389/content_resolver/a$a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Ljp/espresso3389/content_resolver/a$a;-><init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 23
    .line 24
    return-object p1
.end method

.method private final k(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljp/espresso3389/content_resolver/ByteBufferHelper;->free(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    instance-of v1, v0, Ljp/espresso3389/content_resolver/a$b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljp/espresso3389/content_resolver/a$b;

    .line 9
    .line 10
    iget v2, v1, Ljp/espresso3389/content_resolver/a$b;->d:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Ljp/espresso3389/content_resolver/a$b;->d:I

    .line 20
    .line 21
    move-object v8, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljp/espresso3389/content_resolver/a$b;

    .line 24
    .line 25
    move-object v8, p0

    .line 26
    invoke-direct {v1, p0, v0}, Ljp/espresso3389/content_resolver/a$b;-><init>(Ljp/espresso3389/content_resolver/a;Lad/e;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Ljp/espresso3389/content_resolver/a$b;->b:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    iget v2, v1, Ljp/espresso3389/content_resolver/a$b;->d:I

    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    if-eq v2, v12, :cond_2

    .line 43
    .line 44
    if-ne v2, v10, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    iget-object v2, v1, Ljp/espresso3389/content_resolver/a$b;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ltd/v;

    .line 61
    .line 62
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v11, v12, v11}, Ltd/x;->b(Ltd/t1;ILjava/lang/Object;)Ltd/v;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    new-instance v14, Ljp/espresso3389/content_resolver/a$c;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v2, v14

    .line 81
    move-object v3, p0

    .line 82
    move-object/from16 v4, p1

    .line 83
    .line 84
    move-object/from16 v5, p2

    .line 85
    .line 86
    move-object v6, v0

    .line 87
    invoke-direct/range {v2 .. v7}, Ljp/espresso3389/content_resolver/a$c;-><init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Ltd/v;Lad/e;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, v1, Ljp/espresso3389/content_resolver/a$b;->a:Ljava/lang/Object;

    .line 91
    .line 92
    iput v12, v1, Ljp/espresso3389/content_resolver/a$b;->d:I

    .line 93
    .line 94
    invoke-static {v13, v14, v1}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-ne v2, v9, :cond_4

    .line 99
    .line 100
    return-object v9

    .line 101
    :cond_4
    move-object v2, v0

    .line 102
    :goto_1
    iput-object v11, v1, Ljp/espresso3389/content_resolver/a$b;->a:Ljava/lang/Object;

    .line 103
    .line 104
    iput v10, v1, Ljp/espresso3389/content_resolver/a$b;->d:I

    .line 105
    .line 106
    invoke-interface {v2, v1}, Ltd/s0;->w(Lad/e;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-ne v0, v9, :cond_5

    .line 111
    .line 112
    return-object v9

    .line 113
    :cond_5
    :goto_2
    return-object v0
.end method

.method private final m(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 13

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const-string v0, "uri"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v0, "bufferSize"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object p1, p0, Ljp/espresso3389/content_resolver/a;->c:Ltd/l0;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    new-instance v10, Ljp/espresso3389/content_resolver/a$d;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    move-object v2, v10

    .line 58
    move-object v4, p0

    .line 59
    invoke-direct/range {v2 .. v7}, Ljp/espresso3389/content_resolver/a$d;-><init>(ILjp/espresso3389/content_resolver/a;Landroid/net/Uri;ILad/e;)V

    .line 60
    .line 61
    .line 62
    const/4 v11, 0x3

    .line 63
    const/4 v12, 0x0

    .line 64
    move-object v7, p1

    .line 65
    invoke-static/range {v7 .. v12}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "flutterPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ljp/espresso3389/content_resolver/a;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    .line 8
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "content_resolver"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ljp/espresso3389/content_resolver/a;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ljp/espresso3389/content_resolver/a;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "channel"

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v0

    .line 17
    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ljp/espresso3389/content_resolver/a;->c:Ltd/l0;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {p1, v0, v1, v0}, Ltd/m0;->c(Ltd/l0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "call"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "result"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    :try_start_0
    iget-object v5, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v5, :cond_6

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    const-string v7, "uri"

    .line 28
    .line 29
    const-string v8, "fileName"

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    const-string v10, "mimeType"

    .line 33
    .line 34
    const/4 v11, 0x2

    .line 35
    const/4 v12, 0x0

    .line 36
    const-string v13, "null cannot be cast to non-null type kotlin.String"

    .line 37
    .line 38
    const/4 v14, 0x0

    .line 39
    sparse-switch v6, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :sswitch_0
    :try_start_1
    const-string v6, "getContent"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v0, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v0}, Ljp/espresso3389/content_resolver/a;->h(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v6, v14, v11, v12}, Lgd/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-direct {v1, v7}, Ljp/espresso3389/content_resolver/a;->e(I)Lxc/k;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lxc/k;->a()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v15

    .line 98
    invoke-virtual {v7}, Lxc/k;->b()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    const/4 v3, 0x4

    .line 112
    new-array v3, v3, [Lxc/k;

    .line 113
    .line 114
    const-string v4, "address"

    .line 115
    .line 116
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v4, v7}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    aput-object v4, v3, v14

    .line 125
    .line 126
    const-string v4, "length"

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v4, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    aput-object v4, v3, v9

    .line 141
    .line 142
    invoke-direct {v1, v0}, Ljp/espresso3389/content_resolver/a;->g(Landroid/net/Uri;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v10, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    aput-object v4, v3, v11

    .line 151
    .line 152
    invoke-direct {v1, v0}, Ljp/espresso3389/content_resolver/a;->f(Landroid/net/Uri;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v8, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/4 v4, 0x3

    .line 161
    aput-object v0, v3, v4

    .line 162
    .line 163
    invoke-static {v3}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    :try_start_4
    invoke-static {v5, v12}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :catch_0
    move-exception v0

    .line 178
    move-wide v3, v15

    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :catchall_0
    move-exception v0

    .line 182
    move-object v6, v0

    .line 183
    move-wide v3, v15

    .line 184
    goto :goto_0

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    move-object v6, v0

    .line 187
    :goto_0
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    move-object v7, v0

    .line 190
    :try_start_6
    invoke-static {v5, v6}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v7

    .line 194
    :sswitch_1
    const-string v6, "getContentMetadata"

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-nez v5, :cond_1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_1
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-static {v0, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    check-cast v0, Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-array v5, v11, [Lxc/k;

    .line 216
    .line 217
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v0}, Ljp/espresso3389/content_resolver/a;->g(Landroid/net/Uri;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v10, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    aput-object v6, v5, v14

    .line 229
    .line 230
    invoke-direct {v1, v0}, Ljp/espresso3389/content_resolver/a;->f(Landroid/net/Uri;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v8, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    aput-object v0, v5, v9

    .line 239
    .line 240
    invoke-static {v5}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :sswitch_2
    const-string v6, "saveContentToFile"

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-nez v5, :cond_2

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_2
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v5, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    check-cast v5, Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    new-instance v6, Ljava/io/File;

    .line 273
    .line 274
    const-string v7, "filePath"

    .line 275
    .line 276
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    check-cast v0, Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {v1, v5}, Ljp/espresso3389/content_resolver/a;->h(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 292
    .line 293
    .line 294
    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 295
    :try_start_7
    new-instance v13, Ljava/io/FileOutputStream;

    .line 296
    .line 297
    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 298
    .line 299
    .line 300
    :try_start_8
    invoke-static {v7, v13, v14, v11, v12}, Lgd/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 301
    .line 302
    .line 303
    :try_start_9
    invoke-static {v13, v12}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 304
    .line 305
    .line 306
    :try_start_a
    invoke-static {v7, v12}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    new-array v0, v11, [Lxc/k;

    .line 310
    .line 311
    invoke-direct {v1, v5}, Ljp/espresso3389/content_resolver/a;->g(Landroid/net/Uri;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-static {v10, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    aput-object v6, v0, v14

    .line 320
    .line 321
    invoke-direct {v1, v5}, Ljp/espresso3389/content_resolver/a;->f(Landroid/net/Uri;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v8, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    aput-object v5, v0, v9

    .line 330
    .line 331
    invoke-static {v0}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 336
    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :catchall_3
    move-exception v0

    .line 341
    move-object v5, v0

    .line 342
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 343
    :catchall_4
    move-exception v0

    .line 344
    move-object v6, v0

    .line 345
    :try_start_c
    invoke-static {v13, v5}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 349
    :catchall_5
    move-exception v0

    .line 350
    move-object v5, v0

    .line 351
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 352
    :catchall_6
    move-exception v0

    .line 353
    move-object v6, v0

    .line 354
    :try_start_e
    invoke-static {v7, v5}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    throw v6

    .line 358
    :sswitch_3
    const-string v6, "streamContent"

    .line 359
    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    if-nez v5, :cond_3

    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :cond_3
    invoke-direct/range {p0 .. p2}, Ljp/espresso3389/content_resolver/a;->m(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :sswitch_4
    const-string v6, "writeContent"

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-nez v5, :cond_4

    .line 380
    .line 381
    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v5, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    check-cast v5, Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    const-string v6, "parse(...)"

    .line 396
    .line 397
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const-string v6, "mode"

    .line 401
    .line 402
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    invoke-static {v6, v13}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    check-cast v6, Ljava/lang/String;

    .line 410
    .line 411
    invoke-direct {v1, v5, v6}, Ljp/espresso3389/content_resolver/a;->i(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 412
    .line 413
    .line 414
    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 415
    :try_start_f
    const-string v6, "bytes"

    .line 416
    .line 417
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v6, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 422
    .line 423
    invoke-static {v0, v6}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    check-cast v0, [B

    .line 427
    .line 428
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 429
    .line 430
    .line 431
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 432
    .line 433
    :try_start_10
    invoke-static {v5, v12}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :catchall_7
    move-exception v0

    .line 445
    move-object v6, v0

    .line 446
    :try_start_11
    throw v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 447
    :catchall_8
    move-exception v0

    .line 448
    move-object v7, v0

    .line 449
    :try_start_12
    invoke-static {v5, v6}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    throw v7

    .line 453
    :sswitch_5
    const-string v6, "releaseBuffer"

    .line 454
    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    if-nez v5, :cond_5

    .line 460
    .line 461
    goto :goto_1

    .line 462
    :cond_5
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 463
    .line 464
    const-string v5, "null cannot be cast to non-null type kotlin.Long"

    .line 465
    .line 466
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    check-cast v0, Ljava/lang/Long;

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 472
    .line 473
    .line 474
    move-result-wide v5

    .line 475
    invoke-direct {v1, v5, v6}, Ljp/espresso3389/content_resolver/a;->k(J)V

    .line 476
    .line 477
    .line 478
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    goto :goto_3

    .line 486
    :cond_6
    :goto_1
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 487
    .line 488
    .line 489
    goto :goto_3

    .line 490
    :catch_1
    move-exception v0

    .line 491
    :goto_2
    invoke-direct {v1, v3, v4}, Ljp/espresso3389/content_resolver/a;->k(J)V

    .line 492
    .line 493
    .line 494
    const-string v3, "exception"

    .line 495
    .line 496
    const-string v4, "Internal error."

    .line 497
    .line 498
    invoke-interface {v2, v3, v4, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :goto_3
    return-void

    .line 502
    nop

    .line 503
    :sswitch_data_0
    .sparse-switch
        -0x60f0b8d9 -> :sswitch_5
        -0x25ac5466 -> :sswitch_4
        0x54ea0cd9 -> :sswitch_3
        0x59bd65f3 -> :sswitch_2
        0x5a055c92 -> :sswitch_1
        0x76847043 -> :sswitch_0
    .end sparse-switch
.end method

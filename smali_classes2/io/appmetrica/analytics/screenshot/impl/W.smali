.class public final Lio/appmetrica/analytics/screenshot/impl/W;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lid/a;

.field public volatile c:Lio/appmetrica/analytics/screenshot/impl/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/appmetrica/analytics/screenshot/impl/W;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/r;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getClientExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/W;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 17
    .line 18
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/W;->b:Lid/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object p2, Lio/appmetrica/analytics/screenshot/impl/W;->d:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, p2, v0, v1, v2}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/W;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const/4 p2, 0x1

    .line 26
    :try_start_0
    new-array v3, p2, [Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "date_added"

    .line 29
    .line 30
    aput-object v4, v3, v0

    .line 31
    .line 32
    iget-object v4, p1, Lio/appmetrica/analytics/screenshot/impl/j;->b:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v3, v4}, Lyc/g;->o([Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, [Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/W;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 41
    .line 42
    invoke-interface {v4}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 51
    .line 52
    const-string v7, "date_added >= ?"

    .line 53
    .line 54
    new-array v8, p2, [Ljava/lang/String;

    .line 55
    .line 56
    new-instance p2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 57
    .line 58
    invoke-direct {p2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    iget-wide v11, p1, Lio/appmetrica/analytics/screenshot/impl/j;->c:J

    .line 66
    .line 67
    sub-long/2addr v9, v11

    .line 68
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    aput-object p2, v8, v0

    .line 73
    .line 74
    const-string v9, "date_added DESC"

    .line 75
    .line 76
    move-object v6, v3

    .line 77
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    .line 79
    .line 80
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    array-length v4, v3

    .line 90
    move v5, v0

    .line 91
    :goto_0
    if-ge v5, v4, :cond_1

    .line 92
    .line 93
    aget-object v6, v3, v5

    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/j;->b:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const-string v4, "screenshot"

    .line 131
    .line 132
    invoke-static {v3, v4, v0, v1, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_2

    .line 137
    .line 138
    iget-object v3, p0, Lio/appmetrica/analytics/screenshot/impl/W;->b:Lid/a;

    .line 139
    .line 140
    invoke-interface {v3}, Lid/a;->invoke()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    :try_start_2
    invoke-static {p2, v2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    :try_start_4
    invoke-static {p2, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 157
    :catch_0
    :cond_4
    :goto_2
    return-void
.end method

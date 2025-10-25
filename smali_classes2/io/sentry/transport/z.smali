.class public final Lio/sentry/transport/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/z$b;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/transport/p;

.field private final b:Lio/sentry/s5;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/List;

.field private e:Ljava/util/Timer;

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 1

    .line 8
    invoke-static {}, Lio/sentry/transport/n;->b()Lio/sentry/transport/p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/transport/z;-><init>(Lio/sentry/transport/p;Lio/sentry/s5;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/p;Lio/sentry/s5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/z;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/transport/z;->f:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lio/sentry/transport/z;->a:Lio/sentry/transport/p;

    .line 7
    iput-object p2, p0, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    return-void
.end method

.method public static synthetic a(ZLio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/transport/z;->u(ZLio/sentry/hints/k;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/hints/p;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/transport/z;->s(Lio/sentry/hints/p;)V

    return-void
.end method

.method static synthetic c(Lio/sentry/transport/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/z;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Lio/sentry/i;Ljava/util/Date;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Date;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lio/sentry/transport/z;->w()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lio/sentry/transport/z;->f:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/Timer;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 41
    .line 42
    new-instance v1, Lio/sentry/transport/z$a;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lio/sentry/transport/z$a;-><init>(Lio/sentry/transport/z;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 48
    .line 49
    .line 50
    monitor-exit p1

    .line 51
    :cond_2
    return-void

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p2
.end method

.method private h(Ljava/lang/String;)Lio/sentry/i;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v0, "transaction"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x7

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v0, "session"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x6

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v0, "check_in"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x5

    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "event"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x4

    .line 57
    goto :goto_0

    .line 58
    :sswitch_4
    const-string v0, "profile"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v1, 0x3

    .line 68
    goto :goto_0

    .line 69
    :sswitch_5
    const-string v0, "statsd"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/4 v1, 0x2

    .line 79
    goto :goto_0

    .line 80
    :sswitch_6
    const-string v0, "replay_video"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/4 v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :sswitch_7
    const-string v0, "attachment"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_7

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const/4 v1, 0x0

    .line 101
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    sget-object p1, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 105
    .line 106
    return-object p1

    .line 107
    :pswitch_0
    sget-object p1, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 108
    .line 109
    return-object p1

    .line 110
    :pswitch_1
    sget-object p1, Lio/sentry/i;->Session:Lio/sentry/i;

    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_2
    sget-object p1, Lio/sentry/i;->Monitor:Lio/sentry/i;

    .line 114
    .line 115
    return-object p1

    .line 116
    :pswitch_3
    sget-object p1, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 117
    .line 118
    return-object p1

    .line 119
    :pswitch_4
    sget-object p1, Lio/sentry/i;->Profile:Lio/sentry/i;

    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_5
    sget-object p1, Lio/sentry/i;->MetricBucket:Lio/sentry/i;

    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_6
    sget-object p1, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 126
    .line 127
    return-object p1

    .line 128
    :pswitch_7
    sget-object p1, Lio/sentry/i;->Attachment:Lio/sentry/i;

    .line 129
    .line 130
    return-object p1

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x7508a6dd -> :sswitch_7
        -0x61b909dd -> :sswitch_6
        -0x3532305b -> :sswitch_5
        -0x12717657 -> :sswitch_4
        0x5c6729a -> :sswitch_3
        0x5b9b0fbc -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/transport/z;->h(Ljava/lang/String;)Lio/sentry/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private static synthetic s(Lio/sentry/hints/p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/sentry/hints/p;->c(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic u(ZLio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/sentry/hints/k;->d(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static v(Lio/sentry/c0;Z)V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/transport/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/transport/x;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lio/sentry/hints/p;

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/sentry/transport/y;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lio/sentry/transport/y;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    const-class p1, Lio/sentry/hints/k;

    .line 17
    .line 18
    invoke-static {p0, p1, v0}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/transport/z;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/sentry/transport/z$b;

    .line 18
    .line 19
    invoke-interface {v1, p0}, Lio/sentry/transport/z$b;->e(Lio/sentry/transport/z;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private x(Ljava/lang/String;)J
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double/2addr v0, v2

    .line 13
    double-to-long v0, v0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    :cond_0
    const-wide/32 v0, 0xea60

    .line 16
    .line 17
    .line 18
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public E(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    const-string v2, ","

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    array-length v4, v2

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :goto_0
    if-ge v6, v4, :cond_8

    .line 18
    .line 19
    aget-object v0, v2, v6

    .line 20
    .line 21
    const-string v7, " "

    .line 22
    .line 23
    const-string v8, ""

    .line 24
    .line 25
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v7, ":"

    .line 30
    .line 31
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    array-length v7, v0

    .line 36
    const/4 v9, 0x4

    .line 37
    if-le v7, v9, :cond_0

    .line 38
    .line 39
    aget-object v7, v0, v9

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v7, 0x0

    .line 43
    :goto_1
    array-length v9, v0

    .line 44
    if-lez v9, :cond_6

    .line 45
    .line 46
    aget-object v9, v0, v5

    .line 47
    .line 48
    invoke-direct {v1, v9}, Lio/sentry/transport/z;->x(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    array-length v11, v0

    .line 53
    const/4 v12, 0x1

    .line 54
    if-le v11, v12, :cond_6

    .line 55
    .line 56
    aget-object v0, v0, v12

    .line 57
    .line 58
    new-instance v11, Ljava/util/Date;

    .line 59
    .line 60
    iget-object v12, v1, Lio/sentry/transport/z;->a:Lio/sentry/transport/p;

    .line 61
    .line 62
    invoke-interface {v12}, Lio/sentry/transport/p;->a()J

    .line 63
    .line 64
    .line 65
    move-result-wide v12

    .line 66
    add-long/2addr v12, v9

    .line 67
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-nez v9, :cond_5

    .line 77
    .line 78
    const-string v9, ";"

    .line 79
    .line 80
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    array-length v12, v10

    .line 85
    move v13, v5

    .line 86
    :goto_2
    if-ge v13, v12, :cond_6

    .line 87
    .line 88
    aget-object v14, v10, v13

    .line 89
    .line 90
    sget-object v15, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 91
    .line 92
    :try_start_0
    invoke-static {v14}, Lio/sentry/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-static {v0}, Lio/sentry/i;->valueOf(Ljava/lang/String;)Lio/sentry/i;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v15, v0

    .line 103
    move-object/from16 p3, v2

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_1
    iget-object v0, v1, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    .line 107
    .line 108
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 113
    .line 114
    const-string v3, "Couldn\'t capitalize: %s"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 116
    move-object/from16 p3, v2

    .line 117
    .line 118
    :try_start_1
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v0, v5, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :catch_1
    move-exception v0

    .line 129
    move-object/from16 p3, v2

    .line 130
    .line 131
    :goto_3
    iget-object v2, v1, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    .line 132
    .line 133
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 138
    .line 139
    const-string v5, "Unknown category: %s"

    .line 140
    .line 141
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    invoke-interface {v2, v3, v0, v5, v14}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_4
    sget-object v0, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 149
    .line 150
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    const/4 v2, -0x1

    .line 157
    goto :goto_5

    .line 158
    :cond_2
    sget-object v0, Lio/sentry/i;->MetricBucket:Lio/sentry/i;

    .line 159
    .line 160
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    if-eqz v7, :cond_3

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_3

    .line 173
    .line 174
    const/4 v2, -0x1

    .line 175
    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    array-length v3, v0

    .line 180
    if-lez v3, :cond_4

    .line 181
    .line 182
    const-string v3, "custom"

    .line 183
    .line 184
    invoke-static {v0, v3}, Lio/sentry/util/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_4

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_3
    const/4 v2, -0x1

    .line 192
    :cond_4
    invoke-direct {v1, v15, v11}, Lio/sentry/transport/z;->f(Lio/sentry/i;Ljava/util/Date;)V

    .line 193
    .line 194
    .line 195
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 196
    .line 197
    move v3, v2

    .line 198
    const/4 v5, 0x0

    .line 199
    move-object/from16 v2, p3

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    move-object/from16 p3, v2

    .line 203
    .line 204
    move v2, v3

    .line 205
    sget-object v0, Lio/sentry/i;->All:Lio/sentry/i;

    .line 206
    .line 207
    invoke-direct {v1, v0, v11}, Lio/sentry/transport/z;->f(Lio/sentry/i;Ljava/util/Date;)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_6
    move-object/from16 p3, v2

    .line 212
    .line 213
    move v2, v3

    .line 214
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 215
    .line 216
    move v3, v2

    .line 217
    const/4 v5, 0x0

    .line 218
    move-object/from16 v2, p3

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_7
    const/16 v0, 0x1ad

    .line 223
    .line 224
    move/from16 v2, p3

    .line 225
    .line 226
    if-ne v2, v0, :cond_8

    .line 227
    .line 228
    move-object/from16 v0, p2

    .line 229
    .line 230
    invoke-direct {v1, v0}, Lio/sentry/transport/z;->x(Ljava/lang/String;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    new-instance v0, Ljava/util/Date;

    .line 235
    .line 236
    iget-object v4, v1, Lio/sentry/transport/z;->a:Lio/sentry/transport/p;

    .line 237
    .line 238
    invoke-interface {v4}, Lio/sentry/transport/p;->a()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    add-long/2addr v4, v2

    .line 243
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 244
    .line 245
    .line 246
    sget-object v2, Lio/sentry/i;->All:Lio/sentry/i;

    .line 247
    .line 248
    invoke-direct {v1, v2, v0}, Lio/sentry/transport/z;->f(Lio/sentry/i;Ljava/util/Date;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/transport/z;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lio/sentry/transport/z;->e:Ljava/util/Timer;

    .line 13
    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lio/sentry/transport/z;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public e(Lio/sentry/transport/z$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/z;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/a4;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lio/sentry/x4;

    .line 22
    .line 23
    invoke-virtual {v3}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {p0, v4}, Lio/sentry/transport/z;->q(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    .line 52
    .line 53
    invoke-virtual {v4}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Lio/sentry/clientreport/f;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/f;

    .line 58
    .line 59
    invoke-interface {v4, v5, v3}, Lio/sentry/clientreport/h;->e(Lio/sentry/clientreport/f;Lio/sentry/x4;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz v2, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "%d items will be dropped due rate limiting."

    .line 86
    .line 87
    invoke-interface {v0, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lio/sentry/x4;

    .line 114
    .line 115
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_3

    .line 120
    .line 121
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lio/sentry/transport/z;->b:Lio/sentry/s5;

    .line 132
    .line 133
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 138
    .line 139
    const-string v2, "Envelope discarded due all items rate limited."

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    new-array v4, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-interface {p1, v0, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p2, v3}, Lio/sentry/transport/z;->v(Lio/sentry/c0;Z)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_5
    new-instance p2, Lio/sentry/a4;

    .line 152
    .line 153
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1, v0}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 158
    .line 159
    .line 160
    return-object p2

    .line 161
    :cond_6
    return-object p1
.end method

.method public j(Lio/sentry/i;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/transport/z;->a:Lio/sentry/transport/p;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/sentry/transport/p;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v2, Lio/sentry/i;->All:Lio/sentry/i;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Date;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    sget-object v1, Lio/sentry/i;->Unknown:Lio/sentry/i;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    iget-object v1, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/util/Date;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    xor-int/2addr p1, v2

    .line 57
    return p1

    .line 58
    :cond_2
    return v3
.end method

.method public k()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/transport/z;->a:Lio/sentry/transport/p;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/sentry/transport/p;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lio/sentry/i;

    .line 33
    .line 34
    iget-object v3, p0, Lio/sentry/transport/z;->c:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Date;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method public z(Lio/sentry/transport/z$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/z;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

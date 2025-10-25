.class final Lio/flutter/plugins/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT_DASH:Ljava/lang/String; = "dash"

.field private static final FORMAT_HLS:Ljava/lang/String; = "hls"

.field private static final FORMAT_OTHER:Ljava/lang/String; = "other"

.field private static final FORMAT_SS:Ljava/lang/String; = "ss"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final eventChannel:Lio/flutter/plugin/common/EventChannel;

.field private eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

.field private exoPlayer:Lb3/b0;

.field private httpDataSourceFactory:Lx4/s$b;

.field isInitialized:Z

.field private final options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private surface:Landroid/view/Surface;

.field private final textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/EventChannel;",
            "Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/videoplayer/VideoPlayerOptions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 3
    new-instance v0, Lx4/s$b;

    invoke-direct {v0}, Lx4/s$b;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lx4/s$b;

    .line 4
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 5
    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 6
    iput-object p7, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 7
    new-instance p2, Lb3/b0$b;

    invoke-direct {p2, p1}, Lb3/b0$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lb3/b0$b;->e()Lb3/b0;

    move-result-object p2

    .line 8
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 9
    invoke-virtual {p0, p6}, Lio/flutter/plugins/videoplayer/VideoPlayer;->buildHttpDataSourceFactory(Ljava/util/Map;)V

    .line 10
    new-instance p4, Lx4/r$a;

    iget-object p6, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lx4/s$b;

    invoke-direct {p4, p1, p6}, Lx4/r$a;-><init>(Landroid/content/Context;Lx4/j$a;)V

    .line 11
    invoke-direct {p0, p3, p4, p5}, Lio/flutter/plugins/videoplayer/VideoPlayer;->buildMediaSource(Landroid/net/Uri;Lx4/j$a;Ljava/lang/String;)Ld4/t;

    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Lb3/b0;->B(Ld4/t;)V

    .line 13
    invoke-interface {p2}, Lb3/m3;->b()V

    .line 14
    new-instance p1, Lio/flutter/plugins/videoplayer/QueuingEventSink;

    invoke-direct {p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;-><init>()V

    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lb3/b0;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    return-void
.end method

.method constructor <init>(Lb3/b0;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lx4/s$b;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 17
    new-instance v0, Lx4/s$b;

    invoke-direct {v0}, Lx4/s$b;-><init>()V

    .line 18
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 19
    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 20
    iput-object p4, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 21
    iput-object p6, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lx4/s$b;

    .line 22
    invoke-direct {p0, p1, p5}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lb3/b0;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    return-void
.end method

.method private buildMediaSource(Landroid/net/Uri;Lx4/j$a;Ljava/lang/String;)Ld4/t;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ly4/q0;->m0(Landroid/net/Uri;)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, -0x1

    .line 17
    sparse-switch v3, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    :goto_0
    move p3, v5

    .line 21
    goto :goto_1

    .line 22
    :sswitch_0
    const-string v3, "other"

    .line 23
    .line 24
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p3, 0x3

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string v3, "dash"

    .line 34
    .line 35
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move p3, v1

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v3, "hls"

    .line 45
    .line 46
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move p3, v2

    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    const-string v3, "ss"

    .line 56
    .line 57
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-nez p3, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move p3, v4

    .line 65
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    move p3, v5

    .line 69
    goto :goto_2

    .line 70
    :pswitch_0
    move p3, v0

    .line 71
    goto :goto_2

    .line 72
    :pswitch_1
    move p3, v4

    .line 73
    goto :goto_2

    .line 74
    :pswitch_2
    move p3, v1

    .line 75
    goto :goto_2

    .line 76
    :pswitch_3
    move p3, v2

    .line 77
    :goto_2
    if-eqz p3, :cond_8

    .line 78
    .line 79
    if-eq p3, v2, :cond_7

    .line 80
    .line 81
    if-eq p3, v1, :cond_6

    .line 82
    .line 83
    if-ne p3, v0, :cond_5

    .line 84
    .line 85
    new-instance p3, Ld4/h0$b;

    .line 86
    .line 87
    invoke-direct {p3, p2}, Ld4/h0$b;-><init>(Lx4/j$a;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lb3/f2;->d(Landroid/net/Uri;)Lb3/f2;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p3, p1}, Ld4/h0$b;->b(Lb3/f2;)Ld4/h0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v0, "Unsupported type: "

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_6
    new-instance p3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 123
    .line 124
    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lx4/j$a;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lb3/f2;->d(Landroid/net/Uri;)Lb3/f2;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a(Lb3/f2;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_7
    new-instance p3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 137
    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;

    .line 139
    .line 140
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;-><init>(Lx4/j$a;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p3, v0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lx4/j$a;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lb3/f2;->d(Landroid/net/Uri;)Lb3/f2;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a(Lb3/f2;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :cond_8
    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 156
    .line 157
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    .line 158
    .line 159
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(Lx4/j$a;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p3, v0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lx4/j$a;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lb3/f2;->d(Landroid/net/Uri;)Lb3/f2;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a(Lb3/f2;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_3
        0x193ef -> :sswitch_2
        0x2eef92 -> :sswitch_1
        0x6527f10 -> :sswitch_0
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setAudioAttributes(Lb3/b0;Z)V
    .locals 2

    .line 1
    new-instance v0, Ld3/e$e;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/e$e;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Ld3/e$e;->c(I)Ld3/e$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ld3/e$e;->a()Ld3/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    invoke-interface {p0, v0, p1}, Lb3/b0;->d(Ld3/e;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private setUpVideoPlayer(Lb3/b0;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 6
    .line 7
    new-instance v1, Lio/flutter/plugins/videoplayer/VideoPlayer$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/videoplayer/VideoPlayer$1;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/view/Surface;

    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 18
    .line 19
    invoke-interface {v1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lb3/m3;->g(Landroid/view/Surface;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 32
    .line 33
    iget-boolean v0, v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    .line 34
    .line 35
    invoke-static {p1, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setAudioAttributes(Lb3/b0;Z)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lb3/b0;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lb3/m3;->x(Lb3/m3$d;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public buildHttpDataSourceFactory(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "User-Agent"

    .line 10
    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "ExoPlayer"

    .line 25
    .line 26
    :goto_0
    iget-object v3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lx4/s$b;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lx4/s$b;->e(Ljava/lang/String;)Lx4/s$b;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Lx4/s$b;->c(Z)Lx4/s$b;

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lx4/s$b;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lx4/s$b;->d(Ljava/util/Map;)Lx4/s$b;

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 6
    .line 7
    invoke-interface {v0}, Lb3/m3;->stop()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->release()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Lb3/m3;->release()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method getPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lb3/m3;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lb3/m3;->q(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lb3/m3;->q(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method seekTo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Lb3/m3;->o(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method sendBufferingUpdate()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event"

    .line 7
    .line 8
    const-string v2, "bufferingUpdate"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [Ljava/lang/Number;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 22
    .line 23
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 24
    .line 25
    invoke-interface {v2}, Lb3/m3;->s()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "values"

    .line 41
    .line 42
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method sendInitialized()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "event"

    .line 11
    .line 12
    const-string v2, "initialized"

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 18
    .line 19
    invoke-interface {v1}, Lb3/m3;->getDuration()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "duration"

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 33
    .line 34
    invoke-interface {v1}, Lb3/b0;->a()Lb3/x1;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 41
    .line 42
    invoke-interface {v1}, Lb3/b0;->a()Lb3/x1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v2, v1, Lb3/x1;->q:I

    .line 47
    .line 48
    iget v3, v1, Lb3/x1;->r:I

    .line 49
    .line 50
    iget v1, v1, Lb3/x1;->t:I

    .line 51
    .line 52
    const/16 v4, 0x5a

    .line 53
    .line 54
    if-eq v1, v4, :cond_0

    .line 55
    .line 56
    const/16 v4, 0x10e

    .line 57
    .line 58
    if-ne v1, v4, :cond_1

    .line 59
    .line 60
    :cond_0
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 61
    .line 62
    invoke-interface {v2}, Lb3/b0;->a()Lb3/x1;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget v2, v2, Lb3/x1;->r:I

    .line 67
    .line 68
    iget-object v3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 69
    .line 70
    invoke-interface {v3}, Lb3/b0;->a()Lb3/x1;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v3, v3, Lb3/x1;->q:I

    .line 75
    .line 76
    :cond_1
    const-string v4, "width"

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v2, "height"

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const/16 v2, 0xb4

    .line 95
    .line 96
    if-ne v1, v2, :cond_2

    .line 97
    .line 98
    const-string v2, "rotationCorrection"

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method

.method setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0, p1}, Lb3/m3;->A(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method setPlaybackSpeed(D)V
    .locals 1

    .line 1
    new-instance v0, Lb3/l3;

    .line 2
    .line 3
    double-to-float p1, p1

    .line 4
    invoke-direct {v0, p1}, Lb3/l3;-><init>(F)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lb3/m3;->c(Lb3/l3;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setVolume(D)V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    double-to-float p1, p1

    .line 14
    iget-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lb3/b0;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lb3/m3;->e(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

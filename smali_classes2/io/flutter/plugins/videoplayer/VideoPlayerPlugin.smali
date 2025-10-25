.class public Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerPlugin"


# instance fields
.field private flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

.field private final options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private final videoPlayers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lio/flutter/plugins/videoplayer/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 17
    .line 18
    return-void
.end method

.method private disposeAllPlayers()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 17
    .line 18
    invoke-virtual {v1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 10

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->textureRegistry:Lio/flutter/view/TextureRegistry;

    .line 4
    .line 5
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v3, Lio/flutter/plugin/common/EventChannel;

    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 12
    .line 13
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "flutter.io/videoPlayer/videoEvents"

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v3, v1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 52
    .line 53
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    .line 54
    .line 55
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v1, v2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 69
    .line 70
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    .line 71
    .line 72
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {v1, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_0
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 81
    .line 82
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 83
    .line 84
    iget-object v2, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "asset:///"

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const/4 v6, 0x0

    .line 104
    new-instance v7, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 110
    .line 111
    move-object v1, v9

    .line 112
    move-object v4, v0

    .line 113
    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getHttpHeaders()Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 122
    .line 123
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 124
    .line 125
    iget-object v2, v1, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getUri()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getFormatHint()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 136
    .line 137
    move-object v1, v9

    .line 138
    move-object v4, v0

    .line 139
    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 143
    .line 144
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    invoke-virtual {p1, v1, v2, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;

    .line 152
    .line 153
    invoke-direct {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->build()Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method

.method public dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public initialize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 8

    .line 1
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v4, Lio/flutter/plugins/videoplayer/l;

    .line 23
    .line 24
    invoke-direct {v4, v1}, Lio/flutter/plugins/videoplayer/l;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v5, Lio/flutter/plugins/videoplayer/m;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Lio/flutter/plugins/videoplayer/m;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getTextureRegistry()Lio/flutter/view/TextureRegistry;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move-object v1, v7

    .line 44
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V

    .line 45
    .line 46
    .line 47
    iput-object v7, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 48
    .line 49
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v7, p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "VideoPlayerPlugin"

    .line 6
    .line 7
    const-string v1, "Detached from the engine before registering to it."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/flutter/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->stopListening(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 23
    .line 24
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->onDestroy()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->pause()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->play()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    new-instance v1, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    .line 18
    .line 19
    invoke-direct {v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->getPosition()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->setPosition(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->build()Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getPosition()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->seekTo(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getIsLooping()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setLooping(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->getMixWithOthers()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    .line 12
    .line 13
    return-void
.end method

.method public setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getSpeed()Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setPlaybackSpeed(D)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getTextureId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getVolume()Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setVolume(D)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

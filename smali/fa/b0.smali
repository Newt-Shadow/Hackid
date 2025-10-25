.class public final Lfa/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lio/flutter/plugin/common/BinaryMessenger;

.field private final c:Lfa/d0;

.field private final d:Lfa/d0$b;

.field private final e:Lio/flutter/view/TextureRegistry;

.field private final f:Lio/flutter/plugin/common/MethodChannel;

.field private g:Lfa/u;

.field private h:Lb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lfa/d0;Lfa/d0$b;Lio/flutter/view/TextureRegistry;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "messenger"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "cameraPermissions"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "permissionsRegistry"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "textureRegistry"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lfa/b0;->a:Landroid/app/Activity;

    .line 30
    .line 31
    iput-object p2, p0, Lfa/b0;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 32
    .line 33
    iput-object p3, p0, Lfa/b0;->c:Lfa/d0;

    .line 34
    .line 35
    iput-object p4, p0, Lfa/b0;->d:Lfa/d0$b;

    .line 36
    .line 37
    iput-object p5, p0, Lfa/b0;->e:Lio/flutter/view/TextureRegistry;

    .line 38
    .line 39
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 40
    .line 41
    const-string p3, "com.idsport.plugins.camera/actions"

    .line 42
    .line 43
    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lfa/b0;->f:Lio/flutter/plugin/common/MethodChannel;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lfa/b0;->f(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lfa/b0;Landroid/media/Image;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfa/b0;->e(Lfa/b0;Landroid/media/Image;)V

    return-void
.end method

.method private final c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "CameraAccess"

    .line 11
    .line 12
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p2, "null cannot be cast to non-null type java.lang.RuntimeException"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    throw p1
.end method

.method private final d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "cameraName"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "previewResolutionPreset"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    const-string v4, "useBackgroundThread"

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Boolean;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    move v14, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v14, v5

    .line 39
    :goto_0
    const-string v4, "abortCaptureSessionBeforeStarting"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    :cond_1
    move v15, v5

    .line 54
    const-string v4, "useOnlyLegacySurfaceConfig"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/Boolean;

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v4, 0x0

    .line 70
    :goto_1
    move/from16 v16, v4

    .line 71
    .line 72
    sget-object v4, Lta/a;->h:Lta/a$a;

    .line 73
    .line 74
    const-string v5, "mediaRecorderSettings"

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/Map;

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Lta/a$a;->a(Ljava/util/Map;)Lta/a;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    iget-object v0, v1, Lfa/b0;->e:Lio/flutter/view/TextureRegistry;

    .line 87
    .line 88
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v0, "createSurfaceTexture(...)"

    .line 93
    .line 94
    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v10, Lfa/o0;

    .line 98
    .line 99
    iget-object v0, v1, Lfa/b0;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 100
    .line 101
    invoke-interface {v4}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    new-instance v7, Landroid/os/Handler;

    .line 106
    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v10, v0, v5, v6, v7}, Lfa/o0;-><init>(Lio/flutter/plugin/common/BinaryMessenger;JLandroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Lfa/h0;

    .line 118
    .line 119
    iget-object v0, v1, Lfa/b0;->a:Landroid/app/Activity;

    .line 120
    .line 121
    invoke-static {v0}, Lfa/m0;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v11, v2, v0}, Lfa/h0;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lpa/g;->valueOf(Ljava/lang/String;)Lpa/g;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    iget-object v0, v1, Lfa/b0;->g:Lfa/u;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    :try_start_0
    invoke-virtual {v0}, Lfa/u;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    move-object v2, v0

    .line 147
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_2
    new-instance v0, Lfa/u;

    .line 151
    .line 152
    iget-object v7, v1, Lfa/b0;->a:Landroid/app/Activity;

    .line 153
    .line 154
    new-instance v9, Lga/c;

    .line 155
    .line 156
    invoke-direct {v9}, Lga/c;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v2, Lfa/a0;

    .line 160
    .line 161
    invoke-direct {v2, v1}, Lfa/a0;-><init>(Lfa/b0;)V

    .line 162
    .line 163
    .line 164
    move-object v6, v0

    .line 165
    move-object v8, v4

    .line 166
    move-object/from16 v17, v2

    .line 167
    .line 168
    invoke-direct/range {v6 .. v17}, Lfa/u;-><init>(Landroid/app/Activity;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lga/b;Lfa/o0;Lfa/e0;Lpa/g;Lta/a;ZZZLfa/q0;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, v1, Lfa/b0;->g:Lfa/u;

    .line 172
    .line 173
    invoke-interface {v4}, Lio/flutter/view/TextureRegistry$TextureEntry;->id()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object/from16 v2, p2

    .line 182
    .line 183
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method private static final e(Lfa/b0;Landroid/media/Image;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/b0;->h:Lb;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lb;->a(Landroid/media/Image;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final f(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p2

    .line 10
    invoke-direct {p1, p2, p0}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-interface {p0, p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public final g(Lb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/b0;->h:Lb;

    .line 2
    .line 3
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/b0;->f:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "onMethodCall: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "CameraHandled"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_2c

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, "y"

    .line 44
    .line 45
    const-string v3, "x"

    .line 46
    .line 47
    const-string v4, "reset"

    .line 48
    .line 49
    const-string v5, "config"

    .line 50
    .line 51
    const-string v6, "mode"

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    sparse-switch v1, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :sswitch_0
    const-string p1, "getMaxZoomLevel"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 70
    .line 71
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lfa/u;->P()F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :sswitch_1
    const-string v1, "setExposurePoint"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_1
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Boolean;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    move-object p1, v7

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    :goto_0
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object v7, v0

    .line 125
    check-cast v7, Ljava/lang/Double;

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/Double;

    .line 132
    .line 133
    :goto_1
    :try_start_1
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lga/e;

    .line 139
    .line 140
    invoke-direct {v1, v7, p1}, Lga/e;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2, v1}, Lfa/u;->y0(Lio/flutter/plugin/common/MethodChannel$Result;Lga/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :catch_1
    move-exception p1

    .line 149
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :sswitch_2
    const-string p1, "dispose"

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_4

    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_4
    :try_start_2
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 165
    .line 166
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lfa/u;->K()V

    .line 170
    .line 171
    .line 172
    iput-object v7, p0, Lfa/b0;->g:Lfa/u;

    .line 173
    .line 174
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    .line 176
    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :catch_2
    move-exception p1

    .line 180
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :sswitch_3
    const-string p1, "pausePreview"

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :cond_5
    :try_start_3
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 196
    .line 197
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lfa/u;->o0()V

    .line 201
    .line 202
    .line 203
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    .line 205
    .line 206
    goto/16 :goto_6

    .line 207
    .line 208
    :catch_3
    move-exception p1

    .line 209
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :sswitch_4
    const-string v1, "startVideoRecording"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_6

    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_6
    :try_start_4
    const-string v0, "outputDirPath"

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    check-cast v0, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    check-cast p1, Ljava/util/Map;

    .line 243
    .line 244
    invoke-static {p1}, Lfa/l0;->a(Ljava/util/Map;)Lfa/l0;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object v1, p0, Lfa/b0;->g:Lfa/u;

    .line 249
    .line 250
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, p1, v0, p2}, Lfa/u;->J0(Lfa/l0;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 254
    .line 255
    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :catch_4
    move-exception p1

    .line 259
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :sswitch_5
    const-string p1, "resumePreview"

    .line 265
    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_7

    .line 271
    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :cond_7
    :try_start_5
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 275
    .line 276
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lfa/u;->u0()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 283
    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :catch_5
    move-exception p1

    .line 288
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_6

    .line 292
    .line 293
    :sswitch_6
    const-string v1, "setExposureMode"

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_8

    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :cond_8
    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {p1}, Lia/b;->b(Ljava/lang/String;)Lia/b;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-nez v0, :cond_9

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v1, "Unknown exposure mode "

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string v0, "setExposureModeFailed"

    .line 333
    .line 334
    invoke-interface {p2, v0, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_9
    :try_start_6
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 339
    .line 340
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, p2, v0}, Lfa/u;->w0(Lio/flutter/plugin/common/MethodChannel$Result;Lia/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 344
    .line 345
    .line 346
    goto/16 :goto_6

    .line 347
    .line 348
    :catch_6
    move-exception p1

    .line 349
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_6

    .line 353
    .line 354
    :sswitch_7
    const-string p1, "pauseVideoRecording"

    .line 355
    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-nez p1, :cond_a

    .line 361
    .line 362
    goto/16 :goto_5

    .line 363
    .line 364
    :cond_a
    :try_start_7
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 365
    .line 366
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1, p2}, Lfa/u;->p0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 370
    .line 371
    .line 372
    goto/16 :goto_6

    .line 373
    .line 374
    :catch_7
    move-exception p1

    .line 375
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_6

    .line 379
    .line 380
    :sswitch_8
    const-string v1, "requestPermission"

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_b

    .line 387
    .line 388
    goto/16 :goto_5

    .line 389
    .line 390
    :cond_b
    iget-object v0, p0, Lfa/b0;->c:Lfa/d0;

    .line 391
    .line 392
    iget-object v1, p0, Lfa/b0;->a:Landroid/app/Activity;

    .line 393
    .line 394
    iget-object v2, p0, Lfa/b0;->d:Lfa/d0$b;

    .line 395
    .line 396
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 397
    .line 398
    const-string v4, "enableAudio"

    .line 399
    .line 400
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-static {v3, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    new-instance v3, Lfa/z;

    .line 409
    .line 410
    invoke-direct {v3, p2, p0}, Lfa/z;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lfa/b0;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v1, v2, p1, v3}, Lfa/d0;->e(Landroid/app/Activity;Lfa/d0$b;ZLfa/d0$c;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_6

    .line 417
    .line 418
    :sswitch_9
    const-string v1, "setFlashMode"

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_c

    .line 425
    .line 426
    goto/16 :goto_5

    .line 427
    .line 428
    :cond_c
    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {p1}, Lla/b;->b(Ljava/lang/String;)Lla/b;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-nez v0, :cond_d

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v1, "Unknown flash mode "

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    const-string v0, "setFlashModeFailed"

    .line 458
    .line 459
    invoke-interface {p2, v0, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :cond_d
    :try_start_8
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 464
    .line 465
    if-eqz p1, :cond_2d

    .line 466
    .line 467
    invoke-virtual {p1, p2, v0}, Lfa/u;->z0(Lio/flutter/plugin/common/MethodChannel$Result;Lla/b;)V

    .line 468
    .line 469
    .line 470
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 471
    .line 472
    goto/16 :goto_6

    .line 473
    .line 474
    :catch_8
    move-exception p1

    .line 475
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 476
    .line 477
    .line 478
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 479
    .line 480
    goto/16 :goto_6

    .line 481
    .line 482
    :sswitch_a
    const-string p1, "getMaxExposureOffset"

    .line 483
    .line 484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    if-nez p1, :cond_e

    .line 489
    .line 490
    goto/16 :goto_5

    .line 491
    .line 492
    :cond_e
    :try_start_9
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 493
    .line 494
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1}, Lfa/u;->O()D

    .line 498
    .line 499
    .line 500
    move-result-wide v0

    .line 501
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 506
    .line 507
    .line 508
    goto/16 :goto_6

    .line 509
    .line 510
    :catch_9
    move-exception p1

    .line 511
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_6

    .line 515
    .line 516
    :sswitch_b
    const-string p1, "stopVideoRecording"

    .line 517
    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    if-nez p1, :cond_f

    .line 523
    .line 524
    goto/16 :goto_5

    .line 525
    .line 526
    :cond_f
    :try_start_a
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 527
    .line 528
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, p2}, Lfa/u;->O0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 532
    .line 533
    .line 534
    goto/16 :goto_6

    .line 535
    .line 536
    :catch_a
    move-exception p1

    .line 537
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_6

    .line 541
    .line 542
    :sswitch_c
    const-string p1, "resumeVideoRecording"

    .line 543
    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    if-nez p1, :cond_10

    .line 549
    .line 550
    goto/16 :goto_5

    .line 551
    .line 552
    :cond_10
    :try_start_b
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 553
    .line 554
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1, p2}, Lfa/u;->v0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 558
    .line 559
    .line 560
    goto/16 :goto_6

    .line 561
    .line 562
    :catch_b
    move-exception p1

    .line 563
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_6

    .line 567
    .line 568
    :sswitch_d
    const-string v1, "initCamera"

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-nez v0, :cond_11

    .line 575
    .line 576
    goto/16 :goto_5

    .line 577
    .line 578
    :cond_11
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 579
    .line 580
    if-eqz v0, :cond_12

    .line 581
    .line 582
    :try_start_c
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    const-string v1, "imageFormatGroup"

    .line 586
    .line 587
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    check-cast p1, Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {v0, p1}, Lfa/u;->m0(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 597
    .line 598
    .line 599
    goto/16 :goto_6

    .line 600
    .line 601
    :catch_c
    move-exception p1

    .line 602
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_6

    .line 606
    .line 607
    :cond_12
    const-string p1, "cameraNotFound"

    .line 608
    .line 609
    const-string v0, "Camera not found. Please call the \'create\' method before calling \'initialize\'."

    .line 610
    .line 611
    invoke-interface {p2, p1, v0, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_6

    .line 615
    .line 616
    :sswitch_e
    const-string v1, "setMediaRecorderSettings"

    .line 617
    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_13

    .line 623
    .line 624
    goto/16 :goto_5

    .line 625
    .line 626
    :cond_13
    :try_start_d
    sget-object v0, Lta/a;->h:Lta/a$a;

    .line 627
    .line 628
    const-string v1, "settings"

    .line 629
    .line 630
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    check-cast p1, Ljava/util/Map;

    .line 635
    .line 636
    invoke-virtual {v0, p1}, Lta/a$a;->a(Ljava/util/Map;)Lta/a;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 641
    .line 642
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, p1}, Lfa/u;->D0(Lta/a;)V

    .line 646
    .line 647
    .line 648
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 649
    .line 650
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 651
    .line 652
    .line 653
    goto/16 :goto_6

    .line 654
    .line 655
    :catch_d
    move-exception p1

    .line 656
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_6

    .line 660
    .line 661
    :sswitch_f
    const-string p1, "closeCamera"

    .line 662
    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    if-nez p1, :cond_14

    .line 668
    .line 669
    goto/16 :goto_5

    .line 670
    .line 671
    :cond_14
    :try_start_e
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 672
    .line 673
    if-eqz p1, :cond_15

    .line 674
    .line 675
    invoke-virtual {p1}, Lfa/u;->E()V

    .line 676
    .line 677
    .line 678
    :cond_15
    iput-object v7, p0, Lfa/b0;->g:Lfa/u;

    .line 679
    .line 680
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 681
    .line 682
    .line 683
    goto/16 :goto_6

    .line 684
    .line 685
    :catch_e
    move-exception p1

    .line 686
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_6

    .line 690
    .line 691
    :sswitch_10
    const-string v1, "setFocusPoint"

    .line 692
    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-nez v0, :cond_16

    .line 698
    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_16
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    check-cast v0, Ljava/lang/Boolean;

    .line 706
    .line 707
    if-eqz v0, :cond_18

    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-nez v0, :cond_17

    .line 714
    .line 715
    goto :goto_2

    .line 716
    :cond_17
    move-object p1, v7

    .line 717
    goto :goto_3

    .line 718
    :cond_18
    :goto_2
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    move-object v7, v0

    .line 723
    check-cast v7, Ljava/lang/Double;

    .line 724
    .line 725
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    check-cast p1, Ljava/lang/Double;

    .line 730
    .line 731
    :goto_3
    :try_start_f
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 732
    .line 733
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    new-instance v1, Lga/e;

    .line 737
    .line 738
    invoke-direct {v1, v7, p1}, Lga/e;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, p2, v1}, Lfa/u;->B0(Lio/flutter/plugin/common/MethodChannel$Result;Lga/e;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 742
    .line 743
    .line 744
    goto/16 :goto_6

    .line 745
    .line 746
    :catch_f
    move-exception p1

    .line 747
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_6

    .line 751
    .line 752
    :sswitch_11
    const-string p1, "unlockCaptureOrientation"

    .line 753
    .line 754
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result p1

    .line 758
    if-nez p1, :cond_19

    .line 759
    .line 760
    goto/16 :goto_5

    .line 761
    .line 762
    :cond_19
    :try_start_10
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 763
    .line 764
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {p1}, Lfa/u;->Q0()V

    .line 768
    .line 769
    .line 770
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 771
    .line 772
    .line 773
    goto/16 :goto_6

    .line 774
    .line 775
    :catch_10
    move-exception p1

    .line 776
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_6

    .line 780
    .line 781
    :sswitch_12
    const-string v1, "startImageStreaming"

    .line 782
    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-nez v0, :cond_1a

    .line 788
    .line 789
    goto/16 :goto_5

    .line 790
    .line 791
    :cond_1a
    :try_start_11
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    check-cast p1, Ljava/util/Map;

    .line 799
    .line 800
    invoke-static {p1}, Lfa/l0;->a(Ljava/util/Map;)Lfa/l0;

    .line 801
    .line 802
    .line 803
    move-result-object p1

    .line 804
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 805
    .line 806
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, p1, p2}, Lfa/u;->H0(Lfa/l0;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 810
    .line 811
    .line 812
    goto/16 :goto_6

    .line 813
    .line 814
    :catch_11
    move-exception p1

    .line 815
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_6

    .line 819
    .line 820
    :sswitch_13
    const-string v1, "setZoomLevel"

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    if-nez v0, :cond_1b

    .line 827
    .line 828
    goto/16 :goto_5

    .line 829
    .line 830
    :cond_1b
    const-string v0, "zoom"

    .line 831
    .line 832
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    check-cast p1, Ljava/lang/Double;

    .line 837
    .line 838
    if-nez p1, :cond_1c

    .line 839
    .line 840
    const-string p1, "ZOOM_ERROR"

    .line 841
    .line 842
    const-string v0, "setZoomLevel is called without specifying a zoom level."

    .line 843
    .line 844
    invoke-interface {p2, p1, v0, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :cond_1c
    :try_start_12
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 849
    .line 850
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 854
    .line 855
    .line 856
    move-result-wide v1

    .line 857
    double-to-float p1, v1

    .line 858
    invoke-virtual {v0, p2, p1}, Lfa/u;->E0(Lio/flutter/plugin/common/MethodChannel$Result;F)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 859
    .line 860
    .line 861
    goto/16 :goto_6

    .line 862
    .line 863
    :catch_12
    move-exception p1

    .line 864
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_6

    .line 868
    .line 869
    :sswitch_14
    const-string v1, "setFocusMode"

    .line 870
    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-nez v0, :cond_1d

    .line 876
    .line 877
    goto/16 :goto_5

    .line 878
    .line 879
    :cond_1d
    invoke-virtual {p1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object p1

    .line 883
    check-cast p1, Ljava/lang/String;

    .line 884
    .line 885
    invoke-static {p1}, Lha/b;->b(Ljava/lang/String;)Lha/b;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    if-nez v0, :cond_1e

    .line 890
    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .line 895
    .line 896
    const-string v1, "Unknown focus mode "

    .line 897
    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    const-string v0, "setFocusModeFailed"

    .line 909
    .line 910
    invoke-interface {p2, v0, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    .line 912
    .line 913
    return-void

    .line 914
    :cond_1e
    :try_start_13
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 915
    .line 916
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {p1, p2, v0}, Lfa/u;->A0(Lio/flutter/plugin/common/MethodChannel$Result;Lha/b;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 920
    .line 921
    .line 922
    goto/16 :goto_6

    .line 923
    .line 924
    :catch_13
    move-exception p1

    .line 925
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 926
    .line 927
    .line 928
    goto/16 :goto_6

    .line 929
    .line 930
    :sswitch_15
    const-string v1, "setExposureOffset"

    .line 931
    .line 932
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v0

    .line 936
    if-nez v0, :cond_1f

    .line 937
    .line 938
    goto/16 :goto_5

    .line 939
    .line 940
    :cond_1f
    :try_start_14
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 941
    .line 942
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    const-string v1, "offset"

    .line 946
    .line 947
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object p1

    .line 951
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    check-cast p1, Ljava/lang/Number;

    .line 955
    .line 956
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 957
    .line 958
    .line 959
    move-result-wide v1

    .line 960
    invoke-virtual {v0, p2, v1, v2}, Lfa/u;->x0(Lio/flutter/plugin/common/MethodChannel$Result;D)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 961
    .line 962
    .line 963
    goto/16 :goto_6

    .line 964
    .line 965
    :catch_14
    move-exception p1

    .line 966
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_6

    .line 970
    .line 971
    :sswitch_16
    const-string v1, "lockCaptureOrientation"

    .line 972
    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-nez v0, :cond_20

    .line 978
    .line 979
    goto/16 :goto_5

    .line 980
    .line 981
    :cond_20
    :try_start_15
    const-string v0, "orientation"

    .line 982
    .line 983
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    check-cast p1, Ljava/lang/String;

    .line 988
    .line 989
    invoke-static {p1}, Lfa/m0;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 994
    .line 995
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0, p1}, Lfa/u;->l0(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V

    .line 999
    .line 1000
    .line 1001
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_6

    .line 1005
    .line 1006
    :catch_15
    move-exception p1

    .line 1007
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_6

    .line 1011
    .line 1012
    :sswitch_17
    const-string v1, "create"

    .line 1013
    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    if-nez v0, :cond_21

    .line 1019
    .line 1020
    goto/16 :goto_5

    .line 1021
    .line 1022
    :cond_21
    iget-object v0, p0, Lfa/b0;->g:Lfa/u;

    .line 1023
    .line 1024
    if-eqz v0, :cond_22

    .line 1025
    .line 1026
    if-eqz v0, :cond_22

    .line 1027
    .line 1028
    :try_start_16
    invoke-virtual {v0}, Lfa/u;->E()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 1029
    .line 1030
    .line 1031
    :catch_16
    :cond_22
    :try_start_17
    invoke-direct {p0, p1, p2}, Lfa/b0;->d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_6

    .line 1035
    .line 1036
    :catch_17
    move-exception p1

    .line 1037
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1038
    .line 1039
    .line 1040
    goto/16 :goto_6

    .line 1041
    .line 1042
    :sswitch_18
    const-string p1, "pauseImageStreaming"

    .line 1043
    .line 1044
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p1

    .line 1048
    if-nez p1, :cond_23

    .line 1049
    .line 1050
    goto/16 :goto_5

    .line 1051
    .line 1052
    :cond_23
    :try_start_18
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1053
    .line 1054
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {p1, p2}, Lfa/u;->n0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 1058
    .line 1059
    .line 1060
    goto/16 :goto_6

    .line 1061
    .line 1062
    :catch_18
    move-exception p1

    .line 1063
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_6

    .line 1067
    .line 1068
    :sswitch_19
    const-string p1, "getMinExposureOffset"

    .line 1069
    .line 1070
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result p1

    .line 1074
    if-nez p1, :cond_24

    .line 1075
    .line 1076
    goto/16 :goto_5

    .line 1077
    .line 1078
    :cond_24
    :try_start_19
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1079
    .line 1080
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p1}, Lfa/u;->Q()D

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v0

    .line 1087
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1088
    .line 1089
    .line 1090
    move-result-object p1

    .line 1091
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_6

    .line 1095
    .line 1096
    :catch_19
    move-exception p1

    .line 1097
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1098
    .line 1099
    .line 1100
    goto/16 :goto_6

    .line 1101
    .line 1102
    :sswitch_1a
    const-string p1, "getExposureOffsetStepSize"

    .line 1103
    .line 1104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result p1

    .line 1108
    if-nez p1, :cond_25

    .line 1109
    .line 1110
    goto/16 :goto_5

    .line 1111
    .line 1112
    :cond_25
    :try_start_1a
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1113
    .line 1114
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {p1}, Lfa/u;->N()D

    .line 1118
    .line 1119
    .line 1120
    move-result-wide v0

    .line 1121
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1122
    .line 1123
    .line 1124
    move-result-object p1

    .line 1125
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_6

    .line 1129
    .line 1130
    :catch_1a
    move-exception p1

    .line 1131
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_6

    .line 1135
    .line 1136
    :sswitch_1b
    const-string p1, "getCameraHardwareLevel"

    .line 1137
    .line 1138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result p1

    .line 1142
    if-nez p1, :cond_26

    .line 1143
    .line 1144
    goto/16 :goto_5

    .line 1145
    .line 1146
    :cond_26
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1147
    .line 1148
    if-eqz p1, :cond_27

    .line 1149
    .line 1150
    invoke-virtual {p1}, Lfa/u;->L()I

    .line 1151
    .line 1152
    .line 1153
    move-result p1

    .line 1154
    goto :goto_4

    .line 1155
    :cond_27
    const/4 p1, -0x1

    .line 1156
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1157
    .line 1158
    .line 1159
    move-result-object p1

    .line 1160
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    goto/16 :goto_6

    .line 1164
    .line 1165
    :sswitch_1c
    const-string p1, "getMinZoomLevel"

    .line 1166
    .line 1167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result p1

    .line 1171
    if-nez p1, :cond_28

    .line 1172
    .line 1173
    goto :goto_5

    .line 1174
    :cond_28
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1175
    .line 1176
    :try_start_1b
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p1}, Lfa/u;->R()F

    .line 1180
    .line 1181
    .line 1182
    move-result p1

    .line 1183
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1188
    .line 1189
    .line 1190
    goto :goto_6

    .line 1191
    :catch_1b
    move-exception p1

    .line 1192
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1193
    .line 1194
    .line 1195
    goto :goto_6

    .line 1196
    :sswitch_1d
    const-string p1, "stopImageStreaming"

    .line 1197
    .line 1198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    move-result p1

    .line 1202
    if-nez p1, :cond_29

    .line 1203
    .line 1204
    goto :goto_5

    .line 1205
    :cond_29
    :try_start_1c
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1206
    .line 1207
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {p1, p2}, Lfa/u;->M0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1211
    .line 1212
    .line 1213
    goto :goto_6

    .line 1214
    :catch_1c
    move-exception p1

    .line 1215
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1216
    .line 1217
    .line 1218
    goto :goto_6

    .line 1219
    :sswitch_1e
    const-string p1, "availableCameras"

    .line 1220
    .line 1221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result p1

    .line 1225
    if-nez p1, :cond_2a

    .line 1226
    .line 1227
    goto :goto_5

    .line 1228
    :cond_2a
    :try_start_1d
    iget-object p1, p0, Lfa/b0;->a:Landroid/app/Activity;

    .line 1229
    .line 1230
    invoke-static {p1}, Lfa/m0;->b(Landroid/app/Activity;)Ljava/util/List;

    .line 1231
    .line 1232
    .line 1233
    move-result-object p1

    .line 1234
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1235
    .line 1236
    .line 1237
    goto :goto_6

    .line 1238
    :catch_1d
    move-exception p1

    .line 1239
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_6

    .line 1243
    :sswitch_1f
    const-string p1, "resumeImageStreaming"

    .line 1244
    .line 1245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result p1

    .line 1249
    if-nez p1, :cond_2b

    .line 1250
    .line 1251
    goto :goto_5

    .line 1252
    :cond_2b
    :try_start_1e
    iget-object p1, p0, Lfa/b0;->g:Lfa/u;

    .line 1253
    .line 1254
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {p1, p2}, Lfa/u;->t0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1258
    .line 1259
    .line 1260
    goto :goto_6

    .line 1261
    :catch_1e
    move-exception p1

    .line 1262
    invoke-direct {p0, p1, p2}, Lfa/b0;->c(Ljava/lang/Exception;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1263
    .line 1264
    .line 1265
    goto :goto_6

    .line 1266
    :cond_2c
    :goto_5
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 1267
    .line 1268
    .line 1269
    :cond_2d
    :goto_6
    return-void

    .line 1270
    nop

    .line 1271
    :sswitch_data_0
    .sparse-switch
        -0x7de6d92c -> :sswitch_1f
        -0x796d551b -> :sswitch_1e
        -0x79497217 -> :sswitch_1d
        -0x762a044b -> :sswitch_1c
        -0x72f57bdf -> :sswitch_1b
        -0x6e377d83 -> :sswitch_1a
        -0x6a4bd14a -> :sswitch_19
        -0x567ccf23 -> :sswitch_18
        -0x509a5f04 -> :sswitch_17
        -0x4e44a4cb -> :sswitch_16
        -0x44a81e84 -> :sswitch_15
        -0x432ef7a7 -> :sswitch_14
        -0x42ccdad1 -> :sswitch_13
        -0x41a5ddb7 -> :sswitch_12
        -0x403e7ef2 -> :sswitch_11
        -0x2285a266 -> :sswitch_10
        -0x120bccc3 -> :sswitch_f
        -0xe65e43d -> :sswitch_e
        -0xcebf7ab -> :sswitch_d
        0x682a543 -> :sswitch_c
        0xb200c58 -> :sswitch_b
        0xbb76648 -> :sswitch_a
        0x175c5771 -> :sswitch_9
        0x2c7fedbe -> :sswitch_8
        0x2decaf4c -> :sswitch_7
        0x34efdccc -> :sswitch_6
        0x34f796db -> :sswitch_5
        0x42c3a0b8 -> :sswitch_4
        0x54c6d4f2 -> :sswitch_3
        0x63a5261f -> :sswitch_2
        0x69361787 -> :sswitch_1
        0x6d8ed0e3 -> :sswitch_0
    .end sparse-switch
.end method

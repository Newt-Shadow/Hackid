.class Lfa/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/u$f;,
        Lfa/u$e;,
        Lfa/u$d;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/HashMap;


# instance fields
.field private a:Lga/d;

.field private b:Ljava/lang/String;

.field private c:I

.field private final d:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field private final e:Lpa/g;

.field private final f:Lfa/o0;

.field private g:Lfa/e0;

.field private final h:Lga/b;

.field private final i:Landroid/app/Activity;

.field private j:Landroid/os/Handler;

.field private k:Landroid/os/HandlerThread;

.field private l:Lfa/y;

.field private m:Landroid/hardware/camera2/CameraCaptureSession;

.field private n:Landroid/media/ImageReader;

.field private o:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private p:Landroid/media/MediaRecorder;

.field private q:Lta/a;

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field u:Lfa/x;

.field v:Lfa/q0;

.field private w:Ljava/io/File;

.field private x:Ljava/io/File;

.field private y:Ljava/io/File;

.field private z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfa/u;->A:Ljava/util/HashMap;

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "yuv420"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "jpeg"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lga/b;Lfa/o0;Lfa/e0;Lpa/g;Lta/a;ZZZLfa/q0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfa/x;

    .line 5
    .line 6
    invoke-direct {v0}, Lfa/x;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 10
    .line 11
    iput-object p7, p0, Lfa/u;->q:Lta/a;

    .line 12
    .line 13
    iput-object p11, p0, Lfa/u;->v:Lfa/q0;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Lfa/u;->i:Landroid/app/Activity;

    .line 18
    .line 19
    iput-object p2, p0, Lfa/u;->d:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 20
    .line 21
    iput-object p4, p0, Lfa/u;->f:Lfa/o0;

    .line 22
    .line 23
    iput-object p5, p0, Lfa/u;->g:Lfa/e0;

    .line 24
    .line 25
    iput-object p3, p0, Lfa/u;->h:Lga/b;

    .line 26
    .line 27
    iput-object p6, p0, Lfa/u;->e:Lpa/g;

    .line 28
    .line 29
    iput-boolean p8, p0, Lfa/u;->r:Z

    .line 30
    .line 31
    iput-boolean p9, p0, Lfa/u;->s:Z

    .line 32
    .line 33
    iput-boolean p10, p0, Lfa/u;->t:Z

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p7, "Camera: useBackgroundThread:"

    .line 41
    .line 42
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p7, ",abortCaptureSessionBeforeStarting:"

    .line 49
    .line 50
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p7, ",useOnlyLegacySurfaceConfig:"

    .line 57
    .line 58
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string p7, "Camera"

    .line 69
    .line 70
    invoke-static {p7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {p3, p5, p1, p4, p6}, Lga/d;->k(Lga/b;Lfa/e0;Landroid/app/Activity;Lfa/o0;Lpa/g;)Lga/d;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lfa/u;->a:Lga/d;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "No activity available!"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method static synthetic A(Lfa/u;)Lga/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lfa/u;)Lfa/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/u;->f:Lfa/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfa/u;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private C0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 2
    .line 3
    new-instance v1, Lfa/q;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lfa/q;-><init>(Lfa/u;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic D(Lfa/u;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p1
.end method

.method private F()V
    .locals 4

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "closeCaptureSession"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    iput-object v2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v3

    .line 22
    :try_start_1
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    return-void

    .line 27
    :goto_2
    iput-object v2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 28
    .line 29
    throw v0
.end method

.method private varargs G(ILjava/lang/Runnable;[Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfa/u;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :try_start_1
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    .line 17
    :catch_1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "createCaptureSession: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 28
    .line 29
    invoke-virtual {v1}, Lfa/x;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "Camera"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lfa/u;->l:Lfa/y;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lfa/y;->c(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 52
    .line 53
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 54
    .line 55
    invoke-virtual {v0}, Lga/d;->h()Lpa/f;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lfa/u;->d:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 60
    .line 61
    invoke-interface {v1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lpa/f;->h()Landroid/util/Size;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0}, Lpa/f;->h()Landroid/util/Size;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroid/view/Surface;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 90
    .line 91
    iget-boolean v1, v1, Lfa/x;->a:Z

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const/4 v1, 0x1

    .line 105
    if-eq p1, v1, :cond_2

    .line 106
    .line 107
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroid/view/Surface;

    .line 122
    .line 123
    iget-object v2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lfa/u;->g:Lfa/e0;

    .line 130
    .line 131
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 132
    .line 133
    invoke-static {p1, v1}, Lfa/k0;->c(Lfa/e0;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/util/Size;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v1, p0, Lfa/u;->a:Lga/d;

    .line 138
    .line 139
    invoke-virtual {v1}, Lga/d;->e()Lka/a;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, p1}, Lka/a;->e(Landroid/util/Size;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lfa/u;->a:Lga/d;

    .line 147
    .line 148
    invoke-virtual {v1}, Lga/d;->g()Lma/a;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1, p1}, Lma/a;->e(Landroid/util/Size;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Lfa/u$b;

    .line 156
    .line 157
    invoke-direct {p1, p0, p2}, Lfa/u$b;-><init>(Lfa/u;Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .line 162
    const/16 v1, 0x1c

    .line 163
    .line 164
    if-lt p2, v1, :cond_6

    .line 165
    .line 166
    iget-boolean p2, p0, Lfa/u;->t:Z

    .line 167
    .line 168
    if-nez p2, :cond_6

    .line 169
    .line 170
    new-instance p2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 176
    .line 177
    iget-boolean v1, v1, Lfa/x;->a:Z

    .line 178
    .line 179
    if-eqz v1, :cond_3

    .line 180
    .line 181
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 182
    .line 183
    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Landroid/view/Surface;

    .line 204
    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 208
    .line 209
    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_5
    invoke-direct {p0, p2, p1}, Lfa/u;->J(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 226
    .line 227
    iget-boolean v1, v1, Lfa/x;->a:Z

    .line 228
    .line 229
    if-eqz v1, :cond_7

    .line 230
    .line 231
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_7
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, p2, p1}, Lfa/u;->I(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 238
    .line 239
    .line 240
    :goto_2
    return-void
.end method

.method private G0()V
    .locals 3

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "startCapture: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 14
    .line 15
    iget-boolean v1, v1, Lfa/x;->e:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lfa/u;->x:Ljava/io/File;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lfa/r;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lfa/r;-><init>(Lfa/u;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Lfa/u;->u:Lfa/x;

    .line 40
    .line 41
    iget-boolean v2, v2, Lfa/x;->c:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    new-array v2, v2, [Landroid/view/Surface;

    .line 56
    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, [Landroid/view/Surface;

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-direct {p0, v2, v1, v0}, Lfa/u;->G(ILjava/lang/Runnable;[Landroid/view/Surface;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private I(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->l:Lfa/y;

    .line 2
    .line 3
    iget-object v1, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, v1}, Lfa/y;->a(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private I0()V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "startRegularPreview"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lfa/x;->b:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lfa/x;->a:Z

    .line 15
    .line 16
    iget-object v0, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0}, [Landroid/view/Surface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lfa/u;->H(I[Landroid/view/Surface;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private J(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/u;->l:Lfa/y;

    .line 2
    .line 3
    invoke-static {}, Lfa/b;->a()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1, p1, v2, p2}, Lfa/a;->a(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/params/SessionConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lfa/y;->b(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private K0()V
    .locals 4

    .line 1
    const-string v0, "stopAndReleaseCamera"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->l:Lfa/y;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-interface {v0}, Lfa/y;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :goto_0
    iput-object v2, p0, Lfa/u;->l:Lfa/y;

    .line 17
    .line 18
    iput-object v2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_1
    const-string v3, "stopAndReleaseCamera: "

    .line 25
    .line 26
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    iput-object v2, p0, Lfa/u;->l:Lfa/y;

    .line 31
    .line 32
    iput-object v2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 33
    .line 34
    throw v0

    .line 35
    :cond_0
    invoke-direct {p0}, Lfa/u;->F()V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method private N0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lfa/x;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 8
    .line 9
    iget-object v2, p0, Lfa/u;->h:Lga/b;

    .line 10
    .line 11
    iget-object v3, p0, Lfa/u;->g:Lfa/e0;

    .line 12
    .line 13
    invoke-interface {v2, v3, v1}, Lga/b;->d(Lfa/e0;Z)Lha/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lga/d;->l(Lha/a;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :try_start_1
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    :catch_1
    iget-object v0, p0, Lfa/u;->x:Ljava/io/File;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :try_start_2
    iget-object v1, p0, Lfa/u;->q:Lta/a;

    .line 40
    .line 41
    iget-object v2, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lta/a;->b(Ljava/io/File;Ljava/lang/Long;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lfa/u;->x:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_2
    move-exception v0

    .line 51
    const-string v1, "Camera"

    .line 52
    .line 53
    const-string v2, "stopVideo: "

    .line 54
    .line 55
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    return-void
.end method

.method private P0()V
    .locals 4

    .line 1
    const-string v0, "unlockAutoFocus"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "[unlockAutoFocus] captureSession null, returning"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    .line 20
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 31
    .line 32
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 45
    .line 46
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    .line 58
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    new-instance v0, Lfa/h;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lfa/h;-><init>(Lfa/u;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lfa/u;->f:Lfa/o0;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private R0(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 1
    const-string v0, "Updating builder settings"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lga/d;->a()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lga/a;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Updating builder with feature: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lga/a;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lga/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private synthetic T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfa/u;->f:Lfa/o0;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic U(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic V(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set exposure mode."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setExposureModeFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic W(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lja/a;->g()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic X(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set exposure offset."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setExposureOffsetFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic Y(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic Z(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set exposure point."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setExposurePointFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->V(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic b(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->g0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set flash mode."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setFlashModeFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->c0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic c0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set focus point."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setFocusPointFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic d(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/u;->U(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private static synthetic d0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic e(Lfa/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/u;->j0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e0(Landroid/media/ImageReader;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lfa/u;->v:Lfa/q0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 13
    .line 14
    iget-boolean v1, v1, Lfa/x;->d:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lfa/q0;->a(Landroid/media/Image;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public static synthetic f(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/u;->f0(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private static synthetic f0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic g(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->X(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic g0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Could not set zoom level."

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "setZoomLevelFailed"

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic h(Lfa/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/u;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic h0(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p3, "mediaRecorder onInfoListener: "

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p3, "Camera"

    .line 19
    .line 20
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x322

    .line 24
    .line 25
    if-ne p2, p1, :cond_0

    .line 26
    .line 27
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 p2, 0x1a

    .line 30
    .line 31
    if-lt p1, p2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lfa/u;->w:Ljava/io/File;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lfa/u;->q:Lta/a;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lta/a;->a(Ljava/io/File;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lfa/u;->y:Ljava/io/File;

    .line 44
    .line 45
    iget-object p2, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lfa/c;->a(Landroid/media/MediaRecorder;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 p1, 0x323

    .line 57
    .line 58
    if-ne p2, p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lfa/u;->x:Ljava/io/File;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    :try_start_1
    iget-object p2, p0, Lfa/u;->q:Lta/a;

    .line 65
    .line 66
    iget-object p3, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {p2, p1, p3}, Lta/a;->b(Ljava/io/File;Ljava/lang/Long;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lfa/u;->f:Lfa/o0;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2, p1}, Lfa/o0;->o(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 90
    .line 91
    iget-object p1, p0, Lfa/u;->y:Ljava/io/File;

    .line 92
    .line 93
    iput-object p1, p0, Lfa/u;->x:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i(Lfa/u;Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfa/u;->h0(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method private synthetic i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 15
    .line 16
    iget-object v0, p0, Lfa/u;->q:Lta/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lta/a;->g()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 25
    .line 26
    new-instance v1, Lfa/m;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lfa/m;-><init>(Lfa/u;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic j(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/u;->a0(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private synthetic j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->f:Lfa/o0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, p2, v1}, Lfa/o0;->d(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic k(Lfa/u;Landroid/media/ImageReader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfa/u;->e0(Landroid/media/ImageReader;)V

    return-void
.end method

.method private k0()V
    .locals 4

    .line 1
    const-string v0, "lockAutoFocus"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "[unlockAutoFocus] captureSession null, returning"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    .line 20
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 31
    .line 32
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, p0, Lfa/u;->f:Lfa/o0;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public static synthetic l(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/u;->Y(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic m(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/u;->d0(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic n(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->b0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfa/u;->Z(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfa/u;->W(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V

    return-void
.end method

.method public static synthetic q(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfa/u;->i0()V

    return-void
.end method

.method private q0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lga/d;->i()Lqa/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lqa/b;->d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lsa/a;

    .line 19
    .line 20
    invoke-virtual {p0}, Lfa/u;->S()Landroid/media/CamcorderProfile;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lfa/u;->q:Lta/a;

    .line 25
    .line 26
    invoke-direct {v1, v2, p1, v3}, Lsa/a;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lta/a;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lfa/u;->q:Lta/a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lta/a;->d()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v1, p1}, Lsa/a;->c(Z)Lsa/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lfa/u;->M()Lqa/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lqa/a;->e()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lfa/u;->M()Lqa/a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lqa/a;->f(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_0
    invoke-virtual {p1, v0}, Lsa/a;->d(I)Lsa/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lsa/a;->a()Landroid/media/MediaRecorder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method static synthetic r(Lfa/u;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private r0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "prepareRecording"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lfa/u;->w:Ljava/io/File;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lfa/u;->y:Ljava/io/File;

    .line 17
    .line 18
    iput-object p1, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget-object v2, p0, Lfa/u;->q:Lta/a;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lta/a;->a(Ljava/io/File;)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lfa/u;->x:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lfa/u;->q0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lfa/u;->a:Lga/d;

    .line 37
    .line 38
    iget-object v0, p0, Lfa/u;->h:Lga/b;

    .line 39
    .line 40
    iget-object v1, p0, Lfa/u;->g:Lfa/e0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-interface {v0, v1, v2}, Lga/b;->d(Lfa/e0;Z)Lha/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lga/d;->l(Lha/a;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lfa/x;->c(Z)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lfa/u;->x:Ljava/io/File;

    .line 57
    .line 58
    return-void

    .line 59
    :catch_1
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lfa/x;->c(Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lfa/u;->x:Ljava/io/File;

    .line 65
    .line 66
    return-void
.end method

.method static synthetic s(Lfa/u;)Lfa/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/u;->l:Lfa/y;

    .line 2
    .line 3
    return-object p0
.end method

.method private s0(Ljava/lang/Runnable;Lfa/p0;)V
    .locals 4

    .line 1
    const-string v0, "refreshPreviewCaptureSession"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "refreshPreviewCaptureSession: captureSession not yet initialized, skipping preview capture session refresh."

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "Camera is closed: "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "cameraAccess"

    .line 61
    .line 62
    invoke-interface {p2, v0, p1}, Lfa/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic t(Lfa/u;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lfa/u;Lfa/y;)Lfa/y;
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/u;->l:Lfa/y;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic v(Lfa/u;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfa/u;->R0(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lfa/u;Ljava/lang/Runnable;Lfa/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfa/u;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfa/u;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfa/u;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A0(Lio/flutter/plugin/common/MethodChannel$Result;Lha/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->b()Lha/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lha/a;->e(Lha/b;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lha/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 16
    .line 17
    iget-boolean v0, v0, Lfa/x;->b:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_4

    .line 21
    .line 22
    sget-object v0, Lfa/u$c;->a:[I

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    aget p2, v0, p2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p2, v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    if-eq p2, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lfa/u;->P0()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 42
    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    const-string p1, "Camera"

    .line 46
    .line 47
    const-string p2, "[unlockAutoFocus] captureSession null, returning"

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-direct {p0}, Lfa/u;->k0()V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 57
    .line 58
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object p2, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 69
    .line 70
    iget-object v0, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 77
    .line 78
    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p2

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "Error setting focus mode: "

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string v0, "setFocusModeFailed"

    .line 107
    .line 108
    invoke-interface {p1, v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    return-void

    .line 112
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    return-void
.end method

.method public B0(Lio/flutter/plugin/common/MethodChannel$Result;Lga/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->g()Lma/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lma/a;->f(Lga/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lma/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lfa/d;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lfa/d;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lfa/e;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfa/e;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lfa/u;->a:Lga/d;

    .line 29
    .line 30
    invoke-virtual {p1}, Lga/d;->b()Lha/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lha/a;->d()Lha/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p2, p1}, Lfa/u;->A0(Lio/flutter/plugin/common/MethodChannel$Result;Lha/b;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public D0(Lta/a;)V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "setMediaRecorderSettings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lfa/u;->q:Lta/a;

    .line 9
    .line 10
    return-void
.end method

.method public E()V
    .locals 4

    .line 1
    const-string v0, "close: "

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    const-string v2, "Camera"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0}, Lfa/u;->K0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v1, 0x0

    .line 19
    :try_start_1
    iget-object v3, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_1
    iput-object v1, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_6

    .line 31
    :catch_1
    move-exception v3

    .line 32
    :try_start_2
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :goto_2
    :try_start_3
    iget-object v3, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_3
    iput-object v1, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 49
    .line 50
    iput-object v1, p0, Lfa/u;->x:Ljava/io/File;

    .line 51
    .line 52
    iput-object v1, p0, Lfa/u;->y:Ljava/io/File;

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    goto :goto_5

    .line 57
    :catch_2
    move-exception v3

    .line 58
    :try_start_4
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_4
    invoke-virtual {p0}, Lfa/u;->L0()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_5
    iput-object v1, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 67
    .line 68
    iput-object v1, p0, Lfa/u;->x:Ljava/io/File;

    .line 69
    .line 70
    iput-object v1, p0, Lfa/u;->y:Ljava/io/File;

    .line 71
    .line 72
    throw v0

    .line 73
    :goto_6
    iput-object v1, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 74
    .line 75
    throw v0
.end method

.method public E0(Lio/flutter/plugin/common/MethodChannel$Result;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->j()Lra/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lra/b;->d()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lra/b;->e()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    cmpl-float v3, p2, v1

    .line 16
    .line 17
    if-gtz v3, :cond_1

    .line 18
    .line 19
    cmpg-float v3, p2, v2

    .line 20
    .line 21
    if-gez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p2}, Lra/b;->f(Ljava/lang/Float;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lra/b;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lfa/k;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lfa/k;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lfa/l;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lfa/l;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    :goto_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "Zoom level out of bounds (zoom level should be between %f and %f)."

    .line 65
    .line 66
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v0, "ZOOM_ERROR"

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-interface {p1, v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public F0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfa/u;->r:Z

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "startBackgroundThread backgroundThread is disabled"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "startBackgroundThread: "

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "CameraBackground"

    .line 24
    .line 25
    invoke-static {v0}, Lfa/u$f;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iget-object v0, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lfa/u$e;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 45
    .line 46
    return-void
.end method

.method varargs H(I[Landroid/view/Surface;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lfa/u;->G(ILjava/lang/Runnable;[Landroid/view/Surface;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public H0(Lfa/l0;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "startPreviewWithImageStream"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    iget-boolean v0, v0, Lfa/x;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0}, Lfa/u;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v2, "startPreviewWithImageStream: "

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lfa/x;->a(Lfa/l0;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lfa/u;->G0()V

    .line 30
    .line 31
    .line 32
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public J0(Lfa/l0;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "startVideoRecording"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lfa/x;->a(Lfa/l0;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lfa/u;->u:Lfa/x;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lfa/x;->c(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Lfa/u;->r0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lfa/u;->g:Lfa/e0;

    .line 23
    .line 24
    invoke-interface {p1}, Lfa/e0;->j()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lfa/u;->c:I

    .line 29
    .line 30
    :try_start_0
    invoke-direct {p0}, Lfa/u;->G0()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lfa/u;->x:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    iget-object p2, p0, Lfa/u;->u:Lfa/x;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, v0}, Lfa/x;->c(Z)V

    .line 48
    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lfa/u;->x:Ljava/io/File;

    .line 52
    .line 53
    iput-object p2, p0, Lfa/u;->y:Ljava/io/File;

    .line 54
    .line 55
    const-string v0, "videoRecordingFailed"

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p3, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "dispose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lfa/u;->E()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    :try_start_1
    iget-object v0, p0, Lfa/u;->d:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 17
    .line 18
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$TextureEntry;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lfa/u;->M()Lqa/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lqa/a;->j()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catch_2
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->g:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public L0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfa/u;->r:Z

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "backgroundThread is disabled"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "stopBackgroundThread: "

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_0
    iget-object v3, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iput-object v2, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 27
    .line 28
    iput-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception v3

    .line 34
    :try_start_1
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return-void

    .line 39
    :goto_2
    iput-object v2, p0, Lfa/u;->k:Landroid/os/HandlerThread;

    .line 40
    .line 41
    iput-object v2, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 42
    .line 43
    throw v0
.end method

.method M()Lqa/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->i()Lqa/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lqa/b;->c()Lqa/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public M0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "stopImageStream"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lfa/x;->b(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 15
    .line 16
    iget-boolean v0, v0, Lfa/x;->e:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lfa/u;->O0(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lfa/u;->I0()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public N()D
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->d()Lja/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a;->d()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public O()D
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->d()Lja/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a;->e()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public O0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "stopVideoRecording"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    iget-boolean v0, v0, Lfa/x;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lfa/u;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v3, "stopVideo: "

    .line 25
    .line 26
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lfa/u;->I0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lfa/u;->x:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lfa/u;->x:Ljava/io/File;

    .line 42
    .line 43
    iput-object v2, p0, Lfa/u;->z:Ljava/lang/Long;

    .line 44
    .line 45
    return-void

    .line 46
    :catch_1
    move-exception v0

    .line 47
    const-string v1, "videoRecordingFailed"

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, v1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public P()F
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->j()Lra/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lra/b;->d()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public Q()D
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->d()Lja/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a;->f()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->i()Lqa/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lqa/b;->g()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public R()F
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->j()Lra/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lra/b;->e()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method S()Landroid/media/CamcorderProfile;
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/u;->g:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lfa/u;->q:Lta/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lta/a;->h()Lpa/g;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lfa/m0;->c(Ljava/lang/String;Lpa/g;)Landroid/media/CamcorderProfile;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public l0(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->i()Lqa/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lqa/b;->e(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "open"

    .line 2
    .line 3
    const-string v1, "Camera"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lfa/u;->F0()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lfa/u;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lga/d;->h()Lpa/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lpa/f;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lfa/u;->f:Lfa/o0;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "Camera with name \""

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lfa/u;->g:Lfa/e0;

    .line 38
    .line 39
    invoke-interface {v1}, Lfa/e0;->t()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "\" is not supported by this plugin."

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    sget-object v2, Lfa/u;->A:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Integer;

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    const-string p1, "The selected imageFormatGroup is not supported by Android. Defaulting to yuv420"

    .line 70
    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/16 p1, 0x23

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lpa/f;->h()Landroid/util/Size;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/4 v3, 0x1

    .line 97
    invoke-static {v2, v1, p1, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lfa/u;->n:Landroid/media/ImageReader;

    .line 102
    .line 103
    iget-object p1, p0, Lfa/u;->i:Landroid/app/Activity;

    .line 104
    .line 105
    invoke-static {p1}, Lfa/m0;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v1, p0, Lfa/u;->g:Lfa/e0;

    .line 110
    .line 111
    invoke-interface {v1}, Lfa/e0;->t()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Lfa/u$a;

    .line 116
    .line 117
    invoke-direct {v2, p0, v0}, Lfa/u$a;-><init>(Lfa/u;Lpa/f;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lfa/u;->j:Landroid/os/Handler;

    .line 121
    .line 122
    invoke-virtual {p1, v1, v2, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public n0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "pauseImageStream"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lfa/x;->d:Z

    .line 12
    .line 13
    iget-object v1, p0, Lfa/u;->f:Lfa/o0;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lfa/o0;->j(Lfa/x;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public o0()V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "pausePreview"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lfa/x;->b:Z

    .line 12
    .line 13
    iget-object v1, p0, Lfa/u;->f:Lfa/o0;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lfa/o0;->j(Lfa/x;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lfa/u;->m:Landroid/hardware/camera2/CameraCaptureSession;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "what="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, ",extra="

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string p3, "MediaRecorder onError:"

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "Camera"

    .line 44
    .line 45
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lfa/u;->u:Lfa/x;

    .line 49
    .line 50
    iget-boolean p1, p1, Lfa/x;->e:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lfa/u;->f:Lfa/o0;

    .line 55
    .line 56
    invoke-virtual {p1}, Lfa/o0;->n()V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public p0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "pauseVideoRecording"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    iget-boolean v1, v0, Lfa/x;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lfa/x;->f:Z

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lfa/u;->f:Lfa/o0;

    .line 28
    .line 29
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lfa/o0;->j(Lfa/x;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "videoRecordingFailed"

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public t0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "resumeImageStream"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lfa/x;->d:Z

    .line 12
    .line 13
    iget-object v1, p0, Lfa/u;->f:Lfa/o0;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lfa/o0;->j(Lfa/x;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public u0()V
    .locals 2

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "resumePreview"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lfa/x;->b:Z

    .line 12
    .line 13
    new-instance v0, Lfa/p;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lfa/p;-><init>(Lfa/u;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, v1, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public v0(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "Camera"

    .line 2
    .line 3
    const-string v1, "resumeVideoRecording"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfa/u;->u:Lfa/x;

    .line 9
    .line 10
    iget-boolean v1, v0, Lfa/x;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lfa/x;->f:Z

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lfa/u;->p:Landroid/media/MediaRecorder;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lfa/u;->f:Lfa/o0;

    .line 28
    .line 29
    iget-object v1, p0, Lfa/u;->u:Lfa/x;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lfa/o0;->j(Lfa/x;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "videoRecordingFailed"

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public w0(Lio/flutter/plugin/common/MethodChannel$Result;Lia/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->c()Lia/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lia/a;->e(Lia/b;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lia/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lfa/i;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lfa/i;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lfa/j;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfa/j;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public x0(Lio/flutter/plugin/common/MethodChannel$Result;D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->d()Lja/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p2}, Lja/a;->h(Ljava/lang/Double;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lja/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lfa/s;

    .line 20
    .line 21
    invoke-direct {p2, p1, v0}, Lfa/s;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lja/a;)V

    .line 22
    .line 23
    .line 24
    new-instance p3, Lfa/t;

    .line 25
    .line 26
    invoke-direct {p3, p1}, Lfa/t;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2, p3}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public y0(Lio/flutter/plugin/common/MethodChannel$Result;Lga/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->e()Lka/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lka/a;->f(Lga/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lka/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lfa/n;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lfa/n;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lfa/o;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfa/o;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public z0(Lio/flutter/plugin/common/MethodChannel$Result;Lla/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u;->a:Lga/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/d;->f()Lla/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lla/a;->d(Lla/b;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lfa/u;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lla/a;->b(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lfa/f;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lfa/f;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lfa/g;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfa/g;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, v0}, Lfa/u;->s0(Ljava/lang/Runnable;Lfa/p0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

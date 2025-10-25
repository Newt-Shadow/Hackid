.class public final Ly4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/j$a;
    }
.end annotation


# static fields
.field private static final g:[I


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:[I

.field private c:Landroid/opengl/EGLDisplay;

.field private d:Landroid/opengl/EGLContext;

.field private e:Landroid/opengl/EGLSurface;

.field private f:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly4/j;->g:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ly4/j;-><init>(Landroid/os/Handler;Ly4/j$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ly4/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ly4/j;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Ly4/j;->b:[I

    return-void
.end method

.method private static a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 3
    .line 4
    new-array v10, v0, [I

    .line 5
    .line 6
    sget-object v2, Ly4/j;->g:[I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v4, v9

    .line 14
    move-object v7, v10

    .line 15
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    aget v2, v10, v1

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    aget-object v2, v9, v1

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    aget v2, v10, v1

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    aget-object v3, v9, v1

    .line 43
    .line 44
    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 49
    .line 50
    invoke-static {v2, p0}, Ly4/q0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    aget-object p0, v9, v1

    .line 58
    .line 59
    return-object p0
.end method

.method private static b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 4

    .line 1
    const/16 v0, 0x3038

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/16 v3, 0x3098

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    filled-new-array {v3, v2, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p2, 0x32c0

    .line 15
    .line 16
    filled-new-array {v3, v2, p2, v1, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p0, p1, v0, p2, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    const-string p1, "eglCreateContext failed"

    .line 32
    .line 33
    invoke-static {v1, p1}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private static c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    if-ne p3, v1, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x7

    .line 11
    new-array p3, p3, [I

    .line 12
    .line 13
    fill-array-data p3, :array_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 p3, 0x3056

    .line 18
    .line 19
    const/16 v1, 0x3038

    .line 20
    .line 21
    const/16 v2, 0x3057

    .line 22
    .line 23
    filled-new-array {v2, v0, p3, v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    :goto_0
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, p1, p3, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_1
    const-string p3, "eglCreatePbufferSurface failed"

    .line 37
    .line 38
    invoke-static {v0, p3}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    invoke-static {p0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const-string p2, "eglMakeCurrent failed"

    .line 46
    .line 47
    invoke-static {p0, p2}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private d()V
    .locals 0

    .line 1
    return-void
.end method

.method private static e([I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ly4/m;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static f()Landroid/opengl/EGLDisplay;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v0

    .line 12
    :goto_0
    const-string v4, "eglGetDisplay failed"

    .line 13
    .line 14
    invoke-static {v3, v4}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    new-array v3, v3, [I

    .line 19
    .line 20
    invoke-static {v1, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v2, "eglInitialize failed"

    .line 25
    .line 26
    invoke-static {v0, v2}, Ly4/m;->b(ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method


# virtual methods
.method public g()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    return-object v0
.end method

.method public h(I)V
    .locals 3

    .line 1
    invoke-static {}, Ly4/j;->f()Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    invoke-static {v0}, Ly4/j;->a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 12
    .line 13
    invoke-static {v1, v0, p1}, Ly4/j;->b(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Ly4/j;->d:Landroid/opengl/EGLContext;

    .line 18
    .line 19
    iget-object v2, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 20
    .line 21
    invoke-static {v2, v0, v1, p1}, Ly4/j;->c(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 26
    .line 27
    iget-object p1, p0, Ly4/j;->b:[I

    .line 28
    .line 29
    invoke-static {p1}, Ly4/j;->e([I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    iget-object v0, p0, Ly4/j;->b:[I

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aget v0, v0, v1

    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly4/j;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x13

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Ly4/j;->b:[I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 36
    .line 37
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 38
    .line 39
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 40
    .line 41
    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v2, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 57
    .line 58
    iget-object v3, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 59
    .line 60
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v2, p0, Ly4/j;->d:Landroid/opengl/EGLContext;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget-object v3, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 68
    .line 69
    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    sget v2, Ly4/q0;->a:I

    .line 73
    .line 74
    if-lt v2, v0, :cond_4

    .line 75
    .line 76
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    iget-object v0, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 92
    .line 93
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 94
    .line 95
    .line 96
    :cond_5
    iput-object v1, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 97
    .line 98
    iput-object v1, p0, Ly4/j;->d:Landroid/opengl/EGLContext;

    .line 99
    .line 100
    iput-object v1, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 101
    .line 102
    iput-object v1, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 103
    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    iget-object v3, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    iget-object v3, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 119
    .line 120
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 121
    .line 122
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 123
    .line 124
    invoke-static {v3, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v3, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_7

    .line 138
    .line 139
    iget-object v3, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 140
    .line 141
    iget-object v4, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 142
    .line 143
    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 144
    .line 145
    .line 146
    :cond_7
    iget-object v3, p0, Ly4/j;->d:Landroid/opengl/EGLContext;

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    iget-object v4, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 151
    .line 152
    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 153
    .line 154
    .line 155
    :cond_8
    sget v3, Ly4/q0;->a:I

    .line 156
    .line 157
    if-lt v3, v0, :cond_9

    .line 158
    .line 159
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 160
    .line 161
    .line 162
    :cond_9
    iget-object v0, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_a

    .line 173
    .line 174
    iget-object v0, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 175
    .line 176
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 177
    .line 178
    .line 179
    :cond_a
    iput-object v1, p0, Ly4/j;->c:Landroid/opengl/EGLDisplay;

    .line 180
    .line 181
    iput-object v1, p0, Ly4/j;->d:Landroid/opengl/EGLContext;

    .line 182
    .line 183
    iput-object v1, p0, Ly4/j;->e:Landroid/opengl/EGLSurface;

    .line 184
    .line 185
    iput-object v1, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 186
    .line 187
    throw v2
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly4/j;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ly4/j;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly4/j;->f:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

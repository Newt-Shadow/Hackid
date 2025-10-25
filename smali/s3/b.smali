.class final Ls3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Ls3/g;

.field private final c:Ls3/e;

.field private final d:Z

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 4
    new-instance v0, Ls3/g;

    invoke-direct {v0, p2}, Ls3/g;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 5
    new-instance p2, Ls3/e;

    invoke-direct {p2, p1, p3}, Ls3/e;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Ls3/b;->c:Ls3/e;

    .line 6
    iput-boolean p4, p0, Ls3/b;->d:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ls3/b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLs3/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls3/b;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V

    return-void
.end method

.method public static synthetic o(Ls3/b;Ls3/l$c;Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ls3/b;->w(Ls3/l$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method static synthetic p(Ls3/b;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ls3/b;->v(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ls3/b;->t(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic r(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ls3/b;->s(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static s(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ls3/b;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ls3/b;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static u(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const-string p0, "Audio"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    const-string p0, "Video"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "Unknown("

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ")"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private v(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 2
    .line 3
    iget-object v1, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls3/g;->h(Landroid/media/MediaCodec;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "configureCodec"

    .line 9
    .line 10
    invoke-static {v0}, Ly4/n0;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ly4/n0;->c()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Ls3/b;->c:Ls3/e;

    .line 22
    .line 23
    invoke-virtual {p1}, Ls3/e;->q()V

    .line 24
    .line 25
    .line 26
    const-string p1, "startCodec"

    .line 27
    .line 28
    invoke-static {p1}, Ly4/n0;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ly4/n0;->c()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput p1, p0, Ls3/b;->f:I

    .line 41
    .line 42
    return-void
.end method

.method private synthetic w(Ls3/l$c;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p0

    .line 3
    move-wide v2, p3

    .line 4
    move-wide v4, p5

    .line 5
    invoke-interface/range {v0 .. v5}, Ls3/l$c;->a(Ls3/l;JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls3/b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Ls3/e;->r()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/g;->g()Landroid/media/MediaFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls3/b;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/e;->l()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls3/g;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public f(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/e;->l()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ls3/g;->d(Landroid/media/MediaCodec$BufferInfo;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/e;->i()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls3/b;->b:Ls3/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Ls3/g;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public g(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ls3/l$c;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls3/b;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    new-instance v1, Ls3/a;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Ls3/a;-><init>(Ls3/b;Ls3/l$c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls3/b;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(IILe3/c;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Ls3/e;->n(IILe3/c;JI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls3/b;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public m(IIIJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls3/b;->c:Ls3/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Ls3/e;->m(IIIJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public release()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget v1, p0, Ls3/b;->f:I

    .line 3
    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Ls3/b;->c:Ls3/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Ls3/e;->p()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ls3/b;->b:Ls3/g;

    .line 12
    .line 13
    invoke-virtual {v1}, Ls3/g;->o()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x2

    .line 17
    iput v1, p0, Ls3/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    iget-boolean v1, p0, Ls3/b;->e:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, p0, Ls3/b;->e:Z

    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    iget-boolean v2, p0, Ls3/b;->e:Z

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Ls3/b;->a:Landroid/media/MediaCodec;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 39
    .line 40
    .line 41
    iput-boolean v0, p0, Ls3/b;->e:Z

    .line 42
    .line 43
    :cond_2
    throw v1
.end method

.class public final Lrf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/l;


# instance fields
.field private final a:Lrf/s;

.field private final b:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lrf/s;)V
    .locals 1

    .line 1
    const-string v0, "wrappedPlayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lrf/i;->a:Lrf/s;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lrf/i;->p(Lrf/s;)Landroid/media/MediaPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic k(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrf/i;->s(Lrf/s;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic l(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrf/i;->r(Lrf/s;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic m(Lrf/s;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lrf/i;->t(Lrf/s;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lrf/s;Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lrf/i;->u(Lrf/s;Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method public static synthetic o(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrf/i;->q(Lrf/s;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private final p(Lrf/s;)Landroid/media/MediaPlayer;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lrf/d;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lrf/d;-><init>(Lrf/s;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lrf/e;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lrf/e;-><init>(Lrf/s;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lrf/f;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lrf/f;-><init>(Lrf/s;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lrf/g;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lrf/g;-><init>(Lrf/s;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lrf/h;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lrf/h;-><init>(Lrf/s;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lrf/s;->j()Lqf/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lqf/a;->h(Landroid/media/MediaPlayer;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method private static final q(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrf/s;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrf/s;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final s(Lrf/s;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrf/s;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t(Lrf/s;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lrf/s;->z(II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final u(Lrf/s;Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lrf/s;->x(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lsf/c;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lrf/i;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lsf/c;->a(Landroid/media/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public g(Lqf/a;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lqf/a;->h(Landroid/media/MediaPlayer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lqf/a;->f()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    iget-object v0, p0, Lrf/i;->a:Lrf/s;

    .line 20
    .line 21
    invoke-virtual {v0}, Lrf/s;->h()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_1
    return-object v0
.end method

.method public h(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrf/i;->getDuration()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->a:Lrf/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/s;->q()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lrf/i;->j(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/i;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

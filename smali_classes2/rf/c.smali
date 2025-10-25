.class final Lrf/c;
.super Lrf/a;
.source "SourceFile"


# instance fields
.field private final b:Lrf/s;

.field private final c:Lid/a;

.field private final d:Lid/l;

.field private e:Lqf/a;

.field private f:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Lrf/s;Lid/a;Lid/l;)V
    .locals 1

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onGranted"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onLoss"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lrf/a;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lrf/c;->b:Lrf/s;

    .line 20
    .line 21
    iput-object p2, p0, Lrf/c;->c:Lid/a;

    .line 22
    .line 23
    iput-object p3, p0, Lrf/c;->d:Lid/l;

    .line 24
    .line 25
    invoke-virtual {p0}, Lrf/c;->e()Lrf/s;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lrf/s;->j()Lqf/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lrf/c;->e:Lqf/a;

    .line 34
    .line 35
    invoke-virtual {p0}, Lrf/c;->l()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic m(Lrf/c;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrf/c;->n(Lrf/c;I)V

    return-void
.end method

.method private static final n(Lrf/c;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrf/a;->f(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Lqf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/c;->e:Lqf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lid/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/c;->c:Lid/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lid/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/c;->d:Lid/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lrf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/c;->b:Lrf/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrf/c;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lrf/a;->a()Landroid/media/AudioManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lrf/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method protected j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lrf/a;->a()Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lrf/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 6
    .line 7
    invoke-virtual {p0}, Lrf/c;->b()Lqf/a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lqf/a;->d()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lrf/a;->f(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k(Lqf/a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lrf/c;->e:Lqf/a;

    .line 7
    .line 8
    return-void
.end method

.method protected l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrf/c;->b()Lqf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqf/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lrf/b;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lrf/b;-><init>(Lrf/c;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput-object v0, p0, Lrf/c;->f:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 19
    .line 20
    return-void
.end method

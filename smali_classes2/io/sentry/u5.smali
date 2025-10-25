.class public final Lio/sentry/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/u5$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Double;

.field private c:Ljava/util/Set;

.field private d:Ljava/util/Set;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lio/sentry/u5$a;

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:Lio/sentry/protocol/p;


# direct methods
.method public constructor <init>(ZLio/sentry/protocol/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/u5;->d:Ljava/util/Set;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/sentry/u5;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lio/sentry/u5;->f:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v0, Lio/sentry/u5$a;->MEDIUM:Lio/sentry/u5$a;

    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/u5;->g:Lio/sentry/u5$a;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lio/sentry/u5;->h:I

    .line 29
    .line 30
    const-wide/16 v1, 0x7530

    .line 31
    .line 32
    iput-wide v1, p0, Lio/sentry/u5;->i:J

    .line 33
    .line 34
    const-wide/16 v1, 0x1388

    .line 35
    .line 36
    iput-wide v1, p0, Lio/sentry/u5;->j:J

    .line 37
    .line 38
    const-wide/32 v1, 0x36ee80

    .line 39
    .line 40
    .line 41
    iput-wide v1, p0, Lio/sentry/u5;->k:J

    .line 42
    .line 43
    iput-boolean v0, p0, Lio/sentry/u5;->l:Z

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lio/sentry/u5;->s(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lio/sentry/u5;->r(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 54
    .line 55
    const-string v0, "android.webkit.WebView"

    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 61
    .line 62
    const-string v0, "android.widget.VideoView"

    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 68
    .line 69
    const-string v0, "androidx.media3.ui.PlayerView"

    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 75
    .line 76
    const-string v0, "com.google.android.exoplayer2.ui.PlayerView"

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 82
    .line 83
    const-string v0, "com.google.android.exoplayer2.ui.StyledPlayerView"

    .line 84
    .line 85
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lio/sentry/u5;->m:Lio/sentry/protocol/p;

    .line 89
    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u5;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/u5;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->b:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lio/sentry/u5$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->g:Lio/sentry/u5$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lio/sentry/protocol/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->m:Lio/sentry/protocol/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u5;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->a:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u5;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->d:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u5;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/u5;->k()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/u5;->k()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmpl-double v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public p()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/u5;->g()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/u5;->g()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmpl-double v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/u5;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public r(Z)V
    .locals 1

    .line 1
    const-string v0, "android.widget.ImageView"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/u5;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/u5;->d:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/u5;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    const-string v0, "android.widget.TextView"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/u5;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/u5;->d:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lio/sentry/u5;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/sentry/u5;->c:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public t(Ljava/lang/Double;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/util/u;->c(Ljava/lang/Double;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/u5;->b:Ljava/lang/Double;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "The value "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public u(Lio/sentry/u5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/u5;->g:Lio/sentry/u5$a;

    .line 2
    .line 3
    return-void
.end method

.method public v(Lio/sentry/protocol/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/u5;->m:Lio/sentry/protocol/p;

    .line 2
    .line 3
    return-void
.end method

.method public w(Ljava/lang/Double;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/util/u;->c(Ljava/lang/Double;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/u5;->a:Ljava/lang/Double;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "The value "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/u5;->l:Z

    .line 2
    .line 3
    return-void
.end method

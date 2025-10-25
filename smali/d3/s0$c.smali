.class final Ld3/s0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ld3/s0;


# direct methods
.method private constructor <init>(Ld3/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/s0$c;->a:Ld3/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ld3/s0;Ld3/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ld3/s0$c;-><init>(Ld3/s0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio sink error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 9
    .line 10
    invoke-static {v0}, Ld3/s0;->y1(Ld3/s0;)Ld3/v$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Ld3/v$a;->l(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/s0;->y1(Ld3/s0;)Ld3/v$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Ld3/v$a;->B(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/s0;->z1(Ld3/s0;)Lb3/t3$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 10
    .line 11
    invoke-static {v0}, Ld3/s0;->z1(Ld3/s0;)Lb3/t3$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lb3/t3$a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public d(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/s0;->y1(Ld3/s0;)Ld3/v$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Ld3/v$a;->D(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld3/s0;->G1()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/s0;->z1(Ld3/s0;)Lb3/t3$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 10
    .line 11
    invoke-static {v0}, Ld3/s0;->z1(Ld3/s0;)Lb3/t3$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lb3/t3$a;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0$c;->a:Ld3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/s0;->y1(Ld3/s0;)Ld3/v$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ld3/v$a;->C(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

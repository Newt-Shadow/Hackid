.class public final Ly4/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/t;


# instance fields
.field private final a:Ly4/d;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Lb3/l3;


# direct methods
.method public constructor <init>(Ly4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/i0;->a:Ly4/d;

    .line 5
    .line 6
    sget-object p1, Lb3/l3;->d:Lb3/l3;

    .line 7
    .line 8
    iput-object p1, p0, Ly4/i0;->e:Lb3/l3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ly4/i0;->c:J

    .line 2
    .line 3
    iget-boolean p1, p0, Ly4/i0;->b:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ly4/i0;->a:Ly4/d;

    .line 8
    .line 9
    invoke-interface {p1}, Ly4/d;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    iput-wide p1, p0, Ly4/i0;->d:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly4/i0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ly4/i0;->a:Ly4/d;

    .line 6
    .line 7
    invoke-interface {v0}, Ly4/d;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Ly4/i0;->d:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Ly4/i0;->b:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c(Lb3/l3;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly4/i0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ly4/i0;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Ly4/i0;->a(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Ly4/i0;->e:Lb3/l3;

    .line 13
    .line 14
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly4/i0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ly4/i0;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Ly4/i0;->a(J)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Ly4/i0;->b:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public g()Lb3/l3;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/i0;->e:Lb3/l3;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()J
    .locals 7

    .line 1
    iget-wide v0, p0, Ly4/i0;->c:J

    .line 2
    .line 3
    iget-boolean v2, p0, Ly4/i0;->b:Z

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Ly4/i0;->a:Ly4/d;

    .line 8
    .line 9
    invoke-interface {v2}, Ly4/d;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Ly4/i0;->d:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    iget-object v4, p0, Ly4/i0;->e:Lb3/l3;

    .line 17
    .line 18
    iget v5, v4, Lb3/l3;->a:F

    .line 19
    .line 20
    const/high16 v6, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v5, v5, v6

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    invoke-static {v2, v3}, Ly4/q0;->A0(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v4, v2, v3}, Lb3/l3;->b(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :goto_0
    add-long/2addr v0, v2

    .line 36
    :cond_1
    return-wide v0
.end method

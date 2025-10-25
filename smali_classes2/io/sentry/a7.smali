.class public final Lio/sentry/a7;
.super Lio/sentry/o6;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:Lio/sentry/y3;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Long;

.field private j:Lio/sentry/z6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/sentry/o6;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/a7;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lio/sentry/a7;->e:Lio/sentry/y3;

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/sentry/a7;->f:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lio/sentry/a7;->g:Z

    .line 13
    .line 14
    iput-object v1, p0, Lio/sentry/a7;->h:Ljava/lang/Long;

    .line 15
    .line 16
    iput-object v1, p0, Lio/sentry/a7;->i:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object v1, p0, Lio/sentry/a7;->j:Lio/sentry/z6;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public e()Lio/sentry/h;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a7;->i:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a7;->h:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a7;->e:Lio/sentry/y3;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lio/sentry/z6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a7;->j:Lio/sentry/z6;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/a7;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/a7;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/a7;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/a7;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a7;->i:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public o(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a7;->h:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public p(Lio/sentry/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a7;->e:Lio/sentry/y3;

    .line 2
    .line 3
    return-void
.end method

.method public q(Lio/sentry/z6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a7;->j:Lio/sentry/z6;

    .line 2
    .line 3
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/a7;->g:Z

    .line 2
    .line 3
    return-void
.end method

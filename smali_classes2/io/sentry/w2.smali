.class public final Lio/sentry/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/sentry/protocol/r;

.field private b:Lio/sentry/n6;

.field private c:Lio/sentry/n6;

.field private d:Ljava/lang/Boolean;

.field private e:Lio/sentry/d;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Lio/sentry/protocol/r;

    invoke-direct {v1}, Lio/sentry/protocol/r;-><init>()V

    new-instance v2, Lio/sentry/n6;

    invoke-direct {v2}, Lio/sentry/n6;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/w2;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Lio/sentry/d;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Lio/sentry/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/sentry/w2;->a:Lio/sentry/protocol/r;

    .line 10
    iput-object p2, p0, Lio/sentry/w2;->b:Lio/sentry/n6;

    .line 11
    iput-object p3, p0, Lio/sentry/w2;->c:Lio/sentry/n6;

    .line 12
    iput-object p4, p0, Lio/sentry/w2;->e:Lio/sentry/d;

    .line 13
    iput-object p5, p0, Lio/sentry/w2;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lio/sentry/w2;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lio/sentry/w2;->e()Lio/sentry/protocol/r;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/sentry/w2;->d()Lio/sentry/n6;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lio/sentry/w2;->c()Lio/sentry/n6;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lio/sentry/w2;->b()Lio/sentry/d;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/w2;->a(Lio/sentry/d;)Lio/sentry/d;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lio/sentry/w2;->f()Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lio/sentry/w2;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Lio/sentry/d;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static a(Lio/sentry/d;)Lio/sentry/d;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lio/sentry/d;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/sentry/d;-><init>(Lio/sentry/d;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method


# virtual methods
.method public b()Lio/sentry/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->e:Lio/sentry/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->c:Lio/sentry/n6;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->b:Lio/sentry/n6;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->a:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Lio/sentry/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/w2;->e:Lio/sentry/d;

    .line 2
    .line 3
    return-void
.end method

.method public h()Lio/sentry/l6;
    .locals 7

    .line 1
    new-instance v6, Lio/sentry/l6;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/w2;->a:Lio/sentry/protocol/r;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/w2;->b:Lio/sentry/n6;

    .line 6
    .line 7
    const-string v3, "default"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lio/sentry/l6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Ljava/lang/String;Lio/sentry/n6;Lio/sentry/x6;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "auto"

    .line 16
    .line 17
    invoke-virtual {v6, v0}, Lio/sentry/l6;->m(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v6
.end method

.method public i()Lio/sentry/v6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w2;->e:Lio/sentry/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/d;->H()Lio/sentry/v6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.class public final Lio/sentry/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/o0;


# static fields
.field private static final c:Lio/sentry/y1;


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/metrics/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/y1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/y1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/y1;->c:Lio/sentry/y1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/sentry/s5;->empty()Lio/sentry/s5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/sentry/y1;->a:Lio/sentry/s5;

    .line 9
    .line 10
    new-instance v0, Lio/sentry/metrics/d;

    .line 11
    .line 12
    invoke-static {}, Lio/sentry/metrics/f;->a()Lio/sentry/metrics/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lio/sentry/metrics/d;-><init>(Lio/sentry/metrics/d$a;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/sentry/y1;->b:Lio/sentry/metrics/d;

    .line 20
    .line 21
    return-void
.end method

.method public static g()Lio/sentry/y1;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/y1;->c:Lio/sentry/y1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public B()Lio/sentry/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/y1;->a:Lio/sentry/s5;

    .line 2
    .line 3
    return-object v0
.end method

.method public C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object p1
.end method

.method public D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/y1;->r()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lio/sentry/transport/z;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public n(Lio/sentry/protocol/b0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public o(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lio/sentry/e;Lio/sentry/c0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public r()Lio/sentry/o0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/y1;->c:Lio/sentry/y1;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lio/sentry/a1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Lio/sentry/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object p1
.end method

.method public w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/h2;->u()Lio/sentry/h2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y(Lio/sentry/e3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public z(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object p1
.end method

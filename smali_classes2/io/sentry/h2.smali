.class public final Lio/sentry/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/a1;


# static fields
.field private static final a:Lio/sentry/h2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/h2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/h2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/h2;->a:Lio/sentry/h2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static u()Lio/sentry/h2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/h2;->a:Lio/sentry/h2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Lio/sentry/v6;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/v6;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/sentry/v6;-><init>(Lio/sentry/protocol/r;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lio/sentry/p6;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lio/sentry/p6;ZLio/sentry/c0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lio/sentry/y3;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lio/sentry/p6;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;)Lio/sentry/z0;
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k()Lio/sentry/k6;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public o()Lio/sentry/l6;
    .locals 7

    .line 1
    new-instance v6, Lio/sentry/l6;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/n6;->b:Lio/sentry/n6;

    .line 6
    .line 7
    const-string v3, "op"

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
    return-object v6
.end method

.method public p()Lio/sentry/y3;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/m5;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/m5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Lio/sentry/p6;Lio/sentry/y3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()Lio/sentry/protocol/a0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/protocol/a0;->CUSTOM:Lio/sentry/protocol/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lio/sentry/y3;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/m5;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/m5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

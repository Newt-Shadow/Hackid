.class public final Lio/sentry/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/z0;


# static fields
.field private static final a:Lio/sentry/g2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/g2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/g2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/g2;->a:Lio/sentry/g2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static u()Lio/sentry/g2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/g2;->a:Lio/sentry/g2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lio/sentry/p6;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
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

.method public l(Ljava/lang/String;)V
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

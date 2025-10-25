.class public final Lio/sentry/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 5
    invoke-direct/range {v0 .. v6}, Lio/sentry/u1;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/sentry/u1;->a:J

    .line 3
    iput-wide p3, p0, Lio/sentry/u1;->b:J

    .line 4
    iput-wide p5, p0, Lio/sentry/u1;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u1;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u1;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/u1;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

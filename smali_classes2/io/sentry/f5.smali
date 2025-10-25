.class public final Lio/sentry/f5;
.super Lio/sentry/y3;
.source "SourceFile"


# instance fields
.field private final a:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/e5;->a()Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/f5;-><init>(Ljava/time/Instant;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/sentry/y3;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/f5;->a:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public l()J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/f5;->a:Ljava/time/Instant;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/c5;->a(Ljava/time/Instant;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lio/sentry/j;->m(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lio/sentry/f5;->a:Ljava/time/Instant;

    .line 12
    .line 13
    invoke-static {v2}, Lio/sentry/d5;->a(Ljava/time/Instant;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    add-long/2addr v0, v2

    .line 19
    return-wide v0
.end method

.class public abstract Lio/sentry/metrics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\\W+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/metrics/e;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "[^\\w\\-.]+"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/sentry/metrics/e;->b:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "[^\\w\\-./]+"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/sentry/metrics/e;->c:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    new-instance v0, Lio/sentry/util/t;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/sentry/util/t;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lio/sentry/util/t;->d()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const v1, 0x461c4000    # 10000.0f

    .line 35
    .line 36
    .line 37
    mul-float/2addr v0, v1

    .line 38
    float-to-long v0, v0

    .line 39
    sput-wide v0, Lio/sentry/metrics/e;->d:J

    .line 40
    .line 41
    return-void
.end method

.method public static a(JLjava/util/Collection;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public static b(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    sub-long/2addr p0, v0

    .line 4
    sget-wide v0, Lio/sentry/metrics/e;->d:J

    .line 5
    .line 6
    sub-long/2addr p0, v0

    .line 7
    return-wide p0
.end method

.method public static c(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v0, p0, v0

    .line 4
    .line 5
    const-wide/16 v2, 0xa

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    mul-long/2addr v0, v2

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long p0, p0, v2

    .line 12
    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 p0, 0x1

    .line 17
    .line 18
    sub-long/2addr v0, p0

    .line 19
    return-wide v0
.end method

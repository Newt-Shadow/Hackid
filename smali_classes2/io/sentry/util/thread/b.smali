.class public final Lio/sentry/util/thread/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/util/thread/a;


# static fields
.field private static final a:J

.field private static final b:Lio/sentry/util/thread/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/sentry/util/thread/b;->a:J

    .line 10
    .line 11
    new-instance v0, Lio/sentry/util/thread/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/sentry/util/thread/b;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/sentry/util/thread/b;->b:Lio/sentry/util/thread/b;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/util/thread/b;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/util/thread/b;->b:Lio/sentry/util/thread/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/util/thread/b;->d(Ljava/lang/Thread;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public c(J)Z
    .locals 2

    .line 1
    sget-wide v0, Lio/sentry/util/thread/b;->a:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public d(Ljava/lang/Thread;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/sentry/util/thread/b;->c(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

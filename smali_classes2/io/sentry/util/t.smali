.class public final Lio/sentry/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide v1, 0x1ed8b55fac9decL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/sentry/util/t;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-static {}, Lio/sentry/util/t;->e()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lio/sentry/util/t;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Lio/sentry/util/t;->a(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/util/t;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private static a(J)J
    .locals 2

    .line 1
    const-wide v0, 0x5deece66dL

    xor-long/2addr p0, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private b(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/util/t;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide v3, 0x5deece66dL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-long/2addr v3, v1

    .line 13
    const-wide/16 v5, 0xb

    .line 14
    .line 15
    add-long/2addr v3, v5

    .line 16
    const-wide v5, 0xffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v3, v5

    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    rsub-int/lit8 p1, p1, 0x30

    .line 29
    .line 30
    ushr-long v0, v3, p1

    .line 31
    .line 32
    long-to-int p1, v0

    .line 33
    return p1
.end method

.method private static e()J
    .locals 5

    .line 1
    :cond_0
    sget-object v0, Lio/sentry/util/t;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide v3, 0x106689d45497fdb5L    # 1.16138530132345E-229

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-long/2addr v3, v1

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-wide v3
.end method


# virtual methods
.method public c()D
    .locals 4

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/util/t;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const/16 v2, 0x1b

    .line 9
    .line 10
    shl-long/2addr v0, v2

    .line 11
    invoke-direct {p0, v2}, Lio/sentry/util/t;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    long-to-double v0, v0

    .line 18
    const-wide/high16 v2, 0x3ca0000000000000L

    .line 19
    .line 20
    mul-double/2addr v0, v2

    .line 21
    return-wide v0
.end method

.method public d()F
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/util/t;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x4b800000    # 1.6777216E7f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    return v0
.end method

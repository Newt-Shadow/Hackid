.class public final Lnb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnb/a;

.field private static b:J

.field private static final c:[B

.field private static final d:Ljava/util/Random;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnb/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lnb/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnb/a;->a:Lnb/a;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    sput-wide v0, Lnb/a;->b:J

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    sput-object v0, Lnb/a;->c:[B

    .line 17
    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lnb/a;->d:Ljava/util/Random;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lnb/a;->e:Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(J)Ljava/util/UUID;
    .locals 7

    .line 1
    sget-object v0, Lnb/a;->e:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-wide v0, Lnb/a;->b:J

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    move v3, v0

    .line 17
    :goto_0
    const/4 v4, -0x1

    .line 18
    if-ge v4, v2, :cond_2

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    sget-object v3, Lnb/a;->c:[B

    .line 23
    .line 24
    aget-byte v5, v3, v2

    .line 25
    .line 26
    add-int/lit8 v6, v5, 0x1

    .line 27
    .line 28
    int-to-byte v6, v6

    .line 29
    if-ne v5, v4, :cond_0

    .line 30
    .line 31
    move v4, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v4, v1

    .line 34
    :goto_1
    aput-byte v6, v3, v2

    .line 35
    .line 36
    move v3, v4

    .line 37
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    xor-int/2addr v0, v3

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const-string p1, "overflow on same millisecond"

    .line 45
    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_4
    sput-wide p1, Lnb/a;->b:J

    .line 57
    .line 58
    sget-object v0, Lnb/a;->d:Ljava/util/Random;

    .line 59
    .line 60
    sget-object v2, Lnb/a;->c:[B

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 63
    .line 64
    .line 65
    :goto_2
    const/16 v0, 0x10

    .line 66
    .line 67
    shl-long/2addr p1, v0

    .line 68
    sget-object v0, Lnb/a;->c:[B

    .line 69
    .line 70
    invoke-direct {p0, v0, v1}, Lnb/a;->g([BI)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    or-long/2addr p1, v1

    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-direct {p0, v0, v1}, Lnb/a;->f([BI)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-direct {p0, p1, p2, v0, v1}, Lnb/a;->b(JJ)Ljava/util/UUID;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-object p2, Lnb/a;->e:Ljava/util/concurrent/locks/Lock;

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    sget-object p2, Lnb/a;->e:Ljava/util/concurrent/locks/Lock;

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method private final b(JJ)Ljava/util/UUID;
    .locals 2

    .line 1
    const-wide/32 v0, -0xf001

    .line 2
    .line 3
    .line 4
    and-long/2addr p1, v0

    .line 5
    const-wide/16 v0, 0x7000

    .line 6
    .line 7
    or-long/2addr p1, v0

    .line 8
    const/4 v0, 0x2

    .line 9
    shl-long/2addr p3, v0

    .line 10
    ushr-long/2addr p3, v0

    .line 11
    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    .line 13
    or-long/2addr p3, v0

    .line 14
    new-instance v0, Ljava/util/UUID;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private final e([BI)J
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x18

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    aget-byte v1, p1, p2

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x10

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    add-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    aget-byte v1, p1, p2

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    aget-byte p1, p1, p2

    .line 26
    .line 27
    and-int/lit16 p1, p1, 0xff

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    int-to-long p1, v0

    .line 31
    return-wide p1
.end method

.method private final f([BI)J
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lnb/a;->e([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lnb/a;->e([BI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v2

    .line 14
    shl-long/2addr p1, v2

    .line 15
    ushr-long/2addr p1, v2

    .line 16
    add-long/2addr v0, p1

    .line 17
    return-wide v0
.end method

.method private final g([BI)J
    .locals 1

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    aget-byte p1, p1, p2

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    int-to-long p1, v0

    .line 15
    return-wide p1
.end method


# virtual methods
.method public final c()Ljava/util/UUID;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lnb/a;->d(J)Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final d(J)Ljava/util/UUID;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnb/a;->a(J)Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

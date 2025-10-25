.class public abstract Lfa/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/k0$c;,
        Lfa/k0$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lfa/k0;->d(I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/util/Size;DDLio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 6

    .line 1
    sget-object v0, Lfa/k0$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    aget p5, v0, p5

    .line 8
    .line 9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p5, v2, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq p5, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    if-eq p5, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sub-double p1, v0, p1

    .line 22
    .line 23
    sub-double p3, v0, p3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sub-double/2addr v0, p3

    .line 27
    move-wide p3, p1

    .line 28
    move-wide p1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sub-double p1, v0, p1

    .line 31
    .line 32
    move-wide v4, p1

    .line 33
    move-wide p1, p3

    .line 34
    move-wide p3, v4

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    sub-int/2addr p5, v2

    .line 40
    int-to-double v0, p5

    .line 41
    mul-double/2addr p1, v0

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    long-to-int p1, p1

    .line 47
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    sub-int/2addr p2, v2

    .line 52
    int-to-double v0, p2

    .line 53
    mul-double/2addr p3, v0

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    long-to-int p2, p2

    .line 59
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    int-to-double p3, p3

    .line 64
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 65
    .line 66
    div-double/2addr p3, v0

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 68
    .line 69
    .line 70
    move-result-wide p3

    .line 71
    long-to-int p3, p3

    .line 72
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    int-to-double p4, p4

    .line 77
    div-double/2addr p4, v0

    .line 78
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    .line 79
    .line 80
    .line 81
    move-result-wide p4

    .line 82
    long-to-int p4, p4

    .line 83
    div-int/lit8 p5, p3, 0x2

    .line 84
    .line 85
    sub-int/2addr p1, p5

    .line 86
    div-int/lit8 p5, p4, 0x2

    .line 87
    .line 88
    sub-int/2addr p2, p5

    .line 89
    const/4 p5, 0x0

    .line 90
    if-gez p1, :cond_3

    .line 91
    .line 92
    move p1, p5

    .line 93
    :cond_3
    if-gez p2, :cond_4

    .line 94
    .line 95
    move p2, p5

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p5

    .line 100
    sub-int/2addr p5, v2

    .line 101
    sub-int/2addr p5, p3

    .line 102
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    sub-int/2addr p0, v2

    .line 107
    sub-int/2addr p0, p4

    .line 108
    if-le p1, p5, :cond_5

    .line 109
    .line 110
    move p1, p5

    .line 111
    :cond_5
    if-le p2, p0, :cond_6

    .line 112
    .line 113
    move p2, p0

    .line 114
    :cond_6
    invoke-static {p1, p2, p3, p4, v2}, Lfa/k0$b;->a(IIIII)Landroid/hardware/camera2/params/MeteringRectangle;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static c(Lfa/e0;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/util/Size;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lfa/k0;->e(Lfa/e0;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lfa/i0;->a()Landroid/hardware/camera2/CaptureRequest$Key;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0}, Lfa/e0;->m()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p0}, Lfa/e0;->f()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p1, p0}, Lfa/k0$c;->a(II)Landroid/util/Size;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-interface {p0}, Lfa/e0;->r()Landroid/util/Size;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method private static synthetic d(I)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Lfa/e0;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lfa/e0;->p()[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-array p0, v0, [I

    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v1, Lfa/j0;

    .line 15
    .line 16
    invoke-direct {v1}, Lfa/j0;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/stream/IntStream;->count()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long p0, v1, v3

    .line 30
    .line 31
    if-lez p0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    return v0
.end method

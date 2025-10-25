.class abstract Lra/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(FFF)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ly/a;->a(FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method static b(FLandroid/graphics/Rect;FF)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-static {p0, p2, p3}, Lra/c;->a(FFF)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    div-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    div-int/lit8 p3, p3, 0x2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    const/high16 v1, 0x3f000000    # 0.5f

    .line 27
    .line 28
    mul-float/2addr v0, v1

    .line 29
    div-float/2addr v0, p0

    .line 30
    float-to-int v0, v0

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    mul-float/2addr p1, v1

    .line 37
    div-float/2addr p1, p0

    .line 38
    float-to-int p0, p1

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    .line 40
    .line 41
    sub-int v1, p2, v0

    .line 42
    .line 43
    sub-int v2, p3, p0

    .line 44
    .line 45
    add-int/2addr p2, v0

    .line 46
    add-int/2addr p3, p0

    .line 47
    invoke-direct {p1, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

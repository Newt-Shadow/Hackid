.class public abstract Lgb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lgb/o;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "amazon.hardware.fire_tv"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "TV"

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    const-string v1, "uimode"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/app/UiModeManager;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x4

    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_1
    invoke-static {p0}, Lgb/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-static {p0, v0}, Lgb/a;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_2
    return-object v1
.end method

.method private static final b(Landroid/content/Context;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lgb/o;->u(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1e

    .line 12
    .line 13
    if-lt v2, v3, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lx1/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lx1/f;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "windowManager.currentWindowMetrics.bounds"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-double v2, v0

    .line 43
    int-to-double v4, p0

    .line 44
    div-double/2addr v2, v4

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    int-to-double p0, p0

    .line 50
    div-double/2addr p0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    int-to-double v2, p0

    .line 55
    iget p0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 56
    .line 57
    float-to-double v4, p0

    .line 58
    div-double/2addr v2, v4

    .line 59
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 60
    .line 61
    int-to-double v4, p0

    .line 62
    iget p0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 63
    .line 64
    float-to-double p0, p0

    .line 65
    div-double p0, v4, p0

    .line 66
    .line 67
    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 68
    .line 69
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    add-double/2addr v2, p0

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide p0

    .line 82
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 83
    .line 84
    cmpg-double v0, v2, p0

    .line 85
    .line 86
    const-wide v2, 0x401b99999999999aL    # 6.9

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    if-gtz v0, :cond_2

    .line 93
    .line 94
    cmpg-double v0, p0, v2

    .line 95
    .line 96
    if-gtz v0, :cond_2

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    :cond_2
    if-eqz v4, :cond_3

    .line 100
    .line 101
    const-string v1, "Mobile"

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    cmpl-double v0, p0, v2

    .line 105
    .line 106
    if-lez v0, :cond_4

    .line 107
    .line 108
    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    .line 109
    .line 110
    cmpg-double p0, p0, v2

    .line 111
    .line 112
    if-gtz p0, :cond_4

    .line 113
    .line 114
    const-string v1, "Tablet"

    .line 115
    .line 116
    :cond_4
    :goto_1
    return-object v1
.end method

.method private static final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x258

    .line 16
    .line 17
    if-lt p0, v0, :cond_1

    .line 18
    .line 19
    const-string p0, "Tablet"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p0, "Mobile"

    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.class public final Lio/sentry/android/replay/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/u$a;-><init>()V

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 1
    rem-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    rsub-int/lit8 v0, v0, 0x10

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    :goto_0
    return p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lio/sentry/u5;)Lio/sentry/android/replay/u;
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionReplay"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "window"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Landroid/view/WindowManager;

    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x1e

    .line 27
    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lx1/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lx1/f;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 54
    .line 55
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v1, "if (VERSION.SDK_INT >= V\u2026enBounds.y)\n            }"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .line 81
    div-float/2addr v1, v2

    .line 82
    invoke-virtual {p2}, Lio/sentry/u5;->h()Lio/sentry/u5$a;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget v2, v2, Lio/sentry/u5$a;->sizeScale:F

    .line 87
    .line 88
    mul-float/2addr v1, v2

    .line 89
    invoke-static {v1}, Lkd/a;->c(F)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-direct {p0, v1}, Lio/sentry/android/replay/u$a;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-float v2, v2

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .line 116
    div-float/2addr v2, p1

    .line 117
    invoke-virtual {p2}, Lio/sentry/u5;->h()Lio/sentry/u5$a;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget p1, p1, Lio/sentry/u5$a;->sizeScale:F

    .line 122
    .line 123
    mul-float/2addr v2, p1

    .line 124
    invoke-static {v2}, Lkd/a;->c(F)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-direct {p0, p1}, Lio/sentry/android/replay/u$a;->a(I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {v1, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lxc/k;->a()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {p1}, Lxc/k;->b()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    new-instance p1, Lio/sentry/android/replay/u;

    .line 161
    .line 162
    int-to-float v1, v3

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    int-to-float v2, v2

    .line 168
    div-float v5, v1, v2

    .line 169
    .line 170
    int-to-float v1, v4

    .line 171
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    int-to-float v0, v0

    .line 176
    div-float v6, v1, v0

    .line 177
    .line 178
    invoke-virtual {p2}, Lio/sentry/u5;->d()I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    invoke-virtual {p2}, Lio/sentry/u5;->h()Lio/sentry/u5$a;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget v8, p2, Lio/sentry/u5$a;->bitRate:I

    .line 187
    .line 188
    move-object v2, p1

    .line 189
    invoke-direct/range {v2 .. v8}, Lio/sentry/android/replay/u;-><init>(IIFFII)V

    .line 190
    .line 191
    .line 192
    return-object p1
.end method

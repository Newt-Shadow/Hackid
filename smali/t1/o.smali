.class public final Lt1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/l;


# static fields
.field public static final b:Lt1/o;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lt1/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lt1/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt1/o;->b:Lt1/o;

    .line 7
    .line 8
    const-class v0, Lt1/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "WindowMetricsCalculatorC\u2026at::class.java.simpleName"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {}, Ld0/c1$l;->g()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Ld0/c1$l;->f()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {}, Ld0/c1$l;->a()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {}, Ld0/c1$l;->c()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Ld0/c1$l;->h()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {}, Ld0/c1$l;->e()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {}, Ld0/c1$l;->i()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {}, Ld0/c1$l;->b()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lyc/m;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lt1/o;->d:Ljava/util/ArrayList;

    .line 94
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .locals 7

    .line 1
    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "getDisplayInfo"

    .line 29
    .line 30
    new-array v5, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    aput-object v6, v5, v1

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "displayCutout"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lt1/m;->a(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-static {p1}, Lt1/n;->a(Ljava/lang/Object;)Landroid/view/DisplayCutout;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_2
    move-exception p1

    .line 95
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_3
    move-exception p1

    .line 102
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_4
    move-exception p1

    .line 109
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_5
    move-exception p1

    .line 116
    sget-object v0, Lt1/o;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 122
    :goto_1
    return-object p1
.end method

.method private final k(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "dimen"

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    const-string v2, "navigation_bar_height"

    .line 10
    .line 11
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private final m(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lt1/k;
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lt1/o;->e(Landroid/content/Context;)Lt1/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public c(Landroid/app/Activity;)Lt1/k;
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v2, Lx1/g;->a:Lx1/g;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lx1/g;->a(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x1d

    .line 20
    .line 21
    if-lt v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lt1/o;->h(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v2, 0x1c

    .line 29
    .line 30
    if-lt v0, v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lt1/o;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Lt1/o;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    if-lt v0, v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lt1/o;->i(Landroid/content/Context;)Ld0/c1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    new-instance p1, Ld0/c1$a;

    .line 49
    .line 50
    invoke-direct {p1}, Ld0/c1$a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ld0/c1$a;->a()Ld0/c1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "{\n            WindowInse\u2026ilder().build()\n        }"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    new-instance v0, Lt1/k;

    .line 63
    .line 64
    new-instance v1, Lq1/b;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Lq1/b;-><init>(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1, p1}, Lt1/k;-><init>(Lq1/b;Ld0/c1;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public d(Landroid/content/Context;)Lt1/k;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lx1/g;->a:Lx1/g;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lx1/g;->c(Landroid/content/Context;)Lt1/k;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object v0, Lx1/b;->a:Lx1/b;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lx1/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroid/app/Activity;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lt1/o;->c(Landroid/app/Activity;)Lt1/k;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    instance-of v0, v0, Landroid/inputmethodservice/InputMethodService;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "window"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast p1, Landroid/view/WindowManager;

    .line 52
    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "wm.defaultDisplay"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lt1/o;->l(Landroid/view/Display;)Landroid/graphics/Point;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    .line 67
    .line 68
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lt1/k;

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {p1, v0, v2, v1, v2}, Lt1/k;-><init>(Landroid/graphics/Rect;Ld0/c1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " is not a UiContext"

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public e(Landroid/content/Context;)Lt1/k;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v2, Lx1/g;->a:Lx1/g;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lx1/g;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "window"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v2, Landroid/view/WindowManager;

    .line 31
    .line 32
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "display"

    .line 37
    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lt1/o;->l(Landroid/view/Display;)Landroid/graphics/Point;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v3, v5, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    move-object v2, v3

    .line 56
    :goto_0
    if-lt v0, v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lt1/o;->i(Landroid/content/Context;)Ld0/c1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p1, Ld0/c1$a;

    .line 64
    .line 65
    invoke-direct {p1}, Ld0/c1$a;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ld0/c1$a;->a()Ld0/c1;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "{\n            WindowInse\u2026ilder().build()\n        }"

    .line 73
    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    new-instance v0, Lt1/k;

    .line 78
    .line 79
    new-instance v1, Lq1/b;

    .line 80
    .line 81
    invoke-direct {v1, v2}, Lq1/b;-><init>(Landroid/graphics/Rect;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1, p1}, Lt1/k;-><init>(Lq1/b;Ld0/c1;)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method public final f(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lx1/a;->a:Lx1/a;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lx1/a;->a(Landroid/app/Activity;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-string v2, "defaultDisplay"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lt1/o;->l(Landroid/view/Display;)Landroid/graphics/Point;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p0, p1}, Lt1/o;->k(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    add-int v3, v2, p1

    .line 46
    .line 47
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    if-ne v3, v4, :cond_0

    .line 50
    .line 51
    add-int/2addr v2, p1

    .line 52
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    add-int v3, v2, p1

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 60
    .line 61
    if-ne v3, v1, :cond_1

    .line 62
    .line 63
    add-int/2addr v2, p1

    .line 64
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final g(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    .line 21
    .line 22
    const-string v4, "windowConfiguration"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v3, Lx1/a;->a:Lx1/a;

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Lx1/a;->a(Landroid/app/Activity;)Z

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-string v4, "null cannot be cast to non-null type android.graphics.Rect"

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v5, "getBounds"

    .line 51
    .line 52
    new-array v6, v2, [Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-array v5, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v5, "getAppBounds"

    .line 78
    .line 79
    new-array v6, v2, [Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-array v5, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast v1, Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    sget-object v3, Lt1/o;->c:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1, v0}, Lt1/o;->m(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    sget-object v3, Lt1/o;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1, v0}, Lt1/o;->m(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    sget-object v3, Lt1/o;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1, v0}, Lt1/o;->m(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_3
    move-exception v1

    .line 131
    sget-object v3, Lt1/o;->c:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1, v0}, Lt1/o;->m(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v3, Landroid/graphics/Point;

    .line 148
    .line 149
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 150
    .line 151
    .line 152
    sget-object v4, Lx1/h;->a:Lx1/h;

    .line 153
    .line 154
    const-string v5, "currentDisplay"

    .line 155
    .line 156
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1, v3}, Lx1/h;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 160
    .line 161
    .line 162
    sget-object v4, Lx1/a;->a:Lx1/a;

    .line 163
    .line 164
    invoke-virtual {v4, p1}, Lx1/a;->a(Landroid/app/Activity;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-nez v5, :cond_3

    .line 169
    .line 170
    invoke-direct {p0, p1}, Lt1/o;->k(Landroid/content/Context;)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    add-int v7, v6, v5

    .line 177
    .line 178
    iget v8, v3, Landroid/graphics/Point;->y:I

    .line 179
    .line 180
    if-ne v7, v8, :cond_1

    .line 181
    .line 182
    add-int/2addr v6, v5

    .line 183
    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    add-int v7, v6, v5

    .line 189
    .line 190
    iget v8, v3, Landroid/graphics/Point;->x:I

    .line 191
    .line 192
    if-ne v7, v8, :cond_2

    .line 193
    .line 194
    add-int/2addr v6, v5

    .line 195
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    if-ne v6, v5, :cond_3

    .line 201
    .line 202
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 209
    .line 210
    if-lt v5, v6, :cond_4

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 217
    .line 218
    if-ge v5, v6, :cond_8

    .line 219
    .line 220
    :cond_4
    invoke-virtual {v4, p1}, Lx1/a;->a(Landroid/app/Activity;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_8

    .line 225
    .line 226
    invoke-direct {p0, v1}, Lt1/o;->j(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_8

    .line 231
    .line 232
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 233
    .line 234
    sget-object v4, Lx1/m;->a:Lx1/m;

    .line 235
    .line 236
    invoke-virtual {v4, p1}, Lx1/m;->b(Landroid/view/DisplayCutout;)I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-ne v1, v5, :cond_5

    .line 241
    .line 242
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 243
    .line 244
    :cond_5
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 245
    .line 246
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 247
    .line 248
    sub-int/2addr v1, v5

    .line 249
    invoke-virtual {v4, p1}, Lx1/m;->c(Landroid/view/DisplayCutout;)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-ne v1, v5, :cond_6

    .line 254
    .line 255
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 256
    .line 257
    invoke-virtual {v4, p1}, Lx1/m;->c(Landroid/view/DisplayCutout;)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    add-int/2addr v1, v5

    .line 262
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 263
    .line 264
    :cond_6
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 265
    .line 266
    invoke-virtual {v4, p1}, Lx1/m;->d(Landroid/view/DisplayCutout;)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-ne v1, v5, :cond_7

    .line 271
    .line 272
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 273
    .line 274
    :cond_7
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 275
    .line 276
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 277
    .line 278
    sub-int/2addr v1, v2

    .line 279
    invoke-virtual {v4, p1}, Lx1/m;->a(Landroid/view/DisplayCutout;)I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-ne v1, v2, :cond_8

    .line 284
    .line 285
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 286
    .line 287
    invoke-virtual {v4, p1}, Lx1/m;->a(Landroid/view/DisplayCutout;)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    add-int/2addr v1, p1

    .line 292
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 293
    .line 294
    :cond_8
    return-object v0
.end method

.method public final h(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    .line 15
    .line 16
    const-string v2, "windowConfiguration"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "getBounds"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    new-array v4, v3, [Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    .line 44
    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lt1/o;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lt1/o;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    sget-object v1, Lt1/o;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lt1/o;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_0

    .line 84
    :catch_2
    move-exception v0

    .line 85
    sget-object v1, Lt1/o;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lt1/o;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_0

    .line 95
    :catch_3
    move-exception v0

    .line 96
    sget-object v1, Lt1/o;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lt1/o;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_0
    return-object v2
.end method

.method public final i(Landroid/content/Context;)Ld0/c1;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lx1/g;->a:Lx1/g;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lx1/g;->b(Landroid/content/Context;)Ld0/c1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 20
    .line 21
    const-string v0, "Incompatible SDK version"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final l(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2

    .line 1
    const-string v0, "display"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Point;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lx1/h;->a:Lx1/h;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v0}, Lx1/h;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.class public abstract Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/g$a;
    }
.end annotation


# static fields
.field private static final a:Lv/m;

.field private static final b:Lr/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, Lk1/a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lv/l;

    .line 13
    .line 14
    invoke-direct {v0}, Lv/l;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lv/g;->a:Lv/m;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x1c

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lv/k;

    .line 25
    .line 26
    invoke-direct {v0}, Lv/k;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lv/g;->a:Lv/m;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x1a

    .line 33
    .line 34
    if-lt v0, v1, :cond_2

    .line 35
    .line 36
    new-instance v0, Lv/j;

    .line 37
    .line 38
    invoke-direct {v0}, Lv/j;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lv/g;->a:Lv/m;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lv/i;->k()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v0, Lv/i;

    .line 51
    .line 52
    invoke-direct {v0}, Lv/i;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lv/g;->a:Lv/m;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Lv/h;

    .line 59
    .line 60
    invoke-direct {v0}, Lv/h;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lv/g;->a:Lv/m;

    .line 64
    .line 65
    :goto_0
    new-instance v0, Lr/h;

    .line 66
    .line 67
    const/16 v1, 0x10

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lr/h;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lv/g;->b:Lr/h;

    .line 73
    .line 74
    invoke-static {}, Lk1/a;->f()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "Context cannot be null"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/k$b;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const-string v0, "TypefaceCompat.createFromFontInfo"

    .line 2
    .line 3
    invoke-static {v0}, Lk1/a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lv/g;->a:Lv/m;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, p3}, Lv/m;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/k$b;I)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lk1/a;->f()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {}, Lk1/a;->f()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static c(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const-string v0, "TypefaceCompat.createFromFontInfoWithFallback"

    .line 2
    .line 3
    invoke-static {v0}, Lk1/a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lv/g;->a:Lv/m;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2, p3}, Lv/m;->c(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/List;I)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lk1/a;->f()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {}, Lk1/a;->f()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static d(Landroid/content/Context;Lu/d$b;Landroid/content/res/Resources;ILjava/lang/String;IILu/f$e;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 13

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    move-object/from16 v2, p8

    .line 5
    .line 6
    instance-of v3, v0, Lu/d$e;

    .line 7
    .line 8
    if-eqz v3, :cond_6

    .line 9
    .line 10
    check-cast v0, Lu/d$e;

    .line 11
    .line 12
    invoke-virtual {v0}, Lu/d$e;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lv/g;->h(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lu/f$e;->d(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v3

    .line 28
    :cond_1
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz p9, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lu/d$e;->b()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-nez v1, :cond_3

    .line 40
    .line 41
    :goto_0
    move v9, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v9, v4

    .line 44
    :goto_1
    if-eqz p9, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lu/d$e;->e()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 v3, -0x1

    .line 52
    :goto_2
    move v10, v3

    .line 53
    invoke-static/range {p8 .. p8}, Lu/f$e;->e(Landroid/os/Handler;)Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-instance v12, Lv/g$a;

    .line 58
    .line 59
    invoke-direct {v12, v1}, Lv/g$a;-><init>(Lu/f$e;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lu/d$e;->a()La0/e;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0}, Lu/d$e;->c()La0/e;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lu/d$e;->a()La0/e;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Lv/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-virtual {v0}, Lu/d$e;->c()La0/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lv/e;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_3
    move-object v7, v0

    .line 90
    move-object v6, p0

    .line 91
    move/from16 v8, p6

    .line 92
    .line 93
    invoke-static/range {v6 .. v12}, La0/k;->c(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;La0/k$c;)Landroid/graphics/Typeface;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v5, p2

    .line 98
    move/from16 v6, p6

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    sget-object v3, Lv/g;->a:Lv/m;

    .line 102
    .line 103
    check-cast v0, Lu/d$c;

    .line 104
    .line 105
    move-object v4, p0

    .line 106
    move-object v5, p2

    .line 107
    move/from16 v6, p6

    .line 108
    .line 109
    invoke-virtual {v3, p0, v0, p2, v6}, Lv/m;->a(Landroid/content/Context;Lu/d$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {v1, v0, v2}, Lu/f$e;->d(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    const/4 v3, -0x3

    .line 122
    invoke-virtual {v1, v3, v2}, Lu/f$e;->c(ILandroid/os/Handler;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 126
    .line 127
    sget-object v1, Lv/g;->b:Lr/h;

    .line 128
    .line 129
    invoke-static/range {p2 .. p6}, Lv/g;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2, v0}, Lr/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_9
    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, Lv/g;->a:Lv/m;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lv/m;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2, p3, p4, p5}, Lv/g;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lv/g;->b:Lr/h;

    .line 19
    .line 20
    invoke-virtual {p2, p1, p0}, Lr/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method private static f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static g(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Lv/g;->b:Lr/h;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lv/g;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lr/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/graphics/Typeface;

    .line 12
    .line 13
    return-object p0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v0, p0

    .line 31
    :cond_1
    :goto_0
    return-object v0
.end method

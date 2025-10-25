.class public final Lu8/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu8/j0;

.field private static final b:Ld8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu8/j0;

    .line 2
    .line 3
    invoke-direct {v0}, Lu8/j0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu8/j0;->a:Lu8/j0;

    .line 7
    .line 8
    new-instance v0, Lf8/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lf8/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lu8/c;->a:Le8/a;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lf8/d;->j(Le8/a;)Lf8/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lf8/d;->k(Z)Lf8/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lf8/d;->i()Ld8/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "build(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lu8/j0;->b:Ld8/a;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lv8/c;)Lu8/d;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lu8/d;->c:Lu8/d;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lv8/c;->a()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p1, Lu8/d;->d:Lu8/d;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lu8/d;->e:Lu8/d;

    .line 16
    .line 17
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lh7/f;Lu8/h0;Lx8/j;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lu8/i0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const-string v2, "firebaseApp"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "sessionDetails"

    .line 13
    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-static {v4, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "sessionsSettings"

    .line 20
    .line 21
    move-object/from16 v5, p3

    .line 22
    .line 23
    invoke-static {v5, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "subscribers"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "firebaseInstallationId"

    .line 32
    .line 33
    move-object/from16 v11, p5

    .line 34
    .line 35
    invoke-static {v11, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "firebaseAuthenticationToken"

    .line 39
    .line 40
    move-object/from16 v12, p6

    .line 41
    .line 42
    invoke-static {v12, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lu8/i0;

    .line 46
    .line 47
    sget-object v13, Lu8/j;->c:Lu8/j;

    .line 48
    .line 49
    new-instance v14, Lu8/p0;

    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lu8/h0;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual/range {p2 .. p2}, Lu8/h0;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual/range {p2 .. p2}, Lu8/h0;->c()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-virtual/range {p2 .. p2}, Lu8/h0;->d()J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    new-instance v15, Lu8/e;

    .line 68
    .line 69
    sget-object v4, Lv8/c$a;->b:Lv8/c$a;

    .line 70
    .line 71
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lv8/c;

    .line 76
    .line 77
    invoke-direct {v0, v4}, Lu8/j0;->d(Lv8/c;)Lu8/d;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    sget-object v3, Lv8/c$a;->a:Lv8/c$a;

    .line 82
    .line 83
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lv8/c;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lu8/j0;->d(Lv8/c;)Lu8/d;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual/range {p3 .. p3}, Lx8/j;->a()D

    .line 94
    .line 95
    .line 96
    move-result-wide v11

    .line 97
    invoke-direct {v15, v4, v1, v11, v12}, Lu8/e;-><init>(Lu8/d;Lu8/d;D)V

    .line 98
    .line 99
    .line 100
    move-object v4, v14

    .line 101
    move-object v5, v6

    .line 102
    move-object v6, v7

    .line 103
    move v7, v8

    .line 104
    move-wide v8, v9

    .line 105
    move-object v10, v15

    .line 106
    move-object/from16 v11, p5

    .line 107
    .line 108
    move-object/from16 v12, p6

    .line 109
    .line 110
    invoke-direct/range {v4 .. v12}, Lu8/p0;-><init>(Ljava/lang/String;Ljava/lang/String;IJLu8/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p0 .. p1}, Lu8/j0;->b(Lh7/f;)Lu8/b;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v13, v14, v1}, Lu8/i0;-><init>(Lu8/j;Lu8/p0;Lu8/b;)V

    .line 118
    .line 119
    .line 120
    return-object v2
.end method

.method public final b(Lh7/f;)Lu8/b;
    .locals 17

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lh7/f;->m()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "getApplicationContext(...)"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v5, 0x1c

    .line 33
    .line 34
    if-lt v3, v5, :cond_0

    .line 35
    .line 36
    invoke-static {v0}, Lq7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    move-object v6, v3

    .line 52
    new-instance v14, Lu8/b;

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lh7/f;->r()Lh7/n;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lh7/n;->c()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const-string v3, "getApplicationId(...)"

    .line 63
    .line 64
    invoke-static {v10, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "MODEL"

    .line 70
    .line 71
    invoke-static {v11, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v12, "3.0.0"

    .line 75
    .line 76
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 77
    .line 78
    const-string v3, "RELEASE"

    .line 79
    .line 80
    invoke-static {v13, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v15, Lu8/u;->e:Lu8/u;

    .line 84
    .line 85
    new-instance v16, Lu8/a;

    .line 86
    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 91
    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    move-object v5, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-object v5, v0

    .line 97
    :goto_1
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 98
    .line 99
    const-string v0, "MANUFACTURER"

    .line 100
    .line 101
    invoke-static {v7, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lu8/d0;->a:Lu8/d0;

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lh7/f;->m()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Lu8/d0;->b(Landroid/content/Context;)Lu8/c0;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual/range {p1 .. p1}, Lh7/f;->m()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lu8/d0;->a(Landroid/content/Context;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    move-object/from16 v3, v16

    .line 129
    .line 130
    invoke-direct/range {v3 .. v9}, Lu8/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/c0;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    move-object v7, v14

    .line 134
    move-object v8, v10

    .line 135
    move-object v9, v11

    .line 136
    move-object v10, v12

    .line 137
    move-object v11, v13

    .line 138
    move-object v12, v15

    .line 139
    move-object/from16 v13, v16

    .line 140
    .line 141
    invoke-direct/range {v7 .. v13}, Lu8/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/u;Lu8/a;)V

    .line 142
    .line 143
    .line 144
    return-object v14
.end method

.method public final c()Ld8/a;
    .locals 1

    .line 1
    sget-object v0, Lu8/j0;->b:Ld8/a;

    .line 2
    .line 3
    return-object v0
.end method

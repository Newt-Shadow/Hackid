.class public final Lio/sentry/android/replay/viewhierarchy/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/b;
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
    invoke-direct {p0}, Lio/sentry/android/replay/viewhierarchy/b$a;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/Class;Ljava/util/Set;)Z
    .locals 1

    .line 1
    :goto_0
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private final c(Landroid/view/View;Lio/sentry/s5;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lio/sentry/u5;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private final d(Landroid/view/ViewParent;Lio/sentry/s5;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lio/sentry/u5;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private final e(Landroid/view/View;Lio/sentry/s5;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    const/4 v1, 0x2

    .line 15
    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v6, "sentry-unmask"

    .line 33
    .line 34
    invoke-static {v0, v6, v5, v1, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v4, :cond_1

    .line 39
    .line 40
    move v0, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v0, v5

    .line 43
    :goto_1
    if-nez v0, :cond_9

    .line 44
    .line 45
    sget v0, Lio/sentry/android/replay/e;->a:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v6, "unmask"

    .line 52
    .line 53
    invoke-static {v0, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    instance-of v6, v0, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move-object v0, v2

    .line 73
    :goto_2
    if-eqz v0, :cond_4

    .line 74
    .line 75
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    const-string v3, "sentry-mask"

    .line 87
    .line 88
    invoke-static {v0, v3, v5, v1, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ne v0, v4, :cond_4

    .line 93
    .line 94
    move v0, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v0, v5

    .line 97
    :goto_3
    if-nez v0, :cond_8

    .line 98
    .line 99
    sget v0, Lio/sentry/android/replay/e;->a:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "mask"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/b$a;->c(Landroid/view/View;Lio/sentry/s5;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "this.parent"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v0, p2}, Lio/sentry/android/replay/viewhierarchy/b$a;->d(Landroid/view/ViewParent;Lio/sentry/s5;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    return v5

    .line 142
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lio/sentry/u5;->m()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "options.sessionReplay.unmaskViewClasses"

    .line 155
    .line 156
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0, v1}, Lio/sentry/android/replay/viewhierarchy/b$a;->b(Ljava/lang/Class;Ljava/util/Set;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    return v5

    .line 166
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Lio/sentry/u5;->e()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const-string v0, "options.sessionReplay.maskViewClasses"

    .line 179
    .line 180
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/b$a;->b(Ljava/lang/Class;Ljava/util/Set;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    return p1

    .line 188
    :cond_8
    :goto_4
    return v4

    .line 189
    :cond_9
    :goto_5
    return v5
.end method


# virtual methods
.method public final a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/b;ILio/sentry/s5;)Lio/sentry/android/replay/viewhierarchy/b;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    const-string v2, "view"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "options"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lio/sentry/android/replay/util/n;->e(Landroid/view/View;)Lxc/k;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lxc/k;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v14

    .line 31
    invoke-virtual {v2}, Lxc/k;->b()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v15, v2

    .line 36
    check-cast v15, Landroid/graphics/Rect;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    move-object/from16 v13, p0

    .line 41
    .line 42
    if-eqz v14, :cond_0

    .line 43
    .line 44
    invoke-direct {v13, v0, v1}, Lio/sentry/android/replay/viewhierarchy/b$a;->e(Landroid/view/View;Lio/sentry/s5;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move v12, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v12, v2

    .line 53
    :goto_0
    instance-of v1, v0, Landroid/widget/TextView;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eqz v11, :cond_1

    .line 59
    .line 60
    invoke-virtual {v11, v3}, Lio/sentry/android/replay/viewhierarchy/b;->g(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    new-instance v2, Lio/sentry/android/replay/util/a;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Lio/sentry/android/replay/util/a;-><init>(Landroid/text/Layout;)V

    .line 74
    .line 75
    .line 76
    move-object v1, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Lio/sentry/android/replay/util/n;->g(I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v0}, Lio/sentry/android/replay/util/n;->b(Landroid/widget/TextView;)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-float v10, v4, v0

    .line 122
    .line 123
    new-instance v16, Lio/sentry/android/replay/viewhierarchy/b$d;

    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const/16 v17, 0x1

    .line 130
    .line 131
    move-object/from16 v0, v16

    .line 132
    .line 133
    move v4, v5

    .line 134
    move v5, v6

    .line 135
    move v6, v7

    .line 136
    move v7, v8

    .line 137
    move v8, v9

    .line 138
    move v9, v10

    .line 139
    move/from16 v10, p3

    .line 140
    .line 141
    move-object/from16 v11, p2

    .line 142
    .line 143
    move/from16 v13, v17

    .line 144
    .line 145
    invoke-direct/range {v0 .. v15}, Lio/sentry/android/replay/viewhierarchy/b$d;-><init>(Lio/sentry/android/replay/util/m;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;)V

    .line 146
    .line 147
    .line 148
    return-object v16

    .line 149
    :cond_4
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    if-eqz v11, :cond_5

    .line 154
    .line 155
    invoke-virtual {v11, v3}, Lio/sentry/android/replay/viewhierarchy/b;->g(Z)V

    .line 156
    .line 157
    .line 158
    :cond_5
    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v11, :cond_6

    .line 177
    .line 178
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    add-float/2addr v8, v4

    .line 187
    if-eqz v12, :cond_8

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    invoke-static {v0}, Lio/sentry/android/replay/util/n;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-ne v0, v3, :cond_7

    .line 200
    .line 201
    move v0, v3

    .line 202
    goto :goto_2

    .line 203
    :cond_7
    move v0, v2

    .line 204
    :goto_2
    if-eqz v0, :cond_8

    .line 205
    .line 206
    move v9, v3

    .line 207
    goto :goto_3

    .line 208
    :cond_8
    move v9, v2

    .line 209
    :goto_3
    new-instance v12, Lio/sentry/android/replay/viewhierarchy/b$c;

    .line 210
    .line 211
    const/4 v10, 0x1

    .line 212
    move-object v0, v12

    .line 213
    move v2, v5

    .line 214
    move v3, v6

    .line 215
    move v4, v7

    .line 216
    move v5, v8

    .line 217
    move/from16 v6, p3

    .line 218
    .line 219
    move-object/from16 v7, p2

    .line 220
    .line 221
    move v8, v9

    .line 222
    move v9, v10

    .line 223
    move v10, v14

    .line 224
    move-object v11, v15

    .line 225
    invoke-direct/range {v0 .. v11}, Lio/sentry/android/replay/viewhierarchy/b$c;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;)V

    .line 226
    .line 227
    .line 228
    return-object v12

    .line 229
    :cond_9
    new-instance v13, Lio/sentry/android/replay/viewhierarchy/b$b;

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v11, :cond_a

    .line 248
    .line 249
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/b;->a()F

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getElevation()F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    add-float v6, v4, v0

    .line 258
    .line 259
    const/4 v9, 0x0

    .line 260
    move-object v0, v13

    .line 261
    move v4, v5

    .line 262
    move v5, v6

    .line 263
    move/from16 v6, p3

    .line 264
    .line 265
    move-object/from16 v7, p2

    .line 266
    .line 267
    move v8, v12

    .line 268
    move v10, v14

    .line 269
    move-object v11, v15

    .line 270
    invoke-direct/range {v0 .. v11}, Lio/sentry/android/replay/viewhierarchy/b$b;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/b;ZZZLandroid/graphics/Rect;)V

    .line 271
    .line 272
    .line 273
    return-object v13
.end method

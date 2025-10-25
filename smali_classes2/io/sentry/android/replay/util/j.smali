.class public abstract Lio/sentry/android/replay/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroid/graphics/Rect;
    .locals 11

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {p1, p0, v4, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    cmpg-float v5, v2, v3

    .line 43
    .line 44
    if-gez v5, :cond_1

    .line 45
    .line 46
    move v2, v3

    .line 47
    :cond_1
    cmpl-float v5, v2, v0

    .line 48
    .line 49
    if-lez v5, :cond_2

    .line 50
    .line 51
    move v2, v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    cmpg-float v6, v5, v3

    .line 57
    .line 58
    if-gez v6, :cond_3

    .line 59
    .line 60
    move v5, v3

    .line 61
    :cond_3
    cmpl-float v6, v5, v1

    .line 62
    .line 63
    if-lez v6, :cond_4

    .line 64
    .line 65
    move v5, v1

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    cmpg-float v7, v6, v3

    .line 71
    .line 72
    if-gez v7, :cond_5

    .line 73
    .line 74
    move v6, v3

    .line 75
    :cond_5
    cmpl-float v7, v6, v0

    .line 76
    .line 77
    if-lez v7, :cond_6

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    move v0, v6

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    cmpg-float v6, p0, v3

    .line 86
    .line 87
    if-gez v6, :cond_7

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    move v3, p0

    .line 91
    :goto_1
    cmpl-float p0, v3, v1

    .line 92
    .line 93
    if-lez p0, :cond_8

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    move v1, v3

    .line 97
    :goto_2
    cmpg-float p0, v2, v0

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    if-nez p0, :cond_9

    .line 101
    .line 102
    move p0, v3

    .line 103
    goto :goto_3

    .line 104
    :cond_9
    move p0, v4

    .line 105
    :goto_3
    if-nez p0, :cond_c

    .line 106
    .line 107
    cmpg-float p0, v5, v1

    .line 108
    .line 109
    if-nez p0, :cond_a

    .line 110
    .line 111
    move v4, v3

    .line 112
    :cond_a
    if-eqz v4, :cond_b

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_b
    invoke-static {v2, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    invoke-static {v0, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    invoke-interface {p1, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v7

    .line 139
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 144
    .line 145
    .line 146
    move-result-wide p0

    .line 147
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    new-instance p1, Landroid/graphics/Rect;

    .line 228
    .line 229
    float-to-int v1, v10

    .line 230
    float-to-int v2, v3

    .line 231
    float-to-int v0, v0

    .line 232
    float-to-int p0, p0

    .line 233
    invoke-direct {p1, v1, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .line 235
    .line 236
    return-object p1

    .line 237
    :cond_c
    :goto_4
    new-instance p0, Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .line 241
    .line 242
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifierInfo()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/compose/ui/layout/ModifierInfo;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "modifier::class.java.name"

    .line 38
    .line 39
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v6, "Painter"

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    invoke-static {v5, v6, v1, v7, v3}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "painter"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    instance-of v0, p0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    move-object v3, p0

    .line 76
    :catchall_0
    :cond_0
    return-object v3

    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object v3
.end method

.method public static final c(Landroidx/compose/ui/node/LayoutNode;)Lio/sentry/android/replay/util/l;
    .locals 11

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifierInfo()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v4, v1

    .line 17
    move v3, v2

    .line 18
    move v5, v3

    .line 19
    :goto_0
    if-ge v3, v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Landroidx/compose/ui/layout/ModifierInfo;

    .line 26
    .line 27
    invoke-virtual {v6}, Landroidx/compose/ui/layout/ModifierInfo;->getModifier()Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v8, "modifierClassName"

    .line 40
    .line 41
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v8, "Text"

    .line 45
    .line 46
    const/4 v9, 0x2

    .line 47
    invoke-static {v7, v8, v2, v9, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v10, 0x1

    .line 52
    if-eqz v8, :cond_2

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v7, "color"

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    instance-of v6, v4, Landroidx/compose/ui/graphics/ColorProducer;

    .line 72
    .line 73
    if-eqz v6, :cond_0

    .line 74
    .line 75
    check-cast v4, Landroidx/compose/ui/graphics/ColorProducer;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    move-object v4, v1

    .line 79
    :goto_1
    if-eqz v4, :cond_1

    .line 80
    .line 81
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 86
    .line 87
    .line 88
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    :cond_1
    move-object v4, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const-string v6, "Fill"

    .line 93
    .line 94
    invoke-static {v7, v6, v2, v9, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_3

    .line 99
    .line 100
    move v5, v10

    .line 101
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    new-instance p0, Lio/sentry/android/replay/util/l;

    .line 105
    .line 106
    invoke-direct {p0, v4, v5, v1}, Lio/sentry/android/replay/util/l;-><init>(Landroidx/compose/ui/graphics/Color;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/graphics/painter/Painter;)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "className"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "Vector"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p0, v0, v1, v2, v3}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string v0, "Color"

    .line 31
    .line 32
    invoke-static {p0, v0, v1, v2, v3}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "Brush"

    .line 39
    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_0
    return v1
.end method

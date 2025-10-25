.class public Ll1/c;
.super Ll1/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/c$k;
    }
.end annotation


# static fields
.field private static final L:[Ljava/lang/String;

.field private static final M:Landroid/util/Property;

.field private static final N:Landroid/util/Property;

.field private static final O:Landroid/util/Property;

.field private static final P:Landroid/util/Property;

.field private static final Q:Landroid/util/Property;

.field private static final R:Landroid/util/Property;

.field private static S:Ll1/j;


# instance fields
.field private I:[I

.field private J:Z

.field private K:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:windowX"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:windowY"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:clip"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:parent"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ll1/c;->L:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ll1/c$b;

    .line 18
    .line 19
    const-string v1, "boundsOrigin"

    .line 20
    .line 21
    const-class v2, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Ll1/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ll1/c;->M:Landroid/util/Property;

    .line 27
    .line 28
    new-instance v0, Ll1/c$c;

    .line 29
    .line 30
    const-string v1, "topLeft"

    .line 31
    .line 32
    invoke-direct {v0, v2, v1}, Ll1/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Ll1/c;->N:Landroid/util/Property;

    .line 36
    .line 37
    new-instance v0, Ll1/c$d;

    .line 38
    .line 39
    const-string v3, "bottomRight"

    .line 40
    .line 41
    invoke-direct {v0, v2, v3}, Ll1/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Ll1/c;->O:Landroid/util/Property;

    .line 45
    .line 46
    new-instance v0, Ll1/c$e;

    .line 47
    .line 48
    invoke-direct {v0, v2, v3}, Ll1/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Ll1/c;->P:Landroid/util/Property;

    .line 52
    .line 53
    new-instance v0, Ll1/c$f;

    .line 54
    .line 55
    invoke-direct {v0, v2, v1}, Ll1/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Ll1/c;->Q:Landroid/util/Property;

    .line 59
    .line 60
    new-instance v0, Ll1/c$g;

    .line 61
    .line 62
    const-string v1, "position"

    .line 63
    .line 64
    invoke-direct {v0, v2, v1}, Ll1/c$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Ll1/c;->R:Landroid/util/Property;

    .line 68
    .line 69
    new-instance v0, Ll1/j;

    .line 70
    .line 71
    invoke-direct {v0}, Ll1/j;-><init>()V

    .line 72
    .line 73
    .line 74
    sput-object v0, Ll1/c;->S:Ll1/j;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll1/l;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Ll1/c;->I:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Ll1/c;->J:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Ll1/c;->K:Z

    .line 13
    .line 14
    return-void
.end method

.method private f0(Ll1/s;)V
    .locals 7

    .line 1
    iget-object v0, p1, Ll1/s;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ld0/p0;->F(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v1, p1, Ll1/s;->a:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v2, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    const-string v3, "android:changeBounds:bounds"

    .line 45
    .line 46
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Ll1/s;->a:Ljava/util/Map;

    .line 50
    .line 51
    iget-object v2, p1, Ll1/s;->b:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-boolean v1, p0, Ll1/c;->K:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p1, Ll1/s;->b:Landroid/view/View;

    .line 67
    .line 68
    iget-object v2, p0, Ll1/c;->I:[I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Ll1/s;->a:Ljava/util/Map;

    .line 74
    .line 75
    iget-object v2, p0, Ll1/c;->I:[I

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    aget v2, v2, v3

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "android:changeBounds:windowX"

    .line 85
    .line 86
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v1, p1, Ll1/s;->a:Ljava/util/Map;

    .line 90
    .line 91
    iget-object v2, p0, Ll1/c;->I:[I

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    aget v2, v2, v3

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "android:changeBounds:windowY"

    .line 101
    .line 102
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-boolean v1, p0, Ll1/c;->J:Z

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    iget-object p1, p1, Ll1/s;->a:Ljava/util/Map;

    .line 110
    .line 111
    const-string v1, "android:changeBounds:clip"

    .line 112
    .line 113
    invoke-static {v0}, Ld0/p0;->o(Landroid/view/View;)Landroid/graphics/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method private g0(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ll1/c;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, p1, v1}, Ll1/l;->w(Landroid/view/View;Z)Ll1/s;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, v0, Ll1/s;->b:Landroid/view/View;

    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public G()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ll1/c;->L:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Ll1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll1/c;->f0(Ll1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l(Ll1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll1/c;->f0(Ll1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Landroid/view/ViewGroup;Ll1/s;Ll1/s;)Landroid/animation/Animator;
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    if-eqz v0, :cond_1b

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_c

    .line 12
    .line 13
    :cond_0
    iget-object v3, v0, Ll1/s;->a:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v4, v1, Ll1/s;->a:Ljava/util/Map;

    .line 16
    .line 17
    const-string v5, "android:changeBounds:parent"

    .line 18
    .line 19
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v3, :cond_1a

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_1
    iget-object v9, v1, Ll1/s;->b:Landroid/view/View;

    .line 38
    .line 39
    invoke-direct {v8, v3, v4}, Ll1/c;->g0(Landroid/view/View;Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_17

    .line 44
    .line 45
    iget-object v3, v0, Ll1/s;->a:Ljava/util/Map;

    .line 46
    .line 47
    const-string v5, "android:changeBounds:bounds"

    .line 48
    .line 49
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/graphics/Rect;

    .line 54
    .line 55
    iget-object v6, v1, Ll1/s;->a:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroid/graphics/Rect;

    .line 62
    .line 63
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    iget v14, v5, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    sub-int v5, v13, v6

    .line 80
    .line 81
    sub-int v2, v3, v11

    .line 82
    .line 83
    sub-int v10, v14, v7

    .line 84
    .line 85
    sub-int v4, v15, v12

    .line 86
    .line 87
    iget-object v0, v0, Ll1/s;->a:Ljava/util/Map;

    .line 88
    .line 89
    move-object/from16 v16, v9

    .line 90
    .line 91
    const-string v9, "android:changeBounds:clip"

    .line 92
    .line 93
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/graphics/Rect;

    .line 98
    .line 99
    iget-object v1, v1, Ll1/s;->a:Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v9, v1

    .line 106
    check-cast v9, Landroid/graphics/Rect;

    .line 107
    .line 108
    if-eqz v5, :cond_2

    .line 109
    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    :cond_2
    if-eqz v10, :cond_7

    .line 113
    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    :cond_3
    if-ne v6, v7, :cond_5

    .line 117
    .line 118
    if-eq v11, v12, :cond_4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    const/4 v1, 0x0

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 124
    :goto_1
    if-ne v13, v14, :cond_6

    .line 125
    .line 126
    if-eq v3, v15, :cond_8

    .line 127
    .line 128
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    const/4 v1, 0x0

    .line 132
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    if-eqz v17, :cond_a

    .line 139
    .line 140
    :cond_9
    if-nez v0, :cond_b

    .line 141
    .line 142
    if-eqz v9, :cond_b

    .line 143
    .line 144
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    :cond_b
    if-lez v1, :cond_18

    .line 147
    .line 148
    move-object/from16 p1, v9

    .line 149
    .line 150
    iget-boolean v9, v8, Ll1/c;->J:Z

    .line 151
    .line 152
    if-nez v9, :cond_10

    .line 153
    .line 154
    move-object/from16 v9, v16

    .line 155
    .line 156
    invoke-static {v9, v6, v11, v13, v3}, Ll1/a0;->f(Landroid/view/View;IIII)V

    .line 157
    .line 158
    .line 159
    const/4 v0, 0x2

    .line 160
    if-ne v1, v0, :cond_d

    .line 161
    .line 162
    if-ne v5, v10, :cond_c

    .line 163
    .line 164
    if-ne v2, v4, :cond_c

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    int-to-float v1, v6

    .line 171
    int-to-float v2, v11

    .line 172
    int-to-float v3, v7

    .line 173
    int-to-float v4, v12

    .line 174
    invoke-virtual {v0, v1, v2, v3, v4}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v1, Ll1/c;->R:Landroid/util/Property;

    .line 179
    .line 180
    invoke-static {v9, v1, v0}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :cond_c
    new-instance v1, Ll1/c$k;

    .line 187
    .line 188
    invoke-direct {v1, v9}, Ll1/c$k;-><init>(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    int-to-float v4, v6

    .line 196
    int-to-float v5, v11

    .line 197
    int-to-float v6, v7

    .line 198
    int-to-float v7, v12

    .line 199
    invoke-virtual {v2, v4, v5, v6, v7}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    sget-object v4, Ll1/c;->N:Landroid/util/Property;

    .line 204
    .line 205
    invoke-static {v1, v4, v2}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    int-to-float v5, v13

    .line 214
    int-to-float v3, v3

    .line 215
    int-to-float v6, v14

    .line 216
    int-to-float v7, v15

    .line 217
    invoke-virtual {v4, v5, v3, v6, v7}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    sget-object v4, Ll1/c;->O:Landroid/util/Property;

    .line 222
    .line 223
    invoke-static {v1, v4, v3}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 228
    .line 229
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 230
    .line 231
    .line 232
    new-array v0, v0, [Landroid/animation/Animator;

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    aput-object v2, v0, v5

    .line 236
    .line 237
    const/4 v2, 0x1

    .line 238
    aput-object v3, v0, v2

    .line 239
    .line 240
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Ll1/c$h;

    .line 244
    .line 245
    invoke-direct {v0, v8, v1}, Ll1/c$h;-><init>(Ll1/c;Ll1/c$k;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    .line 250
    .line 251
    move-object v0, v4

    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :cond_d
    if-ne v6, v7, :cond_f

    .line 255
    .line 256
    if-eq v11, v12, :cond_e

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    int-to-float v1, v13

    .line 264
    int-to-float v2, v3

    .line 265
    int-to-float v3, v14

    .line 266
    int-to-float v4, v15

    .line 267
    invoke-virtual {v0, v1, v2, v3, v4}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sget-object v1, Ll1/c;->P:Landroid/util/Property;

    .line 272
    .line 273
    invoke-static {v9, v1, v0}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    int-to-float v1, v6

    .line 284
    int-to-float v2, v11

    .line 285
    int-to-float v3, v7

    .line 286
    int-to-float v4, v12

    .line 287
    invoke-virtual {v0, v1, v2, v3, v4}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    sget-object v1, Ll1/c;->Q:Landroid/util/Property;

    .line 292
    .line 293
    invoke-static {v9, v1, v0}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto/16 :goto_9

    .line 298
    .line 299
    :cond_10
    move-object/from16 v9, v16

    .line 300
    .line 301
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    add-int/2addr v1, v6

    .line 310
    add-int/2addr v3, v11

    .line 311
    invoke-static {v9, v6, v11, v1, v3}, Ll1/a0;->f(Landroid/view/View;IIII)V

    .line 312
    .line 313
    .line 314
    if-ne v6, v7, :cond_12

    .line 315
    .line 316
    if-eq v11, v12, :cond_11

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_11
    const/4 v11, 0x0

    .line 320
    goto :goto_5

    .line 321
    :cond_12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    int-to-float v3, v6

    .line 326
    int-to-float v6, v11

    .line 327
    int-to-float v11, v7

    .line 328
    int-to-float v13, v12

    .line 329
    invoke-virtual {v1, v3, v6, v11, v13}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    sget-object v3, Ll1/c;->R:Landroid/util/Property;

    .line 334
    .line 335
    invoke-static {v9, v3, v1}, Ll1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    move-object v11, v1

    .line 340
    :goto_5
    if-nez v0, :cond_13

    .line 341
    .line 342
    new-instance v0, Landroid/graphics/Rect;

    .line 343
    .line 344
    const/4 v1, 0x0

    .line 345
    invoke-direct {v0, v1, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_13
    const/4 v1, 0x0

    .line 350
    :goto_6
    if-nez p1, :cond_14

    .line 351
    .line 352
    new-instance v2, Landroid/graphics/Rect;

    .line 353
    .line 354
    invoke-direct {v2, v1, v1, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_14
    move-object/from16 v2, p1

    .line 359
    .line 360
    :goto_7
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-nez v1, :cond_15

    .line 365
    .line 366
    invoke-static {v9, v0}, Ld0/p0;->a0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 367
    .line 368
    .line 369
    sget-object v1, Ll1/c;->S:Ll1/j;

    .line 370
    .line 371
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-string v2, "clipBounds"

    .line 376
    .line 377
    invoke-static {v9, v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    new-instance v13, Ll1/c$i;

    .line 382
    .line 383
    move-object v0, v13

    .line 384
    move-object/from16 v1, p0

    .line 385
    .line 386
    move-object v2, v9

    .line 387
    move-object/from16 v3, p1

    .line 388
    .line 389
    move v4, v7

    .line 390
    move v5, v12

    .line 391
    move v6, v14

    .line 392
    move v7, v15

    .line 393
    invoke-direct/range {v0 .. v7}, Ll1/c$i;-><init>(Ll1/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    .line 398
    .line 399
    move-object v2, v10

    .line 400
    goto :goto_8

    .line 401
    :cond_15
    const/4 v2, 0x0

    .line 402
    :goto_8
    invoke-static {v11, v2}, Ll1/r;->c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 411
    .line 412
    if-eqz v1, :cond_16

    .line 413
    .line 414
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Landroid/view/ViewGroup;

    .line 419
    .line 420
    const/4 v2, 0x1

    .line 421
    invoke-static {v1, v2}, Ll1/x;->c(Landroid/view/ViewGroup;Z)V

    .line 422
    .line 423
    .line 424
    new-instance v2, Ll1/c$j;

    .line 425
    .line 426
    invoke-direct {v2, v8, v1}, Ll1/c$j;-><init>(Ll1/c;Landroid/view/ViewGroup;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8, v2}, Ll1/l;->a(Ll1/l$f;)Ll1/l;

    .line 430
    .line 431
    .line 432
    :cond_16
    return-object v0

    .line 433
    :cond_17
    iget-object v2, v0, Ll1/s;->a:Ljava/util/Map;

    .line 434
    .line 435
    const-string v3, "android:changeBounds:windowX"

    .line 436
    .line 437
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Ljava/lang/Integer;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    iget-object v0, v0, Ll1/s;->a:Ljava/util/Map;

    .line 448
    .line 449
    const-string v4, "android:changeBounds:windowY"

    .line 450
    .line 451
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    iget-object v5, v1, Ll1/s;->a:Ljava/util/Map;

    .line 462
    .line 463
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Ljava/lang/Integer;

    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    iget-object v1, v1, Ll1/s;->a:Ljava/util/Map;

    .line 474
    .line 475
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-ne v2, v3, :cond_19

    .line 486
    .line 487
    if-eq v0, v1, :cond_18

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_18
    const/4 v0, 0x0

    .line 491
    return-object v0

    .line 492
    :cond_19
    :goto_a
    iget-object v4, v8, Ll1/c;->I:[I

    .line 493
    .line 494
    move-object/from16 v5, p1

    .line 495
    .line 496
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 508
    .line 509
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    new-instance v6, Landroid/graphics/Canvas;

    .line 514
    .line 515
    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 519
    .line 520
    .line 521
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 522
    .line 523
    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .line 525
    .line 526
    invoke-static {v9}, Ll1/a0;->c(Landroid/view/View;)F

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    const/4 v4, 0x0

    .line 531
    invoke-static {v9, v4}, Ll1/a0;->g(Landroid/view/View;F)V

    .line 532
    .line 533
    .line 534
    invoke-static/range {p1 .. p1}, Ll1/a0;->b(Landroid/view/View;)Ll1/z;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-interface {v4, v6}, Ll1/z;->a(Landroid/graphics/drawable/Drawable;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual/range {p0 .. p0}, Ll1/l;->y()Ll1/g;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    iget-object v10, v8, Ll1/c;->I:[I

    .line 546
    .line 547
    const/4 v11, 0x0

    .line 548
    aget v11, v10, v11

    .line 549
    .line 550
    sub-int/2addr v2, v11

    .line 551
    int-to-float v2, v2

    .line 552
    const/4 v12, 0x1

    .line 553
    aget v10, v10, v12

    .line 554
    .line 555
    sub-int/2addr v0, v10

    .line 556
    int-to-float v0, v0

    .line 557
    sub-int/2addr v3, v11

    .line 558
    int-to-float v3, v3

    .line 559
    sub-int/2addr v1, v10

    .line 560
    int-to-float v1, v1

    .line 561
    invoke-virtual {v4, v2, v0, v3, v1}, Ll1/g;->a(FFFF)Landroid/graphics/Path;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    sget-object v1, Ll1/c;->M:Landroid/util/Property;

    .line 566
    .line 567
    invoke-static {v1, v0}, Ll1/h;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 576
    .line 577
    .line 578
    move-result-object v10

    .line 579
    new-instance v11, Ll1/c$a;

    .line 580
    .line 581
    move-object v0, v11

    .line 582
    move-object/from16 v1, p0

    .line 583
    .line 584
    move-object/from16 v2, p1

    .line 585
    .line 586
    move-object v3, v6

    .line 587
    move-object v4, v9

    .line 588
    move v5, v7

    .line 589
    invoke-direct/range {v0 .. v5}, Ll1/c$a;-><init>(Ll1/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    .line 594
    .line 595
    return-object v10

    .line 596
    :cond_1a
    :goto_b
    const/4 v0, 0x0

    .line 597
    return-object v0

    .line 598
    :cond_1b
    :goto_c
    const/4 v0, 0x0

    .line 599
    return-object v0
.end method

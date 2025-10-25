.class final Lio/sentry/android/replay/s$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/s;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/sentry/android/replay/s;

.field final synthetic f:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/s;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/s$a;->e:Lio/sentry/android/replay/s;

    iput-object p2, p0, Lio/sentry/android/replay/s$a;->f:Landroid/graphics/Canvas;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/replay/viewhierarchy/b;)Ljava/lang/Boolean;
    .locals 5

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->e()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->d()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/b$c;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->d()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lio/sentry/android/replay/s$a;->e:Lio/sentry/android/replay/s;

    .line 46
    .line 47
    invoke-static {v1}, Lio/sentry/android/replay/s;->f(Lio/sentry/android/replay/s;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->d()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, v2, p1}, Lio/sentry/android/replay/s;->d(Lio/sentry/android/replay/s;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/b$d;

    .line 69
    .line 70
    const/high16 v1, -0x1000000

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Lio/sentry/android/replay/viewhierarchy/b$d;

    .line 76
    .line 77
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/b$d;->j()Lio/sentry/android/replay/util/m;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-interface {v2}, Lio/sentry/android/replay/util/m;->f()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/b$d;->i()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/b$d;->j()Lio/sentry/android/replay/util/m;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->d()Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/b$d;->k()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/b$d;->l()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-static {v2, p1, v3, v0}, Lio/sentry/android/replay/util/n;->c(Lio/sentry/android/replay/util/m;Landroid/graphics/Rect;II)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/b;->d()Landroid/graphics/Rect;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :goto_1
    invoke-virtual {p1}, Lxc/k;->a()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {p1}, Lxc/k;->b()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iget-object v1, p0, Lio/sentry/android/replay/s$a;->e:Lio/sentry/android/replay/s;

    .line 162
    .line 163
    invoke-static {v1}, Lio/sentry/android/replay/s;->e(Lio/sentry/android/replay/s;)Landroid/graphics/Paint;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    .line 169
    .line 170
    check-cast v0, Ljava/lang/Iterable;

    .line 171
    .line 172
    iget-object p1, p0, Lio/sentry/android/replay/s$a;->f:Landroid/graphics/Canvas;

    .line 173
    .line 174
    iget-object v1, p0, Lio/sentry/android/replay/s$a;->e:Lio/sentry/android/replay/s;

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Landroid/graphics/Rect;

    .line 191
    .line 192
    new-instance v3, Landroid/graphics/RectF;

    .line 193
    .line 194
    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Lio/sentry/android/replay/s;->e(Lio/sentry/android/replay/s;)Landroid/graphics/Paint;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/high16 v4, 0x41200000    # 10.0f

    .line 202
    .line 203
    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .line 209
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/android/replay/viewhierarchy/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/s$a;->a(Lio/sentry/android/replay/viewhierarchy/b;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

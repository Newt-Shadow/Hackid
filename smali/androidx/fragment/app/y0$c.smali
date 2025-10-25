.class final Landroidx/fragment/app/y0$c;
.super Landroidx/fragment/app/y0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final l:Landroidx/fragment/app/o0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    const-string v0, "finalState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleImpact"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fragmentStateManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "fragmentStateManager.fragment"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0}, Landroidx/fragment/app/y0$d;-><init>(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/p;)V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Landroidx/fragment/app/y0$c;->l:Landroidx/fragment/app/o0;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y0$d;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/y0$c;->l:Landroidx/fragment/app/o0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/o0;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public q()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/y0$d;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/y0$d;->q()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/y0$d;->j()Landroidx/fragment/app/y0$d$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Landroidx/fragment/app/y0$d$a;->b:Landroidx/fragment/app/y0$d$a;

    .line 16
    .line 17
    const-string v2, " for Fragment "

    .line 18
    .line 19
    const-string v3, "FragmentManager"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const-string v5, "fragmentStateManager.fragment"

    .line 23
    .line 24
    if-ne v0, v1, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/y0$c;->l:Landroidx/fragment/app/o0;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p;->setFocusedView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v5, "requestFocus: Saved focused view "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroidx/fragment/app/p;->requireView()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "this.fragment.requireView()"

    .line 87
    .line 88
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/4 v3, 0x0

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/fragment/app/y0$c;->l:Landroidx/fragment/app/o0;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroidx/fragment/app/o0;->b()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    cmpg-float v2, v2, v3

    .line 111
    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const/4 v2, 0x0

    .line 117
    :goto_0
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_4

    .line 124
    .line 125
    const/4 v2, 0x4

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getPostOnViewCreatedAlpha()F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/y0$d;->j()Landroidx/fragment/app/y0$d$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v1, Landroidx/fragment/app/y0$d$a;->c:Landroidx/fragment/app/y0$d$a;

    .line 142
    .line 143
    if-ne v0, v1, :cond_7

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/fragment/app/y0$c;->l:Landroidx/fragment/app/o0;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/fragment/app/p;->requireView()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v5, "fragment.requireView()"

    .line 159
    .line 160
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_6

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v5, "Clearing focus "

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, " on view "

    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_1
    return-void
.end method

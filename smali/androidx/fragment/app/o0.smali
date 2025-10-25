.class Landroidx/fragment/app/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/c0;

.field private final b:Landroidx/fragment/app/p0;

.field private final c:Landroidx/fragment/app/p;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Landroidx/fragment/app/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/o0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Landroidx/fragment/app/o0;->e:I

    .line 23
    iput-object p1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 24
    iput-object p2, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 25
    iput-object p3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p3, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;

    .line 27
    iput-object p1, p3, Landroidx/fragment/app/p;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 28
    iput v0, p3, Landroidx/fragment/app/p;->mBackStackNesting:I

    .line 29
    iput-boolean v0, p3, Landroidx/fragment/app/p;->mInLayout:Z

    .line 30
    iput-boolean v0, p3, Landroidx/fragment/app/p;->mAdded:Z

    .line 31
    iget-object p2, p3, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 32
    iput-object p1, p3, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 33
    iput-object p4, p3, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p1, "arguments"

    .line 34
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Landroidx/fragment/app/p;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Ljava/lang/ClassLoader;Landroidx/fragment/app/z;Landroid/os/Bundle;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/o0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    const-string p1, "state"

    .line 12
    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/n0;

    .line 13
    invoke-virtual {p1, p4, p3}, Landroidx/fragment/app/n0;->a(Landroidx/fragment/app/z;Ljava/lang/ClassLoader;)Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 14
    iput-object p5, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p2, "arguments"

    .line 15
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/p;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x2

    .line 18
    invoke-static {p2}, Landroidx/fragment/app/i0;->J0(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private l(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto ACTIVITY_CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v1, "savedInstanceState"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p;->performActivityCreated(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/fragment/app/i0;->m0(Landroid/view/View;)Landroidx/fragment/app/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getParentFragment()Landroidx/fragment/app/p;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 24
    .line 25
    iget v2, v1, Landroidx/fragment/app/p;->mContainerId:I

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lt0/c;->o(Landroidx/fragment/app/p;Landroidx/fragment/app/p;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->j(Landroidx/fragment/app/p;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 39
    .line 40
    iget-object v2, v1, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method c()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto ATTACHED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 35
    .line 36
    const-string v2, " that does not belong to this FragmentManager!"

    .line 37
    .line 38
    const-string v3, " declared target fragment "

    .line 39
    .line 40
    const-string v4, "Fragment "

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->n(Ljava/lang/String;)Landroidx/fragment/app/o0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 56
    .line 57
    iget-object v2, v1, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 58
    .line 59
    iget-object v2, v2, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v2, v1, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v5, v1, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 64
    .line 65
    move-object v5, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 86
    .line 87
    iget-object v3, v3, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->n(Ljava/lang/String;)Landroidx/fragment/app/o0;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 135
    .line 136
    iget-object v3, v3, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 153
    .line 154
    invoke-virtual {v5}, Landroidx/fragment/app/o0;->m()V

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 158
    .line 159
    iget-object v1, v0, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->w0()Landroidx/fragment/app/a0;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Landroidx/fragment/app/p;->mHost:Landroidx/fragment/app/a0;

    .line 166
    .line 167
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 168
    .line 169
    iget-object v1, v0, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput-object v1, v0, Landroidx/fragment/app/p;->mParentFragment:Landroidx/fragment/app/p;

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 178
    .line 179
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->g(Landroidx/fragment/app/p;Z)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performAttach()V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 191
    .line 192
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->b(Landroidx/fragment/app/p;Z)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method d()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/p;->mState:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/o0;->e:I

    .line 11
    .line 12
    sget-object v2, Landroidx/fragment/app/o0$b;->a:[I

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/p;->mMaxState:Landroidx/lifecycle/i$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    aget v0, v2, v0

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    const/4 v3, 0x5

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v0, v7, :cond_4

    .line 29
    .line 30
    if-eq v0, v6, :cond_3

    .line 31
    .line 32
    if-eq v0, v5, :cond_2

    .line 33
    .line 34
    if-eq v0, v4, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 57
    .line 58
    iget-boolean v8, v0, Landroidx/fragment/app/p;->mFromLayout:Z

    .line 59
    .line 60
    if-eqz v8, :cond_7

    .line 61
    .line 62
    iget-boolean v8, v0, Landroidx/fragment/app/p;->mInLayout:Z

    .line 63
    .line 64
    if-eqz v8, :cond_5

    .line 65
    .line 66
    iget v0, p0, Landroidx/fragment/app/o0;->e:I

    .line 67
    .line 68
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget v8, p0, Landroidx/fragment/app/o0;->e:I

    .line 90
    .line 91
    if-ge v8, v4, :cond_6

    .line 92
    .line 93
    iget v0, v0, Landroidx/fragment/app/p;->mState:I

    .line 94
    .line 95
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 105
    .line 106
    iget-boolean v0, v0, Landroidx/fragment/app/p;->mAdded:Z

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 115
    .line 116
    iget-object v8, v0, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 117
    .line 118
    if-eqz v8, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v8, v0}, Landroidx/fragment/app/y0;->u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Landroidx/fragment/app/y0;->s(Landroidx/fragment/app/o0;)Landroidx/fragment/app/y0$d$a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    const/4 v0, 0x0

    .line 134
    :goto_2
    sget-object v8, Landroidx/fragment/app/y0$d$a;->b:Landroidx/fragment/app/y0$d$a;

    .line 135
    .line 136
    if-ne v0, v8, :cond_a

    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    sget-object v8, Landroidx/fragment/app/y0$d$a;->c:Landroidx/fragment/app/y0$d$a;

    .line 145
    .line 146
    if-ne v0, v8, :cond_b

    .line 147
    .line 148
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_3

    .line 153
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 154
    .line 155
    iget-boolean v8, v0, Landroidx/fragment/app/p;->mRemoving:Z

    .line 156
    .line 157
    if-eqz v8, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/fragment/app/p;->isInBackStack()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_3

    .line 170
    :cond_c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    :cond_d
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 175
    .line 176
    iget-boolean v2, v0, Landroidx/fragment/app/p;->mDeferStart:Z

    .line 177
    .line 178
    if-eqz v2, :cond_e

    .line 179
    .line 180
    iget v0, v0, Landroidx/fragment/app/p;->mState:I

    .line 181
    .line 182
    if-ge v0, v3, :cond_e

    .line 183
    .line 184
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 189
    .line 190
    iget-boolean v2, v0, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 191
    .line 192
    if-eqz v2, :cond_f

    .line 193
    .line 194
    iget-object v0, v0, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 195
    .line 196
    if-eqz v0, :cond_f

    .line 197
    .line 198
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    :cond_f
    invoke-static {v6}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_10

    .line 207
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v2, "computeExpectedState() of "

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, " for "

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v2, "FragmentManager"

    .line 236
    .line 237
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_10
    return v1
.end method

.method e()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v1, "savedInstanceState"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 47
    .line 48
    iget-boolean v2, v1, Landroidx/fragment/app/p;->mIsCreated:Z

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v2, v1, v0, v3}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p;->performCreate(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/c0;->c(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v0, 0x1

    .line 72
    iput v0, v1, Landroidx/fragment/app/p;->mState:I

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/fragment/app/p;->restoreChildFragmentState()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method f()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/fragment/app/p;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "FragmentManager"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "moveto CREATE_VIEW: "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 40
    .line 41
    iget-object v1, v1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v4, "savedInstanceState"

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v1, v3

    .line 54
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Landroidx/fragment/app/p;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 61
    .line 62
    iget-object v6, v5, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    move-object v3, v6

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_3
    iget v6, v5, Landroidx/fragment/app/p;->mContainerId:I

    .line 70
    .line 71
    if-eqz v6, :cond_7

    .line 72
    .line 73
    const/4 v3, -0x1

    .line 74
    if-eq v6, v3, :cond_6

    .line 75
    .line 76
    iget-object v3, v5, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/fragment/app/i0;->s0()Landroidx/fragment/app/w;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 83
    .line 84
    iget v5, v5, Landroidx/fragment/app/p;->mContainerId:I

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Landroidx/fragment/app/w;->c(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroid/view/ViewGroup;

    .line 91
    .line 92
    if-nez v3, :cond_5

    .line 93
    .line 94
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 95
    .line 96
    iget-boolean v6, v5, Landroidx/fragment/app/p;->mRestored:Z

    .line 97
    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Landroidx/fragment/app/p;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 106
    .line 107
    iget v1, v1, Landroidx/fragment/app/p;->mContainerId:I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    const-string v0, "unknown"

    .line 115
    .line 116
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "No view found for id 0x"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 129
    .line 130
    iget v3, v3, Landroidx/fragment/app/p;->mContainerId:I

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v3, " ("

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, ") for fragment "

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v1

    .line 165
    :cond_5
    instance-of v5, v3, Landroidx/fragment/app/x;

    .line 166
    .line 167
    if-nez v5, :cond_7

    .line 168
    .line 169
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 170
    .line 171
    invoke-static {v5, v3}, Lt0/c;->n(Landroidx/fragment/app/p;Landroid/view/ViewGroup;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "Cannot create fragment "

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, " for a container view with no id"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_7
    :goto_2
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 206
    .line 207
    iput-object v3, v5, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 208
    .line 209
    invoke-virtual {v5, v4, v3, v1}, Landroidx/fragment/app/p;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 213
    .line 214
    iget-object v4, v4, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 215
    .line 216
    const/4 v5, 0x2

    .line 217
    if-eqz v4, :cond_d

    .line 218
    .line 219
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v4, "moveto VIEW_CREATED: "

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 236
    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 248
    .line 249
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 256
    .line 257
    iget-object v6, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 258
    .line 259
    sget v7, Ls0/b;->a:I

    .line 260
    .line 261
    invoke-virtual {v6, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    if-eqz v3, :cond_9

    .line 265
    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->b()V

    .line 267
    .line 268
    .line 269
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 270
    .line 271
    iget-boolean v3, v0, Landroidx/fragment/app/p;->mHidden:Z

    .line 272
    .line 273
    if-eqz v3, :cond_a

    .line 274
    .line 275
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 276
    .line 277
    const/16 v3, 0x8

    .line 278
    .line 279
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 283
    .line 284
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_b

    .line 291
    .line 292
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 293
    .line 294
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 295
    .line 296
    invoke-static {v0}, Ld0/p0;->R(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 301
    .line 302
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 303
    .line 304
    new-instance v3, Landroidx/fragment/app/o0$a;

    .line 305
    .line 306
    invoke-direct {v3, p0, v0}, Landroidx/fragment/app/o0$a;-><init>(Landroidx/fragment/app/o0;Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 310
    .line 311
    .line 312
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 313
    .line 314
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performViewCreated()V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 318
    .line 319
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 320
    .line 321
    iget-object v6, v3, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v0, v3, v6, v1, v4}, Landroidx/fragment/app/c0;->m(Landroidx/fragment/app/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 327
    .line 328
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 335
    .line 336
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 343
    .line 344
    invoke-virtual {v3, v1}, Landroidx/fragment/app/p;->setPostOnViewCreatedAlpha(F)V

    .line 345
    .line 346
    .line 347
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 348
    .line 349
    iget-object v3, v1, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 350
    .line 351
    if-eqz v3, :cond_d

    .line 352
    .line 353
    if-nez v0, :cond_d

    .line 354
    .line 355
    iget-object v0, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_c

    .line 362
    .line 363
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p;->setFocusedView(Landroid/view/View;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v5}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_c

    .line 373
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v3, "requestFocus: Saved focused view "

    .line 380
    .line 381
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v0, " for Fragment "

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 393
    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 405
    .line 406
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 410
    .line 411
    .line 412
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 413
    .line 414
    iput v5, v0, Landroidx/fragment/app/p;->mState:I

    .line 415
    .line 416
    return-void
.end method

.method g()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget-boolean v1, v0, Landroidx/fragment/app/p;->mRemoving:Z

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/p;->isInBackStack()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v3

    .line 49
    :goto_0
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 53
    .line 54
    iget-boolean v5, v4, Landroidx/fragment/app/p;->mBeingSaved:Z

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 59
    .line 60
    iget-object v4, v4, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/p0;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroidx/fragment/app/l0;->q(Landroidx/fragment/app/p;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v4, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    move v4, v2

    .line 85
    :goto_2
    if-eqz v4, :cond_d

    .line 86
    .line 87
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 88
    .line 89
    iget-object v4, v4, Landroidx/fragment/app/p;->mHost:Landroidx/fragment/app/a0;

    .line 90
    .line 91
    instance-of v5, v4, Landroidx/lifecycle/m0;

    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroidx/fragment/app/l0;->n()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    instance-of v5, v5, Landroid/app/Activity;

    .line 111
    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    invoke-virtual {v4}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroid/app/Activity;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    xor-int/2addr v2, v4

    .line 125
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 128
    .line 129
    iget-boolean v0, v0, Landroidx/fragment/app/p;->mBeingSaved:Z

    .line 130
    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    :cond_7
    if-eqz v2, :cond_9

    .line 134
    .line 135
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 142
    .line 143
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/l0;->f(Landroidx/fragment/app/p;Z)V

    .line 144
    .line 145
    .line 146
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performDestroy()V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 152
    .line 153
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/c0;->d(Landroidx/fragment/app/p;Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_b

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroidx/fragment/app/o0;

    .line 179
    .line 180
    if-eqz v2, :cond_a

    .line 181
    .line 182
    invoke-virtual {v2}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 187
    .line 188
    iget-object v3, v3, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v4, v2, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_a

    .line 197
    .line 198
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 199
    .line 200
    iput-object v3, v2, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 201
    .line 202
    iput-object v1, v2, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 206
    .line 207
    iget-object v1, v0, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v1, :cond_c

    .line 210
    .line 211
    iget-object v2, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Landroidx/fragment/app/p0;->f(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, v0, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 218
    .line 219
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 220
    .line 221
    invoke-virtual {v0, p0}, Landroidx/fragment/app/p0;->s(Landroidx/fragment/app/o0;)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 226
    .line 227
    iget-object v0, v0, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 228
    .line 229
    if-eqz v0, :cond_e

    .line 230
    .line 231
    iget-object v1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->f(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_e

    .line 238
    .line 239
    iget-boolean v1, v0, Landroidx/fragment/app/p;->mRetainInstance:Z

    .line 240
    .line 241
    if-eqz v1, :cond_e

    .line 242
    .line 243
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 244
    .line 245
    iput-object v0, v1, Landroidx/fragment/app/p;->mTarget:Landroidx/fragment/app/p;

    .line 246
    .line 247
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 248
    .line 249
    iput v3, v0, Landroidx/fragment/app/p;->mState:I

    .line 250
    .line 251
    :goto_5
    return-void
.end method

.method h()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom CREATE_VIEW: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performDestroyView()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->n(Landroidx/fragment/app/p;Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 62
    .line 63
    iput-object v1, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 64
    .line 65
    iput-object v1, v0, Landroidx/fragment/app/p;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/fragment/app/p;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/s;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 73
    .line 74
    iput-boolean v2, v0, Landroidx/fragment/app/p;->mInLayout:Z

    .line 75
    .line 76
    return-void
.end method

.method i()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "movefrom ATTACHED: "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/p;->performDetach()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/c0;->e(Landroidx/fragment/app/p;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 46
    .line 47
    const/4 v3, -0x1

    .line 48
    iput v3, v1, Landroidx/fragment/app/p;->mState:I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, v1, Landroidx/fragment/app/p;->mHost:Landroidx/fragment/app/a0;

    .line 52
    .line 53
    iput-object v3, v1, Landroidx/fragment/app/p;->mParentFragment:Landroidx/fragment/app/p;

    .line 54
    .line 55
    iput-object v3, v1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 56
    .line 57
    iget-boolean v3, v1, Landroidx/fragment/app/p;->mRemoving:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/fragment/app/p;->isInBackStack()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    :cond_1
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroidx/fragment/app/l0;->q(Landroidx/fragment/app/p;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    :cond_2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "initState called for fragment: "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/p;->initState()V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void
.end method

.method j()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/p;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/p;->mInLayout:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/fragment/app/p;->mPerformedCreateView:Z

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "moveto CREATE_VIEW: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "FragmentManager"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v2, "savedInstanceState"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v0, v1

    .line 61
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroidx/fragment/app/p;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3, v1, v0}, Landroidx/fragment/app/p;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 81
    .line 82
    iget-object v3, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 83
    .line 84
    sget v4, Ls0/b;->a:I

    .line 85
    .line 86
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 90
    .line 91
    iget-boolean v3, v1, Landroidx/fragment/app/p;->mHidden:Z

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 96
    .line 97
    const/16 v3, 0x8

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/fragment/app/p;->performViewCreated()V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 110
    .line 111
    iget-object v4, v3, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v1, v3, v4, v0, v2}, Landroidx/fragment/app/c0;->m(Landroidx/fragment/app/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 117
    .line 118
    const/4 v1, 0x2

    .line 119
    iput v1, v0, Landroidx/fragment/app/p;->mState:I

    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method k()Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    return-object v0
.end method

.method m()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "FragmentManager"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/o0;->d:Z

    .line 42
    .line 43
    move v4, v0

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->d()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 49
    .line 50
    iget v7, v6, Landroidx/fragment/app/p;->mState:I

    .line 51
    .line 52
    const/4 v8, 0x3

    .line 53
    if-eq v5, v7, :cond_9

    .line 54
    .line 55
    if-le v5, v7, :cond_3

    .line 56
    .line 57
    add-int/lit8 v7, v7, 0x1

    .line 58
    .line 59
    packed-switch v7, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->p()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :pswitch_1
    const/4 v4, 0x6

    .line 70
    iput v4, v6, Landroidx/fragment/app/p;->mState:I

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->t()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_3
    iget-object v4, v6, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    iget-object v4, v6, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-virtual {v6}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Landroidx/fragment/app/y0;->u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 96
    .line 97
    iget-object v5, v5, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v5}, Landroidx/fragment/app/y0$d$b;->f(I)Landroidx/fragment/app/y0$d$b;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v4, v5, p0}, Landroidx/fragment/app/y0;->j(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/o0;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    iput v5, v4, Landroidx/fragment/app/p;->mState:I

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->a()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->j()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->f()V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->e()V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->c()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 141
    .line 142
    packed-switch v7, :pswitch_data_1

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->n()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :pswitch_9
    const/4 v4, 0x5

    .line 153
    iput v4, v6, Landroidx/fragment/app/p;->mState:I

    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->u()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :pswitch_b
    invoke-static {v8}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_4

    .line 167
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v5, "movefrom ACTIVITY_CREATED: "

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 191
    .line 192
    iget-boolean v5, v4, Landroidx/fragment/app/p;->mBeingSaved:Z

    .line 193
    .line 194
    if-eqz v5, :cond_5

    .line 195
    .line 196
    iget-object v5, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 197
    .line 198
    iget-object v4, v4, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->q()Landroid/os/Bundle;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/p0;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    iget-object v5, v4, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v5, :cond_6

    .line 211
    .line 212
    iget-object v4, v4, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;

    .line 213
    .line 214
    if-nez v4, :cond_6

    .line 215
    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->r()V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 220
    .line 221
    iget-object v5, v4, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 222
    .line 223
    if-eqz v5, :cond_7

    .line 224
    .line 225
    iget-object v5, v4, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 226
    .line 227
    if-eqz v5, :cond_7

    .line 228
    .line 229
    invoke-virtual {v4}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v5, v4}, Landroidx/fragment/app/y0;->u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4, p0}, Landroidx/fragment/app/y0;->l(Landroidx/fragment/app/o0;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 241
    .line 242
    iput v8, v4, Landroidx/fragment/app/p;->mState:I

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_c
    iput-boolean v0, v6, Landroidx/fragment/app/p;->mInLayout:Z

    .line 246
    .line 247
    iput v1, v6, Landroidx/fragment/app/p;->mState:I

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->h()V

    .line 251
    .line 252
    .line 253
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 254
    .line 255
    iput v3, v4, Landroidx/fragment/app/p;->mState:I

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :pswitch_e
    iget-boolean v4, v6, Landroidx/fragment/app/p;->mBeingSaved:Z

    .line 259
    .line 260
    if-eqz v4, :cond_8

    .line 261
    .line 262
    iget-object v4, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 263
    .line 264
    iget-object v5, v6, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v4, v5}, Landroidx/fragment/app/p0;->q(Ljava/lang/String;)Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    if-nez v4, :cond_8

    .line 271
    .line 272
    iget-object v4, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 273
    .line 274
    iget-object v5, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 275
    .line 276
    iget-object v5, v5, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->q()Landroid/os/Bundle;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/p0;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 283
    .line 284
    .line 285
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->g()V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->i()V

    .line 290
    .line 291
    .line 292
    :goto_2
    move v4, v3

    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_9
    if-nez v4, :cond_c

    .line 296
    .line 297
    const/4 v1, -0x1

    .line 298
    if-ne v7, v1, :cond_c

    .line 299
    .line 300
    iget-boolean v1, v6, Landroidx/fragment/app/p;->mRemoving:Z

    .line 301
    .line 302
    if-eqz v1, :cond_c

    .line 303
    .line 304
    invoke-virtual {v6}, Landroidx/fragment/app/p;->isInBackStack()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_c

    .line 309
    .line 310
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 311
    .line 312
    iget-boolean v1, v1, Landroidx/fragment/app/p;->mBeingSaved:Z

    .line 313
    .line 314
    if-nez v1, :cond_c

    .line 315
    .line 316
    invoke-static {v8}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_a

    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v4, "Cleaning up state of never attached fragment: "

    .line 328
    .line 329
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 333
    .line 334
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 345
    .line 346
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iget-object v4, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 351
    .line 352
    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/l0;->f(Landroidx/fragment/app/p;Z)V

    .line 353
    .line 354
    .line 355
    iget-object v1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 356
    .line 357
    invoke-virtual {v1, p0}, Landroidx/fragment/app/p0;->s(Landroidx/fragment/app/o0;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v8}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_b

    .line 365
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v3, "initState called for fragment: "

    .line 372
    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 377
    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 389
    .line 390
    invoke-virtual {v1}, Landroidx/fragment/app/p;->initState()V

    .line 391
    .line 392
    .line 393
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 394
    .line 395
    iget-boolean v2, v1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 396
    .line 397
    if-eqz v2, :cond_10

    .line 398
    .line 399
    iget-object v2, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 400
    .line 401
    if-eqz v2, :cond_e

    .line 402
    .line 403
    iget-object v2, v1, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 404
    .line 405
    if-eqz v2, :cond_e

    .line 406
    .line 407
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v2, v1}, Landroidx/fragment/app/y0;->u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 416
    .line 417
    iget-boolean v2, v2, Landroidx/fragment/app/p;->mHidden:Z

    .line 418
    .line 419
    if-eqz v2, :cond_d

    .line 420
    .line 421
    invoke-virtual {v1, p0}, Landroidx/fragment/app/y0;->k(Landroidx/fragment/app/o0;)V

    .line 422
    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_d
    invoke-virtual {v1, p0}, Landroidx/fragment/app/y0;->m(Landroidx/fragment/app/o0;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 429
    .line 430
    iget-object v2, v1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 431
    .line 432
    if-eqz v2, :cond_f

    .line 433
    .line 434
    invoke-virtual {v2, v1}, Landroidx/fragment/app/i0;->H0(Landroidx/fragment/app/p;)V

    .line 435
    .line 436
    .line 437
    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 438
    .line 439
    iput-boolean v0, v1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 440
    .line 441
    iget-boolean v2, v1, Landroidx/fragment/app/p;->mHidden:Z

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Landroidx/fragment/app/p;->onHiddenChanged(Z)V

    .line 444
    .line 445
    .line 446
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 447
    .line 448
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 449
    .line 450
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .line 452
    .line 453
    :cond_10
    iput-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    .line 454
    .line 455
    return-void

    .line 456
    :catchall_0
    move-exception v1

    .line 457
    iput-boolean v0, p0, Landroidx/fragment/app/o0;->d:Z

    .line 458
    .line 459
    throw v1

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method n()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom RESUMED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performPause()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->f(Landroidx/fragment/app/p;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string v0, "savedInstanceState"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 26
    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 38
    .line 39
    const-string v1, "viewState"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 50
    .line 51
    const-string v1, "viewRegistryState"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p1, Landroidx/fragment/app/p;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 62
    .line 63
    const-string v0, "state"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroidx/fragment/app/n0;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 74
    .line 75
    iget-object v1, p1, Landroidx/fragment/app/n0;->l:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/fragment/app/p;->mTargetWho:Ljava/lang/String;

    .line 78
    .line 79
    iget v1, p1, Landroidx/fragment/app/n0;->m:I

    .line 80
    .line 81
    iput v1, v0, Landroidx/fragment/app/p;->mTargetRequestCode:I

    .line 82
    .line 83
    iget-object v1, v0, Landroidx/fragment/app/p;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput-boolean p1, v0, Landroidx/fragment/app/p;->mUserVisibleHint:Z

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    iput-object v0, p1, Landroidx/fragment/app/p;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-boolean p1, p1, Landroidx/fragment/app/n0;->n:Z

    .line 100
    .line 101
    iput-boolean p1, v0, Landroidx/fragment/app/p;->mUserVisibleHint:Z

    .line 102
    .line 103
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 104
    .line 105
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mUserVisibleHint:Z

    .line 106
    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p1, Landroidx/fragment/app/p;->mDeferStart:Z

    .line 111
    .line 112
    :cond_4
    return-void

    .line 113
    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "Failed to restore view hierarchy state for fragment "

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method p()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "moveto RESUMED: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getFocusedView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroidx/fragment/app/o0;->l(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "requestFocus: Restoring focused view "

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " "

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const-string v0, "succeeded"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "failed"

    .line 81
    .line 82
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " on Fragment "

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " resulting in focused view "

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p;->setFocusedView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performResume()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 130
    .line 131
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/c0;->i(Landroidx/fragment/app/p;Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/p0;

    .line 138
    .line 139
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 140
    .line 141
    iget-object v2, v2, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/p0;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 147
    .line 148
    iput-object v1, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 149
    .line 150
    iput-object v1, v0, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;

    .line 151
    .line 152
    iput-object v1, v0, Landroidx/fragment/app/p;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 153
    .line 154
    return-void
.end method

.method q()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 7
    .line 8
    iget v2, v1, Landroidx/fragment/app/p;->mState:I

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v1, Landroidx/fragment/app/n0;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Landroidx/fragment/app/n0;-><init>(Landroidx/fragment/app/p;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "state"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    iget v1, v1, Landroidx/fragment/app/p;->mState:I

    .line 35
    .line 36
    if-le v1, v3, :cond_6

    .line 37
    .line 38
    new-instance v1, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroidx/fragment/app/p;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-string v2, "savedInstanceState"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/c0;->j(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/fragment/app/p;->mSavedStateRegistryController:Lh1/e;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lh1/e;->e(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    const-string v2, "registryState"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->r1()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    const-string v2, "childFragmentManager"

    .line 105
    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 110
    .line 111
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/o0;->r()V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 119
    .line 120
    iget-object v1, v1, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    const-string v2, "viewState"

    .line 125
    .line 126
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 130
    .line 131
    iget-object v1, v1, Landroidx/fragment/app/p;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 132
    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    const-string v2, "viewRegistryState"

    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 141
    .line 142
    iget-object v1, v1, Landroidx/fragment/app/p;->mArguments:Landroid/os/Bundle;

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    const-string v2, "arguments"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    return-object v0
.end method

.method r()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Saving view state for fragment "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " with view "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "FragmentManager"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 70
    .line 71
    iput-object v0, v1, Landroidx/fragment/app/p;->mSavedViewState:Landroid/util/SparseArray;

    .line 72
    .line 73
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/fragment/app/p;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->e(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 92
    .line 93
    iput-object v0, v1, Landroidx/fragment/app/p;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method s(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/o0;->e:I

    .line 2
    .line 3
    return-void
.end method

.method t()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto STARTED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performStart()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->k(Landroidx/fragment/app/p;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method u()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom STARTED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "FragmentManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/p;->performStop()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/c0;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/o0;->c:Landroidx/fragment/app/p;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c0;->l(Landroidx/fragment/app/p;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

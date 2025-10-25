.class public abstract Landroidx/fragment/app/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/i0$m;,
        Landroidx/fragment/app/i0$n;,
        Landroidx/fragment/app/i0$o;,
        Landroidx/fragment/app/i0$j;,
        Landroidx/fragment/app/i0$l;,
        Landroidx/fragment/app/i0$k;
    }
.end annotation


# static fields
.field private static U:Z = false

.field static V:Z = true


# instance fields
.field A:Landroidx/fragment/app/p;

.field private B:Landroidx/fragment/app/z;

.field private C:Landroidx/fragment/app/z;

.field private D:Landroidx/fragment/app/z0;

.field private E:Landroidx/fragment/app/z0;

.field private F:Lf/c;

.field private G:Lf/c;

.field private H:Lf/c;

.field I:Ljava/util/ArrayDeque;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/util/ArrayList;

.field private P:Ljava/util/ArrayList;

.field private Q:Ljava/util/ArrayList;

.field private R:Landroidx/fragment/app/l0;

.field private S:Lt0/c$c;

.field private T:Ljava/lang/Runnable;

.field private final a:Ljava/util/ArrayList;

.field private b:Z

.field private final c:Landroidx/fragment/app/p0;

.field d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private final f:Landroidx/fragment/app/b0;

.field private g:Landroidx/activity/w;

.field h:Landroidx/fragment/app/a;

.field i:Z

.field private final j:Landroidx/activity/v;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field o:Ljava/util/ArrayList;

.field private final p:Landroidx/fragment/app/c0;

.field private final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final r:Lc0/a;

.field private final s:Lc0/a;

.field private final t:Lc0/a;

.field private final u:Lc0/a;

.field private final v:Ld0/b0;

.field w:I

.field private x:Landroidx/fragment/app/a0;

.field private y:Landroidx/fragment/app/w;

.field private z:Landroidx/fragment/app/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/p0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/fragment/app/p0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroidx/fragment/app/b0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/i0;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/fragment/app/i0;->f:Landroidx/fragment/app/b0;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->i:Z

    .line 37
    .line 38
    new-instance v2, Landroidx/fragment/app/i0$b;

    .line 39
    .line 40
    invoke-direct {v2, p0, v1}, Landroidx/fragment/app/i0$b;-><init>(Landroidx/fragment/app/i0;Z)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/fragment/app/i0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    new-instance v1, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Landroidx/fragment/app/i0;->l:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Landroidx/fragment/app/i0;->m:Ljava/util/Map;

    .line 73
    .line 74
    new-instance v1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Landroidx/fragment/app/i0;->n:Ljava/util/Map;

    .line 84
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v1, Landroidx/fragment/app/c0;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/i0;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 98
    .line 99
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Landroidx/fragment/app/i0;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    .line 106
    new-instance v1, Landroidx/fragment/app/d0;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/i0;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Landroidx/fragment/app/i0;->r:Lc0/a;

    .line 112
    .line 113
    new-instance v1, Landroidx/fragment/app/e0;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/i0;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Landroidx/fragment/app/i0;->s:Lc0/a;

    .line 119
    .line 120
    new-instance v1, Landroidx/fragment/app/f0;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Landroidx/fragment/app/f0;-><init>(Landroidx/fragment/app/i0;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Landroidx/fragment/app/i0;->t:Lc0/a;

    .line 126
    .line 127
    new-instance v1, Landroidx/fragment/app/g0;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/i0;)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Landroidx/fragment/app/i0;->u:Lc0/a;

    .line 133
    .line 134
    new-instance v1, Landroidx/fragment/app/i0$c;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Landroidx/fragment/app/i0$c;-><init>(Landroidx/fragment/app/i0;)V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Landroidx/fragment/app/i0;->v:Ld0/b0;

    .line 140
    .line 141
    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/fragment/app/i0;->w:I

    .line 143
    .line 144
    iput-object v0, p0, Landroidx/fragment/app/i0;->B:Landroidx/fragment/app/z;

    .line 145
    .line 146
    new-instance v1, Landroidx/fragment/app/i0$d;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Landroidx/fragment/app/i0$d;-><init>(Landroidx/fragment/app/i0;)V

    .line 149
    .line 150
    .line 151
    iput-object v1, p0, Landroidx/fragment/app/i0;->C:Landroidx/fragment/app/z;

    .line 152
    .line 153
    iput-object v0, p0, Landroidx/fragment/app/i0;->D:Landroidx/fragment/app/z0;

    .line 154
    .line 155
    new-instance v0, Landroidx/fragment/app/i0$e;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Landroidx/fragment/app/i0$e;-><init>(Landroidx/fragment/app/i0;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Landroidx/fragment/app/i0;->E:Landroidx/fragment/app/z0;

    .line 161
    .line 162
    new-instance v0, Ljava/util/ArrayDeque;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 168
    .line 169
    new-instance v0, Landroidx/fragment/app/i0$f;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Landroidx/fragment/app/i0$f;-><init>(Landroidx/fragment/app/i0;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Landroidx/fragment/app/i0;->T:Ljava/lang/Runnable;

    .line 175
    .line 176
    return-void
.end method

.method private B1()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroidx/activity/v;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "FragmentManager"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "FragmentManager "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->q0()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->O0(Landroidx/fragment/app/p;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v3, 0x0

    .line 71
    :goto_0
    invoke-static {v2}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const-string v0, "FragmentManager"

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "OnBackPressedCallback for FragmentManager "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, " enabled state is "

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroidx/activity/v;->setEnabled(Z)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw v1
.end method

.method static D0(Landroid/view/View;)Landroidx/fragment/app/p;
    .locals 1

    .line 1
    sget v0, Ls0/b;->a:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Landroidx/fragment/app/p;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/fragment/app/p;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static J0(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/fragment/app/i0;->U:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private K0(Landroidx/fragment/app/p;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mHasMenu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mMenuVisible:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/i0;->q()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private L0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/p;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v0}, Landroidx/fragment/app/i0;->L0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1
.end method

.method private M(Landroidx/fragment/app/p;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->g0(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/p;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/p;->performPrimaryNavigationFragmentChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private synthetic R0()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->r1()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic S0(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/i0;->A(Landroid/content/res/Configuration;Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private T(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroidx/fragment/app/p0;->d(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/i0;->Z0(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/i0;->u()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/fragment/app/y0;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/y0;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 45
    .line 46
    throw p1
.end method

.method private synthetic T0(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v0, 0x50

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->G(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private synthetic U0(Landroidx/core/app/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/core/app/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/i0;->H(ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private synthetic V0(Landroidx/core/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/core/app/u;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/i0;->O(ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->N:Z

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/i0;->y1()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->u()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/y0;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->q()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/i0;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->T0(Ljava/lang/Integer;)V

    return-void
.end method

.method private a0(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->M:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->h()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/i0;->r()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "Must be called from main thread of fragment host"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v0, "FragmentManager is already executing transactions"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public static synthetic b(Landroidx/fragment/app/i0;Landroidx/core/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->V0(Landroidx/core/app/u;)V

    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/i0;Landroidx/core/app/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->U0(Landroidx/core/app/h;)V

    return-void
.end method

.method public static synthetic d(Landroidx/fragment/app/i0;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->S0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2

    .line 1
    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/fragment/app/a;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->n(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/a;->s()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->n(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/a;->r()V

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public static synthetic e(Landroidx/fragment/app/i0;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->R0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8

    .line 1
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/fragment/app/a;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/fragment/app/q0;->r:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->A0()Landroidx/fragment/app/p;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, p3

    .line 41
    move v4, v2

    .line 42
    :goto_1
    const/4 v5, 0x1

    .line 43
    if-ge v3, p4, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Landroidx/fragment/app/a;

    .line 50
    .line 51
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_1

    .line 62
    .line 63
    iget-object v7, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/a;->t(Ljava/util/ArrayList;Landroidx/fragment/app/p;)Landroidx/fragment/app/p;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget-object v7, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/a;->w(Ljava/util/ArrayList;Landroidx/fragment/app/p;)Landroidx/fragment/app/p;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_2
    if-nez v4, :cond_3

    .line 77
    .line 78
    iget-boolean v4, v6, Landroidx/fragment/app/q0;->i:Z

    .line 79
    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move v4, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_3
    :goto_3
    move v4, v5

    .line 86
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/i0;->Q:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    if-nez v0, :cond_7

    .line 95
    .line 96
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 97
    .line 98
    if-lt v0, v5, :cond_7

    .line 99
    .line 100
    move v0, p3

    .line 101
    :goto_5
    if-ge v0, p4, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroidx/fragment/app/a;

    .line 108
    .line 109
    iget-object v1, v1, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroidx/fragment/app/q0$a;

    .line 126
    .line 127
    iget-object v2, v2, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 128
    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    iget-object v3, v2, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0, v2}, Landroidx/fragment/app/i0;->w(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-object v3, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 140
    .line 141
    invoke-virtual {v3, v2}, Landroidx/fragment/app/p0;->r(Landroidx/fragment/app/o0;)V

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/i0;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v0, p4, -0x1

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v4, :cond_c

    .line 164
    .line 165
    iget-object v1, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_c

    .line 172
    .line 173
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Landroidx/fragment/app/a;

    .line 193
    .line 194
    invoke-virtual {p0, v3}, Landroidx/fragment/app/i0;->o0(Landroidx/fragment/app/a;)Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    iget-object v2, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 203
    .line 204
    if-nez v2, :cond_c

    .line 205
    .line 206
    iget-object v2, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v6, 0x0

    .line 217
    if-eqz v3, :cond_a

    .line 218
    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v3}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-nez v7, :cond_9

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroidx/fragment/app/p;

    .line 242
    .line 243
    throw v6

    .line 244
    :cond_a
    iget-object v2, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_c

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-static {v3}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-nez v7, :cond_b

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Landroidx/fragment/app/p;

    .line 279
    .line 280
    throw v6

    .line 281
    :cond_c
    move v1, p3

    .line 282
    :goto_a
    if-ge v1, p4, :cond_11

    .line 283
    .line 284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Landroidx/fragment/app/a;

    .line 289
    .line 290
    if-eqz v0, :cond_e

    .line 291
    .line 292
    iget-object v3, v2, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    sub-int/2addr v3, v5

    .line 299
    :goto_b
    if-ltz v3, :cond_10

    .line 300
    .line 301
    iget-object v6, v2, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    check-cast v6, Landroidx/fragment/app/q0$a;

    .line 308
    .line 309
    iget-object v6, v6, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 310
    .line 311
    if-eqz v6, :cond_d

    .line 312
    .line 313
    invoke-virtual {p0, v6}, Landroidx/fragment/app/i0;->w(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v6}, Landroidx/fragment/app/o0;->m()V

    .line 318
    .line 319
    .line 320
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_e
    iget-object v2, v2, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_10

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroidx/fragment/app/q0$a;

    .line 340
    .line 341
    iget-object v3, v3, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 342
    .line 343
    if-eqz v3, :cond_f

    .line 344
    .line 345
    invoke-virtual {p0, v3}, Landroidx/fragment/app/i0;->w(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v3}, Landroidx/fragment/app/o0;->m()V

    .line 350
    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_11
    iget v1, p0, Landroidx/fragment/app/i0;->w:I

    .line 357
    .line 358
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/i0;->Z0(IZ)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, p1, p3, p4}, Landroidx/fragment/app/i0;->v(Ljava/util/ArrayList;II)Ljava/util/Set;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_12

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Landroidx/fragment/app/y0;

    .line 380
    .line 381
    invoke-virtual {v2, v0}, Landroidx/fragment/app/y0;->B(Z)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Landroidx/fragment/app/y0;->x()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Landroidx/fragment/app/y0;->n()V

    .line 388
    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_12
    :goto_e
    if-ge p3, p4, :cond_14

    .line 392
    .line 393
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Landroidx/fragment/app/a;

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Ljava/lang/Boolean;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_13

    .line 410
    .line 411
    iget v1, v0, Landroidx/fragment/app/a;->v:I

    .line 412
    .line 413
    if-ltz v1, :cond_13

    .line 414
    .line 415
    const/4 v1, -0x1

    .line 416
    iput v1, v0, Landroidx/fragment/app/a;->v:I

    .line 417
    .line 418
    :cond_13
    invoke-virtual {v0}, Landroidx/fragment/app/a;->v()V

    .line 419
    .line 420
    .line 421
    add-int/lit8 p3, p3, 0x1

    .line 422
    .line 423
    goto :goto_e

    .line 424
    :cond_14
    if-eqz v4, :cond_15

    .line 425
    .line 426
    invoke-direct {p0}, Landroidx/fragment/app/i0;->o1()V

    .line 427
    .line 428
    .line 429
    :cond_15
    return-void
.end method

.method static synthetic f(Landroidx/fragment/app/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/fragment/app/i0;)Landroidx/fragment/app/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    return-object p0
.end method

.method private g1(Ljava/lang/String;II)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->a0(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-gez p2, :cond_0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getChildFragmentManager()Landroidx/fragment/app/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->e1()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v5, p1

    .line 34
    move v6, p2

    .line 35
    move v7, p3

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/i0;->h1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 43
    .line 44
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object p3, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/i0;->m1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/i0;->W()V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/fragment/app/p0;->b()V

    .line 69
    .line 70
    .line 71
    return p1
.end method

.method private h0(Ljava/lang/String;IZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-nez p1, :cond_2

    .line 12
    .line 13
    if-gez p2, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    :goto_0
    if-ltz v0, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroidx/fragment/app/a;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/fragment/app/a;->u()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    if-ltz p2, :cond_4

    .line 60
    .line 61
    iget v2, v2, Landroidx/fragment/app/a;->v:I

    .line 62
    .line 63
    if-ne p2, v2, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    :goto_1
    if-gez v0, :cond_6

    .line 70
    .line 71
    return v0

    .line 72
    :cond_6
    if-eqz p3, :cond_9

    .line 73
    .line 74
    :goto_2
    if-lez v0, :cond_b

    .line 75
    .line 76
    iget-object p3, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 77
    .line 78
    add-int/lit8 v1, v0, -0x1

    .line 79
    .line 80
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Landroidx/fragment/app/a;

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    invoke-virtual {p3}, Landroidx/fragment/app/a;->u()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_8

    .line 97
    .line 98
    :cond_7
    if-ltz p2, :cond_b

    .line 99
    .line 100
    iget p3, p3, Landroidx/fragment/app/a;->v:I

    .line 101
    .line 102
    if-ne p2, p3, :cond_b

    .line 103
    .line 104
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    if-ne v0, p1, :cond_a

    .line 116
    .line 117
    return v1

    .line 118
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    :cond_b
    return v0
.end method

.method static l0(Landroid/view/View;)Landroidx/fragment/app/i0;
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/fragment/app/i0;->m0(Landroid/view/View;)Landroidx/fragment/app/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/p;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getChildFragmentManager()Landroidx/fragment/app/i0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "The Fragment "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " that owns View "

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    instance-of v1, v0, Landroidx/fragment/app/u;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    check-cast v0, Landroidx/fragment/app/u;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    :goto_1
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_2
    return-object p0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "View "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, " is not within a subclass of FragmentActivity."

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method static m0(Landroid/view/View;)Landroidx/fragment/app/p;
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/fragment/app/i0;->D0(Landroid/view/View;)Landroidx/fragment/app/p;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of v1, p0, Landroid/view/View;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast p0, Landroid/view/View;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object p0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return-object v0
.end method

.method private m1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

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
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/q0;->r:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/i0;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/q0;->r:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/i0;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/i0;->e0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method private n0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->u()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/y0;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->r()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method private p0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/fragment/app/i0$m;

    .line 31
    .line 32
    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/i0$m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 33
    .line 34
    .line 35
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    or-int/2addr v3, v4

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_2
    iget-object p1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->h()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Landroidx/fragment/app/i0;->T:Ljava/lang/Runnable;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return v3

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iget-object p2, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/fragment/app/a0;->h()Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object v1, p0, Landroidx/fragment/app/i0;->T:Ljava/lang/Runnable;

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    throw p1
.end method

.method static q1(I)I
    .locals 3

    .line 1
    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1004

    const/16 v1, 0x2005

    if-eq p0, v1, :cond_2

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method private r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private r0(Landroidx/fragment/app/p;)Landroidx/fragment/app/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->j(Landroidx/fragment/app/p;)Landroidx/fragment/app/l0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private s()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/lifecycle/m0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v0, v0, Landroid/app/Activity;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/app/Activity;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    xor-int/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v1

    .line 42
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/fragment/app/i0;->l:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroidx/fragment/app/c;

    .line 65
    .line 66
    iget-object v1, v1, Landroidx/fragment/app/c;->a:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/fragment/app/p0;->p()Landroidx/fragment/app/l0;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/l0;->g(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    return-void
.end method

.method private t0(Landroidx/fragment/app/p;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/p;->mContainerId:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/w;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 21
    .line 22
    iget p1, p1, Landroidx/fragment/app/p;->mContainerId:I

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->c(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method private u()Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->k()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/o0;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->B0()Landroidx/fragment/app/z0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroidx/fragment/app/y0;->v(Landroid/view/ViewGroup;Landroidx/fragment/app/z0;)Landroidx/fragment/app/y0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method private w1(Landroidx/fragment/app/p;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->t0(Landroidx/fragment/app/p;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/p;->getEnterAnim()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/p;->getExitAnim()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/p;->getPopEnterAnim()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/p;->getPopExitAnim()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    sget v1, Ls0/b;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    sget v1, Ls0/b;->c:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget v1, Ls0/b;->c:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/fragment/app/p;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/p;->getPopDirection()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p;->setPopDirection(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private y1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/o0;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/fragment/app/i0;->c1(Landroidx/fragment/app/o0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private z1(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/v0;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroidx/fragment/app/v0;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/a0;->i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/i0;->X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1
.end method


# virtual methods
.method A(Landroid/content/res/Configuration;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    instance-of v0, v0, Landroidx/core/content/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->z1(Ljava/lang/RuntimeException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/fragment/app/p;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/i0;->A(Landroid/content/res/Configuration;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public A0()Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public A1(Landroidx/fragment/app/i0$k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->p(Landroidx/fragment/app/i0$k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method B(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/p;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/p;->performContextItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method B0()Landroidx/fragment/app/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->D:Landroidx/fragment/app/z0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->B0()Landroidx/fragment/app/z0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->E:Landroidx/fragment/app/z0;

    .line 18
    .line 19
    return-object v0
.end method

.method C()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public C0()Lt0/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->S:Lt0/c$c;

    .line 2
    .line 3
    return-object v0
.end method

.method D(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/p;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v5}, Landroidx/fragment/app/i0;->N0(Landroidx/fragment/app/p;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/p;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move v4, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ge v1, p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/fragment/app/p;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/p;->onDestroyOptionsMenu()V

    .line 87
    .line 88
    .line 89
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    return v4
.end method

.method E()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->M:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/i0;->Y()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/i0;->t()V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 18
    .line 19
    instance-of v1, v0, Landroidx/core/content/d;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Landroidx/core/content/d;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/fragment/app/i0;->s:Lc0/a;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/core/content/d;->removeOnTrimMemoryListener(Lc0/a;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 31
    .line 32
    instance-of v1, v0, Landroidx/core/content/c;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Landroidx/core/content/c;

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/i0;->r:Lc0/a;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroidx/core/content/c;->removeOnConfigurationChangedListener(Lc0/a;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 44
    .line 45
    instance-of v1, v0, Landroidx/core/app/q;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    check-cast v0, Landroidx/core/app/q;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/i0;->t:Lc0/a;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Landroidx/core/app/q;->removeOnMultiWindowModeChangedListener(Lc0/a;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 57
    .line 58
    instance-of v1, v0, Landroidx/core/app/r;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    check-cast v0, Landroidx/core/app/r;

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/fragment/app/i0;->u:Lc0/a;

    .line 65
    .line 66
    invoke-interface {v0, v1}, Landroidx/core/app/r;->removeOnPictureInPictureModeChangedListener(Lc0/a;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 70
    .line 71
    instance-of v1, v0, Ld0/w;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    check-cast v0, Ld0/w;

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/fragment/app/i0;->v:Ld0/b0;

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ld0/w;->removeMenuProvider(Ld0/b0;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 88
    .line 89
    iput-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 90
    .line 91
    iput-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 92
    .line 93
    iget-object v1, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/w;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/activity/v;->remove()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/w;

    .line 103
    .line 104
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/i0;->F:Lf/c;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0}, Lf/c;->c()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Landroidx/fragment/app/i0;->G:Lf/c;

    .line 112
    .line 113
    invoke-virtual {v0}, Lf/c;->c()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroidx/fragment/app/i0;->H:Lf/c;

    .line 117
    .line 118
    invoke-virtual {v0}, Lf/c;->c()V

    .line 119
    .line 120
    .line 121
    :cond_6
    return-void
.end method

.method E0(Landroidx/fragment/app/p;)Landroidx/lifecycle/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->m(Landroidx/fragment/app/p;)Landroidx/lifecycle/l0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method F()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method F0()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 3
    .line 4
    .line 5
    sget-boolean v1, Landroidx/fragment/app/i0;->V:Z

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const-string v3, "FragmentManager"

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 28
    .line 29
    invoke-virtual {p0, v5}, Landroidx/fragment/app/i0;->o0(Landroidx/fragment/app/a;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v1, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroidx/fragment/app/p;

    .line 71
    .line 72
    throw v4

    .line 73
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-object v1, v1, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/4 v6, 0x0

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroidx/fragment/app/q0$a;

    .line 93
    .line 94
    iget-object v5, v5, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 95
    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    iput-boolean v6, v5, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object v5, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 104
    .line 105
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1, v6, v0}, Landroidx/fragment/app/i0;->v(Ljava/util/ArrayList;II)Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroidx/fragment/app/y0;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->f()V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    iput-object v4, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 137
    .line 138
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 139
    .line 140
    .line 141
    invoke-static {v2}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    const-string v0, "Op is being set to null"

    .line 148
    .line 149
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "OnBackPressedCallback enabled="

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/activity/v;->isEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, " for  FragmentManager "

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/activity/v;->isEnabled()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    invoke-static {v2}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const-string v0, "Calling popBackStackImmediate via onBackPressed callback"

    .line 202
    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->e1()Z

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    invoke-static {v2}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    const-string v0, "Calling onBackPressed via onBackPressed callback"

    .line 217
    .line 218
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/w;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/activity/w;->k()V

    .line 224
    .line 225
    .line 226
    :cond_9
    :goto_3
    return-void
.end method

.method G(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    instance-of v0, v0, Landroidx/core/content/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->z1(Ljava/lang/RuntimeException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/fragment/app/p;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/fragment/app/p;->performLowMemory()V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Landroidx/fragment/app/i0;->G(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method G0(Landroidx/fragment/app/p;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

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
    const-string v1, "hide: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "FragmentManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mHidden:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p1, Landroidx/fragment/app/p;->mHidden:Z

    .line 36
    .line 37
    iget-boolean v1, p1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 38
    .line 39
    xor-int/2addr v0, v1

    .line 40
    iput-boolean v0, p1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->w1(Landroidx/fragment/app/p;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method H(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    instance-of v0, v0, Landroidx/core/app/q;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->z1(Ljava/lang/RuntimeException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/fragment/app/p;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->performMultiWindowModeChanged(Z)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/i0;->H(ZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method H0(Landroidx/fragment/app/p;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mAdded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method I(Landroidx/fragment/app/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/m0;

    .line 18
    .line 19
    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/m0;->a(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method J()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->l()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/p;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/p;->isHidden()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/p;->onHiddenChanged(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->J()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method K(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/p;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroidx/fragment/app/p;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method L(Landroid/view/Menu;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/p;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method M0(Landroidx/fragment/app/p;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/p;->isHidden()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method N()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method N0(Landroidx/fragment/app/p;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/p;->isMenuVisible()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method O(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    instance-of v0, v0, Landroidx/core/app/r;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->z1(Ljava/lang/RuntimeException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/fragment/app/p;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p;->performPictureInPictureModeChanged(Z)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/fragment/app/p;->mChildFragmentManager:Landroidx/fragment/app/i0;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/i0;->O(ZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method O0(Landroidx/fragment/app/p;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->A0()Landroidx/fragment/app/p;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1, v2}, Landroidx/fragment/app/p;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v1, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->O0(Landroidx/fragment/app/p;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method P(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/p;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/fragment/app/i0;->N0(Landroidx/fragment/app/p;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/fragment/app/p;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method P0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/i0;->w:I

    .line 2
    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method Q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/p;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method R()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method S()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method U()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method V()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method W0(Landroidx/fragment/app/p;[Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->H:Lf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/fragment/app/i0$l;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/i0$l;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/fragment/app/i0;->H:Lf/c;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lf/c;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/a0;->l(Landroidx/fragment/app/p;[Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "    "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/p0;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 p4, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lez p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "Fragments Created Menus:"

    .line 38
    .line 39
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move v1, p4

    .line 43
    :goto_0
    if-ge v1, p2, :cond_0

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/fragment/app/i0;->e:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/fragment/app/p;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "  #"

    .line 57
    .line 58
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 62
    .line 63
    .line 64
    const-string v3, ": "

    .line 65
    .line 66
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/fragment/app/p;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-lez p2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "Back Stack:"

    .line 91
    .line 92
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move v1, p4

    .line 96
    :goto_1
    if-ge v1, p2, :cond_1

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/fragment/app/a;

    .line 105
    .line 106
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "  #"

    .line 110
    .line 111
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 115
    .line 116
    .line 117
    const-string v3, ": "

    .line 118
    .line 119
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->p(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "Back Stack Index: "

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Landroidx/fragment/app/i0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 165
    .line 166
    monitor-enter p2

    .line 167
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-lez v0, :cond_2

    .line 174
    .line 175
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v1, "Pending Actions:"

    .line 179
    .line 180
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    if-ge p4, v0, :cond_2

    .line 184
    .line 185
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Landroidx/fragment/app/i0$m;

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v2, "  #"

    .line 197
    .line 198
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 202
    .line 203
    .line 204
    const-string v2, ": "

    .line 205
    .line 206
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 p4, p4, 0x1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string p2, "FragmentManager misc state:"

    .line 220
    .line 221
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string p2, "  mHost="

    .line 228
    .line 229
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 233
    .line 234
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string p2, "  mContainer="

    .line 241
    .line 242
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 246
    .line 247
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object p2, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 251
    .line 252
    if-eqz p2, :cond_3

    .line 253
    .line 254
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string p2, "  mParent="

    .line 258
    .line 259
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p2, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 263
    .line 264
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string p2, "  mCurState="

    .line 271
    .line 272
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget p2, p0, Landroidx/fragment/app/i0;->w:I

    .line 276
    .line 277
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 278
    .line 279
    .line 280
    const-string p2, " mStateSaved="

    .line 281
    .line 282
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->K:Z

    .line 286
    .line 287
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 288
    .line 289
    .line 290
    const-string p2, " mStopped="

    .line 291
    .line 292
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->L:Z

    .line 296
    .line 297
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 298
    .line 299
    .line 300
    const-string p2, " mDestroyed="

    .line 301
    .line 302
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->M:Z

    .line 306
    .line 307
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 308
    .line 309
    .line 310
    iget-boolean p2, p0, Landroidx/fragment/app/i0;->J:Z

    .line 311
    .line 312
    if-eqz p2, :cond_4

    .line 313
    .line 314
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string p1, "  mNeedMenuInvalidate="

    .line 318
    .line 319
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 323
    .line 324
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 325
    .line 326
    .line 327
    :cond_4
    return-void

    .line 328
    :catchall_0
    move-exception p1

    .line 329
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    throw p1
.end method

.method X0(Landroidx/fragment/app/p;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->F:Lf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroidx/fragment/app/i0$l;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/i0$l;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 20
    .line 21
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/i0;->F:Lf/c;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lf/c;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/a0;->n(Landroidx/fragment/app/p;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method Y0(Landroidx/fragment/app/p;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/i0;->G:Lf/c;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    const-string v1, "FragmentManager"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v9, :cond_2

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    new-instance v4, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, p4

    .line 29
    :goto_0
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v6, "ActivityOptions "

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, " were added to fillInIntent "

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, " for fragment "

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    const-string v5, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 72
    .line 73
    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v4, p4

    .line 78
    :goto_1
    new-instance v5, Lf/g$a;

    .line 79
    .line 80
    move-object v6, p2

    .line 81
    invoke-direct {v5, p2}, Lf/g$a;-><init>(Landroid/content/IntentSender;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Lf/g$a;->b(Landroid/content/Intent;)Lf/g$a;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    move/from16 v7, p5

    .line 89
    .line 90
    move/from16 v8, p6

    .line 91
    .line 92
    invoke-virtual {v4, v8, v7}, Lf/g$a;->c(II)Lf/g$a;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lf/g$a;->a()Lf/g;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Landroidx/fragment/app/i0$l;

    .line 101
    .line 102
    iget-object v6, v2, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 103
    .line 104
    move v10, p3

    .line 105
    invoke-direct {v5, v6, p3}, Landroidx/fragment/app/i0$l;-><init>(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    iget-object v6, v0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v5, "Fragment "

    .line 125
    .line 126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "is launching an IntentSender for result "

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v1, v0, Landroidx/fragment/app/i0;->G:Lf/c;

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Lf/c;->a(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move-object v6, p2

    .line 151
    move v10, p3

    .line 152
    move/from16 v7, p5

    .line 153
    .line 154
    move/from16 v8, p6

    .line 155
    .line 156
    iget-object v1, v0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 157
    .line 158
    move-object v2, p1

    .line 159
    move-object v3, p2

    .line 160
    move v4, p3

    .line 161
    move-object v5, p4

    .line 162
    move/from16 v6, p5

    .line 163
    .line 164
    move/from16 v7, p6

    .line 165
    .line 166
    move/from16 v8, p7

    .line 167
    .line 168
    move-object/from16 v9, p8

    .line 169
    .line 170
    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/a0;->o(Landroidx/fragment/app/p;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    :goto_2
    return-void
.end method

.method Z(Landroidx/fragment/app/i0$m;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->M:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/i0;->r()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "Activity has been destroyed"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->s1()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method Z0(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/i0;->w:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/i0;->w:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/p0;->t()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/i0;->y1()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget p2, p0, Landroidx/fragment/app/i0;->w:I

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    if-ne p2, v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->p()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method a1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/fragment/app/p;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/p;->noteStateNotSaved()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method b0(Z)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->a0(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/i0;->p0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/i0;->m1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/i0;->W()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->b()V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method b1(Landroidx/fragment/app/x;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->k()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/o0;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, v2, Landroidx/fragment/app/p;->mContainerId:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    .line 35
    iget-object v3, v2, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    iput-object p1, v2, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/o0;->b()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method c0(Landroidx/fragment/app/i0$m;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/i0;->M:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/i0;->a0(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/i0$m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/i0;->O:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/fragment/app/i0;->P:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/i0;->m1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/i0;->s()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/i0;->W()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/p0;->b()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method c1(Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Landroidx/fragment/app/p;->mDeferStart:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/fragment/app/i0;->b:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->N:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Landroidx/fragment/app/p;->mDeferStart:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->m()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method d1(IIZ)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/fragment/app/i0$n;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/i0$n;-><init>(Landroidx/fragment/app/i0;Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/i0;->Z(Landroidx/fragment/app/i0$m;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "Bad id: "

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method public e1()Z
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v0, v1}, Landroidx/fragment/app/i0;->g1(Ljava/lang/String;II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/i0;->n0()V

    .line 7
    .line 8
    .line 9
    return v0
.end method

.method public f1(II)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/i0;->g1(Ljava/lang/String;II)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Bad id: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2
.end method

.method g0(Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->f(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method h(Landroidx/fragment/app/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method h1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p5, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move p5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p5, v1

    .line 9
    :goto_0
    invoke-direct {p0, p3, p4, p5}, Landroidx/fragment/app/i0;->h0(Ljava/lang/String;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-gez p3, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    sub-int/2addr p4, v0

    .line 23
    :goto_1
    if-lt p4, p3, :cond_2

    .line 24
    .line 25
    iget-object p5, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    check-cast p5, Landroidx/fragment/app/a;

    .line 32
    .line 33
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 p4, p4, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    return v0
.end method

.method i(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/p;->mPreviousWho:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Lt0/c;->f(Landroidx/fragment/app/p;Ljava/lang/String;)V

    .line 6
    .line 7
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
    const-string v1, "add: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->w(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object p0, p1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->r(Landroidx/fragment/app/o0;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p0;->a(Landroidx/fragment/app/p;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p1, Landroidx/fragment/app/p;->mRemoving:Z

    .line 59
    .line 60
    iget-object v2, p1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    iput-boolean v1, p1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 65
    .line 66
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 74
    .line 75
    :cond_3
    return-object v0
.end method

.method public i0(I)Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->g(I)Landroidx/fragment/app/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method i1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/a;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/fragment/app/q0$a;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iput-boolean v2, v1, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v6, 0x0

    .line 43
    const/4 v7, -0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    move-object v5, p2

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/i0;->h1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public j(Landroidx/fragment/app/m0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j0(Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->h(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method j1()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/i0$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/i0$o;-><init>(Landroidx/fragment/app/i0;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/i0;->Z(Landroidx/fragment/app/i0$m;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method k(Landroidx/fragment/app/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->e(Landroidx/fragment/app/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method k0(Ljava/lang/String;)Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->i(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k1(Landroidx/fragment/app/i0$k;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/c0;->o(Landroidx/fragment/app/i0$k;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method l()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method l1(Landroidx/fragment/app/p;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

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
    const-string v1, "remove: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " nesting="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p1, Landroidx/fragment/app/p;->mBackStackNesting:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "FragmentManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/p;->isInBackStack()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    xor-int/2addr v0, v1

    .line 46
    iget-boolean v2, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->u(Landroidx/fragment/app/p;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 64
    .line 65
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/p;->mRemoving:Z

    .line 66
    .line 67
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->w1(Landroidx/fragment/app/p;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method m(Landroidx/fragment/app/a0;Landroidx/fragment/app/w;Landroidx/fragment/app/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    new-instance p2, Landroidx/fragment/app/i0$g;

    .line 14
    .line 15
    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/i0$g;-><init>(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i0;->j(Landroidx/fragment/app/m0;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/m0;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    move-object p2, p1

    .line 27
    check-cast p2, Landroidx/fragment/app/m0;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i0;->j(Landroidx/fragment/app/m0;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 37
    .line 38
    .line 39
    :cond_2
    instance-of p2, p1, Landroidx/activity/y;

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    move-object p2, p1

    .line 44
    check-cast p2, Landroidx/activity/y;

    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/activity/y;->getOnBackPressedDispatcher()Landroidx/activity/w;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/fragment/app/i0;->g:Landroidx/activity/w;

    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/i0;->j:Landroidx/activity/v;

    .line 56
    .line 57
    invoke-virtual {v0, p2, v1}, Landroidx/activity/w;->h(Landroidx/lifecycle/m;Landroidx/activity/v;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    if-eqz p3, :cond_5

    .line 61
    .line 62
    iget-object p1, p3, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 63
    .line 64
    invoke-direct {p1, p3}, Landroidx/fragment/app/i0;->r0(Landroidx/fragment/app/p;)Landroidx/fragment/app/l0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    instance-of p2, p1, Landroidx/lifecycle/m0;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    check-cast p1, Landroidx/lifecycle/m0;

    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Landroidx/fragment/app/l0;->k(Landroidx/lifecycle/l0;)Landroidx/fragment/app/l0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    new-instance p1, Landroidx/fragment/app/l0;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-direct {p1, p2}, Landroidx/fragment/app/l0;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 95
    .line 96
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->Q0()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {p1, p2}, Landroidx/fragment/app/l0;->p(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 106
    .line 107
    iget-object p2, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroidx/fragment/app/p0;->A(Landroidx/fragment/app/l0;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 113
    .line 114
    instance-of p2, p1, Lh1/f;

    .line 115
    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    if-nez p3, :cond_7

    .line 119
    .line 120
    check-cast p1, Lh1/f;

    .line 121
    .line 122
    invoke-interface {p1}, Lh1/f;->getSavedStateRegistry()Lh1/d;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p2, Landroidx/fragment/app/h0;

    .line 127
    .line 128
    invoke-direct {p2, p0}, Landroidx/fragment/app/h0;-><init>(Landroidx/fragment/app/i0;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "android:support:fragments"

    .line 132
    .line 133
    invoke-virtual {p1, v0, p2}, Lh1/d;->h(Ljava/lang/String;Lh1/d$c;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lh1/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroidx/fragment/app/i0;->p1(Landroid/os/Parcelable;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 146
    .line 147
    instance-of p2, p1, Lf/f;

    .line 148
    .line 149
    if-eqz p2, :cond_9

    .line 150
    .line 151
    check-cast p1, Lf/f;

    .line 152
    .line 153
    invoke-interface {p1}, Lf/f;->getActivityResultRegistry()Lf/e;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p3, :cond_8

    .line 158
    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p3, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ":"

    .line 170
    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    goto :goto_2

    .line 179
    :cond_8
    const-string p2, ""

    .line 180
    .line 181
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "FragmentManager:"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, "StartActivityForResult"

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Lg/h;

    .line 216
    .line 217
    invoke-direct {v1}, Lg/h;-><init>()V

    .line 218
    .line 219
    .line 220
    new-instance v2, Landroidx/fragment/app/i0$h;

    .line 221
    .line 222
    invoke-direct {v2, p0}, Landroidx/fragment/app/i0$h;-><init>(Landroidx/fragment/app/i0;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0, v1, v2}, Lf/e;->m(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iput-object v0, p0, Landroidx/fragment/app/i0;->F:Lf/c;

    .line 230
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v1, "StartIntentSenderForResult"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v1, Landroidx/fragment/app/i0$j;

    .line 249
    .line 250
    invoke-direct {v1}, Landroidx/fragment/app/i0$j;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v2, Landroidx/fragment/app/i0$i;

    .line 254
    .line 255
    invoke-direct {v2, p0}, Landroidx/fragment/app/i0$i;-><init>(Landroidx/fragment/app/i0;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v0, v1, v2}, Lf/e;->m(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iput-object v0, p0, Landroidx/fragment/app/i0;->G:Lf/c;

    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, "RequestPermissions"

    .line 273
    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    new-instance v0, Lg/g;

    .line 282
    .line 283
    invoke-direct {v0}, Lg/g;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance v1, Landroidx/fragment/app/i0$a;

    .line 287
    .line 288
    invoke-direct {v1, p0}, Landroidx/fragment/app/i0$a;-><init>(Landroidx/fragment/app/i0;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p2, v0, v1}, Lf/e;->m(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Landroidx/fragment/app/i0;->H:Lf/c;

    .line 296
    .line 297
    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 298
    .line 299
    instance-of p2, p1, Landroidx/core/content/c;

    .line 300
    .line 301
    if-eqz p2, :cond_a

    .line 302
    .line 303
    check-cast p1, Landroidx/core/content/c;

    .line 304
    .line 305
    iget-object p2, p0, Landroidx/fragment/app/i0;->r:Lc0/a;

    .line 306
    .line 307
    invoke-interface {p1, p2}, Landroidx/core/content/c;->addOnConfigurationChangedListener(Lc0/a;)V

    .line 308
    .line 309
    .line 310
    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 311
    .line 312
    instance-of p2, p1, Landroidx/core/content/d;

    .line 313
    .line 314
    if-eqz p2, :cond_b

    .line 315
    .line 316
    check-cast p1, Landroidx/core/content/d;

    .line 317
    .line 318
    iget-object p2, p0, Landroidx/fragment/app/i0;->s:Lc0/a;

    .line 319
    .line 320
    invoke-interface {p1, p2}, Landroidx/core/content/d;->addOnTrimMemoryListener(Lc0/a;)V

    .line 321
    .line 322
    .line 323
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 324
    .line 325
    instance-of p2, p1, Landroidx/core/app/q;

    .line 326
    .line 327
    if-eqz p2, :cond_c

    .line 328
    .line 329
    check-cast p1, Landroidx/core/app/q;

    .line 330
    .line 331
    iget-object p2, p0, Landroidx/fragment/app/i0;->t:Lc0/a;

    .line 332
    .line 333
    invoke-interface {p1, p2}, Landroidx/core/app/q;->addOnMultiWindowModeChangedListener(Lc0/a;)V

    .line 334
    .line 335
    .line 336
    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 337
    .line 338
    instance-of p2, p1, Landroidx/core/app/r;

    .line 339
    .line 340
    if-eqz p2, :cond_d

    .line 341
    .line 342
    check-cast p1, Landroidx/core/app/r;

    .line 343
    .line 344
    iget-object p2, p0, Landroidx/fragment/app/i0;->u:Lc0/a;

    .line 345
    .line 346
    invoke-interface {p1, p2}, Landroidx/core/app/r;->addOnPictureInPictureModeChangedListener(Lc0/a;)V

    .line 347
    .line 348
    .line 349
    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 350
    .line 351
    instance-of p2, p1, Ld0/w;

    .line 352
    .line 353
    if-eqz p2, :cond_e

    .line 354
    .line 355
    if-nez p3, :cond_e

    .line 356
    .line 357
    check-cast p1, Ld0/w;

    .line 358
    .line 359
    iget-object p2, p0, Landroidx/fragment/app/i0;->v:Ld0/b0;

    .line 360
    .line 361
    invoke-interface {p1, p2}, Ld0/w;->addMenuProvider(Ld0/b0;)V

    .line 362
    .line 363
    .line 364
    :cond_e
    return-void

    .line 365
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 366
    .line 367
    const-string p2, "Already attached"

    .line 368
    .line 369
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw p1
.end method

.method n(Landroidx/fragment/app/p;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

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
    const-string v3, "attach: "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 36
    .line 37
    iget-boolean v1, p1, Landroidx/fragment/app/p;->mAdded:Z

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/fragment/app/p0;->a(Landroidx/fragment/app/p;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "add from attach: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method n1(Landroidx/fragment/app/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->o(Landroidx/fragment/app/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o()Landroidx/fragment/app/q0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/i0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method o0(Landroidx/fragment/app/a;)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/fragment/app/q0$a;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-boolean v3, p1, Landroidx/fragment/app/q0;->i:Z

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method p()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/a;->u:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/a;->f()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->f0()Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/i0;->o:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method p1(Landroid/os/Parcelable;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "result_"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x7

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v3, p0, Landroidx/fragment/app/i0;->m:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, "fragment_"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    iget-object v4, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 114
    .line 115
    .line 116
    const/16 v4, 0x9

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroidx/fragment/app/p0;->x(Ljava/util/HashMap;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "state"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroidx/fragment/app/k0;

    .line 138
    .line 139
    if-nez p1, :cond_5

    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->v()V

    .line 145
    .line 146
    .line 147
    iget-object v1, p1, Landroidx/fragment/app/k0;->a:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const-string v3, "): "

    .line 158
    .line 159
    const/4 v4, 0x2

    .line 160
    const-string v5, "FragmentManager"

    .line 161
    .line 162
    if-eqz v2, :cond_a

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/String;

    .line 169
    .line 170
    iget-object v6, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/p0;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Landroidx/fragment/app/n0;

    .line 184
    .line 185
    iget-object v7, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 186
    .line 187
    iget-object v6, v6, Landroidx/fragment/app/n0;->b:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7, v6}, Landroidx/fragment/app/l0;->i(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    if-eqz v6, :cond_8

    .line 194
    .line 195
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_7

    .line 200
    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v8, "restoreSaveState: re-attaching retained "

    .line 207
    .line 208
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_7
    new-instance v7, Landroidx/fragment/app/o0;

    .line 222
    .line 223
    iget-object v8, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 224
    .line 225
    iget-object v9, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 226
    .line 227
    invoke-direct {v7, v8, v9, v6, v2}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_8
    new-instance v7, Landroidx/fragment/app/o0;

    .line 232
    .line 233
    iget-object v9, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 234
    .line 235
    iget-object v10, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 236
    .line 237
    iget-object v6, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 238
    .line 239
    invoke-virtual {v6}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->u0()Landroidx/fragment/app/z;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    move-object v8, v7

    .line 252
    move-object v13, v2

    .line 253
    invoke-direct/range {v8 .. v13}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Ljava/lang/ClassLoader;Landroidx/fragment/app/z;Landroid/os/Bundle;)V

    .line 254
    .line 255
    .line 256
    :goto_3
    invoke-virtual {v7}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    iput-object v2, v6, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 261
    .line 262
    iput-object p0, v6, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 263
    .line 264
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_9

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v4, "restoreSaveState: active ("

    .line 276
    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-object v4, v6, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :cond_9
    iget-object v2, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 299
    .line 300
    invoke-virtual {v2}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v7, v2}, Landroidx/fragment/app/o0;->o(Ljava/lang/ClassLoader;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 312
    .line 313
    invoke-virtual {v2, v7}, Landroidx/fragment/app/p0;->r(Landroidx/fragment/app/o0;)V

    .line 314
    .line 315
    .line 316
    iget v2, p0, Landroidx/fragment/app/i0;->w:I

    .line 317
    .line 318
    invoke-virtual {v7, v2}, Landroidx/fragment/app/o0;->s(I)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->l()Ljava/util/Collection;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_d

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    check-cast v1, Landroidx/fragment/app/p;

    .line 344
    .line 345
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 346
    .line 347
    iget-object v6, v1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v2, v6}, Landroidx/fragment/app/p0;->c(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v2, :cond_b

    .line 354
    .line 355
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_c

    .line 360
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v6, "Discarding retained Fragment "

    .line 367
    .line 368
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v6, " that was not found in the set of active Fragments "

    .line 375
    .line 376
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v6, p1, Landroidx/fragment/app/k0;->a:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    :cond_c
    iget-object v2, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Landroidx/fragment/app/l0;->o(Landroidx/fragment/app/p;)V

    .line 394
    .line 395
    .line 396
    iput-object p0, v1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 397
    .line 398
    new-instance v2, Landroidx/fragment/app/o0;

    .line 399
    .line 400
    iget-object v6, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 401
    .line 402
    iget-object v7, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 403
    .line 404
    invoke-direct {v2, v6, v7, v1}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Landroidx/fragment/app/p;)V

    .line 405
    .line 406
    .line 407
    const/4 v6, 0x1

    .line 408
    invoke-virtual {v2, v6}, Landroidx/fragment/app/o0;->s(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Landroidx/fragment/app/o0;->m()V

    .line 412
    .line 413
    .line 414
    iput-boolean v6, v1, Landroidx/fragment/app/p;->mRemoving:Z

    .line 415
    .line 416
    invoke-virtual {v2}, Landroidx/fragment/app/o0;->m()V

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 421
    .line 422
    iget-object v1, p1, Landroidx/fragment/app/k0;->b:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->w(Ljava/util/List;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p1, Landroidx/fragment/app/k0;->c:[Landroidx/fragment/app/b;

    .line 428
    .line 429
    const/4 v1, 0x0

    .line 430
    if-eqz v0, :cond_f

    .line 431
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    .line 433
    .line 434
    iget-object v2, p1, Landroidx/fragment/app/k0;->c:[Landroidx/fragment/app/b;

    .line 435
    .line 436
    array-length v2, v2

    .line 437
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .line 439
    .line 440
    iput-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 441
    .line 442
    move v0, v1

    .line 443
    :goto_5
    iget-object v2, p1, Landroidx/fragment/app/k0;->c:[Landroidx/fragment/app/b;

    .line 444
    .line 445
    array-length v6, v2

    .line 446
    if-ge v0, v6, :cond_10

    .line 447
    .line 448
    aget-object v2, v2, v0

    .line 449
    .line 450
    invoke-virtual {v2, p0}, Landroidx/fragment/app/b;->b(Landroidx/fragment/app/i0;)Landroidx/fragment/app/a;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-static {v4}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    if-eqz v6, :cond_e

    .line 459
    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    const-string v7, "restoreAllState: back stack #"

    .line 466
    .line 467
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v7, " (index "

    .line 474
    .line 475
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget v7, v2, Landroidx/fragment/app/a;->v:I

    .line 479
    .line 480
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    new-instance v6, Landroidx/fragment/app/v0;

    .line 497
    .line 498
    invoke-direct {v6, v5}, Landroidx/fragment/app/v0;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v7, Ljava/io/PrintWriter;

    .line 502
    .line 503
    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 504
    .line 505
    .line 506
    const-string v6, "  "

    .line 507
    .line 508
    invoke-virtual {v2, v6, v7, v1}, Landroidx/fragment/app/a;->q(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 512
    .line 513
    .line 514
    :cond_e
    iget-object v6, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    add-int/lit8 v0, v0, 0x1

    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .line 526
    .line 527
    iput-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 528
    .line 529
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/i0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 530
    .line 531
    iget v2, p1, Landroidx/fragment/app/k0;->d:I

    .line 532
    .line 533
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 534
    .line 535
    .line 536
    iget-object v0, p1, Landroidx/fragment/app/k0;->e:Ljava/lang/String;

    .line 537
    .line 538
    if-eqz v0, :cond_11

    .line 539
    .line 540
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->g0(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iput-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 545
    .line 546
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/p;)V

    .line 547
    .line 548
    .line 549
    :cond_11
    iget-object v0, p1, Landroidx/fragment/app/k0;->f:Ljava/util/ArrayList;

    .line 550
    .line 551
    if-eqz v0, :cond_12

    .line 552
    .line 553
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-ge v1, v2, :cond_12

    .line 558
    .line 559
    iget-object v2, p0, Landroidx/fragment/app/i0;->l:Ljava/util/Map;

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Ljava/lang/String;

    .line 566
    .line 567
    iget-object v4, p1, Landroidx/fragment/app/k0;->g:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    check-cast v4, Landroidx/fragment/app/c;

    .line 574
    .line 575
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    .line 582
    .line 583
    iget-object p1, p1, Landroidx/fragment/app/k0;->h:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 586
    .line 587
    .line 588
    iput-object v0, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 589
    .line 590
    return-void
.end method

.method q()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->l()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/fragment/app/p;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v3}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_1
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_2
    return v1
.end method

.method public q0()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/a;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    add-int/2addr v0, v1

    .line 15
    return v0
.end method

.method r1()Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/i0;->n0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/i0;->Y()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Landroidx/fragment/app/i0;->b0(Z)Z

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->K:Z

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroidx/fragment/app/l0;->p(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->y()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/p0;->m()Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v4, "FragmentManager"

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-static {v5}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    const-string v1, "saveAllState: no fragments!"

    .line 51
    .line 52
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/fragment/app/p0;->z()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v6, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-lez v6, :cond_2

    .line 70
    .line 71
    new-array v7, v6, [Landroidx/fragment/app/b;

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    :goto_0
    if-ge v8, v6, :cond_3

    .line 75
    .line 76
    new-instance v9, Landroidx/fragment/app/b;

    .line 77
    .line 78
    iget-object v10, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroidx/fragment/app/a;

    .line 85
    .line 86
    invoke-direct {v9, v10}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    .line 87
    .line 88
    .line 89
    aput-object v9, v7, v8

    .line 90
    .line 91
    invoke-static {v5}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_1

    .line 96
    .line 97
    new-instance v9, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v10, "saveAllState: adding back stack #"

    .line 103
    .line 104
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v10, ": "

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v10, p0, Landroidx/fragment/app/i0;->d:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/4 v7, 0x0

    .line 135
    :cond_3
    new-instance v4, Landroidx/fragment/app/k0;

    .line 136
    .line 137
    invoke-direct {v4}, Landroidx/fragment/app/k0;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v1, v4, Landroidx/fragment/app/k0;->a:Ljava/util/ArrayList;

    .line 141
    .line 142
    iput-object v3, v4, Landroidx/fragment/app/k0;->b:Ljava/util/ArrayList;

    .line 143
    .line 144
    iput-object v7, v4, Landroidx/fragment/app/k0;->c:[Landroidx/fragment/app/b;

    .line 145
    .line 146
    iget-object v1, p0, Landroidx/fragment/app/i0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput v1, v4, Landroidx/fragment/app/k0;->d:I

    .line 153
    .line 154
    iget-object v1, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 155
    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    iget-object v1, v1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 159
    .line 160
    iput-object v1, v4, Landroidx/fragment/app/k0;->e:Ljava/lang/String;

    .line 161
    .line 162
    :cond_4
    iget-object v1, v4, Landroidx/fragment/app/k0;->f:Ljava/util/ArrayList;

    .line 163
    .line 164
    iget-object v3, p0, Landroidx/fragment/app/i0;->l:Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    .line 172
    .line 173
    iget-object v1, v4, Landroidx/fragment/app/k0;->g:Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-object v3, p0, Landroidx/fragment/app/i0;->l:Ljava/util/Map;

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    .line 183
    .line 184
    new-instance v1, Ljava/util/ArrayList;

    .line 185
    .line 186
    iget-object v3, p0, Landroidx/fragment/app/i0;->I:Ljava/util/ArrayDeque;

    .line 187
    .line 188
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    .line 190
    .line 191
    iput-object v1, v4, Landroidx/fragment/app/k0;->h:Ljava/util/ArrayList;

    .line 192
    .line 193
    const-string v1, "state"

    .line 194
    .line 195
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Landroidx/fragment/app/i0;->m:Ljava/util/Map;

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_5

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/String;

    .line 219
    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v5, "result_"

    .line 226
    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v5, p0, Landroidx/fragment/app/i0;->m:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Landroid/os/Bundle;

    .line 244
    .line 245
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_6

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Ljava/lang/String;

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v5, "fragment_"

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Landroid/os/Bundle;

    .line 291
    .line 292
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_6
    :goto_3
    return-object v0
.end method

.method s0()Landroidx/fragment/app/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->y:Landroidx/fragment/app/w;

    .line 2
    .line 3
    return-object v0
.end method

.method s1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->h()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/i0;->T:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->h()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Landroidx/fragment/app/i0;->T:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/i0;->B1()V

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1
.end method

.method t1(Landroidx/fragment/app/p;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->t0(Landroidx/fragment/app/p;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/x;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/x;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/x;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public u0()Landroidx/fragment/app/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->B:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->u0()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->C:Landroidx/fragment/app/z;

    .line 18
    .line 19
    return-object v0
.end method

.method u1(Landroidx/fragment/app/p;Landroidx/lifecycle/i$b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->g0(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/p;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/fragment/app/p;->mHost:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 18
    .line 19
    if-ne v0, p0, :cond_1

    .line 20
    .line 21
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/p;->mMaxState:Landroidx/lifecycle/i$b;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Fragment "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " is not an active fragment of FragmentManager "

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method v(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge p2, p3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/fragment/app/q0;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/fragment/app/q0$a;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/fragment/app/q0$a;->b:Landroidx/fragment/app/p;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/fragment/app/p;->mContainer:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {v2, p0}, Landroidx/fragment/app/y0;->u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public v0()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/p0;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method v1(Landroidx/fragment/app/p;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/i0;->g0(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/p;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/p;->mHost:Landroidx/fragment/app/a0;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/p;->mFragmentManager:Landroidx/fragment/app/i0;

    .line 20
    .line 21
    if-ne v0, p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Fragment "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " is not an active fragment of FragmentManager "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/p;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/fragment/app/i0;->A:Landroidx/fragment/app/p;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->M(Landroidx/fragment/app/p;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method w(Landroidx/fragment/app/p;)Landroidx/fragment/app/o0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/fragment/app/p;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p0;->n(Ljava/lang/String;)Landroidx/fragment/app/o0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Landroidx/fragment/app/o0;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;Landroidx/fragment/app/p;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/fragment/app/o0;->o(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Landroidx/fragment/app/i0;->w:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/fragment/app/o0;->s(I)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public w0()Landroidx/fragment/app/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->x:Landroidx/fragment/app/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method x(Landroidx/fragment/app/p;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

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
    const-string v3, "detach: "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p1, Landroidx/fragment/app/p;->mDetached:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Landroidx/fragment/app/p;->mAdded:Z

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "remove from detach: "

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/p0;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p0;->u(Landroidx/fragment/app/p;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->K0(Landroidx/fragment/app/p;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iput-boolean v1, p0, Landroidx/fragment/app/i0;->J:Z

    .line 79
    .line 80
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/i0;->w1(Landroidx/fragment/app/p;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method x0()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->f:Landroidx/fragment/app/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method x1(Landroidx/fragment/app/p;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

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
    const-string v1, "show: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "FragmentManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mHidden:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p1, Landroidx/fragment/app/p;->mHidden:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 38
    .line 39
    xor-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput-boolean v0, p1, Landroidx/fragment/app/p;->mHiddenChanged:Z

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method y()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method y0()Landroidx/fragment/app/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->p:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method z()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->K:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/i0;->L:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/i0;->R:Landroidx/fragment/app/l0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l0;->p(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/fragment/app/i0;->T(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method z0()Landroidx/fragment/app/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i0;->z:Landroidx/fragment/app/p;

    .line 2
    .line 3
    return-object v0
.end method

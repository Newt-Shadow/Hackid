.class public final Lve/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lve/h$c;
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Lve/h;

.field final synthetic b:Lve/f;


# direct methods
.method public constructor <init>(Lve/f;Lve/h;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reader"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lve/f$d;->a:Lve/h;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(ZIILjava/util/List;)V
    .locals 6

    .line 1
    const-string p3, "headerBlock"

    .line 2
    .line 3
    invoke-static {p4, p3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lve/f$d;->b:Lve/f;

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Lve/f;->e1(I)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iget-object p3, p0, Lve/f$d;->b:Lve/f;

    .line 15
    .line 16
    invoke-virtual {p3, p2, p4, p1}, Lve/f;->b1(ILjava/util/List;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p3, p0, Lve/f$d;->b:Lve/f;

    .line 21
    .line 22
    monitor-enter p3

    .line 23
    :try_start_0
    invoke-virtual {p3, p2}, Lve/f;->J0(I)Lve/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    invoke-static {p3}, Lve/f;->u(Lve/f;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    monitor-exit p3

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lve/f;->k0()I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-gt p2, v0, :cond_2

    .line 42
    .line 43
    monitor-exit p3

    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_2
    rem-int/lit8 v0, p2, 0x2

    .line 46
    .line 47
    invoke-virtual {p3}, Lve/f;->q0()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    monitor-exit p3

    .line 56
    return-void

    .line 57
    :cond_3
    :try_start_3
    invoke-static {p4}, Loe/d;->O(Ljava/util/List;)Lne/s;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-instance p4, Lve/i;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    move-object v0, p4

    .line 65
    move v1, p2

    .line 66
    move-object v2, p3

    .line 67
    move v4, p1

    .line 68
    invoke-direct/range {v0 .. v5}, Lve/i;-><init>(ILve/f;ZZLne/s;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Lve/f;->h1(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lve/f;->T0()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {p3}, Lve/f;->q(Lve/f;)Lre/e;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lre/e;->i()Lre/d;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Lve/f;->d0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v1, 0x5b

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, "] onStream"

    .line 114
    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance v0, Lve/f$d$b;

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    invoke-direct {v0, p2, v1, p3, p4}, Lve/f$d$b;-><init>(Ljava/lang/String;ZLve/f;Lve/i;)V

    .line 126
    .line 127
    .line 128
    const-wide/16 v1, 0x0

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1, v2}, Lre/d;->i(Lre/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    monitor-exit p3

    .line 134
    return-void

    .line 135
    :cond_4
    :try_start_4
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    .line 137
    monitor-exit p3

    .line 138
    invoke-static {p4}, Loe/d;->O(Ljava/util/List;)Lne/s;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {v0, p2, p1}, Lve/i;->x(Lne/s;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    monitor-exit p3

    .line 148
    throw p1
.end method

.method public d(IJ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lve/f;->U0()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    add-long/2addr v0, p2

    .line 11
    invoke-static {p1, v0, v1}, Lve/f;->H(Lve/f;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    monitor-exit p1

    .line 23
    throw p2

    .line 24
    :cond_0
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lve/f;->J0(I)Lve/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lve/i;->a(J)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    monitor-exit p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception p2

    .line 41
    monitor-exit p1

    .line 42
    throw p2

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public f(ZII)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 p3, 0x1

    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-eq p2, p3, :cond_2

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p2, p3, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eq p2, p3, :cond_0

    .line 16
    .line 17
    :goto_0
    :try_start_0
    sget-object p2, Lxc/t;->a:Lxc/t;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p1}, Lve/f;->b(Lve/f;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    add-long/2addr p2, v0

    .line 25
    invoke-static {p1, p2, p3}, Lve/f;->v(Lve/f;J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Lve/f;->f(Lve/f;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    add-long/2addr p2, v0

    .line 37
    invoke-static {p1, p2, p3}, Lve/f;->w(Lve/f;J)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p1}, Lve/f;->h(Lve/f;)J

    .line 42
    .line 43
    .line 44
    move-result-wide p2

    .line 45
    add-long/2addr p2, v0

    .line 46
    invoke-static {p1, p2, p3}, Lve/f;->z(Lve/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :goto_1
    monitor-exit p1

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p2

    .line 52
    monitor-exit p1

    .line 53
    throw p2

    .line 54
    :cond_3
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 55
    .line 56
    invoke-static {p1}, Lve/f;->s(Lve/f;)Lre/d;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 61
    .line 62
    invoke-virtual {v0}, Lve/f;->d0()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, " ping"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v5, p0, Lve/f$d;->b:Lve/f;

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    new-instance v0, Lve/f$d$c;

    .line 76
    .line 77
    move-object v2, v0

    .line 78
    move v6, p2

    .line 79
    move v7, p3

    .line 80
    invoke-direct/range {v2 .. v7}, Lve/f$d$c;-><init>(Ljava/lang/String;ZLve/f;II)V

    .line 81
    .line 82
    .line 83
    const-wide/16 p2, 0x0

    .line 84
    .line 85
    invoke-virtual {p1, v0, p2, p3}, Lre/d;->i(Lre/a;J)V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void
.end method

.method public g(ILve/b;)V
    .locals 1

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lve/f;->e1(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lve/f;->d1(ILve/b;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lve/f;->f1(I)Lve/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Lve/i;->y(Lve/b;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public h(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(ILve/b;Laf/g;)V
    .locals 3

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "debugData"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Laf/g;->size()I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lve/f$d;->b:Lve/f;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    invoke-virtual {p2}, Lve/f;->T0()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v1, v0, [Lve/i;

    .line 27
    .line 28
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {p2, v1}, Lve/f;->E(Lve/f;Z)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit p2

    .line 41
    check-cast p3, [Lve/i;

    .line 42
    .line 43
    array-length p2, p3

    .line 44
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 45
    .line 46
    aget-object v1, p3, v0

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    invoke-virtual {v1}, Lve/i;->j()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-le v2, p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1}, Lve/i;->t()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    sget-object v2, Lve/b;->j:Lve/b;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lve/i;->y(Lve/b;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lve/f$d;->b:Lve/f;

    .line 68
    .line 69
    invoke-virtual {v1}, Lve/i;->j()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v2, v1}, Lve/f;->f1(I)Lve/i;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void

    .line 78
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 79
    .line 80
    const-string p3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 81
    .line 82
    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p2

    .line 88
    throw p1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lve/f$d;->o()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method

.method public k(ZLve/m;)V
    .locals 9

    .line 1
    const-string v0, "settings"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 7
    .line 8
    invoke-static {v0}, Lve/f;->s(Lve/f;)Lre/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lve/f$d;->b:Lve/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Lve/f;->d0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, " applyAndAckSettings"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x1

    .line 25
    new-instance v1, Lve/f$d$d;

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    move-object v6, p0

    .line 29
    move v7, p1

    .line 30
    move-object v8, p2

    .line 31
    invoke-direct/range {v3 .. v8}, Lve/f$d$d;-><init>(Ljava/lang/String;ZLve/f$d;ZLve/m;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 p1, 0x0

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public l(IILjava/util/List;)V
    .locals 0

    .line 1
    const-string p1, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lve/f;->c1(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m(ZILaf/f;I)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lve/f;->e1(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 15
    .line 16
    invoke-virtual {v0, p2, p3, p4, p1}, Lve/f;->a1(ILaf/f;IZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lve/f$d;->b:Lve/f;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Lve/f;->J0(I)Lve/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 29
    .line 30
    sget-object v0, Lve/b;->d:Lve/b;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lve/f;->s1(ILve/b;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lve/f$d;->b:Lve/f;

    .line 36
    .line 37
    int-to-long v0, p4

    .line 38
    invoke-virtual {p1, v0, v1}, Lve/f;->n1(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p3, v0, v1}, Laf/f;->skip(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0, p3, p4}, Lve/i;->w(Laf/f;I)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget-object p1, Loe/d;->b:Lne/s;

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-virtual {v0, p1, p2}, Lve/i;->x(Lne/s;Z)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final n(ZLve/m;)V
    .locals 11

    .line 1
    const-string v0, "settings"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lve/f$d;->b:Lve/f;

    .line 12
    .line 13
    invoke-virtual {v1}, Lve/f;->W0()Lve/j;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lve/f$d;->b:Lve/f;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    invoke-virtual {v2}, Lve/f;->A0()Lve/m;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lve/m;

    .line 29
    .line 30
    invoke-direct {p1}, Lve/m;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lve/m;->g(Lve/m;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lve/m;->g(Lve/m;)V

    .line 37
    .line 38
    .line 39
    move-object p2, p1

    .line 40
    :goto_0
    iput-object p2, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p2}, Lve/m;->c()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    invoke-virtual {v3}, Lve/m;->c()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-long v3, v3

    .line 52
    sub-long/2addr p1, v3

    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    cmp-long v5, p1, v3

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lve/f;->T0()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Lve/f;->T0()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-array v7, v6, [Lve/i;

    .line 80
    .line 81
    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    check-cast v5, [Lve/i;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 91
    .line 92
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 99
    :goto_2
    iget-object v7, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v7, Lve/m;

    .line 102
    .line 103
    invoke-virtual {v2, v7}, Lve/f;->j1(Lve/m;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lve/f;->k(Lve/f;)Lre/d;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v2}, Lve/f;->d0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const-string v9, " onSettings"

    .line 115
    .line 116
    invoke-static {v8, v9}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    new-instance v9, Lve/f$d$a;

    .line 121
    .line 122
    const/4 v10, 0x1

    .line 123
    invoke-direct {v9, v8, v10, v2, v0}, Lve/f$d$a;-><init>(Ljava/lang/String;ZLve/f;Lkotlin/jvm/internal/c0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v9, v3, v4}, Lre/d;->i(Lre/a;J)V

    .line 127
    .line 128
    .line 129
    sget-object v3, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    :try_start_3
    invoke-virtual {v2}, Lve/f;->W0()Lve/j;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v0, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lve/m;

    .line 139
    .line 140
    invoke-virtual {v3, v0}, Lve/j;->a(Lve/m;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_4
    invoke-static {v2, v0}, Lve/f;->a(Lve/f;Ljava/io/IOException;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 149
    .line 150
    monitor-exit v1

    .line 151
    if-eqz v5, :cond_4

    .line 152
    .line 153
    array-length v0, v5

    .line 154
    :goto_4
    if-ge v6, v0, :cond_4

    .line 155
    .line 156
    aget-object v1, v5, v6

    .line 157
    .line 158
    add-int/lit8 v6, v6, 0x1

    .line 159
    .line 160
    monitor-enter v1

    .line 161
    :try_start_5
    invoke-virtual {v1, p1, p2}, Lve/i;->a(J)V

    .line 162
    .line 163
    .line 164
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    monitor-exit v1

    .line 167
    goto :goto_4

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    monitor-exit v1

    .line 170
    throw p1

    .line 171
    :cond_4
    return-void

    .line 172
    :catchall_1
    move-exception p1

    .line 173
    :try_start_6
    monitor-exit v2

    .line 174
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 175
    :catchall_2
    move-exception p1

    .line 176
    monitor-exit v1

    .line 177
    throw p1
.end method

.method public o()V
    .locals 5

    .line 1
    sget-object v0, Lve/b;->e:Lve/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lve/f$d;->a:Lve/h;

    .line 5
    .line 6
    invoke-virtual {v2, p0}, Lve/h;->c(Lve/h$c;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lve/f$d;->a:Lve/h;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3, p0}, Lve/h;->b(ZLve/h$c;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Lve/b;->c:Lve/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :try_start_1
    sget-object v0, Lve/b;->k:Lve/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    iget-object v3, p0, Lve/f$d;->b:Lve/f;

    .line 24
    .line 25
    invoke-virtual {v3, v2, v0, v1}, Lve/f;->P(Lve/b;Lve/b;Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v3

    .line 32
    move-object v2, v0

    .line 33
    goto :goto_3

    .line 34
    :catch_1
    move-exception v1

    .line 35
    move-object v2, v0

    .line 36
    :goto_1
    :try_start_2
    sget-object v0, Lve/b;->d:Lve/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    .line 38
    iget-object v2, p0, Lve/f$d;->b:Lve/f;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v0, v1}, Lve/f;->P(Lve/b;Lve/b;Ljava/io/IOException;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    iget-object v0, p0, Lve/f$d;->a:Lve/h;

    .line 44
    .line 45
    invoke-static {v0}, Loe/d;->l(Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception v3

    .line 50
    :goto_3
    iget-object v4, p0, Lve/f$d;->b:Lve/f;

    .line 51
    .line 52
    invoke-virtual {v4, v2, v0, v1}, Lve/f;->P(Lve/b;Lve/b;Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lve/f$d;->a:Lve/h;

    .line 56
    .line 57
    invoke-static {v0}, Loe/d;->l(Ljava/io/Closeable;)V

    .line 58
    .line 59
    .line 60
    throw v3
.end method

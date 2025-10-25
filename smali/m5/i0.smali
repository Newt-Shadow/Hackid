.class public final Lm5/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/f$a;
.implements Lcom/google/android/gms/common/api/f$b;


# instance fields
.field private final a:Ljava/util/Queue;

.field private final g:Lcom/google/android/gms/common/api/a$f;

.field private final h:Lm5/b;

.field private final i:Lm5/z;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/util/Map;

.field private final l:I

.field private final m:Lm5/e1;

.field private n:Z

.field private final o:Ljava/util/List;

.field private p:Ll5/b;

.field private q:I

.field final synthetic r:Lm5/e;


# direct methods
.method public constructor <init>(Lm5/e;Lcom/google/android/gms/common/api/e;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lm5/i0;->j:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lm5/i0;->k:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lm5/i0;->o:Ljava/util/List;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lm5/i0;->p:Ll5/b;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lm5/i0;->q:I

    .line 39
    .line 40
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/e;->v(Landroid/os/Looper;Lm5/i0;)Lcom/google/android/gms/common/api/a$f;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->p()Lm5/b;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lm5/i0;->h:Lm5/b;

    .line 59
    .line 60
    new-instance v2, Lm5/z;

    .line 61
    .line 62
    invoke-direct {v2}, Lm5/z;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lm5/i0;->i:Lm5/z;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->u()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, p0, Lm5/i0;->l:I

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->o()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-static {p1}, Lm5/e;->n(Lm5/e;)Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/e;->w(Landroid/content/Context;Landroid/os/Handler;)Lm5/e1;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lm5/i0;->m:Lm5/e1;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    iput-object v0, p0, Lm5/i0;->m:Lm5/e1;

    .line 95
    .line 96
    return-void
.end method

.method static bridge synthetic A(Lm5/i0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/i0;->l(I)V

    return-void
.end method

.method static bridge synthetic B(Lm5/i0;Lm5/k0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p1, p0, Lm5/i0;->n:Z

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lm5/i0;->E()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-direct {p0}, Lm5/i0;->i()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic C(Lm5/i0;Lm5/k0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm5/i0;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 10
    .line 11
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0xf

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 21
    .line 22
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lm5/k0;->a(Lm5/k0;)Ll5/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lm5/n1;

    .line 63
    .line 64
    instance-of v3, v2, Lm5/q0;

    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    move-object v3, v2

    .line 69
    check-cast v3, Lm5/q0;

    .line 70
    .line 71
    invoke-virtual {v3, p0}, Lm5/q0;->g(Lm5/i0;)[Ll5/d;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_1
    if-ge v2, v0, :cond_2

    .line 93
    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lm5/n1;

    .line 99
    .line 100
    iget-object v4, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 101
    .line 102
    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v4, Lcom/google/android/gms/common/api/l;

    .line 106
    .line 107
    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/l;-><init>(Ll5/d;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Lm5/n1;->b(Ljava/lang/Exception;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    return-void
.end method

.method static bridge synthetic M(Lm5/i0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm5/i0;->n:Z

    return p0
.end method

.method private final e([Ll5/d;)Ll5/d;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->l()[Ll5/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-array v1, v2, [Ll5/d;

    .line 18
    .line 19
    :cond_1
    new-instance v3, Lr/a;

    .line 20
    .line 21
    array-length v4, v1

    .line 22
    invoke-direct {v3, v4}, Lr/a;-><init>(I)V

    .line 23
    .line 24
    .line 25
    move v4, v2

    .line 26
    :goto_0
    array-length v5, v1

    .line 27
    if-ge v4, v5, :cond_2

    .line 28
    .line 29
    aget-object v5, v1, v4

    .line 30
    .line 31
    invoke-virtual {v5}, Ll5/d;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v5}, Ll5/d;->i()J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    array-length v1, p1

    .line 50
    :goto_1
    if-ge v2, v1, :cond_5

    .line 51
    .line 52
    aget-object v4, p1, v2

    .line 53
    .line 54
    invoke-virtual {v4}, Ll5/d;->g()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-virtual {v4}, Ll5/d;->i()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    cmp-long v5, v5, v7

    .line 75
    .line 76
    if-gez v5, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_2
    return-object v4

    .line 83
    :cond_5
    :goto_3
    return-object v0
.end method

.method private final f(Ll5/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/i0;->j:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ll5/b;->e:Ll5/b;

    .line 21
    .line 22
    invoke-static {p1, v0}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_1
    iget-object p1, p0, Lm5/i0;->j:Ljava/util/Set;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final g(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lm5/i0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    move v2, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    if-eq v2, v0, :cond_6

    .line 22
    .line 23
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lm5/n1;

    .line 40
    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    iget v2, v1, Lm5/n1;->a:I

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    :cond_3
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lm5/n1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {v1, p2}, Lm5/n1;->b(Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    return-void

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p2, "Status XOR exception should be null"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private final i()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lm5/n1;

    .line 20
    .line 21
    iget-object v4, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 22
    .line 23
    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-direct {p0, v3}, Lm5/i0;->p(Lm5/n1;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 37
    .line 38
    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm5/i0;->D()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ll5/b;->e:Ll5/b;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lm5/i0;->f(Ll5/b;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lm5/i0;->o()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lm5/i0;->k:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lm5/v0;

    .line 33
    .line 34
    iget-object v2, v1, Lm5/v0;->a:Lm5/o;

    .line 35
    .line 36
    invoke-virtual {v2}, Lm5/o;->c()[Ll5/d;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {p0, v2}, Lm5/i0;->e([Ll5/d;)Ll5/d;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, v1, Lm5/v0;->a:Lm5/o;

    .line 51
    .line 52
    iget-object v2, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 53
    .line 54
    new-instance v3, Lm6/l;

    .line 55
    .line 56
    invoke-direct {v3}, Lm6/l;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Lm5/o;->d(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p0, v0}, Lm5/i0;->d(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 72
    .line 73
    const-string v1, "DeadObjectException thrown while calling register listener method."

    .line 74
    .line 75
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-direct {p0}, Lm5/i0;->i()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lm5/i0;->m()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final l(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm5/i0;->D()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lm5/i0;->n:Z

    .line 6
    .line 7
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lm5/i0;->i:Lm5/z;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Lm5/z;->e(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lm5/i0;->h:Lm5/b;

    .line 19
    .line 20
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 21
    .line 22
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-wide/16 v2, 0x1388

    .line 37
    .line 38
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lm5/i0;->h:Lm5/b;

    .line 42
    .line 43
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 44
    .line 45
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/16 v2, 0xb

    .line 54
    .line 55
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-wide/32 v2, 0x1d4c0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 66
    .line 67
    invoke-static {p1}, Lm5/e;->v(Lm5/e;)Ln5/i0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ln5/i0;->c()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lm5/i0;->k:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lm5/v0;

    .line 95
    .line 96
    iget-object v0, v0, Lm5/v0;->c:Ljava/lang/Runnable;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method private final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/i0;->h:Lm5/b;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 4
    .line 5
    invoke-static {v1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lm5/i0;->h:Lm5/b;

    .line 15
    .line 16
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 17
    .line 18
    invoke-static {v1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 31
    .line 32
    invoke-static {v1}, Lm5/e;->m(Lm5/e;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final n(Lm5/n1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/i0;->i:Lm5/z;

    .line 2
    .line 3
    invoke-virtual {p0}, Lm5/i0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1, v0, v1}, Lm5/n1;->d(Lm5/z;Z)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1, p0}, Lm5/n1;->c(Lm5/i0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lm5/i0;->d(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 19
    .line 20
    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm5/i0;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 6
    .line 7
    iget-object v1, p0, Lm5/i0;->h:Lm5/b;

    .line 8
    .line 9
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0xb

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 19
    .line 20
    iget-object v1, p0, Lm5/i0;->h:Lm5/b;

    .line 21
    .line 22
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v2, 0x9

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lm5/i0;->n:Z

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private final p(Lm5/n1;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lm5/q0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lm5/i0;->n(Lm5/n1;)V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Lm5/q0;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lm5/q0;->g(Lm5/i0;)[Ll5/d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, v2}, Lm5/i0;->e([Ll5/d;)Ll5/d;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lm5/i0;->n(Lm5/n1;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-object p1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v2}, Ll5/d;->g()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Ll5/d;->i()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " could not execute call because it requires feature ("

    .line 54
    .line 55
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", "

    .line 62
    .line 63
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ")."

    .line 70
    .line 71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v3, "GoogleApiManager"

    .line 79
    .line 80
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 84
    .line 85
    invoke-static {p1}, Lm5/e;->d(Lm5/e;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lm5/q0;->f(Lm5/i0;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lm5/i0;->h:Lm5/b;

    .line 98
    .line 99
    new-instance v0, Lm5/k0;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-direct {v0, p1, v2, v1}, Lm5/k0;-><init>(Lm5/b;Ll5/d;Lm5/j0;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lm5/i0;->o:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const-wide/16 v2, 0x1388

    .line 112
    .line 113
    const/16 v4, 0xf

    .line 114
    .line 115
    if-ltz p1, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lm5/i0;->o:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lm5/k0;

    .line 124
    .line 125
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 126
    .line 127
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 135
    .line 136
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lm5/i0;->o:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 158
    .line 159
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v5, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 175
    .line 176
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const/16 v3, 0x10

    .line 185
    .line 186
    invoke-static {p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-wide/32 v3, 0x1d4c0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    .line 195
    .line 196
    new-instance p1, Ll5/b;

    .line 197
    .line 198
    const/4 v0, 0x2

    .line 199
    invoke-direct {p1, v0, v1}, Ll5/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1}, Lm5/i0;->q(Ll5/b;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_3

    .line 207
    .line 208
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 209
    .line 210
    iget v1, p0, Lm5/i0;->l:I

    .line 211
    .line 212
    invoke-virtual {v0, p1, v1}, Lm5/e;->f(Ll5/b;I)Z

    .line 213
    .line 214
    .line 215
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 216
    return p1

    .line 217
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/l;

    .line 218
    .line 219
    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/l;-><init>(Ll5/d;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lm5/n1;->b(Ljava/lang/Exception;)V

    .line 223
    .line 224
    .line 225
    return v1
.end method

.method private final q(Ll5/b;)Z
    .locals 3

    .line 1
    invoke-static {}, Lm5/e;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 7
    .line 8
    invoke-static {v1}, Lm5/e;->s(Lm5/e;)Lm5/a0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lm5/e;->A(Lm5/e;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lm5/i0;->h:Lm5/b;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 27
    .line 28
    invoke-static {v1}, Lm5/e;->s(Lm5/e;)Lm5/a0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Lm5/i0;->l:I

    .line 33
    .line 34
    invoke-virtual {v1, p1, v2}, Lm5/r1;->s(Ll5/b;I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method private final r(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lm5/i0;->k:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lm5/i0;->i:Lm5/z;

    .line 27
    .line 28
    invoke-virtual {v0}, Lm5/z;->g()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lm5/i0;->m()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 41
    .line 42
    const-string v0, "Timing out service connection."

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method static bridge synthetic u(Lm5/i0;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method static bridge synthetic w(Lm5/i0;)Lm5/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/i0;->h:Lm5/b;

    return-object p0
.end method

.method static bridge synthetic y(Lm5/i0;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static bridge synthetic z(Lm5/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/i0;->j()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lm5/i0;->p:Ll5/b;

    .line 12
    .line 13
    return-void
.end method

.method public final E()V
    .locals 8

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0xa

    .line 29
    .line 30
    :try_start_0
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 31
    .line 32
    invoke-static {v1}, Lm5/e;->v(Lm5/e;)Ln5/i0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1}, Lm5/e;->n(Lm5/e;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 41
    .line 42
    invoke-virtual {v2, v1, v3}, Ln5/i0;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v2, Ll5/b;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, v1, v3}, Ll5/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "GoogleApiManager"

    .line 55
    .line 56
    iget-object v4, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v7, "The service for "

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, " is not available: "

    .line 84
    .line 85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2, v3}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lm5/i0;->r:Lm5/e;

    .line 103
    .line 104
    iget-object v2, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 105
    .line 106
    iget-object v3, p0, Lm5/i0;->h:Lm5/b;

    .line 107
    .line 108
    new-instance v4, Lm5/m0;

    .line 109
    .line 110
    invoke-direct {v4, v1, v2, v3}, Lm5/m0;-><init>(Lm5/e;Lcom/google/android/gms/common/api/a$f;Lm5/b;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->o()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Lm5/i0;->m:Lm5/e1;

    .line 120
    .line 121
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lm5/e1;

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Lm5/e1;->h1(Lm5/d1;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    :try_start_1
    iget-object v1, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 131
    .line 132
    invoke-interface {v1, v4}, Lcom/google/android/gms/common/api/a$f;->d(Ln5/c$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    new-instance v2, Ll5/b;

    .line 138
    .line 139
    invoke-direct {v2, v0}, Ll5/b;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2, v1}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_1
    move-exception v1

    .line 147
    new-instance v2, Ll5/b;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Ll5/b;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v2, v1}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_0
    return-void
.end method

.method public final F(Lm5/n1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lm5/i0;->p(Lm5/n1;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lm5/i0;->m()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lm5/i0;->p:Ll5/b;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Ll5/b;->m()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lm5/i0;->p:Ll5/b;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0}, Lm5/i0;->E()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method final G()V
    .locals 1

    .line 1
    iget v0, p0, Lm5/i0;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/i0;->q:I

    return-void
.end method

.method public final H(Ll5/b;Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm5/i0;->m:Lm5/e1;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lm5/e1;->i1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lm5/i0;->D()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 21
    .line 22
    invoke-static {v0}, Lm5/e;->v(Lm5/e;)Ln5/i0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ln5/i0;->c()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lm5/i0;->f(Ll5/b;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 33
    .line 34
    instance-of v0, v0, Lp5/e;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v2, 0x18

    .line 44
    .line 45
    if-eq v0, v2, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lm5/e;->B(Lm5/e;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 53
    .line 54
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v3, 0x13

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-wide/32 v3, 0x493e0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x4

    .line 79
    if-ne v0, v2, :cond_2

    .line 80
    .line 81
    invoke-static {}, Lm5/e;->q()Lcom/google/android/gms/common/api/Status;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iput-object p1, p0, Lm5/i0;->p:Ll5/b;

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    const/4 v0, 0x0

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 104
    .line 105
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, v0, p2, p1}, Lm5/i0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    iget-object p2, p0, Lm5/i0;->r:Lm5/e;

    .line 118
    .line 119
    invoke-static {p2}, Lm5/e;->d(Lm5/e;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_9

    .line 124
    .line 125
    iget-object p2, p0, Lm5/i0;->h:Lm5/b;

    .line 126
    .line 127
    invoke-static {p2, p1}, Lm5/e;->r(Lm5/b;Ll5/b;)Lcom/google/android/gms/common/api/Status;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p0, p2, v0, v1}, Lm5/i0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lm5/i0;->a:Ljava/util/Queue;

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_5

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    invoke-direct {p0, p1}, Lm5/i0;->q(Ll5/b;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_8

    .line 148
    .line 149
    iget-object p2, p0, Lm5/i0;->r:Lm5/e;

    .line 150
    .line 151
    iget v0, p0, Lm5/i0;->l:I

    .line 152
    .line 153
    invoke-virtual {p2, p1, v0}, Lm5/e;->f(Ll5/b;I)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-nez p2, :cond_8

    .line 158
    .line 159
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    const/16 v0, 0x12

    .line 164
    .line 165
    if-ne p2, v0, :cond_6

    .line 166
    .line 167
    iput-boolean v1, p0, Lm5/i0;->n:Z

    .line 168
    .line 169
    :cond_6
    iget-boolean p2, p0, Lm5/i0;->n:Z

    .line 170
    .line 171
    if-eqz p2, :cond_7

    .line 172
    .line 173
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 174
    .line 175
    iget-object p2, p0, Lm5/i0;->h:Lm5/b;

    .line 176
    .line 177
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const/16 v1, 0x9

    .line 186
    .line 187
    invoke-static {p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-wide/16 v1, 0x1388

    .line 192
    .line 193
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_7
    iget-object p2, p0, Lm5/i0;->h:Lm5/b;

    .line 198
    .line 199
    invoke-static {p2, p1}, Lm5/e;->r(Lm5/b;Ll5/b;)Lcom/google/android/gms/common/api/Status;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_0
    return-void

    .line 207
    :cond_9
    iget-object p2, p0, Lm5/i0;->h:Lm5/b;

    .line 208
    .line 209
    invoke-static {p2, p1}, Lm5/e;->r(Lm5/b;Ll5/b;)Lcom/google/android/gms/common/api/Status;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final I(Ll5/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "onSignInFailed for "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " with "

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lm5/i0;->n:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lm5/i0;->E()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final K()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lm5/e;->p:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lm5/i0;->i:Lm5/z;

    .line 16
    .line 17
    invoke-virtual {v0}, Lm5/z;->f()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lm5/i0;->k:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v2, v1, [Lm5/j$a;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Lm5/j$a;

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    .line 38
    aget-object v3, v0, v1

    .line 39
    .line 40
    new-instance v4, Lm5/m1;

    .line 41
    .line 42
    new-instance v5, Lm6/l;

    .line 43
    .line 44
    invoke-direct {v5}, Lm6/l;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v3, v5}, Lm5/m1;-><init>(Lm5/j$a;Lm6/l;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lm5/i0;->F(Lm5/n1;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ll5/b;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-direct {v0, v1}, Ll5/b;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lm5/i0;->f(Ll5/b;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 74
    .line 75
    new-instance v1, Lm5/h0;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lm5/h0;-><init>(Lm5/i0;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->h(Ln5/c$e;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lm5/i0;->n:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lm5/i0;->o()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 18
    .line 19
    invoke-static {v0}, Lm5/e;->p(Lm5/e;)Ll5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0}, Lm5/e;->n(Lm5/e;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ll5/f;->g(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 36
    .line 37
    const/16 v1, 0x15

    .line 38
    .line 39
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 46
    .line 47
    const/16 v1, 0x16

    .line 48
    .line 49
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-direct {p0, v0}, Lm5/i0;->g(Lcom/google/android/gms/common/api/Status;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 58
    .line 59
    const-string v1, "Timing out connection while resuming."

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final a(Ll5/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lm5/i0;->r(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lm5/i0;->l(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lm5/i0;->r:Lm5/e;

    .line 22
    .line 23
    invoke-static {v0}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lm5/f0;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lm5/f0;-><init>(Lm5/i0;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lm5/i0;->j()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lm5/i0;->r:Lm5/e;

    .line 22
    .line 23
    invoke-static {p1}, Lm5/e;->o(Lm5/e;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lm5/e0;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lm5/e0;-><init>(Lm5/i0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Lm5/i0;->l:I

    return v0
.end method

.method final t()I
    .locals 1

    .line 1
    iget v0, p0, Lm5/i0;->q:I

    return v0
.end method

.method public final v()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->g:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final x()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i0;->k:Ljava/util/Map;

    return-object v0
.end method

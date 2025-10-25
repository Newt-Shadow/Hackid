.class final Li4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/e0$b;
.implements Lx4/e0$f;
.implements Ld4/n0;
.implements Lg3/m;
.implements Ld4/l0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li4/p$c;,
        Li4/p$d;,
        Li4/p$b;
    }
.end annotation


# static fields
.field private static final Y:Ljava/util/Set;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Lb3/x1;

.field private G:Lb3/x1;

.field private H:Z

.field private I:Ld4/u0;

.field private J:Ljava/util/Set;

.field private K:[I

.field private L:I

.field private M:Z

.field private N:[Z

.field private O:[Z

.field private P:J

.field private Q:J

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:J

.field private W:Lf3/m;

.field private X:Li4/i;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Li4/p$b;

.field private final d:Li4/f;

.field private final e:Lx4/b;

.field private final f:Lb3/x1;

.field private final g:Lf3/v;

.field private final h:Lf3/u$a;

.field private final i:Lx4/d0;

.field private final j:Lx4/e0;

.field private final k:Ld4/a0$a;

.field private final l:I

.field private final m:Li4/f$b;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/List;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/Map;

.field private u:Lf4/f;

.field private v:[Li4/p$d;

.field private w:[I

.field private x:Ljava/util/Set;

.field private y:Landroid/util/SparseIntArray;

.field private z:Lg3/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x5

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Li4/p;->Y:Ljava/util/Set;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILi4/p$b;Li4/f;Ljava/util/Map;Lx4/b;JLb3/x1;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Li4/p;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Li4/p;->c:Li4/p$b;

    .line 9
    .line 10
    iput-object p4, p0, Li4/p;->d:Li4/f;

    .line 11
    .line 12
    iput-object p5, p0, Li4/p;->t:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Li4/p;->e:Lx4/b;

    .line 15
    .line 16
    iput-object p9, p0, Li4/p;->f:Lb3/x1;

    .line 17
    .line 18
    iput-object p10, p0, Li4/p;->g:Lf3/v;

    .line 19
    .line 20
    iput-object p11, p0, Li4/p;->h:Lf3/u$a;

    .line 21
    .line 22
    iput-object p12, p0, Li4/p;->i:Lx4/d0;

    .line 23
    .line 24
    iput-object p13, p0, Li4/p;->k:Ld4/a0$a;

    .line 25
    .line 26
    iput p14, p0, Li4/p;->l:I

    .line 27
    .line 28
    new-instance p1, Lx4/e0;

    .line 29
    .line 30
    const-string p2, "Loader:HlsSampleStreamWrapper"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Li4/p;->j:Lx4/e0;

    .line 36
    .line 37
    new-instance p1, Li4/f$b;

    .line 38
    .line 39
    invoke-direct {p1}, Li4/f$b;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Li4/p;->m:Li4/f$b;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    new-array p2, p1, [I

    .line 46
    .line 47
    iput-object p2, p0, Li4/p;->w:[I

    .line 48
    .line 49
    new-instance p2, Ljava/util/HashSet;

    .line 50
    .line 51
    sget-object p3, Li4/p;->Y:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Li4/p;->x:Ljava/util/Set;

    .line 61
    .line 62
    new-instance p2, Landroid/util/SparseIntArray;

    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Li4/p;->y:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    new-array p2, p1, [Li4/p$d;

    .line 74
    .line 75
    iput-object p2, p0, Li4/p;->v:[Li4/p$d;

    .line 76
    .line 77
    new-array p2, p1, [Z

    .line 78
    .line 79
    iput-object p2, p0, Li4/p;->O:[Z

    .line 80
    .line 81
    new-array p1, p1, [Z

    .line 82
    .line 83
    iput-object p1, p0, Li4/p;->N:[Z

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Li4/p;->o:Ljava/util/List;

    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Li4/p;->s:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance p1, Li4/n;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Li4/n;-><init>(Li4/p;)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Li4/p;->p:Ljava/lang/Runnable;

    .line 111
    .line 112
    new-instance p1, Li4/o;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Li4/o;-><init>(Li4/p;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Li4/p;->q:Ljava/lang/Runnable;

    .line 118
    .line 119
    invoke-static {}, Ly4/q0;->w()Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Li4/p;->r:Landroid/os/Handler;

    .line 124
    .line 125
    iput-wide p7, p0, Li4/p;->P:J

    .line 126
    .line 127
    iput-wide p7, p0, Li4/p;->Q:J

    .line 128
    .line 129
    return-void
.end method

.method private static B(II)Lg3/j;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unmapped track with id "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, " of type "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "HlsSampleStreamWrapper"

    .line 27
    .line 28
    invoke-static {p1, p0}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lg3/j;

    .line 32
    .line 33
    invoke-direct {p0}, Lg3/j;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private C(II)Ld4/l0;
    .locals 9

    .line 1
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p2, v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p2, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    new-instance v8, Li4/p$d;

    .line 13
    .line 14
    iget-object v3, p0, Li4/p;->e:Lx4/b;

    .line 15
    .line 16
    iget-object v4, p0, Li4/p;->g:Lf3/v;

    .line 17
    .line 18
    iget-object v5, p0, Li4/p;->h:Lf3/u$a;

    .line 19
    .line 20
    iget-object v6, p0, Li4/p;->t:Ljava/util/Map;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v2, v8

    .line 24
    invoke-direct/range {v2 .. v7}, Li4/p$d;-><init>(Lx4/b;Lf3/v;Lf3/u$a;Ljava/util/Map;Li4/p$a;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Li4/p;->P:J

    .line 28
    .line 29
    invoke-virtual {v8, v2, v3}, Ld4/l0;->b0(J)V

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Li4/p;->W:Lf3/m;

    .line 35
    .line 36
    invoke-virtual {v8, v2}, Li4/p$d;->i0(Lf3/m;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-wide v2, p0, Li4/p;->V:J

    .line 40
    .line 41
    invoke-virtual {v8, v2, v3}, Ld4/l0;->a0(J)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Li4/p;->X:Li4/i;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v8, v2}, Li4/p$d;->j0(Li4/i;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v8, p0}, Ld4/l0;->d0(Ld4/l0$d;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Li4/p;->w:[I

    .line 55
    .line 56
    add-int/lit8 v3, v0, 0x1

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Li4/p;->w:[I

    .line 63
    .line 64
    aput p1, v2, v0

    .line 65
    .line 66
    iget-object p1, p0, Li4/p;->v:[Li4/p$d;

    .line 67
    .line 68
    invoke-static {p1, v8}, Ly4/q0;->D0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Li4/p$d;

    .line 73
    .line 74
    iput-object p1, p0, Li4/p;->v:[Li4/p$d;

    .line 75
    .line 76
    iget-object p1, p0, Li4/p;->O:[Z

    .line 77
    .line 78
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Li4/p;->O:[Z

    .line 83
    .line 84
    aput-boolean v1, p1, v0

    .line 85
    .line 86
    iget-boolean p1, p0, Li4/p;->M:Z

    .line 87
    .line 88
    or-int/2addr p1, v1

    .line 89
    iput-boolean p1, p0, Li4/p;->M:Z

    .line 90
    .line 91
    iget-object p1, p0, Li4/p;->x:Ljava/util/Set;

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Li4/p;->y:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Li4/p;->L(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget v1, p0, Li4/p;->A:I

    .line 110
    .line 111
    invoke-static {v1}, Li4/p;->L(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le p1, v1, :cond_4

    .line 116
    .line 117
    iput v0, p0, Li4/p;->B:I

    .line 118
    .line 119
    iput p2, p0, Li4/p;->A:I

    .line 120
    .line 121
    :cond_4
    iget-object p1, p0, Li4/p;->N:[Z

    .line 122
    .line 123
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Li4/p;->N:[Z

    .line 128
    .line 129
    return-object v8
.end method

.method private D([Ld4/s0;)Ld4/u0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    iget v3, v2, Ld4/s0;->a:I

    .line 9
    .line 10
    new-array v3, v3, [Lb3/x1;

    .line 11
    .line 12
    move v4, v0

    .line 13
    :goto_1
    iget v5, v2, Ld4/s0;->a:I

    .line 14
    .line 15
    if-ge v4, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ld4/s0;->b(I)Lb3/x1;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Li4/p;->g:Lf3/v;

    .line 22
    .line 23
    invoke-interface {v6, v5}, Lf3/v;->c(Lb3/x1;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Lb3/x1;->c(I)Lb3/x1;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v3, v4

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance v4, Ld4/s0;

    .line 37
    .line 38
    iget-object v2, v2, Ld4/s0;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v4, v2, v3}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 41
    .line 42
    .line 43
    aput-object v4, p1, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ld4/u0;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ld4/u0;-><init>([Ld4/s0;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method private static E(Lb3/x1;Lb3/x1;Z)Lb3/x1;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ly4/v;->k(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lb3/x1;->i:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v0}, Ly4/q0;->K(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lb3/x1;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v0}, Ly4/q0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ly4/v;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lb3/x1;->i:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3}, Ly4/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v3, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Lb3/x1;->b()Lb3/x1$b;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Lb3/x1;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lb3/x1;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lb3/x1$b;->W(Ljava/lang/String;)Lb3/x1$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lb3/x1;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget v5, p0, Lb3/x1;->d:I

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lb3/x1$b;->i0(I)Lb3/x1$b;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget v5, p0, Lb3/x1;->e:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lb3/x1$b;->e0(I)Lb3/x1$b;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v5, -0x1

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget v6, p0, Lb3/x1;->f:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v6, v5

    .line 81
    :goto_1
    invoke-virtual {v4, v6}, Lb3/x1$b;->I(I)Lb3/x1$b;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    iget p2, p0, Lb3/x1;->g:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move p2, v5

    .line 91
    :goto_2
    invoke-virtual {v4, p2}, Lb3/x1$b;->b0(I)Lb3/x1$b;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2, v1}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/4 v1, 0x2

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    iget v1, p0, Lb3/x1;->q:I

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Lb3/x1$b;->n0(I)Lb3/x1$b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v4, p0, Lb3/x1;->r:I

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lb3/x1$b;->S(I)Lb3/x1$b;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v4, p0, Lb3/x1;->s:F

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Lb3/x1$b;->R(F)Lb3/x1$b;

    .line 117
    .line 118
    .line 119
    :cond_4
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-virtual {p2, v3}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 122
    .line 123
    .line 124
    :cond_5
    iget v1, p0, Lb3/x1;->y:I

    .line 125
    .line 126
    if-eq v1, v5, :cond_6

    .line 127
    .line 128
    if-ne v0, v2, :cond_6

    .line 129
    .line 130
    invoke-virtual {p2, v1}, Lb3/x1$b;->J(I)Lb3/x1$b;

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object p0, p0, Lb3/x1;->j:Lt3/a;

    .line 134
    .line 135
    if-eqz p0, :cond_8

    .line 136
    .line 137
    iget-object p1, p1, Lb3/x1;->j:Lt3/a;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lt3/a;->b(Lt3/a;)Lt3/a;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :cond_7
    invoke-virtual {p2, p0}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {p2}, Lb3/x1$b;->G()Lb3/x1;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method private F(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Li4/p;->z(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p1, v1

    .line 32
    :goto_1
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-direct {p0}, Li4/p;->J()Li4/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-wide v5, v0, Lf4/f;->h:J

    .line 40
    .line 41
    invoke-direct {p0, p1}, Li4/p;->G(I)Li4/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-wide v0, p0, Li4/p;->P:J

    .line 54
    .line 55
    iput-wide v0, p0, Li4/p;->Q:J

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v0}, Lo6/t;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Li4/i;

    .line 65
    .line 66
    invoke-virtual {v0}, Li4/i;->o()V

    .line 67
    .line 68
    .line 69
    :goto_2
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Li4/p;->T:Z

    .line 71
    .line 72
    iget-object v1, p0, Li4/p;->k:Ld4/a0$a;

    .line 73
    .line 74
    iget v2, p0, Li4/p;->A:I

    .line 75
    .line 76
    iget-wide v3, p1, Lf4/f;->g:J

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Ld4/a0$a;->D(IJJ)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private G(I)Li4/i;
    .locals 3

    .line 1
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Li4/i;

    .line 8
    .line 9
    iget-object v1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, p1, v2}, Ly4/q0;->L0(Ljava/util/List;II)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Li4/p;->v:[Li4/p$d;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Li4/i;->m(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Li4/p;->v:[Li4/p$d;

    .line 29
    .line 30
    aget-object v2, v2, p1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ld4/l0;->u(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method private H(Li4/i;)Z
    .locals 4

    .line 1
    iget p1, p1, Li4/i;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Li4/p;->N:[Z

    .line 11
    .line 12
    aget-boolean v3, v3, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Li4/p;->v:[Li4/p$d;

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ld4/l0;->Q()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private static I(Lb3/x1;Lb3/x1;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/x1;->l:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Ly4/v;->k(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    invoke-static {v1}, Ly4/v;->k(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne v2, p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v5

    .line 22
    :goto_0
    return v4

    .line 23
    :cond_1
    invoke-static {v0, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return v5

    .line 30
    :cond_2
    const-string v1, "application/cea-608"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    const-string v1, "application/cea-708"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return v4

    .line 48
    :cond_4
    :goto_1
    iget p0, p0, Lb3/x1;->D:I

    .line 49
    .line 50
    iget p1, p1, Lb3/x1;->D:I

    .line 51
    .line 52
    if-ne p0, p1, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    move v4, v5

    .line 56
    :goto_2
    return v4
.end method

.method private J()Li4/i;
    .locals 2

    .line 1
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Li4/i;

    .line 14
    .line 15
    return-object v0
.end method

.method private K(II)Lg3/b0;
    .locals 3

    .line 1
    sget-object v0, Li4/p;->Y:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Li4/p;->y:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object v1, p0, Li4/p;->x:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Li4/p;->w:[I

    .line 38
    .line 39
    aput p1, v1, v0

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Li4/p;->w:[I

    .line 42
    .line 43
    aget v1, v1, v0

    .line 44
    .line 45
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Li4/p;->v:[Li4/p$d;

    .line 48
    .line 49
    aget-object p1, p1, v0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1, p2}, Li4/p;->B(II)Lg3/j;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    return-object p1
.end method

.method private static L(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private M(Li4/i;)V
    .locals 6

    .line 1
    iput-object p1, p0, Li4/p;->X:Li4/i;

    .line 2
    .line 3
    iget-object v0, p1, Lf4/f;->d:Lb3/x1;

    .line 4
    .line 5
    iput-object v0, p0, Li4/p;->F:Lb3/x1;

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Li4/p;->Q:J

    .line 13
    .line 14
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lo6/q;->r()Lo6/q$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Li4/p;->v:[Li4/p$d;

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ge v4, v2, :cond_0

    .line 29
    .line 30
    aget-object v5, v1, v4

    .line 31
    .line 32
    invoke-virtual {v5}, Ld4/l0;->G()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Lo6/q$a;->h(Ljava/lang/Object;)Lo6/q$a;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lo6/q$a;->k()Lo6/q;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, p0, v0}, Li4/i;->n(Li4/p;Lo6/q;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    :goto_1
    if-ge v3, v1, :cond_2

    .line 57
    .line 58
    aget-object v2, v0, v3

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Li4/p$d;->j0(Li4/i;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v4, p1, Li4/i;->n:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Ld4/l0;->g0()V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-void
.end method

.method private static N(Lf4/f;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Li4/i;

    .line 2
    .line 3
    return p0
.end method

.method private O()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Li4/p;->Q:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private R()V
    .locals 6

    .line 1
    iget-object v0, p0, Li4/p;->I:Ld4/u0;

    .line 2
    .line 3
    iget v0, v0, Ld4/u0;->a:I

    .line 4
    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Li4/p;->K:[I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    move v3, v1

    .line 18
    :goto_1
    iget-object v4, p0, Li4/p;->v:[Li4/p$d;

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v3, v5, :cond_1

    .line 22
    .line 23
    aget-object v4, v4, v3

    .line 24
    .line 25
    invoke-virtual {v4}, Ld4/l0;->F()Lb3/x1;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lb3/x1;

    .line 34
    .line 35
    iget-object v5, p0, Li4/p;->I:Ld4/u0;

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ld4/u0;->b(I)Ld4/s0;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1}, Ld4/s0;->b(I)Lb3/x1;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Li4/p;->I(Lb3/x1;Lb3/x1;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Li4/p;->K:[I

    .line 52
    .line 53
    aput v3, v4, v2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Li4/p;->s:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Li4/l;

    .line 79
    .line 80
    invoke-virtual {v1}, Li4/l;->b()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    return-void
.end method

.method private S()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li4/p;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Li4/p;->K:[I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Li4/p;->C:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_2

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3}, Ld4/l0;->F()Lb3/x1;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Li4/p;->I:Ld4/u0;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Li4/p;->R()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-direct {p0}, Li4/p;->y()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Li4/p;->k0()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Li4/p;->c:Li4/p$b;

    .line 47
    .line 48
    invoke-interface {v0}, Li4/p$b;->a()V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    return-void
.end method

.method private b0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li4/p;->C:Z

    .line 3
    .line 4
    invoke-direct {p0}, Li4/p;->S()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private f0()V
    .locals 6

    .line 1
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-boolean v5, p0, Li4/p;->R:Z

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Ld4/l0;->W(Z)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v2, p0, Li4/p;->R:Z

    .line 19
    .line 20
    return-void
.end method

.method private g0(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Li4/p;->v:[Li4/p$d;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3, p1, p2, v1}, Ld4/l0;->Z(JZ)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Li4/p;->O:[Z

    .line 19
    .line 20
    aget-boolean v3, v3, v2

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-boolean v3, p0, Li4/p;->M:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method private k0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li4/p;->D:Z

    .line 3
    .line 4
    return-void
.end method

.method private p0([Ld4/m0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/p;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Li4/p;->s:Ljava/util/ArrayList;

    .line 15
    .line 16
    check-cast v2, Li4/l;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public static synthetic u(Li4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li4/p;->b0()V

    return-void
.end method

.method public static synthetic v(Li4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li4/p;->S()V

    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li4/p;->D:Z

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li4/p;->I:Ld4/u0;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Li4/p;->J:Ljava/util/Set;

    .line 12
    .line 13
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private y()V
    .locals 15

    .line 1
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, -0x2

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v5, v1

    .line 8
    move v6, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v7, 0x2

    .line 11
    const/4 v8, 0x1

    .line 12
    if-ge v4, v0, :cond_5

    .line 13
    .line 14
    iget-object v9, p0, Li4/p;->v:[Li4/p$d;

    .line 15
    .line 16
    aget-object v9, v9, v4

    .line 17
    .line 18
    invoke-virtual {v9}, Ld4/l0;->F()Lb3/x1;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-static {v9}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lb3/x1;

    .line 27
    .line 28
    iget-object v9, v9, Lb3/x1;->l:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v9}, Ly4/v;->s(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-eqz v10, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v9}, Ly4/v;->o(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    move v7, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {v9}, Ly4/v;->r(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v7, v1

    .line 54
    :goto_1
    invoke-static {v7}, Li4/p;->L(I)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-static {v5}, Li4/p;->L(I)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-le v8, v9, :cond_3

    .line 63
    .line 64
    move v6, v4

    .line 65
    move v5, v7

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ne v7, v5, :cond_4

    .line 68
    .line 69
    if-eq v6, v2, :cond_4

    .line 70
    .line 71
    move v6, v2

    .line 72
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    iget-object v1, p0, Li4/p;->d:Li4/f;

    .line 76
    .line 77
    invoke-virtual {v1}, Li4/f;->j()Ld4/s0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget v4, v1, Ld4/s0;->a:I

    .line 82
    .line 83
    iput v2, p0, Li4/p;->L:I

    .line 84
    .line 85
    new-array v2, v0, [I

    .line 86
    .line 87
    iput-object v2, p0, Li4/p;->K:[I

    .line 88
    .line 89
    move v2, v3

    .line 90
    :goto_3
    if-ge v2, v0, :cond_6

    .line 91
    .line 92
    iget-object v9, p0, Li4/p;->K:[I

    .line 93
    .line 94
    aput v2, v9, v2

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    new-array v2, v0, [Ld4/s0;

    .line 100
    .line 101
    move v9, v3

    .line 102
    :goto_4
    if-ge v9, v0, :cond_d

    .line 103
    .line 104
    iget-object v10, p0, Li4/p;->v:[Li4/p$d;

    .line 105
    .line 106
    aget-object v10, v10, v9

    .line 107
    .line 108
    invoke-virtual {v10}, Ld4/l0;->F()Lb3/x1;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v10}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Lb3/x1;

    .line 117
    .line 118
    if-ne v9, v6, :cond_a

    .line 119
    .line 120
    new-array v11, v4, [Lb3/x1;

    .line 121
    .line 122
    move v12, v3

    .line 123
    :goto_5
    if-ge v12, v4, :cond_9

    .line 124
    .line 125
    invoke-virtual {v1, v12}, Ld4/s0;->b(I)Lb3/x1;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    if-ne v5, v8, :cond_7

    .line 130
    .line 131
    iget-object v14, p0, Li4/p;->f:Lb3/x1;

    .line 132
    .line 133
    if-eqz v14, :cond_7

    .line 134
    .line 135
    invoke-virtual {v13, v14}, Lb3/x1;->j(Lb3/x1;)Lb3/x1;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    :cond_7
    if-ne v4, v8, :cond_8

    .line 140
    .line 141
    invoke-virtual {v10, v13}, Lb3/x1;->j(Lb3/x1;)Lb3/x1;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    goto :goto_6

    .line 146
    :cond_8
    invoke-static {v13, v10, v8}, Li4/p;->E(Lb3/x1;Lb3/x1;Z)Lb3/x1;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    :goto_6
    aput-object v13, v11, v12

    .line 151
    .line 152
    add-int/lit8 v12, v12, 0x1

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_9
    new-instance v10, Ld4/s0;

    .line 156
    .line 157
    iget-object v12, p0, Li4/p;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {v10, v12, v11}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 160
    .line 161
    .line 162
    aput-object v10, v2, v9

    .line 163
    .line 164
    iput v9, p0, Li4/p;->L:I

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_a
    if-ne v5, v7, :cond_b

    .line 168
    .line 169
    iget-object v11, v10, Lb3/x1;->l:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v11}, Ly4/v;->o(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    if-eqz v11, :cond_b

    .line 176
    .line 177
    iget-object v11, p0, Li4/p;->f:Lb3/x1;

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_b
    const/4 v11, 0x0

    .line 181
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v13, p0, Li4/p;->a:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v13, ":muxed:"

    .line 192
    .line 193
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    if-ge v9, v6, :cond_c

    .line 197
    .line 198
    move v13, v9

    .line 199
    goto :goto_8

    .line 200
    :cond_c
    add-int/lit8 v13, v9, -0x1

    .line 201
    .line 202
    :goto_8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    new-instance v13, Ld4/s0;

    .line 210
    .line 211
    invoke-static {v11, v10, v3}, Li4/p;->E(Lb3/x1;Lb3/x1;Z)Lb3/x1;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    filled-new-array {v10}, [Lb3/x1;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-direct {v13, v12, v10}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 220
    .line 221
    .line 222
    aput-object v13, v2, v9

    .line 223
    .line 224
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_d
    invoke-direct {p0, v2}, Li4/p;->D([Ld4/s0;)Ld4/u0;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iput-object v0, p0, Li4/p;->I:Ld4/u0;

    .line 232
    .line 233
    iget-object v0, p0, Li4/p;->J:Ljava/util/Set;

    .line 234
    .line 235
    if-nez v0, :cond_e

    .line 236
    .line 237
    move v3, v8

    .line 238
    :cond_e
    invoke-static {v3}, Ly4/a;->f(Z)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Li4/p;->J:Ljava/util/Set;

    .line 246
    .line 247
    return-void
.end method

.method private z(I)Z
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    iget-object v1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Li4/i;

    .line 18
    .line 19
    iget-boolean v1, v1, Li4/i;->n:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Li4/i;

    .line 34
    .line 35
    move v0, v2

    .line 36
    :goto_1
    iget-object v1, p0, Li4/p;->v:[Li4/p$d;

    .line 37
    .line 38
    array-length v1, v1

    .line 39
    if-ge v0, v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Li4/i;->m(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Li4/p;->v:[Li4/p$d;

    .line 46
    .line 47
    aget-object v3, v3, v0

    .line 48
    .line 49
    invoke-virtual {v3}, Ld4/l0;->C()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-le v3, v1, :cond_2

    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    return p1
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li4/p;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Li4/p;->P:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Li4/p;->c(J)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public P(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Li4/p;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    iget-boolean v0, p0, Li4/p;->T:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ld4/l0;->K(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public Q()Z
    .locals 2

    .line 1
    iget v0, p0, Li4/p;->A:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Li4/f;->n()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public U(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li4/p;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    invoke-virtual {p1}, Ld4/l0;->N()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public V(Lf4/f;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Li4/p;->u:Lf4/f;

    .line 6
    .line 7
    new-instance v2, Ld4/n;

    .line 8
    .line 9
    iget-wide v4, v1, Lf4/f;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lf4/f;->b:Lx4/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lf4/f;->f()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lf4/f;->e()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lf4/f;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v2

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Li4/p;->i:Lx4/d0;

    .line 34
    .line 35
    iget-wide v4, v1, Lf4/f;->a:J

    .line 36
    .line 37
    invoke-interface {v3, v4, v5}, Lx4/d0;->c(J)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Li4/p;->k:Ld4/a0$a;

    .line 41
    .line 42
    iget v5, v1, Lf4/f;->c:I

    .line 43
    .line 44
    iget v6, v0, Li4/p;->b:I

    .line 45
    .line 46
    iget-object v7, v1, Lf4/f;->d:Lb3/x1;

    .line 47
    .line 48
    iget v8, v1, Lf4/f;->e:I

    .line 49
    .line 50
    iget-object v9, v1, Lf4/f;->f:Ljava/lang/Object;

    .line 51
    .line 52
    iget-wide v10, v1, Lf4/f;->g:J

    .line 53
    .line 54
    iget-wide v12, v1, Lf4/f;->h:J

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    invoke-virtual/range {v3 .. v13}, Ld4/a0$a;->r(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 58
    .line 59
    .line 60
    if-nez p6, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Li4/p;->O()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iget v1, v0, Li4/p;->E:I

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    :cond_0
    invoke-direct {p0}, Li4/p;->f0()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget v1, v0, Li4/p;->E:I

    .line 76
    .line 77
    if-lez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Li4/p;->c:Li4/p$b;

    .line 80
    .line 81
    invoke-interface {v1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method public W(Lf4/f;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Li4/p;->u:Lf4/f;

    .line 6
    .line 7
    iget-object v2, v0, Li4/p;->d:Li4/f;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Li4/f;->p(Lf4/f;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ld4/n;

    .line 13
    .line 14
    iget-wide v4, v1, Lf4/f;->a:J

    .line 15
    .line 16
    iget-object v6, v1, Lf4/f;->b:Lx4/n;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lf4/f;->f()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lf4/f;->e()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual/range {p1 .. p1}, Lf4/f;->b()J

    .line 27
    .line 28
    .line 29
    move-result-wide v13

    .line 30
    move-object v3, v2

    .line 31
    move-wide/from16 v9, p2

    .line 32
    .line 33
    move-wide/from16 v11, p4

    .line 34
    .line 35
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Li4/p;->i:Lx4/d0;

    .line 39
    .line 40
    iget-wide v4, v1, Lf4/f;->a:J

    .line 41
    .line 42
    invoke-interface {v3, v4, v5}, Lx4/d0;->c(J)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Li4/p;->k:Ld4/a0$a;

    .line 46
    .line 47
    iget v5, v1, Lf4/f;->c:I

    .line 48
    .line 49
    iget v6, v0, Li4/p;->b:I

    .line 50
    .line 51
    iget-object v7, v1, Lf4/f;->d:Lb3/x1;

    .line 52
    .line 53
    iget v8, v1, Lf4/f;->e:I

    .line 54
    .line 55
    iget-object v9, v1, Lf4/f;->f:Ljava/lang/Object;

    .line 56
    .line 57
    iget-wide v10, v1, Lf4/f;->g:J

    .line 58
    .line 59
    iget-wide v12, v1, Lf4/f;->h:J

    .line 60
    .line 61
    move-object v4, v2

    .line 62
    invoke-virtual/range {v3 .. v13}, Ld4/a0$a;->u(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, v0, Li4/p;->D:Z

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    iget-wide v1, v0, Li4/p;->P:J

    .line 70
    .line 71
    invoke-virtual {p0, v1, v2}, Li4/p;->c(J)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, v0, Li4/p;->c:Li4/p$b;

    .line 76
    .line 77
    invoke-interface {v1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public X(Lf4/f;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v13, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Li4/p;->N(Lf4/f;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Li4/i;

    .line 15
    .line 16
    invoke-virtual {v3}, Li4/i;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    instance-of v3, v13, Lx4/a0;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v3, v13

    .line 27
    check-cast v3, Lx4/a0;

    .line 28
    .line 29
    iget v3, v3, Lx4/a0;->d:I

    .line 30
    .line 31
    const/16 v4, 0x19a

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    const/16 v4, 0x194

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    :cond_0
    sget-object v1, Lx4/e0;->d:Lx4/e0$c;

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lf4/f;->b()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    new-instance v5, Ld4/n;

    .line 47
    .line 48
    iget-wide v6, v1, Lf4/f;->a:J

    .line 49
    .line 50
    iget-object v8, v1, Lf4/f;->b:Lx4/n;

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lf4/f;->f()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v18

    .line 56
    invoke-virtual/range {p1 .. p1}, Lf4/f;->e()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v19

    .line 60
    move-object v14, v5

    .line 61
    move-wide v15, v6

    .line 62
    move-object/from16 v17, v8

    .line 63
    .line 64
    move-wide/from16 v20, p2

    .line 65
    .line 66
    move-wide/from16 v22, p4

    .line 67
    .line 68
    move-wide/from16 v24, v3

    .line 69
    .line 70
    invoke-direct/range {v14 .. v25}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Ld4/q;

    .line 74
    .line 75
    iget v7, v1, Lf4/f;->c:I

    .line 76
    .line 77
    iget v8, v0, Li4/p;->b:I

    .line 78
    .line 79
    iget-object v9, v1, Lf4/f;->d:Lb3/x1;

    .line 80
    .line 81
    iget v10, v1, Lf4/f;->e:I

    .line 82
    .line 83
    iget-object v11, v1, Lf4/f;->f:Ljava/lang/Object;

    .line 84
    .line 85
    iget-wide v14, v1, Lf4/f;->g:J

    .line 86
    .line 87
    invoke-static {v14, v15}, Ly4/q0;->X0(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v26

    .line 91
    iget-wide v14, v1, Lf4/f;->h:J

    .line 92
    .line 93
    invoke-static {v14, v15}, Ly4/q0;->X0(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v28

    .line 97
    move-object/from16 v20, v6

    .line 98
    .line 99
    move/from16 v21, v7

    .line 100
    .line 101
    move/from16 v22, v8

    .line 102
    .line 103
    move-object/from16 v23, v9

    .line 104
    .line 105
    move/from16 v24, v10

    .line 106
    .line 107
    move-object/from16 v25, v11

    .line 108
    .line 109
    invoke-direct/range {v20 .. v29}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lx4/d0$c;

    .line 113
    .line 114
    move/from16 v8, p7

    .line 115
    .line 116
    invoke-direct {v7, v5, v6, v13, v8}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 117
    .line 118
    .line 119
    iget-object v6, v0, Li4/p;->i:Lx4/d0;

    .line 120
    .line 121
    iget-object v8, v0, Li4/p;->d:Li4/f;

    .line 122
    .line 123
    invoke-virtual {v8}, Li4/f;->k()Lw4/y;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Lw4/g0;->c(Lw4/y;)Lx4/d0$a;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v6, v8, v7}, Lx4/d0;->b(Lx4/d0$a;Lx4/d0$c;)Lx4/d0$b;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const/4 v8, 0x0

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    iget v9, v6, Lx4/d0$b;->a:I

    .line 139
    .line 140
    const/4 v10, 0x2

    .line 141
    if-ne v9, v10, :cond_2

    .line 142
    .line 143
    iget-object v9, v0, Li4/p;->d:Li4/f;

    .line 144
    .line 145
    iget-wide v10, v6, Lx4/d0$b;->b:J

    .line 146
    .line 147
    invoke-virtual {v9, v1, v10, v11}, Li4/f;->m(Lf4/f;J)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    move v15, v6

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    move v15, v8

    .line 154
    :goto_0
    const/4 v6, 0x1

    .line 155
    if-eqz v15, :cond_6

    .line 156
    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    const-wide/16 v9, 0x0

    .line 160
    .line 161
    cmp-long v2, v3, v9

    .line 162
    .line 163
    if-nez v2, :cond_5

    .line 164
    .line 165
    iget-object v2, v0, Li4/p;->n:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int/2addr v3, v6

    .line 172
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Li4/i;

    .line 177
    .line 178
    if-ne v2, v1, :cond_3

    .line 179
    .line 180
    move v8, v6

    .line 181
    :cond_3
    invoke-static {v8}, Ly4/a;->f(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Li4/p;->n:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_4

    .line 191
    .line 192
    iget-wide v2, v0, Li4/p;->P:J

    .line 193
    .line 194
    iput-wide v2, v0, Li4/p;->Q:J

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object v2, v0, Li4/p;->n:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {v2}, Lo6/t;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Li4/i;

    .line 204
    .line 205
    invoke-virtual {v2}, Li4/i;->o()V

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_1
    sget-object v2, Lx4/e0;->f:Lx4/e0$c;

    .line 209
    .line 210
    :goto_2
    move-object/from16 v16, v2

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    iget-object v2, v0, Li4/p;->i:Lx4/d0;

    .line 214
    .line 215
    invoke-interface {v2, v7}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    cmp-long v4, v2, v9

    .line 225
    .line 226
    if-eqz v4, :cond_7

    .line 227
    .line 228
    invoke-static {v8, v2, v3}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_2

    .line 233
    :cond_7
    sget-object v2, Lx4/e0;->g:Lx4/e0$c;

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lx4/e0$c;->c()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    xor-int/lit8 v17, v2, 0x1

    .line 241
    .line 242
    iget-object v2, v0, Li4/p;->k:Ld4/a0$a;

    .line 243
    .line 244
    iget v4, v1, Lf4/f;->c:I

    .line 245
    .line 246
    iget v6, v0, Li4/p;->b:I

    .line 247
    .line 248
    iget-object v7, v1, Lf4/f;->d:Lb3/x1;

    .line 249
    .line 250
    iget v8, v1, Lf4/f;->e:I

    .line 251
    .line 252
    iget-object v9, v1, Lf4/f;->f:Ljava/lang/Object;

    .line 253
    .line 254
    iget-wide v10, v1, Lf4/f;->g:J

    .line 255
    .line 256
    iget-wide v12, v1, Lf4/f;->h:J

    .line 257
    .line 258
    move-object v3, v5

    .line 259
    move v5, v6

    .line 260
    move-object v6, v7

    .line 261
    move v7, v8

    .line 262
    move-object v8, v9

    .line 263
    move-wide v9, v10

    .line 264
    move-wide v11, v12

    .line 265
    move-object/from16 v13, p6

    .line 266
    .line 267
    move/from16 v14, v17

    .line 268
    .line 269
    invoke-virtual/range {v2 .. v14}, Ld4/a0$a;->w(Ld4/n;IILb3/x1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 270
    .line 271
    .line 272
    if-eqz v17, :cond_8

    .line 273
    .line 274
    const/4 v2, 0x0

    .line 275
    iput-object v2, v0, Li4/p;->u:Lf4/f;

    .line 276
    .line 277
    iget-object v2, v0, Li4/p;->i:Lx4/d0;

    .line 278
    .line 279
    iget-wide v3, v1, Lf4/f;->a:J

    .line 280
    .line 281
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 282
    .line 283
    .line 284
    :cond_8
    if-eqz v15, :cond_a

    .line 285
    .line 286
    iget-boolean v1, v0, Li4/p;->D:Z

    .line 287
    .line 288
    if-nez v1, :cond_9

    .line 289
    .line 290
    iget-wide v1, v0, Li4/p;->P:J

    .line 291
    .line 292
    invoke-virtual {v0, v1, v2}, Li4/p;->c(J)Z

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_9
    iget-object v1, v0, Li4/p;->c:Li4/p$b;

    .line 297
    .line 298
    invoke-interface {v1, v0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 299
    .line 300
    .line 301
    :cond_a
    :goto_4
    return-object v16
.end method

.method public Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/p;->x:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Z(Landroid/net/Uri;Lx4/d0$c;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li4/f;->o(Landroid/net/Uri;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    iget-object p3, p0, Li4/p;->i:Lx4/d0;

    .line 19
    .line 20
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 21
    .line 22
    invoke-virtual {v0}, Li4/f;->k()Lw4/y;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lw4/g0;->c(Lw4/y;)Lx4/d0$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p3, v0, p2}, Lx4/d0;->b(Lx4/d0$a;Lx4/d0$c;)Lx4/d0$b;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget p3, p2, Lx4/d0$b;->a:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-ne p3, v0, :cond_1

    .line 40
    .line 41
    iget-wide p2, p2, Lx4/d0$b;->b:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-wide p2, v2

    .line 45
    :goto_0
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3}, Li4/f;->q(Landroid/net/Uri;J)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    cmp-long p1, p2, v2

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :goto_1
    return v1
.end method

.method public a(II)Lg3/b0;
    .locals 3

    .line 1
    sget-object v0, Li4/p;->Y:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Li4/p;->K(II)Lg3/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Li4/p;->v:[Li4/p$d;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Li4/p;->w:[I

    .line 25
    .line 26
    aget v2, v2, v0

    .line 27
    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    aget-object v0, v1, v0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_1
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-boolean v0, p0, Li4/p;->U:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {p1, p2}, Li4/p;->B(II)Lg3/j;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_3
    invoke-direct {p0, p1, p2}, Li4/p;->C(II)Ld4/l0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_4
    const/4 p1, 0x5

    .line 53
    if-ne p2, p1, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Li4/p;->z:Lg3/b0;

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    new-instance p1, Li4/p$c;

    .line 60
    .line 61
    iget p2, p0, Li4/p;->l:I

    .line 62
    .line 63
    invoke-direct {p1, v0, p2}, Li4/p$c;-><init>(Lg3/b0;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Li4/p;->z:Lg3/b0;

    .line 67
    .line 68
    :cond_5
    iget-object p1, p0, Li4/p;->z:Lg3/b0;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_6
    return-object v0
.end method

.method public a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v0}, Lo6/t;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Li4/i;

    .line 17
    .line 18
    iget-object v1, p0, Li4/p;->d:Li4/f;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Li4/f;->c(Li4/i;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Li4/i;->v()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x2

    .line 32
    if-ne v1, v0, :cond_2

    .line 33
    .line 34
    iget-boolean v0, p0, Li4/p;->T:Z

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 39
    .line 40
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 47
    .line 48
    invoke-virtual {v0}, Lx4/e0;->f()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-direct {p0}, Li4/p;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Li4/p;->Q:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Li4/p;->T:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Li4/p;->J()Li4/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v0, v0, Lf4/f;->h:J

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method public c(J)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Li4/p;->T:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_a

    .line 7
    .line 8
    iget-object v1, v0, Li4/p;->j:Lx4/e0;

    .line 9
    .line 10
    invoke-virtual {v1}, Lx4/e0;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_a

    .line 15
    .line 16
    iget-object v1, v0, Li4/p;->j:Lx4/e0;

    .line 17
    .line 18
    invoke-virtual {v1}, Lx4/e0;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    invoke-direct/range {p0 .. p0}, Li4/p;->O()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-wide v3, v0, Li4/p;->Q:J

    .line 37
    .line 38
    iget-object v5, v0, Li4/p;->v:[Li4/p$d;

    .line 39
    .line 40
    array-length v6, v5

    .line 41
    move v7, v2

    .line 42
    :goto_0
    if-ge v7, v6, :cond_3

    .line 43
    .line 44
    aget-object v8, v5, v7

    .line 45
    .line 46
    iget-wide v9, v0, Li4/p;->Q:J

    .line 47
    .line 48
    invoke-virtual {v8, v9, v10}, Ld4/l0;->b0(J)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, v0, Li4/p;->o:Ljava/util/List;

    .line 55
    .line 56
    invoke-direct/range {p0 .. p0}, Li4/p;->J()Li4/i;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Li4/i;->h()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    iget-wide v3, v3, Lf4/f;->h:J

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-wide v4, v0, Li4/p;->P:J

    .line 70
    .line 71
    iget-wide v6, v3, Lf4/f;->g:J

    .line 72
    .line 73
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    :cond_3
    :goto_1
    move-object v10, v1

    .line 78
    move-wide v8, v3

    .line 79
    iget-object v1, v0, Li4/p;->m:Li4/f$b;

    .line 80
    .line 81
    invoke-virtual {v1}, Li4/f$b;->a()V

    .line 82
    .line 83
    .line 84
    iget-object v5, v0, Li4/p;->d:Li4/f;

    .line 85
    .line 86
    iget-boolean v1, v0, Li4/p;->D:Z

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v11, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    move v11, v3

    .line 101
    :goto_3
    iget-object v12, v0, Li4/p;->m:Li4/f$b;

    .line 102
    .line 103
    move-wide/from16 v6, p1

    .line 104
    .line 105
    invoke-virtual/range {v5 .. v12}, Li4/f;->e(JJLjava/util/List;ZLi4/f$b;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Li4/p;->m:Li4/f$b;

    .line 109
    .line 110
    iget-boolean v4, v1, Li4/f$b;->b:Z

    .line 111
    .line 112
    iget-object v5, v1, Li4/f$b;->a:Lf4/f;

    .line 113
    .line 114
    iget-object v1, v1, Li4/f$b;->c:Landroid/net/Uri;

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    iput-wide v1, v0, Li4/p;->Q:J

    .line 124
    .line 125
    iput-boolean v3, v0, Li4/p;->T:Z

    .line 126
    .line 127
    return v3

    .line 128
    :cond_6
    if-nez v5, :cond_8

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iget-object v3, v0, Li4/p;->c:Li4/p$b;

    .line 133
    .line 134
    invoke-interface {v3, v1}, Li4/p$b;->j(Landroid/net/Uri;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return v2

    .line 138
    :cond_8
    invoke-static {v5}, Li4/p;->N(Lf4/f;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    move-object v1, v5

    .line 145
    check-cast v1, Li4/i;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Li4/p;->M(Li4/i;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    iput-object v5, v0, Li4/p;->u:Lf4/f;

    .line 151
    .line 152
    iget-object v1, v0, Li4/p;->j:Lx4/e0;

    .line 153
    .line 154
    iget-object v2, v0, Li4/p;->i:Lx4/d0;

    .line 155
    .line 156
    iget v4, v5, Lf4/f;->c:I

    .line 157
    .line 158
    invoke-interface {v2, v4}, Lx4/d0;->d(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v5, v0, v2}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v10

    .line 166
    iget-object v12, v0, Li4/p;->k:Ld4/a0$a;

    .line 167
    .line 168
    new-instance v13, Ld4/n;

    .line 169
    .line 170
    iget-wide v7, v5, Lf4/f;->a:J

    .line 171
    .line 172
    iget-object v9, v5, Lf4/f;->b:Lx4/n;

    .line 173
    .line 174
    move-object v6, v13

    .line 175
    invoke-direct/range {v6 .. v11}, Ld4/n;-><init>(JLx4/n;J)V

    .line 176
    .line 177
    .line 178
    iget v14, v5, Lf4/f;->c:I

    .line 179
    .line 180
    iget v15, v0, Li4/p;->b:I

    .line 181
    .line 182
    iget-object v1, v5, Lf4/f;->d:Lb3/x1;

    .line 183
    .line 184
    iget v2, v5, Lf4/f;->e:I

    .line 185
    .line 186
    iget-object v4, v5, Lf4/f;->f:Ljava/lang/Object;

    .line 187
    .line 188
    iget-wide v6, v5, Lf4/f;->g:J

    .line 189
    .line 190
    iget-wide v8, v5, Lf4/f;->h:J

    .line 191
    .line 192
    move-object/from16 v16, v1

    .line 193
    .line 194
    move/from16 v17, v2

    .line 195
    .line 196
    move-object/from16 v18, v4

    .line 197
    .line 198
    move-wide/from16 v19, v6

    .line 199
    .line 200
    move-wide/from16 v21, v8

    .line 201
    .line 202
    invoke-virtual/range {v12 .. v22}, Ld4/a0$a;->A(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 203
    .line 204
    .line 205
    return v3

    .line 206
    :cond_a
    :goto_4
    return v2
.end method

.method public varargs c0([Ld4/s0;I[I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Li4/p;->D([Ld4/s0;)Ld4/u0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Li4/p;->I:Ld4/u0;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Li4/p;->J:Ljava/util/Set;

    .line 13
    .line 14
    array-length p1, p3

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    .line 18
    aget v1, p3, v0

    .line 19
    .line 20
    iget-object v2, p0, Li4/p;->J:Ljava/util/Set;

    .line 21
    .line 22
    iget-object v3, p0, Li4/p;->I:Ld4/u0;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ld4/u0;->b(I)Ld4/s0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput p2, p0, Li4/p;->L:I

    .line 35
    .line 36
    iget-object p1, p0, Li4/p;->r:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object p2, p0, Li4/p;->c:Li4/p$b;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance p3, Li4/m;

    .line 44
    .line 45
    invoke-direct {p3, p2}, Li4/m;-><init>(Li4/p$b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Li4/p;->k0()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public d()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Li4/p;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-direct {p0}, Li4/p;->O()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Li4/p;->Q:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, Li4/p;->P:J

    .line 18
    .line 19
    invoke-direct {p0}, Li4/p;->J()Li4/i;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Li4/i;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v2, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-le v2, v3, :cond_3

    .line 38
    .line 39
    iget-object v2, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/lit8 v3, v3, -0x2

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Li4/i;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-wide v2, v2, Lf4/f;->h:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    :cond_4
    iget-boolean v2, p0, Li4/p;->C:Z

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    iget-object v2, p0, Li4/p;->v:[Li4/p$d;

    .line 68
    .line 69
    array-length v3, v2

    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_1
    if-ge v4, v3, :cond_5

    .line 72
    .line 73
    aget-object v5, v2, v4

    .line 74
    .line 75
    invoke-virtual {v5}, Ld4/l0;->z()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    return-wide v0
.end method

.method public d0(ILb3/y1;Le3/g;I)I
    .locals 11

    .line 1
    invoke-direct {p0}, Li4/p;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    move v0, v2

    .line 19
    :goto_0
    iget-object v3, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v3, v3, -0x1

    .line 26
    .line 27
    if-ge v0, v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Li4/i;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Li4/p;->H(Li4/i;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v3, v2, v0}, Ly4/q0;->L0(Ljava/util/List;II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Li4/i;

    .line 58
    .line 59
    iget-object v10, v0, Lf4/f;->d:Lb3/x1;

    .line 60
    .line 61
    iget-object v3, p0, Li4/p;->G:Lb3/x1;

    .line 62
    .line 63
    invoke-virtual {v10, v3}, Lb3/x1;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Li4/p;->k:Ld4/a0$a;

    .line 70
    .line 71
    iget v4, p0, Li4/p;->b:I

    .line 72
    .line 73
    iget v6, v0, Lf4/f;->e:I

    .line 74
    .line 75
    iget-object v7, v0, Lf4/f;->f:Ljava/lang/Object;

    .line 76
    .line 77
    iget-wide v8, v0, Lf4/f;->g:J

    .line 78
    .line 79
    move-object v5, v10

    .line 80
    invoke-virtual/range {v3 .. v9}, Ld4/a0$a;->i(ILb3/x1;ILjava/lang/Object;J)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iput-object v10, p0, Li4/p;->G:Lb3/x1;

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Li4/i;

    .line 100
    .line 101
    invoke-virtual {v0}, Li4/i;->q()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    return v1

    .line 108
    :cond_4
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 109
    .line 110
    aget-object v0, v0, p1

    .line 111
    .line 112
    iget-boolean v1, p0, Li4/p;->T:Z

    .line 113
    .line 114
    invoke-virtual {v0, p2, p3, p4, v1}, Ld4/l0;->S(Lb3/y1;Le3/g;IZ)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    const/4 p4, -0x5

    .line 119
    if-ne p3, p4, :cond_8

    .line 120
    .line 121
    iget-object p4, p2, Lb3/y1;->b:Lb3/x1;

    .line 122
    .line 123
    invoke-static {p4}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    check-cast p4, Lb3/x1;

    .line 128
    .line 129
    iget v0, p0, Li4/p;->B:I

    .line 130
    .line 131
    if-ne p1, v0, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 134
    .line 135
    aget-object p1, v0, p1

    .line 136
    .line 137
    invoke-virtual {p1}, Ld4/l0;->Q()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    :goto_1
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ge v2, v0, :cond_5

    .line 148
    .line 149
    iget-object v0, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Li4/i;

    .line 156
    .line 157
    iget v0, v0, Li4/i;->k:I

    .line 158
    .line 159
    if-eq v0, p1, :cond_5

    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    iget-object p1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-ge v2, p1, :cond_6

    .line 171
    .line 172
    iget-object p1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Li4/i;

    .line 179
    .line 180
    iget-object p1, p1, Lf4/f;->d:Lb3/x1;

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iget-object p1, p0, Li4/p;->F:Lb3/x1;

    .line 184
    .line 185
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lb3/x1;

    .line 190
    .line 191
    :goto_2
    invoke-virtual {p4, p1}, Lb3/x1;->j(Lb3/x1;)Lb3/x1;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    :cond_7
    iput-object p4, p2, Lb3/y1;->b:Lb3/x1;

    .line 196
    .line 197
    :cond_8
    return p3
.end method

.method public e(JLb3/x3;)J
    .locals 1

    .line 1
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Li4/f;->b(JLb3/x3;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public e0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li4/p;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ld4/l0;->R()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lx4/e0;->m(Lx4/e0$f;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Li4/p;->r:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Li4/p;->H:Z

    .line 32
    .line 33
    iget-object v0, p0, Li4/p;->s:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public f(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-direct {p0}, Li4/p;->O()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Li4/p;->u:Lf4/f;

    .line 25
    .line 26
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 30
    .line 31
    iget-object v1, p0, Li4/p;->u:Lf4/f;

    .line 32
    .line 33
    iget-object v2, p0, Li4/p;->o:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, v1, v2}, Li4/f;->v(JLf4/f;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Li4/p;->j:Lx4/e0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lx4/e0;->f()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Li4/p;->o:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    if-lez v0, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Li4/p;->d:Li4/f;

    .line 56
    .line 57
    iget-object v2, p0, Li4/p;->o:Ljava/util/List;

    .line 58
    .line 59
    add-int/lit8 v3, v0, -0x1

    .line 60
    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Li4/i;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Li4/f;->c(Li4/i;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x2

    .line 72
    if-ne v1, v2, :cond_3

    .line 73
    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Li4/p;->o:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ge v0, v1, :cond_4

    .line 84
    .line 85
    invoke-direct {p0, v0}, Li4/p;->F(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 89
    .line 90
    iget-object v1, p0, Li4/p;->o:Ljava/util/List;

    .line 91
    .line 92
    invoke-virtual {v0, p1, p2, v1}, Li4/f;->h(JLjava/util/List;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget-object p2, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-ge p1, p2, :cond_5

    .line 103
    .line 104
    invoke-direct {p0, p1}, Li4/p;->F(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ld4/l0;->T()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public bridge synthetic h(Lx4/e0$e;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 0

    .line 1
    check-cast p1, Lf4/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Li4/p;->X(Lf4/f;JJLjava/io/IOException;I)Lx4/e0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h0(JZ)Z
    .locals 3

    .line 1
    iput-wide p1, p0, Li4/p;->P:J

    .line 2
    .line 3
    invoke-direct {p0}, Li4/p;->O()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Li4/p;->Q:J

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Li4/p;->C:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Li4/p;->g0(J)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iput-wide p1, p0, Li4/p;->Q:J

    .line 28
    .line 29
    iput-boolean v2, p0, Li4/p;->T:Z

    .line 30
    .line 31
    iget-object p1, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Li4/p;->j:Lx4/e0;

    .line 37
    .line 38
    invoke-virtual {p1}, Lx4/e0;->j()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-boolean p1, p0, Li4/p;->C:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Li4/p;->v:[Li4/p$d;

    .line 49
    .line 50
    array-length p2, p1

    .line 51
    :goto_0
    if-ge v2, p2, :cond_2

    .line 52
    .line 53
    aget-object p3, p1, v2

    .line 54
    .line 55
    invoke-virtual {p3}, Ld4/l0;->r()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Li4/p;->j:Lx4/e0;

    .line 62
    .line 63
    invoke-virtual {p1}, Lx4/e0;->f()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object p1, p0, Li4/p;->j:Lx4/e0;

    .line 68
    .line 69
    invoke-virtual {p1}, Lx4/e0;->g()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Li4/p;->f0()V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v1
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Li4/p;->T()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Li4/p;->T:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Li4/p;->D:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public i0([Lw4/y;[Z[Ld4/m0;[ZJZ)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v12, p5

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Li4/p;->w()V

    .line 10
    .line 11
    .line 12
    iget v3, v0, Li4/p;->E:I

    .line 13
    .line 14
    const/4 v14, 0x0

    .line 15
    move v4, v14

    .line 16
    :goto_0
    array-length v5, v1

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v15, 0x1

    .line 19
    if-ge v4, v5, :cond_2

    .line 20
    .line 21
    aget-object v5, v2, v4

    .line 22
    .line 23
    check-cast v5, Li4/l;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    aget-object v7, v1, v4

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    aget-boolean v7, p2, v4

    .line 32
    .line 33
    if-nez v7, :cond_1

    .line 34
    .line 35
    :cond_0
    iget v7, v0, Li4/p;->E:I

    .line 36
    .line 37
    sub-int/2addr v7, v15

    .line 38
    iput v7, v0, Li4/p;->E:I

    .line 39
    .line 40
    invoke-virtual {v5}, Li4/l;->d()V

    .line 41
    .line 42
    .line 43
    aput-object v6, v2, v4

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-nez p7, :cond_5

    .line 49
    .line 50
    iget-boolean v4, v0, Li4/p;->S:Z

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-wide v3, v0, Li4/p;->P:J

    .line 58
    .line 59
    cmp-long v3, v12, v3

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v3, v14

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    :goto_1
    move v3, v15

    .line 67
    :goto_2
    iget-object v4, v0, Li4/p;->d:Li4/f;

    .line 68
    .line 69
    invoke-virtual {v4}, Li4/f;->k()Lw4/y;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move/from16 v16, v3

    .line 74
    .line 75
    move-object v11, v4

    .line 76
    move v3, v14

    .line 77
    :goto_3
    array-length v5, v1

    .line 78
    if-ge v3, v5, :cond_a

    .line 79
    .line 80
    aget-object v5, v1, v3

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    iget-object v7, v0, Li4/p;->I:Ld4/u0;

    .line 86
    .line 87
    invoke-interface {v5}, Lw4/b0;->a()Ld4/s0;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7, v8}, Ld4/u0;->c(Ld4/s0;)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget v8, v0, Li4/p;->L:I

    .line 96
    .line 97
    if-ne v7, v8, :cond_7

    .line 98
    .line 99
    iget-object v8, v0, Li4/p;->d:Li4/f;

    .line 100
    .line 101
    invoke-virtual {v8, v5}, Li4/f;->u(Lw4/y;)V

    .line 102
    .line 103
    .line 104
    move-object v11, v5

    .line 105
    :cond_7
    aget-object v5, v2, v3

    .line 106
    .line 107
    if-nez v5, :cond_9

    .line 108
    .line 109
    iget v5, v0, Li4/p;->E:I

    .line 110
    .line 111
    add-int/2addr v5, v15

    .line 112
    iput v5, v0, Li4/p;->E:I

    .line 113
    .line 114
    new-instance v5, Li4/l;

    .line 115
    .line 116
    invoke-direct {v5, v0, v7}, Li4/l;-><init>(Li4/p;I)V

    .line 117
    .line 118
    .line 119
    aput-object v5, v2, v3

    .line 120
    .line 121
    aput-boolean v15, p4, v3

    .line 122
    .line 123
    iget-object v8, v0, Li4/p;->K:[I

    .line 124
    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    invoke-virtual {v5}, Li4/l;->b()V

    .line 128
    .line 129
    .line 130
    if-nez v16, :cond_9

    .line 131
    .line 132
    iget-object v5, v0, Li4/p;->v:[Li4/p$d;

    .line 133
    .line 134
    iget-object v8, v0, Li4/p;->K:[I

    .line 135
    .line 136
    aget v7, v8, v7

    .line 137
    .line 138
    aget-object v5, v5, v7

    .line 139
    .line 140
    invoke-virtual {v5, v12, v13, v15}, Ld4/l0;->Z(JZ)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-nez v7, :cond_8

    .line 145
    .line 146
    invoke-virtual {v5}, Ld4/l0;->C()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    move v5, v15

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    move v5, v14

    .line 155
    :goto_4
    move/from16 v16, v5

    .line 156
    .line 157
    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_a
    iget v1, v0, Li4/p;->E:I

    .line 161
    .line 162
    if-nez v1, :cond_d

    .line 163
    .line 164
    iget-object v1, v0, Li4/p;->d:Li4/f;

    .line 165
    .line 166
    invoke-virtual {v1}, Li4/f;->r()V

    .line 167
    .line 168
    .line 169
    iput-object v6, v0, Li4/p;->G:Lb3/x1;

    .line 170
    .line 171
    iput-boolean v15, v0, Li4/p;->R:Z

    .line 172
    .line 173
    iget-object v1, v0, Li4/p;->n:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Li4/p;->j:Lx4/e0;

    .line 179
    .line 180
    invoke-virtual {v1}, Lx4/e0;->j()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_c

    .line 185
    .line 186
    iget-boolean v1, v0, Li4/p;->C:Z

    .line 187
    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    iget-object v1, v0, Li4/p;->v:[Li4/p$d;

    .line 191
    .line 192
    array-length v3, v1

    .line 193
    :goto_6
    if-ge v14, v3, :cond_b

    .line 194
    .line 195
    aget-object v4, v1, v14

    .line 196
    .line 197
    invoke-virtual {v4}, Ld4/l0;->r()V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v14, v14, 0x1

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    iget-object v1, v0, Li4/p;->j:Lx4/e0;

    .line 204
    .line 205
    invoke-virtual {v1}, Lx4/e0;->f()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_b

    .line 209
    .line 210
    :cond_c
    invoke-direct/range {p0 .. p0}, Li4/p;->f0()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_b

    .line 214
    .line 215
    :cond_d
    iget-object v1, v0, Li4/p;->n:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_11

    .line 222
    .line 223
    invoke-static {v11, v4}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_11

    .line 228
    .line 229
    iget-boolean v1, v0, Li4/p;->S:Z

    .line 230
    .line 231
    if-nez v1, :cond_10

    .line 232
    .line 233
    const-wide/16 v3, 0x0

    .line 234
    .line 235
    cmp-long v1, v12, v3

    .line 236
    .line 237
    if-gez v1, :cond_e

    .line 238
    .line 239
    neg-long v3, v12

    .line 240
    :cond_e
    move-wide v6, v3

    .line 241
    invoke-direct/range {p0 .. p0}, Li4/p;->J()Li4/i;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v3, v0, Li4/p;->d:Li4/f;

    .line 246
    .line 247
    invoke-virtual {v3, v1, v12, v13}, Li4/f;->a(Li4/i;J)[Lf4/o;

    .line 248
    .line 249
    .line 250
    move-result-object v17

    .line 251
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    iget-object v10, v0, Li4/p;->o:Ljava/util/List;

    .line 257
    .line 258
    move-object v3, v11

    .line 259
    move-wide/from16 v4, p5

    .line 260
    .line 261
    move-object/from16 v18, v11

    .line 262
    .line 263
    move-object/from16 v11, v17

    .line 264
    .line 265
    invoke-interface/range {v3 .. v11}, Lw4/y;->g(JJJLjava/util/List;[Lf4/o;)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v0, Li4/p;->d:Li4/f;

    .line 269
    .line 270
    invoke-virtual {v3}, Li4/f;->j()Ld4/s0;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    iget-object v1, v1, Lf4/f;->d:Lb3/x1;

    .line 275
    .line 276
    invoke-virtual {v3, v1}, Ld4/s0;->c(Lb3/x1;)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-interface/range {v18 .. v18}, Lw4/y;->l()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eq v3, v1, :cond_f

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_f
    move v1, v14

    .line 288
    goto :goto_8

    .line 289
    :cond_10
    :goto_7
    move v1, v15

    .line 290
    :goto_8
    if-eqz v1, :cond_11

    .line 291
    .line 292
    iput-boolean v15, v0, Li4/p;->R:Z

    .line 293
    .line 294
    move v1, v15

    .line 295
    move/from16 v16, v1

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_11
    move/from16 v1, p7

    .line 299
    .line 300
    :goto_9
    if-eqz v16, :cond_13

    .line 301
    .line 302
    invoke-virtual {v0, v12, v13, v1}, Li4/p;->h0(JZ)Z

    .line 303
    .line 304
    .line 305
    :goto_a
    array-length v1, v2

    .line 306
    if-ge v14, v1, :cond_13

    .line 307
    .line 308
    aget-object v1, v2, v14

    .line 309
    .line 310
    if-eqz v1, :cond_12

    .line 311
    .line 312
    aput-boolean v15, p4, v14

    .line 313
    .line 314
    :cond_12
    add-int/lit8 v14, v14, 0x1

    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_13
    :goto_b
    invoke-direct {v0, v2}, Li4/p;->p0([Ld4/m0;)V

    .line 318
    .line 319
    .line 320
    iput-boolean v15, v0, Li4/p;->S:Z

    .line 321
    .line 322
    return v16
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li4/p;->j:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Lb3/x1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li4/p;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Li4/p;->p:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j0(Lf3/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li4/p;->W:Lf3/m;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Li4/p;->W:Lf3/m;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Li4/p;->v:[Li4/p$d;

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Li4/p;->O:[Z

    .line 18
    .line 19
    aget-boolean v2, v2, v0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    aget-object v1, v1, v0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Li4/p$d;->i0(Lf3/m;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public l(Lg3/z;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/p;->d:Li4/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li4/f;->t(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m0(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Li4/p;->V:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Li4/p;->V:J

    .line 8
    .line 9
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {v3, p1, p2}, Ld4/l0;->a0(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li4/p;->U:Z

    .line 3
    .line 4
    iget-object v0, p0, Li4/p;->r:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Li4/p;->q:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n0(IJ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Li4/p;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    iget-boolean v1, p0, Li4/p;->T:Z

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, v1}, Ld4/l0;->E(JZ)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object p3, p0, Li4/p;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p3, v1}, Lo6/t;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Li4/i;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Li4/i;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ld4/l0;->C()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p3, p1}, Li4/i;->m(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sub-int/2addr p1, v1

    .line 45
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    :cond_1
    invoke-virtual {v0, p2}, Ld4/l0;->e0(I)V

    .line 50
    .line 51
    .line 52
    return p2
.end method

.method public bridge synthetic o(Lx4/e0$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lf4/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Li4/p;->W(Lf4/f;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o0(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Li4/p;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li4/p;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Li4/p;->K:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    iget-object v0, p0, Li4/p;->N:[Z

    .line 14
    .line 15
    aget-boolean v0, v0, p1

    .line 16
    .line 17
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Li4/p;->N:[Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-boolean v1, v0, p1

    .line 24
    .line 25
    return-void
.end method

.method public q()Ld4/u0;
    .locals 1

    .line 1
    invoke-direct {p0}, Li4/p;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li4/p;->I:Ld4/u0;

    .line 5
    .line 6
    return-object v0
.end method

.method public r(JZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li4/p;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Li4/p;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Li4/p;->v:[Li4/p$d;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Li4/p;->v:[Li4/p$d;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    iget-object v3, p0, Li4/p;->N:[Z

    .line 23
    .line 24
    aget-boolean v3, v3, v1

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p3, v3}, Ld4/l0;->q(JZZ)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic s(Lx4/e0$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lf4/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Li4/p;->V(Lf4/f;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Li4/p;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Li4/p;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Li4/p;->K:[I

    .line 10
    .line 11
    aget v0, v0, p1

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, -0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Li4/p;->J:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v1, p0, Li4/p;->I:Ld4/u0;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ld4/u0;->b(I)Ld4/s0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 v2, -0x3

    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    iget-object p1, p0, Li4/p;->N:[Z

    .line 34
    .line 35
    aget-boolean v1, p1, v0

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    aput-boolean v1, p1, v0

    .line 42
    .line 43
    return v0
.end method

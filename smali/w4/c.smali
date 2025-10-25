.class public abstract Lw4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/y;


# instance fields
.field protected final a:Ld4/s0;

.field protected final b:I

.field protected final c:[I

.field private final d:I

.field private final e:[Lb3/x1;

.field private final f:[J

.field private g:I


# direct methods
.method public varargs constructor <init>(Ld4/s0;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lw4/c;-><init>(Ld4/s0;[II)V

    return-void
.end method

.method public constructor <init>(Ld4/s0;[II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 4
    iput p3, p0, Lw4/c;->d:I

    .line 5
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld4/s0;

    iput-object p3, p0, Lw4/c;->a:Ld4/s0;

    .line 6
    array-length p3, p2

    iput p3, p0, Lw4/c;->b:I

    .line 7
    new-array p3, p3, [Lb3/x1;

    iput-object p3, p0, Lw4/c;->e:[Lb3/x1;

    move p3, v1

    .line 8
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 9
    iget-object v0, p0, Lw4/c;->e:[Lb3/x1;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Ld4/s0;->b(I)Lb3/x1;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lw4/c;->e:[Lb3/x1;

    new-instance p3, Lw4/b;

    invoke-direct {p3}, Lw4/b;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 11
    iget p2, p0, Lw4/c;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lw4/c;->c:[I

    .line 12
    :goto_2
    iget p2, p0, Lw4/c;->b:I

    if-ge v1, p2, :cond_2

    .line 13
    iget-object p2, p0, Lw4/c;->c:[I

    iget-object p3, p0, Lw4/c;->e:[Lb3/x1;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Ld4/s0;->c(Lb3/x1;)I

    move-result p3

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lw4/c;->f:[J

    return-void
.end method

.method public static synthetic v(Lb3/x1;Lb3/x1;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw4/c;->w(Lb3/x1;Lb3/x1;)I

    move-result p0

    return p0
.end method

.method private static synthetic w(Lb3/x1;Lb3/x1;)I
    .locals 0

    .line 1
    iget p1, p1, Lb3/x1;->h:I

    .line 2
    .line 3
    iget p0, p0, Lb3/x1;->h:I

    .line 4
    .line 5
    sub-int/2addr p1, p0

    .line 6
    return p1
.end method


# virtual methods
.method public final a()Ld4/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/c;->a:Ld4/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(IJ)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lw4/c;->d(IJ)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    iget v5, p0, Lw4/c;->b:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-ge v4, v5, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    if-eq v4, p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v4, v0, v1}, Lw4/c;->d(IJ)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    move v2, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez v2, :cond_2

    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    iget-object v7, p0, Lw4/c;->f:[J

    .line 36
    .line 37
    aget-wide v8, v7, p1

    .line 38
    .line 39
    const-wide v4, 0x7fffffffffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    move-wide v2, p2

    .line 45
    invoke-static/range {v0 .. v5}, Ly4/q0;->b(JJJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    aput-wide p2, v7, p1

    .line 54
    .line 55
    return v6
.end method

.method public d(IJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/c;->f:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    cmp-long p1, v1, p2

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lw4/c;

    .line 20
    .line 21
    iget-object v2, p0, Lw4/c;->a:Ld4/s0;

    .line 22
    .line 23
    iget-object v3, p1, Lw4/c;->a:Ld4/s0;

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lw4/c;->c:[I

    .line 28
    .line 29
    iget-object p1, p1, Lw4/c;->c:[I

    .line 30
    .line 31
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    :goto_1
    return v1
.end method

.method public final h(I)Lb3/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/c;->e:[Lb3/x1;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lw4/c;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lw4/c;->a:Ld4/s0;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lw4/c;->c:[I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lw4/c;->g:I

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lw4/c;->g:I

    .line 23
    .line 24
    return v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/c;->c:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public k(JLjava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/c;->c:[I

    .line 2
    .line 3
    invoke-interface {p0}, Lw4/y;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    return v0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/c;->c:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final m(Lb3/x1;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lw4/c;->b:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lw4/c;->e:[Lb3/x1;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public final n()Lb3/x1;
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/c;->e:[Lb3/x1;

    .line 2
    .line 3
    invoke-interface {p0}, Lw4/y;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    return-object v0
.end method

.method public p(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final u(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lw4/c;->b:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lw4/c;->c:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.class public abstract Lo6/q;
.super Lo6/o;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/q$a;,
        Lo6/q$c;,
        Lo6/q$b;
    }
.end annotation


# static fields
.field private static final b:Lo6/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo6/q$b;

    .line 2
    .line 3
    sget-object v1, Lo6/j0;->e:Lo6/q;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lo6/q$b;-><init>(Lo6/q;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lo6/q;->b:Lo6/s0;

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D()Lo6/q;
    .locals 1

    .line 1
    sget-object v0, Lo6/j0;->e:Lo6/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public static F(Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static G(Ljava/lang/Object;Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static varargs L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lo6/q;
    .locals 5

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const v2, 0x7ffffff3

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v4

    .line 14
    :goto_0
    const-string v2, "the total number of elements must fit in an int"

    .line 15
    .line 16
    invoke-static {v1, v2}, Ln6/m;->e(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p0, v1, v4

    .line 26
    .line 27
    aput-object p1, v1, v3

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    aput-object p2, v1, v3

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    aput-object p3, v1, v3

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    aput-object p4, v1, v3

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    aput-object p5, v1, v3

    .line 40
    .line 41
    const/4 v3, 0x6

    .line 42
    aput-object p6, v1, v3

    .line 43
    .line 44
    const/4 v3, 0x7

    .line 45
    aput-object p7, v1, v3

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    aput-object p8, v1, v3

    .line 50
    .line 51
    const/16 v3, 0x9

    .line 52
    .line 53
    aput-object p9, v1, v3

    .line 54
    .line 55
    const/16 v3, 0xa

    .line 56
    .line 57
    aput-object p10, v1, v3

    .line 58
    .line 59
    const/16 v3, 0xb

    .line 60
    .line 61
    aput-object p11, v1, v3

    .line 62
    .line 63
    array-length v3, v0

    .line 64
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method static o([Ljava/lang/Object;)Lo6/q;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p0, v0}, Lo6/q;->p([Ljava/lang/Object;I)Lo6/q;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static p([Ljava/lang/Object;I)Lo6/q;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lo6/j0;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lo6/j0;-><init>([Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static r()Lo6/q$a;
    .locals 1

    .line 1
    new-instance v0, Lo6/q$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo6/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static varargs s([Ljava/lang/Object;)Lo6/q;
    .locals 0

    .line 1
    invoke-static {p0}, Lo6/g0;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lo6/q;->o([Ljava/lang/Object;)Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static t(Ljava/util/Collection;)Lo6/q;
    .locals 1

    .line 1
    instance-of v0, p0, Lo6/o;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lo6/o;

    .line 6
    .line 7
    invoke-virtual {p0}, Lo6/o;->d()Lo6/q;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lo6/o;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lo6/o;->toArray()[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lo6/q;->o([Ljava/lang/Object;)Lo6/q;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    return-object p0

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static y([Ljava/lang/Object;)Lo6/q;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p0}, Lo6/q;->s([Ljava/lang/Object;)Lo6/q;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Lo6/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/q;->B()Lo6/s0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public B()Lo6/s0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo6/q;->C(I)Lo6/s0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public C(I)Lo6/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Ln6/m;->k(II)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lo6/q;->b:Lo6/s0;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance v0, Lo6/q$b;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lo6/q$b;-><init>(Lo6/q;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public M(II)Lo6/q;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2, v0}, Ln6/m;->m(III)V

    .line 6
    .line 7
    .line 8
    sub-int v0, p2, p1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo6/q;->N(II)Lo6/q;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method N(II)Lo6/q;
    .locals 1

    .line 1
    new-instance v0, Lo6/q$c;

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lo6/q$c;-><init>(Lo6/q;II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo6/q;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public final d()Lo6/q;
    .locals 0

    .line 1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo6/w;->c(Ljava/util/List;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method g([Ljava/lang/Object;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    add-int v2, p2, v1

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    aput-object v3, p1, v2

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/2addr p2, v0

    .line 20
    return p2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v1, v1, 0x1f

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v1, v3

    .line 20
    not-int v1, v1

    .line 21
    not-int v1, v1

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lo6/w;->d(Ljava/util/List;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :goto_0
    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/q;->A()Lo6/r0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lo6/w;->f(Ljava/util/List;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :goto_0
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/q;->B()Lo6/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lo6/q;->C(I)Lo6/s0;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo6/q;->M(II)Lo6/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

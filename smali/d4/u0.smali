.class public final Ld4/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# static fields
.field public static final d:Ld4/u0;

.field private static final e:Ljava/lang/String;

.field public static final f:Lb3/r$a;


# instance fields
.field public final a:I

.field private final b:Lo6/q;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld4/u0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ld4/s0;

    .line 5
    .line 6
    invoke-direct {v0, v2}, Ld4/u0;-><init>([Ld4/s0;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ld4/u0;->d:Ld4/u0;

    .line 10
    .line 11
    invoke-static {v1}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ld4/u0;->e:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ld4/t0;

    .line 18
    .line 19
    invoke-direct {v0}, Ld4/t0;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Ld4/u0;->f:Lb3/r$a;

    .line 23
    .line 24
    return-void
.end method

.method public varargs constructor <init>([Ld4/s0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lo6/q;->y([Ljava/lang/Object;)Lo6/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ld4/u0;->b:Lo6/q;

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    iput p1, p0, Ld4/u0;->a:I

    .line 12
    .line 13
    invoke-direct {p0}, Ld4/u0;->e()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Ld4/u0;
    .locals 0

    .line 1
    invoke-static {p0}, Ld4/u0;->d(Landroid/os/Bundle;)Ld4/u0;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/os/Bundle;)Ld4/u0;
    .locals 3

    .line 1
    sget-object v0, Ld4/u0;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ld4/u0;

    .line 11
    .line 12
    new-array v0, v0, [Ld4/s0;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ld4/u0;-><init>([Ld4/s0;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v1, Ld4/u0;

    .line 19
    .line 20
    sget-object v2, Ld4/s0;->h:Lb3/r$a;

    .line 21
    .line 22
    invoke-static {v2, p0}, Ly4/c;->b(Lb3/r$a;Ljava/util/List;)Lo6/q;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-array v0, v0, [Ld4/s0;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lo6/o;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, [Ld4/s0;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Ld4/u0;-><init>([Ld4/s0;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method private e()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ld4/u0;->b:Lo6/q;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x1

    .line 11
    .line 12
    move v2, v1

    .line 13
    :goto_1
    iget-object v3, p0, Ld4/u0;->b:Lo6/q;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Ld4/u0;->b:Lo6/q;

    .line 22
    .line 23
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ld4/s0;

    .line 28
    .line 29
    iget-object v4, p0, Ld4/u0;->b:Lo6/q;

    .line 30
    .line 31
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ld4/s0;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "TrackGroupArray"

    .line 49
    .line 50
    const-string v5, ""

    .line 51
    .line 52
    invoke-static {v4, v5, v3}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public b(I)Ld4/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/u0;->b:Lo6/q;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ld4/s0;

    .line 8
    .line 9
    return-object p1
.end method

.method public c(Ld4/s0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/u0;->b:Lo6/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo6/q;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    :goto_0
    return p1
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
    const-class v2, Ld4/u0;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Ld4/u0;

    .line 18
    .line 19
    iget v2, p0, Ld4/u0;->a:I

    .line 20
    .line 21
    iget v3, p1, Ld4/u0;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Ld4/u0;->b:Lo6/q;

    .line 26
    .line 27
    iget-object p1, p1, Ld4/u0;->b:Lo6/q;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lo6/q;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ld4/u0;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld4/u0;->b:Lo6/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Lo6/q;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Ld4/u0;->c:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Ld4/u0;->c:I

    .line 14
    .line 15
    return v0
.end method

.class public abstract Landroidx/datastore/preferences/protobuf/j;
.super Landroidx/datastore/preferences/protobuf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/j$d;,
        Landroidx/datastore/preferences/protobuf/j$b;,
        Landroidx/datastore/preferences/protobuf/j$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Z


# instance fields
.field a:Landroidx/datastore/preferences/protobuf/k;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/datastore/preferences/protobuf/j;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->B()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/j;->d:Z

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j;-><init>()V

    return-void
.end method

.method public static A(Landroidx/datastore/preferences/protobuf/p0;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/p0;->b()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->y(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static B(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I
    .locals 0

    .line 1
    check-cast p0, Landroidx/datastore/preferences/protobuf/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/a;->f(Landroidx/datastore/preferences/protobuf/e1;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->y(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method static C(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static D(ILandroidx/datastore/preferences/protobuf/g;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/j;->P(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->f(ILandroidx/datastore/preferences/protobuf/g;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static E(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->F(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static F(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method

.method public static G(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->H(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static H(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static I(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->J(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static J(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->T(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static K(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->L(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static L(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->U(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->S(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static M(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->N(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static N(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/p1;->c(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/p1$d; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->b:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static O(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/q1;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static P(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static Q(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static R(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->S(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static S(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static T(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static U(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static Y(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/j;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/j$d;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/j;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public static c(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->d(Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static d(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static e([B)I
    .locals 0

    .line 1
    array-length p0, p0

    .line 2
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->y(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static f(ILandroidx/datastore/preferences/protobuf/g;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->g(Landroidx/datastore/preferences/protobuf/g;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static g(Landroidx/datastore/preferences/protobuf/g;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/g;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->y(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static h(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->i(D)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static i(D)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static j(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->k(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static k(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static l(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->m(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static m(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method

.method public static n(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->o(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static o(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static p(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->q(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static q(F)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    return p0
.end method

.method static r(ILandroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x2

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->t(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static s(Landroidx/datastore/preferences/protobuf/p0;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/p0;->b()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static t(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I
    .locals 0

    .line 1
    check-cast p0, Landroidx/datastore/preferences/protobuf/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/a;->f(Landroidx/datastore/preferences/protobuf/e1;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static u(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->v(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static v(I)I
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->S(J)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static w(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->x(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static x(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->S(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static y(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method static z(ILandroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->B(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method


# virtual methods
.method public abstract A0(ILandroidx/datastore/preferences/protobuf/p0;)V
.end method

.method public abstract B0(ILandroidx/datastore/preferences/protobuf/g;)V
.end method

.method public final C0(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->k0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final D0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->l0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final E0(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->m0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final F0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->n0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final G0(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/j;->T(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->N0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final H0(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->T(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->O0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I0(IJ)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Landroidx/datastore/preferences/protobuf/j;->U(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->P0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final J0(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/j;->U(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->Q0(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract K0(ILjava/lang/String;)V
.end method

.method public abstract L0(Ljava/lang/String;)V
.end method

.method public abstract M0(II)V
.end method

.method public abstract N0(II)V
.end method

.method public abstract O0(I)V
.end method

.method public abstract P0(IJ)V
.end method

.method public abstract Q0(J)V
.end method

.method public abstract V()V
.end method

.method final W(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/p1$d;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/j;->c:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 4
    .line 5
    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Landroidx/datastore/preferences/protobuf/y;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    array-length p2, p1

    .line 17
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->O0(I)V

    .line 18
    .line 19
    .line 20
    array-length p2, p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/j;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Landroidx/datastore/preferences/protobuf/j$c;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroidx/datastore/preferences/protobuf/j$c;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract Z(B)V
.end method

.method public abstract a([BII)V
.end method

.method public abstract a0(IZ)V
.end method

.method public final b0(Z)V
    .locals 0

    .line 1
    int-to-byte p1, p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->Z(B)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final c0([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Landroidx/datastore/preferences/protobuf/j;->d0([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method abstract d0([BII)V
.end method

.method public abstract e0(ILandroidx/datastore/preferences/protobuf/g;)V
.end method

.method public abstract f0(Landroidx/datastore/preferences/protobuf/g;)V
.end method

.method public final g0(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->m0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h0(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->n0(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i0(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->u0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->v0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract k0(II)V
.end method

.method public abstract l0(I)V
.end method

.method public abstract m0(IJ)V
.end method

.method public abstract n0(J)V
.end method

.method public final o0(IF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->k0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p0(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->l0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q0(ILandroidx/datastore/preferences/protobuf/p0;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->s0(Landroidx/datastore/preferences/protobuf/p0;)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->M0(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method final r0(ILandroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j;->M0(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->t0(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->M0(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s0(Landroidx/datastore/preferences/protobuf/p0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/p0;->d(Landroidx/datastore/preferences/protobuf/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final t0(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j;->a:Landroidx/datastore/preferences/protobuf/k;

    .line 2
    .line 3
    invoke-interface {p2, p1, v0}, Landroidx/datastore/preferences/protobuf/e1;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract u0(II)V
.end method

.method public abstract v0(I)V
.end method

.method public final w0(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->P0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->Q0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method abstract y0(ILandroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/e1;)V
.end method

.method public abstract z0(Landroidx/datastore/preferences/protobuf/p0;)V
.end method

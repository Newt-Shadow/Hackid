.class public Lc3/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/n1$a;
    }
.end annotation


# instance fields
.field private final a:Ly4/d;

.field private final b:Lb3/g4$b;

.field private final c:Lb3/g4$d;

.field private final d:Lc3/n1$a;

.field private final e:Landroid/util/SparseArray;

.field private f:Ly4/q;

.field private g:Lb3/m3;

.field private h:Ly4/n;

.field private i:Z


# direct methods
.method public constructor <init>(Ly4/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ly4/d;

    .line 9
    .line 10
    iput-object v0, p0, Lc3/n1;->a:Ly4/d;

    .line 11
    .line 12
    new-instance v0, Ly4/q;

    .line 13
    .line 14
    invoke-static {}, Ly4/q0;->Q()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lc3/k0;

    .line 19
    .line 20
    invoke-direct {v2}, Lc3/k0;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Ly4/q;-><init>(Landroid/os/Looper;Ly4/d;Ly4/q$b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lc3/n1;->f:Ly4/q;

    .line 27
    .line 28
    new-instance p1, Lb3/g4$b;

    .line 29
    .line 30
    invoke-direct {p1}, Lb3/g4$b;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lc3/n1;->b:Lb3/g4$b;

    .line 34
    .line 35
    new-instance v0, Lb3/g4$d;

    .line 36
    .line 37
    invoke-direct {v0}, Lb3/g4$d;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lc3/n1;->c:Lb3/g4$d;

    .line 41
    .line 42
    new-instance v0, Lc3/n1$a;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lc3/n1$a;-><init>(Lb3/g4$b;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 48
    .line 49
    new-instance p1, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lc3/n1;->e:Landroid/util/SparseArray;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic A0(Lc3/b$a;ZILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->M1(Lc3/b$a;ZILc3/b;)V

    return-void
.end method

.method private static synthetic A1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->i(Lc3/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->O1(Lc3/b$a;ILc3/b;)V

    return-void
.end method

.method private static synthetic B1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->u0(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C0(Lc3/b$a;Lb3/l4;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->a2(Lc3/b$a;Lb3/l4;Lc3/b;)V

    return-void
.end method

.method private static synthetic C1(Lc3/b$a;IJLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lc3/b;->j(Lc3/b$a;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D0(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->j1(Lc3/b$a;Le3/e;Lc3/b;)V

    return-void
.end method

.method private static synthetic D1(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->y(Lc3/b$a;Z)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lc3/b;->A(Lc3/b$a;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic E0(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->P1(Lc3/b$a;ILc3/b;)V

    return-void
.end method

.method private static synthetic E1(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->c0(Lc3/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lc3/b$a;ZILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->S1(Lc3/b$a;ZILc3/b;)V

    return-void
.end method

.method private static synthetic F1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->J(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G0(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->I1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V

    return-void
.end method

.method private static synthetic G1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->o0(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H0(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->k1(Lc3/b$a;Le3/e;Lc3/b;)V

    return-void
.end method

.method private static synthetic H1(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;ZLc3/b;)V
    .locals 6

    .line 1
    move-object v0, p5

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Lc3/b;->U(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic I0(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->Z1(Lc3/b$a;ILc3/b;)V

    return-void
.end method

.method private static synthetic I1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->d0(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J0(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->D1(Lc3/b$a;ZLc3/b;)V

    return-void
.end method

.method private static synthetic J1(Lc3/b$a;Lb3/f2;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->R(Lc3/b$a;Lb3/f2;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->g1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V

    return-void
.end method

.method public static synthetic K0(Lc3/n1;Lb3/m3;Lc3/b;Ly4/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc3/n1;->m2(Lb3/m3;Lc3/b;Ly4/l;)V

    return-void
.end method

.method private static synthetic K1(Lc3/b$a;Lb3/k2;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->b(Lc3/b$a;Lb3/k2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lc3/b$a;IZLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->u1(Lc3/b$a;IZLc3/b;)V

    return-void
.end method

.method public static synthetic L0(Lc3/b;Ly4/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->d1(Lc3/b;Ly4/l;)V

    return-void
.end method

.method private static synthetic L1(Lc3/b$a;Lt3/a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->k0(Lc3/b$a;Lt3/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->E1(Lc3/b$a;ZLc3/b;)V

    return-void
.end method

.method public static synthetic M0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->y1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic M1(Lc3/b$a;ZILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->s(Lc3/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->i2(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V

    return-void
.end method

.method public static synthetic N0(Lc3/b$a;JLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->m1(Lc3/b$a;JLc3/b;)V

    return-void
.end method

.method private static synthetic N1(Lc3/b$a;Lb3/l3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->v(Lc3/b$a;Lb3/l3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lc3/n1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc3/n1;->n2()V

    return-void
.end method

.method public static synthetic O0(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->g2(Lc3/b$a;Le3/e;Lc3/b;)V

    return-void
.end method

.method private static synthetic O1(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->l0(Lc3/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lc3/b$a;Lz4/a0;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->j2(Lc3/b$a;Lz4/a0;Lc3/b;)V

    return-void
.end method

.method public static synthetic P0(Lc3/b$a;Ljava/lang/String;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->i1(Lc3/b$a;Ljava/lang/String;Lc3/b;)V

    return-void
.end method

.method private static synthetic P1(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->S(Lc3/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->V1(Lc3/b$a;ILc3/b;)V

    return-void
.end method

.method public static synthetic Q0(Lc3/b$a;Ljava/lang/Object;JLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lc3/n1;->U1(Lc3/b$a;Ljava/lang/Object;JLc3/b;)V

    return-void
.end method

.method private static synthetic Q1(Lc3/b$a;Lb3/i3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->E(Lc3/b$a;Lb3/i3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lc3/b$a;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->v1(Lc3/b$a;Ld4/q;Lc3/b;)V

    return-void
.end method

.method public static synthetic R0(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->A1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V

    return-void
.end method

.method private static synthetic R1(Lc3/b$a;Lb3/i3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->o(Lc3/b$a;Lb3/i3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lc3/b$a;JILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lc3/n1;->h2(Lc3/b$a;JILc3/b;)V

    return-void
.end method

.method public static synthetic S0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->e1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic S1(Lc3/b$a;ZILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->K(Lc3/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->f2(Lc3/b$a;Le3/e;Lc3/b;)V

    return-void
.end method

.method public static synthetic T0(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lc3/n1;->d2(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V

    return-void
.end method

.method private static synthetic T1(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1}, Lc3/b;->w(Lc3/b$a;I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, p0, p2, p3, p1}, Lc3/b;->s0(Lc3/b$a;Lb3/m3$e;Lb3/m3$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic U(Lc3/b$a;Lb3/y;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->t1(Lc3/b$a;Lb3/y;Lc3/b;)V

    return-void
.end method

.method public static synthetic U0(Lc3/b$a;Lb3/i3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->R1(Lc3/b$a;Lb3/i3;Lc3/b;)V

    return-void
.end method

.method private static synthetic U1(Lc3/b$a;Ljava/lang/Object;JLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lc3/b;->I(Lc3/b$a;Ljava/lang/Object;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lc3/b$a;FLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->k2(Lc3/b$a;FLc3/b;)V

    return-void
.end method

.method private static synthetic V1(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->d(Lc3/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->X1(Lc3/b$a;ZLc3/b;)V

    return-void
.end method

.method private static synthetic W1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->k(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->B1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private X0(Ld4/t$b;)Lc3/b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/n1;->g:Lb3/m3;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lc3/n1$a;->f(Ld4/t$b;)Lb3/g4;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p0, Lc3/n1;->b:Lb3/g4$b;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Lb3/g4$b;->c:I

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0, p1}, Lc3/n1;->W0(Lb3/g4;ILd4/t$b;)Lc3/b$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    :goto_1
    iget-object p1, p0, Lc3/n1;->g:Lb3/m3;

    .line 38
    .line 39
    invoke-interface {p1}, Lb3/m3;->z()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v1, p0, Lc3/n1;->g:Lb3/m3;

    .line 44
    .line 45
    invoke-interface {v1}, Lb3/m3;->F()Lb3/g4;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lb3/g4;->t()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ge p1, v2, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/4 v2, 0x0

    .line 58
    :goto_2
    if-eqz v2, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    sget-object v1, Lb3/g4;->a:Lb3/g4;

    .line 62
    .line 63
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lc3/n1;->W0(Lb3/g4;ILd4/t$b;)Lc3/b$a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method private static synthetic X1(Lc3/b$a;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->F(Lc3/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Lc3/b$a;Ljava/util/List;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->r1(Lc3/b$a;Ljava/util/List;Lc3/b;)V

    return-void
.end method

.method private Y0()Lc3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/n1$a;->e()Ld4/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic Y1(Lc3/b$a;IILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->x0(Lc3/b$a;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lc3/b$a;Lb3/l3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->N1(Lc3/b$a;Lb3/l3;Lc3/b;)V

    return-void
.end method

.method private Z0(ILd4/t$b;)Lc3/b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/n1;->g:Lb3/m3;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 11
    .line 12
    invoke-virtual {v2, p2}, Lc3/n1$a;->f(Ld4/t$b;)Lb3/g4;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p2}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object v0, Lb3/g4;->a:Lb3/g4;

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1, p2}, Lc3/n1;->W0(Lb3/g4;ILd4/t$b;)Lc3/b$a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    return-object p1

    .line 34
    :cond_2
    iget-object p2, p0, Lc3/n1;->g:Lb3/m3;

    .line 35
    .line 36
    invoke-interface {p2}, Lb3/m3;->F()Lb3/g4;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lb3/g4;->t()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge p1, v2, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v0, v1

    .line 48
    :goto_2
    if-eqz v0, :cond_4

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    sget-object p2, Lb3/g4;->a:Lb3/g4;

    .line 52
    .line 53
    :goto_3
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p2, p1, v0}, Lc3/n1;->W0(Lb3/g4;ILd4/t$b;)Lc3/b$a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method private static synthetic Z1(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->l(Lc3/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lc3/b$a;Lb3/f2;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->J1(Lc3/b$a;Lb3/f2;ILc3/b;)V

    return-void
.end method

.method private a1()Lc3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/n1$a;->g()Ld4/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic a2(Lc3/b$a;Lb3/l4;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->L(Lc3/b$a;Lb3/l4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lc3/b$a;Lb3/i3;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->Q1(Lc3/b$a;Lb3/i3;Lc3/b;)V

    return-void
.end method

.method private b1()Lc3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/n1$a;->h()Ld4/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic b2(Lc3/b$a;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->q0(Lc3/b$a;Ld4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->c2(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V

    return-void
.end method

.method private c1(Lb3/i3;)Lc3/b$a;
    .locals 1

    .line 1
    instance-of v0, p1, Lb3/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lb3/a0;

    .line 6
    .line 7
    iget-object p1, p1, Lb3/a0;->n:Ld4/s;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ld4/t$b;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ld4/t$b;-><init>(Ld4/s;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private static synthetic c2(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->j0(Lc3/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->G1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V

    return-void
.end method

.method private static synthetic d1(Lc3/b;Ly4/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic d2(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lc3/b;->p(Lc3/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lc3/b;->a0(Lc3/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lc3/b;->r0(Lc3/b$a;ILjava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic e0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->l2(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic e1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->y0(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e2(Lc3/b$a;Ljava/lang/String;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->T(Lc3/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lc3/b$a;IILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->Y1(Lc3/b$a;IILc3/b;)V

    return-void
.end method

.method private static synthetic f1(Lc3/b$a;Ld3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->c(Lc3/b$a;Ld3/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic f2(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->N(Lc3/b$a;Le3/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lc3/b;->e(Lc3/b$a;ILe3/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g0(Lc3/b$a;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->b2(Lc3/b$a;Ld4/q;Lc3/b;)V

    return-void
.end method

.method private static synthetic g1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->n(Lc3/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic g2(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->M(Lc3/b$a;Le3/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lc3/b;->r(Lc3/b$a;ILe3/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic h0(Lc3/b$a;Lt3/a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->L1(Lc3/b$a;Lt3/a;Lc3/b;)V

    return-void
.end method

.method private static synthetic h1(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lc3/b;->G(Lc3/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lc3/b;->O(Lc3/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lc3/b;->r0(Lc3/b$a;ILjava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static synthetic h2(Lc3/b$a;JILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lc3/b;->i0(Lc3/b$a;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->z1(Lc3/b$a;ILc3/b;)V

    return-void
.end method

.method private static synthetic i1(Lc3/b$a;Ljava/lang/String;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->W(Lc3/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic i2(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lc3/b;->D(Lc3/b$a;Lb3/x1;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->f(Lc3/b$a;Lb3/x1;Le3/i;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    invoke-interface {p3, p0, p2, p1}, Lc3/b;->g(Lc3/b$a;ILb3/x1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic j0(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->l1(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V

    return-void
.end method

.method private static synthetic j1(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->g0(Lc3/b$a;Le3/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lc3/b;->e(Lc3/b$a;ILe3/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic j2(Lc3/b$a;Lz4/a0;Lc3/b;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->h0(Lc3/b$a;Lz4/a0;)V

    .line 2
    .line 3
    .line 4
    iget v2, p1, Lz4/a0;->a:I

    .line 5
    .line 6
    iget v3, p1, Lz4/a0;->b:I

    .line 7
    .line 8
    iget v4, p1, Lz4/a0;->c:I

    .line 9
    .line 10
    iget v5, p1, Lz4/a0;->d:F

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    move-object v1, p0

    .line 14
    invoke-interface/range {v0 .. v5}, Lc3/b;->Z(Lc3/b$a;IIIF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic k0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->w1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic k1(Lc3/b$a;Le3/e;Lc3/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->t(Lc3/b$a;Le3/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lc3/b;->r(Lc3/b$a;ILe3/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic k2(Lc3/b$a;FLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->e0(Lc3/b$a;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->W1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic l1(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lc3/b;->a(Lc3/b$a;Lb3/x1;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->u(Lc3/b$a;Lb3/x1;Le3/i;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-interface {p3, p0, p2, p1}, Lc3/b;->g(Lc3/b$a;ILb3/x1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic l2(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->H(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lc3/n1;->F1(Lc3/b$a;Ld4/n;Ld4/q;Lc3/b;)V

    return-void
.end method

.method private static synthetic m1(Lc3/b$a;JLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->m0(Lc3/b$a;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m2(Lb3/m3;Lc3/b;Ly4/l;)V
    .locals 2

    .line 1
    new-instance v0, Lc3/b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lc3/n1;->e:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {v0, p3, v1}, Lc3/b$b;-><init>(Ly4/l;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1, v0}, Lc3/b;->n0(Lb3/m3;Lc3/b$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic n0(Lc3/b$a;IJJLc3/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lc3/n1;->q1(Lc3/b$a;IJJLc3/b;)V

    return-void
.end method

.method private static synthetic n1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->w0(Lc3/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/d1;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lc3/d1;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x404

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lc3/n1;->f:Ly4/q;

    .line 16
    .line 17
    invoke-virtual {v0}, Ly4/q;->j()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic o0(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lc3/n1;->T1(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;Lc3/b;)V

    return-void
.end method

.method private static synthetic o1(Lc3/b$a;IJJLc3/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lc3/b;->X(Lc3/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p0(Lc3/b$a;Ld3/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->f1(Lc3/b$a;Ld3/e;Lc3/b;)V

    return-void
.end method

.method private static synthetic p1(Lc3/b$a;Lb3/m3$b;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->C(Lc3/b$a;Lb3/m3$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;ZLc3/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lc3/n1;->H1(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;ZLc3/b;)V

    return-void
.end method

.method private static synthetic q1(Lc3/b$a;IJJLc3/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lc3/b;->Y(Lc3/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r0(Lc3/b$a;Lm4/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->s1(Lc3/b$a;Lm4/e;Lc3/b;)V

    return-void
.end method

.method private static synthetic r1(Lc3/b$a;Ljava/util/List;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->B(Lc3/b$a;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lc3/b$a;Lb3/k2;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->K1(Lc3/b$a;Lb3/k2;Lc3/b;)V

    return-void
.end method

.method private static synthetic s1(Lc3/b$a;Lm4/e;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->f0(Lc3/b$a;Lm4/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t0(Lc3/b$a;IJLc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lc3/n1;->C1(Lc3/b$a;IJLc3/b;)V

    return-void
.end method

.method private static synthetic t1(Lc3/b$a;Lb3/y;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->x(Lc3/b$a;Lb3/y;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->n1(Lc3/b$a;Ljava/lang/Exception;Lc3/b;)V

    return-void
.end method

.method private static synthetic u1(Lc3/b$a;IZLc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lc3/b;->q(Lc3/b$a;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lc3/n1;->h1(Lc3/b$a;Ljava/lang/String;JJLc3/b;)V

    return-void
.end method

.method private static synthetic v1(Lc3/b$a;Ld4/q;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lc3/b;->z(Lc3/b$a;Ld4/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lc3/b$a;Lb3/m3$b;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->p1(Lc3/b$a;Lb3/m3$b;Lc3/b;)V

    return-void
.end method

.method private static synthetic w1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->Q(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x0(Lc3/b$a;Ljava/lang/String;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc3/n1;->e2(Lc3/b$a;Ljava/lang/String;Lc3/b;)V

    return-void
.end method

.method private static synthetic x1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->P(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y0(Lc3/b$a;IJJLc3/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lc3/n1;->o1(Lc3/b$a;IJJLc3/b;)V

    return-void
.end method

.method private static synthetic y1(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lc3/b;->b0(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z0(Lc3/b$a;Lc3/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc3/n1;->x1(Lc3/b$a;Lc3/b;)V

    return-void
.end method

.method private static synthetic z1(Lc3/b$a;ILc3/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Lc3/b;->p0(Lc3/b$a;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lc3/b;->h(Lc3/b$a;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final A(ILd4/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/g1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lc3/g1;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x401

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final B(ILd4/t$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/s0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lc3/s0;-><init>(Lc3/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x400

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final C(ILd4/t$b;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/r0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lc3/r0;-><init>(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e8

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final D(ILd4/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/p;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lc3/p;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x403

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final E(ILd4/t$b;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/u;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lc3/u;-><init>(Lc3/b$a;Ld4/q;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ec

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final F(ILd4/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/e1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lc3/e1;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x402

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final H(Ljava/util/List;Ld4/t$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    iget-object v1, p0, Lc3/n1;->g:Lb3/m3;

    .line 4
    .line 5
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lb3/m3;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lc3/n1$a;->k(Ljava/util/List;Ld4/t$b;Lb3/m3;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public I(Lb3/m3;Landroid/os/Looper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/n1;->g:Lb3/m3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 6
    .line 7
    invoke-static {v0}, Lc3/n1$a;->a(Lc3/n1$a;)Lo6/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lb3/m3;

    .line 29
    .line 30
    iput-object v0, p0, Lc3/n1;->g:Lb3/m3;

    .line 31
    .line 32
    iget-object v0, p0, Lc3/n1;->a:Ly4/d;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, p2, v1}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lc3/n1;->h:Ly4/n;

    .line 40
    .line 41
    iget-object v0, p0, Lc3/n1;->f:Ly4/q;

    .line 42
    .line 43
    new-instance v1, Lc3/l;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lc3/l;-><init>(Lc3/n1;Lb3/m3;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, v1}, Ly4/q;->e(Landroid/os/Looper;Ly4/q$b;)Ly4/q;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lc3/n1;->f:Ly4/q;

    .line 53
    .line 54
    return-void
.end method

.method public final J(ILd4/t$b;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/k;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lc3/k;-><init>(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ea

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final V0()Lc3/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/n1$a;->d()Ld4/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lc3/n1;->X0(Ld4/t$b;)Lc3/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected final W0(Lb3/g4;ILd4/t$b;)Lc3/b$a;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lb3/g4;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v6, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v6, p3

    .line 17
    .line 18
    :goto_0
    iget-object v1, v0, Lc3/n1;->a:Ly4/d;

    .line 19
    .line 20
    invoke-interface {v1}, Ly4/d;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 25
    .line 26
    invoke-interface {v1}, Lb3/m3;->F()Lb3/g4;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v4, v1}, Lb3/g4;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v8, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 39
    .line 40
    invoke-interface {v1}, Lb3/m3;->z()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v5, v1, :cond_1

    .line 45
    .line 46
    move v1, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v8

    .line 49
    :goto_1
    const-wide/16 v9, 0x0

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    invoke-virtual {v6}, Ld4/s;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-eqz v11, :cond_3

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 62
    .line 63
    invoke-interface {v1}, Lb3/m3;->y()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v11, v6, Ld4/s;->b:I

    .line 68
    .line 69
    if-ne v1, v11, :cond_2

    .line 70
    .line 71
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 72
    .line 73
    invoke-interface {v1}, Lb3/m3;->n()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v11, v6, Ld4/s;->c:I

    .line 78
    .line 79
    if-ne v1, v11, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v7, v8

    .line 83
    :goto_2
    if-eqz v7, :cond_6

    .line 84
    .line 85
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 86
    .line 87
    invoke-interface {v1}, Lb3/m3;->f()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    if-eqz v1, :cond_4

    .line 93
    .line 94
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 95
    .line 96
    invoke-interface {v1}, Lb3/m3;->r()J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lb3/g4;->u()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iget-object v1, v0, Lc3/n1;->c:Lb3/g4$d;

    .line 109
    .line 110
    invoke-virtual {v4, v5, v1}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lb3/g4$d;->d()J

    .line 115
    .line 116
    .line 117
    move-result-wide v9

    .line 118
    :cond_6
    :goto_3
    move-wide v7, v9

    .line 119
    :goto_4
    iget-object v1, v0, Lc3/n1;->d:Lc3/n1$a;

    .line 120
    .line 121
    invoke-virtual {v1}, Lc3/n1$a;->d()Ld4/t$b;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    new-instance v16, Lc3/b$a;

    .line 126
    .line 127
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 128
    .line 129
    invoke-interface {v1}, Lb3/m3;->F()Lb3/g4;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 134
    .line 135
    invoke-interface {v1}, Lb3/m3;->z()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 140
    .line 141
    invoke-interface {v1}, Lb3/m3;->f()J

    .line 142
    .line 143
    .line 144
    move-result-wide v12

    .line 145
    iget-object v1, v0, Lc3/n1;->g:Lb3/m3;

    .line 146
    .line 147
    invoke-interface {v1}, Lb3/m3;->i()J

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    move-object/from16 v1, v16

    .line 152
    .line 153
    move-object/from16 v4, p1

    .line 154
    .line 155
    move/from16 v5, p2

    .line 156
    .line 157
    invoke-direct/range {v1 .. v15}, Lc3/b$a;-><init>(JLb3/g4;ILd4/t$b;JLb3/g4;ILd4/t$b;JJ)V

    .line 158
    .line 159
    .line 160
    return-object v16
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/t;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/t;-><init>(Lc3/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f6

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/e;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/e;-><init>(Lc3/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fb

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lc3/m1;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lc3/m1;-><init>(Lc3/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f8

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/m;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/m;-><init>(Lc3/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f4

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lc3/j;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lc3/j;-><init>(Lc3/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f0

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Lb3/x1;Le3/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/a0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/a0;-><init>(Lc3/b$a;Lb3/x1;Le3/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f1

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->a1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/x;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lc3/x;-><init>(Lc3/b$a;IJ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Lb3/x1;Le3/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/n0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/n0;-><init>(Lc3/b$a;Lb3/x1;Le3/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final i(Le3/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/g;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/g;-><init>(Lc3/b$a;Le3/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f7

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/a1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lc3/a1;-><init>(Lc3/b$a;Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1a

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Le3/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->a1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/m0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/m0;-><init>(Lc3/b$a;Le3/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f5

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(Le3/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/c0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/c0;-><init>(Lc3/b$a;Le3/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3ef

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/o;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/o;-><init>(Lc3/b$a;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f2

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/l0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/l0;-><init>(Lc3/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x405

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/j1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/j1;-><init>(Lc3/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x406

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final o2(Lc3/b$a;ILy4/q$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n1;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lc3/n1;->f:Ly4/q;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Ly4/q;->k(ILy4/q$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onAudioAttributesChanged(Ld3/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/s;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/s;-><init>(Lc3/b$a;Ld3/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x14

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAvailableCommandsChanged(Lb3/m3$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/e0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/e0;-><init>(Lc3/b$a;Lb3/m3$b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    move-result-object v0

    .line 2
    new-instance v1, Lc3/w0;

    invoke-direct {v1, v0, p1}, Lc3/w0;-><init>(Lc3/b$a;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    return-void
.end method

.method public onCues(Lm4/e;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    move-result-object v0

    .line 4
    new-instance v1, Lc3/h0;

    invoke-direct {v1, v0, p1}, Lc3/h0;-><init>(Lc3/b$a;Lm4/e;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lb3/y;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/n;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/n;-><init>(Lc3/b$a;Lb3/y;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1d

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/f;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/f;-><init>(Lc3/b$a;IZ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1e

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onEvents(Lb3/m3;Lb3/m3$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/p0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/p0;-><init>(Lc3/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/r;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/r;-><init>(Lc3/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x7

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMediaItemTransition(Lb3/f2;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/y;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/y;-><init>(Lc3/b$a;Lb3/f2;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onMediaMetadataChanged(Lb3/k2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/f1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/f1;-><init>(Lc3/b$a;Lb3/k2;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xe

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMetadata(Lt3/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/c;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/c;-><init>(Lc3/b$a;Lt3/a;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1c

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/g0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/g0;-><init>(Lc3/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPlaybackParametersChanged(Lb3/l3;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/q0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/q0;-><init>(Lc3/b$a;Lb3/l3;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/u0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/u0;-><init>(Lc3/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/v;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/v;-><init>(Lc3/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPlayerError(Lb3/i3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc3/n1;->c1(Lb3/i3;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/i;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/i;-><init>(Lc3/b$a;Lb3/i3;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPlayerErrorChanged(Lb3/i3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc3/n1;->c1(Lb3/i3;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/d;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/d;-><init>(Lc3/b$a;Lb3/i3;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/w;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/w;-><init>(Lc3/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPositionDiscontinuity(Lb3/m3$e;Lb3/m3$e;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc3/n1;->i:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lc3/n1;->d:Lc3/n1$a;

    iget-object v1, p0, Lc3/n1;->g:Lb3/m3;

    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/m3;

    invoke-virtual {v0, v1}, Lc3/n1$a;->j(Lb3/m3;)V

    .line 4
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    move-result-object v0

    .line 5
    new-instance v1, Lc3/x0;

    invoke-direct {v1, v0, p3, p1, p2}, Lc3/x0;-><init>(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/d0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/d0;-><init>(Lc3/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/v0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lc3/v0;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p0, v0, v2, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/h1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/h1;-><init>(Lc3/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x17

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/f0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lc3/f0;-><init>(Lc3/b$a;II)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onTimelineChanged(Lb3/g4;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc3/n1;->d:Lc3/n1$a;

    .line 2
    .line 3
    iget-object v0, p0, Lc3/n1;->g:Lb3/m3;

    .line 4
    .line 5
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lb3/m3;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lc3/n1$a;->l(Lb3/m3;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lc3/t0;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lc3/t0;-><init>(Lc3/b$a;I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onTracksChanged(Lb3/l4;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/q;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/q;-><init>(Lc3/b$a;Lb3/l4;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onVideoSizeChanged(Lz4/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/c1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/c1;-><init>(Lc3/b$a;Lz4/a0;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/j0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/j0;-><init>(Lc3/b$a;F)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x16

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final p(Le3/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->a1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/z;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lc3/z;-><init>(Lc3/b$a;Le3/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final q(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lc3/n1;->b1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lc3/z0;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lc3/z0;-><init>(Lc3/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f3

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc3/n1;->a1()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lc3/k1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lc3/k1;-><init>(Lc3/b$a;JI)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/n1;->h:Ly4/n;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly4/n;

    .line 8
    .line 9
    new-instance v1, Lc3/h;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lc3/h;-><init>(Lc3/n1;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ly4/n;->b(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s(ILd4/t$b;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/i0;

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move v5, p6

    .line 13
    invoke-direct/range {v0 .. v5}, Lc3/i0;-><init>(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    const/16 p3, 0x3eb

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final t(ILd4/t$b;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/b0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lc3/b0;-><init>(Lc3/b$a;Ld4/q;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ed

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lc3/n1;->Y0()Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lc3/i1;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lc3/i1;-><init>(Lc3/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3ee

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public v(Lc3/b;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc3/n1;->f:Ly4/q;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ly4/q;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc3/n1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lc3/n1;->V0()Lc3/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lc3/n1;->i:Z

    .line 11
    .line 12
    new-instance v1, Lc3/l1;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lc3/l1;-><init>(Lc3/b$a;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v0, v2, v1}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final x(ILd4/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/b1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lc3/b1;-><init>(Lc3/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x3ff

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final y(ILd4/t$b;Ld4/n;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/y0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lc3/y0;-><init>(Lc3/b$a;Ld4/n;Ld4/q;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e9

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z(ILd4/t$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc3/n1;->Z0(ILd4/t$b;)Lc3/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lc3/o0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lc3/o0;-><init>(Lc3/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3fe

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lc3/n1;->o2(Lc3/b$a;ILy4/q$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

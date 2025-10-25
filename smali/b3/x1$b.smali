.class public final Lb3/x1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lt3/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/util/List;

.field private n:Lf3/m;

.field private o:J

.field private p:I

.field private q:I

.field private r:F

.field private s:I

.field private t:F

.field private u:[B

.field private v:I

.field private w:Lz4/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb3/x1$b;->f:I

    .line 4
    iput v0, p0, Lb3/x1$b;->g:I

    .line 5
    iput v0, p0, Lb3/x1$b;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 6
    iput-wide v1, p0, Lb3/x1$b;->o:J

    .line 7
    iput v0, p0, Lb3/x1$b;->p:I

    .line 8
    iput v0, p0, Lb3/x1$b;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    iput v1, p0, Lb3/x1$b;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lb3/x1$b;->t:F

    .line 11
    iput v0, p0, Lb3/x1$b;->v:I

    .line 12
    iput v0, p0, Lb3/x1$b;->x:I

    .line 13
    iput v0, p0, Lb3/x1$b;->y:I

    .line 14
    iput v0, p0, Lb3/x1$b;->z:I

    .line 15
    iput v0, p0, Lb3/x1$b;->C:I

    .line 16
    iput v0, p0, Lb3/x1$b;->D:I

    .line 17
    iput v0, p0, Lb3/x1$b;->E:I

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lb3/x1$b;->F:I

    return-void
.end method

.method private constructor <init>(Lb3/x1;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lb3/x1;->a:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->a:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lb3/x1;->b:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->b:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lb3/x1;->c:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->c:Ljava/lang/String;

    .line 23
    iget v0, p1, Lb3/x1;->d:I

    iput v0, p0, Lb3/x1$b;->d:I

    .line 24
    iget v0, p1, Lb3/x1;->e:I

    iput v0, p0, Lb3/x1$b;->e:I

    .line 25
    iget v0, p1, Lb3/x1;->f:I

    iput v0, p0, Lb3/x1$b;->f:I

    .line 26
    iget v0, p1, Lb3/x1;->g:I

    iput v0, p0, Lb3/x1$b;->g:I

    .line 27
    iget-object v0, p1, Lb3/x1;->i:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->h:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lb3/x1;->j:Lt3/a;

    iput-object v0, p0, Lb3/x1$b;->i:Lt3/a;

    .line 29
    iget-object v0, p1, Lb3/x1;->k:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->j:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lb3/x1;->l:Ljava/lang/String;

    iput-object v0, p0, Lb3/x1$b;->k:Ljava/lang/String;

    .line 31
    iget v0, p1, Lb3/x1;->m:I

    iput v0, p0, Lb3/x1$b;->l:I

    .line 32
    iget-object v0, p1, Lb3/x1;->n:Ljava/util/List;

    iput-object v0, p0, Lb3/x1$b;->m:Ljava/util/List;

    .line 33
    iget-object v0, p1, Lb3/x1;->o:Lf3/m;

    iput-object v0, p0, Lb3/x1$b;->n:Lf3/m;

    .line 34
    iget-wide v0, p1, Lb3/x1;->p:J

    iput-wide v0, p0, Lb3/x1$b;->o:J

    .line 35
    iget v0, p1, Lb3/x1;->q:I

    iput v0, p0, Lb3/x1$b;->p:I

    .line 36
    iget v0, p1, Lb3/x1;->r:I

    iput v0, p0, Lb3/x1$b;->q:I

    .line 37
    iget v0, p1, Lb3/x1;->s:F

    iput v0, p0, Lb3/x1$b;->r:F

    .line 38
    iget v0, p1, Lb3/x1;->t:I

    iput v0, p0, Lb3/x1$b;->s:I

    .line 39
    iget v0, p1, Lb3/x1;->u:F

    iput v0, p0, Lb3/x1$b;->t:F

    .line 40
    iget-object v0, p1, Lb3/x1;->v:[B

    iput-object v0, p0, Lb3/x1$b;->u:[B

    .line 41
    iget v0, p1, Lb3/x1;->w:I

    iput v0, p0, Lb3/x1$b;->v:I

    .line 42
    iget-object v0, p1, Lb3/x1;->x:Lz4/c;

    iput-object v0, p0, Lb3/x1$b;->w:Lz4/c;

    .line 43
    iget v0, p1, Lb3/x1;->y:I

    iput v0, p0, Lb3/x1$b;->x:I

    .line 44
    iget v0, p1, Lb3/x1;->z:I

    iput v0, p0, Lb3/x1$b;->y:I

    .line 45
    iget v0, p1, Lb3/x1;->A:I

    iput v0, p0, Lb3/x1$b;->z:I

    .line 46
    iget v0, p1, Lb3/x1;->B:I

    iput v0, p0, Lb3/x1$b;->A:I

    .line 47
    iget v0, p1, Lb3/x1;->C:I

    iput v0, p0, Lb3/x1$b;->B:I

    .line 48
    iget v0, p1, Lb3/x1;->D:I

    iput v0, p0, Lb3/x1$b;->C:I

    .line 49
    iget v0, p1, Lb3/x1;->E:I

    iput v0, p0, Lb3/x1$b;->D:I

    .line 50
    iget v0, p1, Lb3/x1;->F:I

    iput v0, p0, Lb3/x1$b;->E:I

    .line 51
    iget p1, p1, Lb3/x1;->G:I

    iput p1, p0, Lb3/x1$b;->F:I

    return-void
.end method

.method synthetic constructor <init>(Lb3/x1;Lb3/x1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/x1$b;-><init>(Lb3/x1;)V

    return-void
.end method

.method static synthetic A(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lb3/x1$b;)Lt3/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->i:Lt3/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lb3/x1$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lb3/x1$b;)Lf3/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->n:Lf3/m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lb3/x1$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/x1$b;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lb3/x1$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->r:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->s:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lb3/x1$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->t:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lb3/x1$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->u:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->v:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lb3/x1$b;)Lz4/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->w:Lz4/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->x:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->z:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->A:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->B:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->C:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lb3/x1$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/x1$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->D:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->E:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lb3/x1$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/x1$b;->F:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public G()Lb3/x1;
    .locals 2

    .line 1
    new-instance v0, Lb3/x1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb3/x1;-><init>(Lb3/x1$b;Lb3/x1$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public H(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->C:I

    .line 2
    .line 3
    return-object p0
.end method

.method public I(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public J(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public K(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public L(Lz4/c;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->w:Lz4/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public M(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public N(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->F:I

    .line 2
    .line 3
    return-object p0
.end method

.method public O(Lf3/m;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->n:Lf3/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public P(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->A:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Q(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->B:I

    .line 2
    .line 3
    return-object p0
.end method

.method public R(F)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->r:F

    .line 2
    .line 3
    return-object p0
.end method

.method public S(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public T(I)Lb3/x1$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lb3/x1$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public U(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public V(Ljava/util/List;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public W(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public X(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Z(Lt3/a;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->i:Lt3/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public a0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->z:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c0(F)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->t:F

    .line 2
    .line 3
    return-object p0
.end method

.method public d0([B)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->u:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public e0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->s:I

    .line 2
    .line 3
    return-object p0
.end method

.method public g0(Ljava/lang/String;)Lb3/x1$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/x1$b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->y:I

    .line 2
    .line 3
    return-object p0
.end method

.method public i0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public j0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k0(J)Lb3/x1$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb3/x1$b;->o:J

    .line 2
    .line 3
    return-object p0
.end method

.method public l0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->D:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->E:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n0(I)Lb3/x1$b;
    .locals 0

    .line 1
    iput p1, p0, Lb3/x1$b;->p:I

    .line 2
    .line 3
    return-object p0
.end method

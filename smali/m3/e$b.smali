.class final Lm3/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lm3/e;


# direct methods
.method private constructor <init>(Lm3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/e$b;->a:Lm3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm3/e;Lm3/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm3/e$b;-><init>(Lm3/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm3/e;->o(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm3/e;->u(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm3/e;->z(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm3/e;->H(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->r(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(IILg3/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->l(IILg3/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lm3/e;->G(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public h(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Lm3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm3/e;->x(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

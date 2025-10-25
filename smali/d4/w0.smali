.class public abstract Ld4/w0;
.super Ld4/f;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/Void;


# instance fields
.field protected final k:Ld4/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method protected constructor <init>(Ld4/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld4/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/w0;->k:Ld4/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final C(Lx4/m0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld4/f;->C(Lx4/m0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld4/w0;->V()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected bridge synthetic G(Ljava/lang/Object;Ld4/t$b;)Ld4/t$b;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ld4/w0;->N(Ljava/lang/Void;Ld4/t$b;)Ld4/t$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic H(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ld4/w0;->P(Ljava/lang/Void;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ld4/w0;->R(Ljava/lang/Void;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic K(Ljava/lang/Object;Ld4/t;Lb3/g4;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ld4/w0;->T(Ljava/lang/Void;Ld4/t;Lb3/g4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract M(Ld4/t$b;)Ld4/t$b;
.end method

.method protected final N(Ljava/lang/Void;Ld4/t$b;)Ld4/t$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Ld4/w0;->M(Ld4/t$b;)Ld4/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected O(J)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method protected final P(Ljava/lang/Void;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Ld4/w0;->O(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method protected Q(I)I
    .locals 0

    .line 1
    return p1
.end method

.method protected final R(Ljava/lang/Void;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Ld4/w0;->Q(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected abstract S(Lb3/g4;)V
.end method

.method protected final T(Ljava/lang/Void;Ld4/t;Lb3/g4;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Ld4/w0;->S(Lb3/g4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected final U()V
    .locals 2

    .line 1
    sget-object v0, Ld4/w0;->l:Ljava/lang/Void;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/w0;->k:Ld4/t;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ld4/f;->L(Ljava/lang/Object;Ld4/t;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected abstract V()V
.end method

.method public j()Lb3/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/w0;->k:Ld4/t;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/t;->j()Lb3/f2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/w0;->k:Ld4/t;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/t;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public n()Lb3/g4;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/w0;->k:Ld4/t;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/t;->n()Lb3/g4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

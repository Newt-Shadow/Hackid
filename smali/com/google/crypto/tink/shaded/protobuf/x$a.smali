.class public abstract Lcom/google/crypto/tink/shaded/protobuf/x$a;
.super Lcom/google/crypto/tink/shaded/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/crypto/tink/shaded/protobuf/x;

.field protected b:Lcom/google/crypto/tink/shaded/protobuf/x;


# direct methods
.method protected constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/a$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->D()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->r()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Default instance must be immutable."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method private static q(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/z0;->a()Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z0;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private r()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->J()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final j()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/a$a;->i(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/i1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public k()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->D()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->E()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 18
    .line 19
    return-object v0
.end method

.method public l()Lcom/google/crypto/tink/shaded/protobuf/x$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->o()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->H()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 14
    .line 15
    return-object v0
.end method

.method protected final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->D()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected n()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->r()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 11
    .line 12
    return-void
.end method

.method public o()Lcom/google/crypto/tink/shaded/protobuf/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(Lcom/google/crypto/tink/shaded/protobuf/x;)Lcom/google/crypto/tink/shaded/protobuf/x$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->o()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->m()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

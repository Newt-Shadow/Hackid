.class public Lt6/h0;
.super Lcom/google/crypto/tink/internal/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/crypto/tink/internal/m;

    .line 3
    .line 4
    new-instance v1, Lt6/h0$a;

    .line 5
    .line 6
    const-class v2, Ls6/a;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Lt6/h0$a;-><init>(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-class v1, Le7/k0;

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/google/crypto/tink/internal/d;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/internal/m;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static m(Z)V
    .locals 1

    .line 1
    new-instance v0, Lt6/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lt6/h0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Ls6/x;->l(Lcom/google/crypto/tink/internal/d;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lt6/k0;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    return-object v0
.end method

.method public f()Lcom/google/crypto/tink/internal/d$a;
    .locals 2

    .line 1
    new-instance v0, Lt6/h0$b;

    .line 2
    .line 3
    const-class v1, Le7/l0;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lt6/h0$b;-><init>(Lt6/h0;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public g()Le7/y$c;
    .locals 1

    .line 1
    sget-object v0, Le7/y$c;->c:Le7/y$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt6/h0;->l(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/k0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j(Lcom/google/crypto/tink/shaded/protobuf/o0;)V
    .locals 0

    .line 1
    check-cast p1, Le7/k0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/h0;->n(Le7/k0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/k0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/k0;->a0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/k0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public n(Le7/k0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le7/k0;->Y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lt6/h0;->k()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lf7/r;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Le7/k0;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 26
    .line 27
    const-string v0, "invalid XChaCha20Poly1305Key: incorrect key length"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

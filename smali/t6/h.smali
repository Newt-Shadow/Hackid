.class public final Lt6/h;
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
    new-instance v1, Lt6/h$a;

    .line 5
    .line 6
    const-class v2, Ls6/a;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Lt6/h$a;-><init>(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-class v1, Le7/i;

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/google/crypto/tink/internal/d;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/internal/m;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic k(IILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lt6/h;->l(IILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static l(IILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;
    .locals 1

    .line 1
    invoke-static {}, Le7/j;->Z()Le7/j$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Le7/j$b;->t(I)Le7/j$b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Le7/k;->Y()Le7/k$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Le7/k$b;->t(I)Le7/k$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Le7/k;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Le7/j$b;->u(Le7/k;)Le7/j$b;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Le7/j;

    .line 32
    .line 33
    new-instance p1, Lcom/google/crypto/tink/internal/d$a$a;

    .line 34
    .line 35
    invoke-direct {p1, p0, p2}, Lcom/google/crypto/tink/internal/d$a$a;-><init>(Ljava/lang/Object;Ls6/l$b;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public static o(Z)V
    .locals 1

    .line 1
    new-instance v0, Lt6/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lt6/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Ls6/x;->l(Lcom/google/crypto/tink/internal/d;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lt6/n;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method

.method public f()Lcom/google/crypto/tink/internal/d$a;
    .locals 2

    .line 1
    new-instance v0, Lt6/h$b;

    .line 2
    .line 3
    const-class v1, Le7/j;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lt6/h$b;-><init>(Lt6/h;Ljava/lang/Class;)V

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
    invoke-virtual {p0, p1}, Lt6/h;->n(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/i;

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
    check-cast p1, Le7/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/h;->p(Le7/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public n(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/i;->c0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public p(Le7/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le7/i;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lt6/h;->m()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lf7/r;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Le7/i;->Y()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lf7/r;->a(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Le7/i;->Z()Le7/k;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Le7/k;->X()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Le7/i;->Z()Le7/k;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Le7/k;->X()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/16 v0, 0x10

    .line 44
    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 49
    .line 50
    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

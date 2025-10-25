.class public final Lt6/u;
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
    new-instance v1, Lt6/u$a;

    .line 5
    .line 6
    const-class v2, Ls6/a;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Lt6/u$a;-><init>(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-class v1, Le7/n;

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/google/crypto/tink/internal/d;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/internal/m;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic k(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/u;->m(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static l()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method private static m(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;
    .locals 1

    .line 1
    invoke-static {}, Le7/o;->X()Le7/o$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Le7/o$b;->t(I)Le7/o$b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Le7/o;

    .line 14
    .line 15
    new-instance v0, Lcom/google/crypto/tink/internal/d$a$a;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/internal/d$a$a;-><init>(Ljava/lang/Object;Ls6/l$b;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static p(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lt6/u;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lt6/u;

    .line 8
    .line 9
    invoke-direct {v0}, Lt6/u;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Ls6/x;->l(Lcom/google/crypto/tink/internal/d;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lt6/x;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object v0
.end method

.method public f()Lcom/google/crypto/tink/internal/d$a;
    .locals 2

    .line 1
    new-instance v0, Lt6/u$b;

    .line 2
    .line 3
    const-class v1, Le7/o;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lt6/u$b;-><init>(Lt6/u;Ljava/lang/Class;)V

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
    invoke-virtual {p0, p1}, Lt6/u;->o(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/n;

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
    check-cast p1, Le7/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/u;->q(Le7/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public o(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/n;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/n;->a0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public q(Le7/n;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le7/n;->Y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lt6/u;->n()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lf7/r;->c(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Le7/n;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

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
    invoke-static {p1}, Lf7/r;->a(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.class Lt6/e$b;
.super Lcom/google/crypto/tink/internal/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/e;->f()Lcom/google/crypto/tink/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt6/e;


# direct methods
.method constructor <init>(Lt6/e;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/e$b;->b:Lt6/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/d$a;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    check-cast p1, Le7/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/e$b;->f(Le7/e;)Le7/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    const/16 v4, 0x10

    .line 13
    .line 14
    sget-object v11, Le7/u;->e:Le7/u;

    .line 15
    .line 16
    sget-object v12, Ls6/l$b;->a:Ls6/l$b;

    .line 17
    .line 18
    move-object v5, v11

    .line 19
    move-object v6, v12

    .line 20
    invoke-static/range {v1 .. v6}, Lt6/e;->k(IIIILe7/u;Ls6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/16 v5, 0x10

    .line 30
    .line 31
    const/16 v6, 0x10

    .line 32
    .line 33
    const/16 v7, 0x20

    .line 34
    .line 35
    const/16 v8, 0x10

    .line 36
    .line 37
    sget-object v1, Ls6/l$b;->c:Ls6/l$b;

    .line 38
    .line 39
    move-object v9, v11

    .line 40
    move-object v10, v1

    .line 41
    invoke-static/range {v5 .. v10}, Lt6/e;->k(IIIILe7/u;Ls6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "AES128_CTR_HMAC_SHA256_RAW"

    .line 46
    .line 47
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/16 v5, 0x20

    .line 51
    .line 52
    const/16 v8, 0x20

    .line 53
    .line 54
    move-object v10, v12

    .line 55
    invoke-static/range {v5 .. v10}, Lt6/e;->k(IIIILe7/u;Ls6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "AES256_CTR_HMAC_SHA256"

    .line 60
    .line 61
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-object v10, v1

    .line 65
    invoke-static/range {v5 .. v10}, Lt6/e;->k(IIIILe7/u;Ls6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt6/e$b;->g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Lcom/google/crypto/tink/shaded/protobuf/o0;)V
    .locals 0

    .line 1
    check-cast p1, Le7/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/e$b;->h(Le7/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Le7/e;)Le7/d;
    .locals 2

    .line 1
    new-instance v0, Lt6/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lt6/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lt6/f;->f()Lcom/google/crypto/tink/internal/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Le7/e;->X()Le7/g;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/d$a;->a(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Le7/f;

    .line 19
    .line 20
    new-instance v1, La7/k;

    .line 21
    .line 22
    invoke-direct {v1}, La7/k;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, La7/k;->f()Lcom/google/crypto/tink/internal/d$a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Le7/e;->Y()Le7/w;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/internal/d$a;->a(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Le7/v;

    .line 38
    .line 39
    invoke-static {}, Le7/d;->b0()Le7/d$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Le7/d$b;->t(Le7/f;)Le7/d$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Le7/d$b;->u(Le7/v;)Le7/d$b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lt6/e$b;->b:Lt6/e;

    .line 52
    .line 53
    invoke-virtual {v0}, Lt6/e;->n()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Le7/d$b;->v(I)Le7/d$b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Le7/d;

    .line 66
    .line 67
    return-object p1
.end method

.method public g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/e;->a0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Le7/e;)V
    .locals 2

    .line 1
    new-instance v0, Lt6/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lt6/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lt6/f;->f()Lcom/google/crypto/tink/internal/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Le7/e;->X()Le7/g;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/d$a;->e(Lcom/google/crypto/tink/shaded/protobuf/o0;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, La7/k;

    .line 18
    .line 19
    invoke-direct {v0}, La7/k;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, La7/k;->f()Lcom/google/crypto/tink/internal/d$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Le7/e;->Y()Le7/w;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/d$a;->e(Lcom/google/crypto/tink/shaded/protobuf/o0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Le7/e;->X()Le7/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Le7/g;->Y()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Lf7/r;->a(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

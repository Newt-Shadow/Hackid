.class Lt6/p$b;
.super Lcom/google/crypto/tink/internal/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/p;->f()Lcom/google/crypto/tink/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt6/p;


# direct methods
.method constructor <init>(Lt6/p;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/p$b;->b:Lt6/p;

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
    check-cast p1, Le7/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/p$b;->f(Le7/m;)Le7/l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ls6/l$b;->a:Ls6/l$b;

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    invoke-static {v2, v1}, Lt6/p;->k(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "AES128_GCM"

    .line 15
    .line 16
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object v3, Ls6/l$b;->c:Ls6/l$b;

    .line 20
    .line 21
    invoke-static {v2, v3}, Lt6/p;->k(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v4, "AES128_GCM_RAW"

    .line 26
    .line 27
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    invoke-static {v2, v1}, Lt6/p;->k(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "AES256_GCM"

    .line 37
    .line 38
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "AES256_GCM_RAW"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lt6/p;->k(ILs6/l$b;)Lcom/google/crypto/tink/internal/d$a$a;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt6/p$b;->g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/m;

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
    check-cast p1, Le7/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/p$b;->h(Le7/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Le7/m;)Le7/l;
    .locals 1

    .line 1
    invoke-static {}, Le7/l;->Z()Le7/l$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le7/m;->W()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lf7/p;->c(I)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->m([B)Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Le7/l$b;->t(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/l$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lt6/p$b;->b:Lt6/p;

    .line 22
    .line 23
    invoke-virtual {v0}, Lt6/p;->m()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Le7/l$b;->u(I)Le7/l$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Le7/l;

    .line 36
    .line 37
    return-object p1
.end method

.method public g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/m;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/m;->Y(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Le7/m;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Le7/m;->W()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lf7/r;->a(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

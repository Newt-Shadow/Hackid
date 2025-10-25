.class Lt6/h0$b;
.super Lcom/google/crypto/tink/internal/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/h0;->f()Lcom/google/crypto/tink/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt6/h0;


# direct methods
.method constructor <init>(Lt6/h0;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/h0$b;->b:Lt6/h0;

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
    check-cast p1, Le7/l0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/h0$b;->f(Le7/l0;)Le7/k0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/crypto/tink/internal/d$a$a;

    .line 7
    .line 8
    invoke-static {}, Le7/l0;->V()Le7/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Ls6/l$b;->a:Ls6/l$b;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/internal/d$a$a;-><init>(Ljava/lang/Object;Ls6/l$b;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "XCHACHA20_POLY1305"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/google/crypto/tink/internal/d$a$a;

    .line 23
    .line 24
    invoke-static {}, Le7/l0;->V()Le7/l0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Ls6/l$b;->c:Ls6/l$b;

    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/internal/d$a$a;-><init>(Ljava/lang/Object;Ls6/l$b;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "XCHACHA20_POLY1305_RAW"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt6/h0$b;->g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/l0;

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
    check-cast p1, Le7/l0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/h0$b;->h(Le7/l0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Le7/l0;)Le7/k0;
    .locals 1

    .line 1
    invoke-static {}, Le7/k0;->Z()Le7/k0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lt6/h0$b;->b:Lt6/h0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lt6/h0;->k()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Le7/k0$b;->u(I)Le7/k0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    invoke-static {v0}, Lf7/p;->c(I)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->m([B)Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Le7/k0$b;->t(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/k0$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Le7/k0;

    .line 34
    .line 35
    return-object p1
.end method

.method public g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/l0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/l0;->W(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/l0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Le7/l0;)V
    .locals 0

    .line 1
    return-void
.end method

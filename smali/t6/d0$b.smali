.class Lt6/d0$b;
.super Lcom/google/crypto/tink/internal/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/d0;->f()Lcom/google/crypto/tink/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt6/d0;


# direct methods
.method constructor <init>(Lt6/d0;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/d0$b;->b:Lt6/d0;

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
    check-cast p1, Le7/f0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/d0$b;->f(Le7/f0;)Le7/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt6/d0$b;->g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/f0;

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
    check-cast p1, Le7/f0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/d0$b;->h(Le7/f0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Le7/f0;)Le7/e0;
    .locals 1

    .line 1
    invoke-static {}, Le7/e0;->Z()Le7/e0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Le7/e0$b;->t(Le7/f0;)Le7/e0$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lt6/d0$b;->b:Lt6/d0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lt6/d0;->k()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Le7/e0$b;->u(I)Le7/e0$b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Le7/e0;

    .line 24
    .line 25
    return-object p1
.end method

.method public g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/f0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/f0;->X(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/f0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Le7/f0;)V
    .locals 0

    .line 1
    return-void
.end method

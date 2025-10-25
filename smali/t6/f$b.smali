.class Lt6/f$b;
.super Lcom/google/crypto/tink/internal/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/f;->f()Lcom/google/crypto/tink/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lt6/f;


# direct methods
.method constructor <init>(Lt6/f;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/f$b;->b:Lt6/f;

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
    check-cast p1, Le7/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/f$b;->f(Le7/g;)Le7/f;

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
    invoke-virtual {p0, p1}, Lt6/f$b;->g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/g;

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
    check-cast p1, Le7/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/f$b;->h(Le7/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Le7/g;)Le7/f;
    .locals 2

    .line 1
    invoke-static {}, Le7/f;->c0()Le7/f$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le7/g;->Z()Le7/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Le7/f$b;->u(Le7/h;)Le7/f$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Le7/g;->Y()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lf7/p;->c(I)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->m([B)Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Le7/f$b;->t(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/f$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lt6/f$b;->b:Lt6/f;

    .line 30
    .line 31
    invoke-virtual {v0}, Lt6/f;->l()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Le7/f$b;->v(I)Le7/f$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Le7/f;

    .line 44
    .line 45
    return-object p1
.end method

.method public g(Lcom/google/crypto/tink/shaded/protobuf/h;)Le7/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->b()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Le7/g;->b0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Le7/g;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Le7/g;->Y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lf7/r;->a(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lt6/f$b;->b:Lt6/f;

    .line 9
    .line 10
    invoke-virtual {p1}, Le7/g;->Z()Le7/h;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lt6/f;->k(Lt6/f;Le7/h;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

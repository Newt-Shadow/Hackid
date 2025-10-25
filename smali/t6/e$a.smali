.class Lt6/e$a;
.super Lcom/google/crypto/tink/internal/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/m;-><init>(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/crypto/tink/shaded/protobuf/o0;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le7/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/e$a;->c(Le7/d;)Ls6/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Le7/d;)Ls6/a;
    .locals 5

    .line 1
    new-instance v0, Lf7/h;

    .line 2
    .line 3
    new-instance v1, Lt6/f;

    .line 4
    .line 5
    invoke-direct {v1}, Lt6/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Le7/d;->Y()Le7/f;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lf7/l;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/d;->e(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lf7/l;

    .line 19
    .line 20
    new-instance v2, La7/k;

    .line 21
    .line 22
    invoke-direct {v2}, La7/k;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Le7/d;->Z()Le7/v;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-class v4, Ls6/t;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/google/crypto/tink/internal/d;->e(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ls6/t;

    .line 36
    .line 37
    invoke-virtual {p1}, Le7/d;->Z()Le7/v;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Le7/v;->a0()Le7/x;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Le7/x;->Z()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {v0, v1, v2, p1}, Lf7/h;-><init>(Lf7/l;Ls6/t;I)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

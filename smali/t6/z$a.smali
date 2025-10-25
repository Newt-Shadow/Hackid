.class Lt6/z$a;
.super Lcom/google/crypto/tink/internal/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/z;-><init>()V
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
    check-cast p1, Le7/r;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/z$a;->c(Le7/r;)Ls6/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Le7/r;)Ls6/a;
    .locals 1

    .line 1
    new-instance v0, Lf7/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Le7/r;->X()Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->F()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Lf7/g;-><init>([B)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

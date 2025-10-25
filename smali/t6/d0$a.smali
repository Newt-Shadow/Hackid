.class Lt6/d0$a;
.super Lcom/google/crypto/tink/internal/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/d0;-><init>()V
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
    check-cast p1, Le7/e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt6/d0$a;->c(Le7/e0;)Ls6/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Le7/e0;)Ls6/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Le7/e0;->X()Le7/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Le7/f0;->W()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ls6/s;->a(Ljava/lang/String;)Ls6/r;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Ls6/r;->b(Ljava/lang/String;)Ls6/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

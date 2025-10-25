.class Ls6/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/crypto/tink/internal/d$a;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/internal/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls6/i$a;->a:Lcom/google/crypto/tink/internal/d$a;

    .line 5
    .line 6
    return-void
.end method

.method private b(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/i$a;->a:Lcom/google/crypto/tink/internal/d$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/d$a;->e(Lcom/google/crypto/tink/shaded/protobuf/o0;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls6/i$a;->a:Lcom/google/crypto/tink/internal/d$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/d$a;->a(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method


# virtual methods
.method a(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/i$a;->a:Lcom/google/crypto/tink/internal/d$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/d$a;->d(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ls6/i$a;->b(Lcom/google/crypto/tink/shaded/protobuf/o0;)Lcom/google/crypto/tink/shaded/protobuf/o0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.class public abstract Lcom/google/crypto/tink/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/b$b;
    }
.end annotation


# instance fields
.field private final a:Lg7/a;

.field private final b:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lg7/a;Ljava/lang/Class;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/crypto/tink/internal/b;->a:Lg7/a;

    .line 4
    iput-object p2, p0, Lcom/google/crypto/tink/internal/b;->b:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lg7/a;Ljava/lang/Class;Lcom/google/crypto/tink/internal/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/b;-><init>(Lg7/a;Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Lcom/google/crypto/tink/internal/b$b;Lg7/a;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/crypto/tink/internal/b$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, Lcom/google/crypto/tink/internal/b$a;-><init>(Lg7/a;Ljava/lang/Class;Lcom/google/crypto/tink/internal/b$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final b()Lg7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/b;->a:Lg7/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/b;->b:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d(Lcom/google/crypto/tink/internal/q;Ls6/y;)Ls6/g;
.end method

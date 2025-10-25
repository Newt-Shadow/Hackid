.class Lcom/google/gson/internal/y$b$a;
.super Lcom/google/gson/internal/y$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/y$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/y$b;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/y$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/y$b$a;->e:Lcom/google/gson/internal/y$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/gson/internal/y$b;->a:Lcom/google/gson/internal/y;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/gson/internal/y$d;-><init>(Lcom/google/gson/internal/y;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/internal/y$d;->b()Lcom/google/gson/internal/y$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/internal/y$b$a;->c()Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

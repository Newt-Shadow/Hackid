.class Lcom/google/gson/internal/y$c$a;
.super Lcom/google/gson/internal/y$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/y$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/y$c;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/y$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/y$c$a;->e:Lcom/google/gson/internal/y$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/gson/internal/y$c;->a:Lcom/google/gson/internal/y;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/gson/internal/y$d;-><init>(Lcom/google/gson/internal/y;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/internal/y$d;->b()Lcom/google/gson/internal/y$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/gson/internal/y$e;->f:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method

.class public final Lge/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/e;->a(Lge/d;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lge/d;


# direct methods
.method constructor <init>(Lge/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lge/e$a;->b:Lge/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lge/d;->f()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lge/e$a;->a:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b()Lge/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lge/e$a;->b:Lge/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lge/d;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lge/e$a;->a:I

    .line 8
    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 10
    .line 11
    iput v3, p0, Lge/e$a;->a:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-interface {v0, v1}, Lge/d;->i(I)Lge/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lge/e$a;->a:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lge/e$a;->b()Lge/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

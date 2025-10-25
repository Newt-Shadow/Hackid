.class public Lo1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/List;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo1/k$a;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lo1/k$a;->b:Ljava/util/List;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lo1/k$a;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public varargs a([I)Lo1/k$a;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget v3, p0, Lo1/k$a;->a:I

    .line 8
    .line 9
    or-int/2addr v2, v3

    .line 10
    iput v2, p0, Lo1/k$a;->a:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lo1/k$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/k$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public c()Lo1/k;
    .locals 4

    .line 1
    new-instance v0, Lo1/k;

    .line 2
    .line 3
    iget v1, p0, Lo1/k$a;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lo1/k$a;->b:Ljava/util/List;

    .line 6
    .line 7
    iget v3, p0, Lo1/k$a;->c:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lo1/k;-><init>(ILjava/util/List;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public d(I)Lo1/k$a;
    .locals 0

    .line 1
    iput p1, p0, Lo1/k$a;->c:I

    .line 2
    .line 3
    return-object p0
.end method

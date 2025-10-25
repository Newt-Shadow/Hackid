.class public La0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, La0/k$a;->a:I

    .line 6
    iput-object p2, p0, La0/k$a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[La0/k$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, La0/k$a;->a:I

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La0/k$a;->b:Ljava/util/List;

    return-void
.end method

.method static a(ILjava/util/List;)La0/k$a;
    .locals 1

    .line 1
    new-instance v0, La0/k$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, La0/k$a;-><init>(ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static b(I[La0/k$b;)La0/k$a;
    .locals 1

    .line 1
    new-instance v0, La0/k$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, La0/k$a;-><init>(I[La0/k$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()[La0/k$b;
    .locals 2

    .line 1
    iget-object v0, p0, La0/k$a;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [La0/k$b;

    .line 9
    .line 10
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, La0/k$a;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, La0/k$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method f()Z
    .locals 2

    .line 1
    iget-object v0, p0, La0/k$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

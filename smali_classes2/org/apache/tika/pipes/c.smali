.class public final synthetic Lorg/apache/tika/pipes/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/apache/tika/pipes/PipesClient;

.field public final synthetic b:Lorg/apache/tika/pipes/FetchEmitTuple;

.field public final synthetic c:J

.field public final synthetic d:[Lorg/apache/tika/pipes/PipesResult;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tika/pipes/PipesClient;Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/pipes/c;->a:Lorg/apache/tika/pipes/PipesClient;

    iput-object p2, p0, Lorg/apache/tika/pipes/c;->b:Lorg/apache/tika/pipes/FetchEmitTuple;

    iput-wide p3, p0, Lorg/apache/tika/pipes/c;->c:J

    iput-object p5, p0, Lorg/apache/tika/pipes/c;->d:[Lorg/apache/tika/pipes/PipesResult;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/c;->a:Lorg/apache/tika/pipes/PipesClient;

    iget-object v1, p0, Lorg/apache/tika/pipes/c;->b:Lorg/apache/tika/pipes/FetchEmitTuple;

    iget-wide v2, p0, Lorg/apache/tika/pipes/c;->c:J

    iget-object v4, p0, Lorg/apache/tika/pipes/c;->d:[Lorg/apache/tika/pipes/PipesResult;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tika/pipes/PipesClient;->b(Lorg/apache/tika/pipes/PipesClient;Lorg/apache/tika/pipes/FetchEmitTuple;J[Lorg/apache/tika/pipes/PipesResult;)Lorg/apache/tika/pipes/PipesResult;

    move-result-object v0

    return-object v0
.end method

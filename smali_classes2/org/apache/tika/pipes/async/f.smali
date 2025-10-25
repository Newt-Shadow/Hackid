.class public final synthetic Lorg/apache/tika/pipes/async/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/apache/tika/pipes/async/AsyncProcessor;

.field public final synthetic b:Lorg/apache/tika/pipes/pipesiterator/TotalCounter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tika/pipes/async/AsyncProcessor;Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/pipes/async/f;->a:Lorg/apache/tika/pipes/async/AsyncProcessor;

    iput-object p2, p0, Lorg/apache/tika/pipes/async/f;->b:Lorg/apache/tika/pipes/pipesiterator/TotalCounter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/async/f;->a:Lorg/apache/tika/pipes/async/AsyncProcessor;

    iget-object v1, p0, Lorg/apache/tika/pipes/async/f;->b:Lorg/apache/tika/pipes/pipesiterator/TotalCounter;

    invoke-static {v0, v1}, Lorg/apache/tika/pipes/async/AsyncProcessor;->a(Lorg/apache/tika/pipes/async/AsyncProcessor;Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V

    return-void
.end method

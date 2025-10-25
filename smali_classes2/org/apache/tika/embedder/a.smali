.class public final synthetic Lorg/apache/tika/embedder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/embedder/a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/tika/embedder/a;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/embedder/a;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/tika/embedder/a;->b:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/apache/tika/embedder/ExternalEmbedder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

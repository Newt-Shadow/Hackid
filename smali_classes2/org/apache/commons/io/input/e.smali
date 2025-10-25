.class public abstract Lorg/apache/commons/io/input/e;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final afterRead:Lff/f;

.field private closed:Z

.field private final exceptionHandler:Lff/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/apache/commons/io/input/d;

    .line 5
    .line 6
    invoke-direct {p1}, Lorg/apache/commons/io/input/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/io/input/e;->exceptionHandler:Lff/c;

    .line 10
    .line 11
    sget-object p1, Lff/f;->a:Lff/f;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/input/e;->afterRead:Lff/f;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/e;->afterRead:Lff/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lff/f;->a(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/io/input/e;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method protected beforeRead(I)V
    .locals 0

    return-void
.end method

.method checkOpen()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/e;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/input/c;->a(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/e;->exceptionHandler:Lff/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lff/c;->accept(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/e;->closed:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->beforeRead(I)V

    .line 2
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V

    return v1
.end method

.method public read([B)I
    .locals 1

    .line 5
    :try_start_0
    invoke-static {p1}, Lcf/g;->t([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->beforeRead(I)V

    .line 6
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/e;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 9
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/e;->beforeRead(I)V

    .line 10
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/e;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public setReference(Ljava/io/InputStream;)Lorg/apache/commons/io/input/e;
    .locals 0

    .line 1
    iput-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public skip(J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/e;->handleIOException(Ljava/io/IOException;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1
.end method

.method public unwrap()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

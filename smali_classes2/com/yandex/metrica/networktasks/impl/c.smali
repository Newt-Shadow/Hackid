.class public Lcom/yandex/metrica/networktasks/impl/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/networktasks/impl/c;->a:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/networktasks/impl/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/yandex/metrica/impl/ob/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/l2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/yandex/metrica/impl/ob/P3;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/l2;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/P3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field c:Z

.field private final d:Lcom/yandex/metrica/impl/ob/yi;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/P3;Lcom/yandex/metrica/impl/ob/yi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/yi;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/w2;->a:Lcom/yandex/metrica/impl/ob/P3;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/w2;->d:Lcom/yandex/metrica/impl/ob/yi;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->c()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 13
    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->f()V

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :try_start_4
    throw v2

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 30
    throw v1
.end method

.method public e()Lcom/yandex/metrica/impl/ob/P3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->a:Lcom/yandex/metrica/impl/ob/P3;

    .line 2
    .line 3
    return-object v0
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->d:Lcom/yandex/metrica/impl/ob/yi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/yi;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

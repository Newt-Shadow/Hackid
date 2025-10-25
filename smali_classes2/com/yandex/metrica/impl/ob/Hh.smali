.class Lcom/yandex/metrica/impl/ob/Hh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/gm;

.field private final b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method constructor <init>(Ldc/d;Lcom/yandex/metrica/impl/ob/gm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ldc/d;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->b:J

    .line 9
    .line 10
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Hh;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Hh;->b:J

    .line 4
    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gm;->b(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->c:J

    .line 12
    .line 13
    return-void
.end method

.method b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Hh;->b:J

    .line 4
    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gm;->b(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->d:J

    .line 12
    .line 13
    return-void
.end method

.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->a:Lcom/yandex/metrica/impl/ob/gm;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Hh;->b:J

    .line 4
    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gm;->b(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->e:J

    .line 12
    .line 13
    return-void
.end method

.method d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hh;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

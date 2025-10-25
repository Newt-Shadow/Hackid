.class public final Lcom/yandex/metrica/impl/ob/h6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/j6;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/j6;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/j6;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/h6;->a:Lcom/yandex/metrica/impl/ob/j6;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/j6;->a()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/h6;->b:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/h6;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1

    if-eqz p2, :cond_2

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/h6;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/h6;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 5
    :goto_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/h6;->a:Lcom/yandex/metrica/impl/ob/j6;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/h6;->b:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/j6;->a(Ljava/util/Map;)V

    return-void
.end method

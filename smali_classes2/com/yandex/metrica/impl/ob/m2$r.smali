.class Lcom/yandex/metrica/impl/ob/m2$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$r;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$r;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ud;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Ud;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/Ud$a;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 34
    .line 35
    sget-object v5, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 36
    .line 37
    if-eq v4, v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-object v2, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$r;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 51
    .line 52
    new-instance v2, Lcom/yandex/metrica/impl/ob/Ud;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ud;->a:Lcom/yandex/metrica/impl/ob/ee;

    .line 55
    .line 56
    invoke-direct {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/Ud;-><init>(Lcom/yandex/metrica/impl/ob/ee;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v2}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

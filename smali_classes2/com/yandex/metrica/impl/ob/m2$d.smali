.class Lcom/yandex/metrica/impl/ob/m2$d;
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
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final c:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$d;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$d;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/m2$d;->c:Lcom/yandex/metrica/impl/ob/e9;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$d;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yandex/metrica/impl/ob/Z1;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$d;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->delete()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/Z1;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/Z1;->a:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Z1;->a:Ljava/util/Map;

    .line 29
    .line 30
    sget-object v1, Lcom/yandex/metrica/impl/ob/u0;->d:Lcom/yandex/metrica/impl/ob/u0;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/yandex/metrica/impl/ob/v3;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/v3;-><init>(Lcom/yandex/metrica/impl/ob/v3$a;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$d;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$d;->c:Lcom/yandex/metrica/impl/ob/e9;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/e9;->h()Lcom/yandex/metrica/impl/ob/e9;

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

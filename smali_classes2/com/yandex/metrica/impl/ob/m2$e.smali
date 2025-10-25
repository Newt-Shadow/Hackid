.class Lcom/yandex/metrica/impl/ob/m2$e;
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
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ae;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final c:Lcom/yandex/metrica/core/api/ProtobufStateStorage;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ae;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ae;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/m2$e;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/ae;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/ae;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$e;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$e;->c:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/m2$e;->a:Lcom/yandex/metrica/impl/ob/ae;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$e;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yandex/metrica/impl/ob/ee;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 15
    .line 16
    sget-object v2, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4, v1}, Lcom/yandex/metrica/impl/ob/Ud$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 33
    .line 34
    sget-object v2, Lcom/yandex/metrica/impl/ob/u0;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$e;->a:Lcom/yandex/metrica/impl/ob/ae;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ae;->a()Lcom/yandex/metrica/impl/ob/ee;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v2, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, v1, Lcom/yandex/metrica/impl/ob/ee;->b:Lorg/json/JSONObject;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 53
    .line 54
    invoke-direct {v2, v3, v4, v1}, Lcom/yandex/metrica/impl/ob/Ud$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ud;

    .line 61
    .line 62
    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Ud;-><init>(Lcom/yandex/metrica/impl/ob/ee;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$e;->c:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$e;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->delete()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

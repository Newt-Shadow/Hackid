.class Lcom/yandex/metrica/impl/ob/m2$h;
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
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$h;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$h;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$h;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Collection;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$h;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/td;

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v2, v3, p1}, Lcom/yandex/metrica/impl/ob/td;-><init>(Ljava/util/List;Lcom/yandex/metrica/impl/ob/z;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.class Lcom/yandex/metrica/impl/ob/m2$i;
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
    name = "i"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$i;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$i;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/qi;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/qi;->r:Lcom/yandex/metrica/impl/ob/Sh;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/qi;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/qi$b;->b(Z)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qi$b;->a()Lcom/yandex/metrica/impl/ob/qi;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

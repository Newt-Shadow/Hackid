.class Lcom/yandex/metrica/impl/ob/m2$c;
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
    name = "c"
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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$c;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$c;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yandex/metrica/impl/ob/qi;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$c;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qi;->r:Lcom/yandex/metrica/impl/ob/Sh;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/qi;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qi;->p:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/qi$b;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/qi$b;->a()Lcom/yandex/metrica/impl/ob/qi;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

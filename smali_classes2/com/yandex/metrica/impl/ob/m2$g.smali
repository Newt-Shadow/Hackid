.class Lcom/yandex/metrica/impl/ob/m2$g;
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
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private b:Lcom/yandex/metrica/impl/ob/f9;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/f9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$g;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$g;->b:Lcom/yandex/metrica/impl/ob/f9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$g;->b:Lcom/yandex/metrica/impl/ob/f9;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/f9;->g()Lcom/yandex/metrica/impl/ob/qi;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$g;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

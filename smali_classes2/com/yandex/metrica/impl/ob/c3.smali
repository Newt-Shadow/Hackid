.class public Lcom/yandex/metrica/impl/ob/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/n;


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private b:Lcom/yandex/metrica/impl/ob/X2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/X2;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/fa;->a(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/c3;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c3;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 4
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/X2;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c3;->b:Lcom/yandex/metrica/impl/ob/X2;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb/a;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c3;->b:Lcom/yandex/metrica/impl/ob/X2;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/X2;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzb/a;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzb/a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/X2;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/X2;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c3;->b:Lcom/yandex/metrica/impl/ob/X2;

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/c3;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c3;->b:Lcom/yandex/metrica/impl/ob/X2;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/X2;->b:Z

    .line 4
    .line 5
    return v0
.end method

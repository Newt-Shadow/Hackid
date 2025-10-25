.class Lcom/yandex/metrica/impl/ob/m2$u;
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
    name = "u"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/qi;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fa$b;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/fa;->b(Landroid/content/Context;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/yandex/metrica/impl/ob/qi;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/qi;->r:Lcom/yandex/metrica/impl/ob/Sh;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/qi;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-wide v2, v0, Lcom/yandex/metrica/impl/ob/qi;->u:J

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/qi$b;->a(Z)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/qi$b;->b(Z)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qi$b;->a()Lcom/yandex/metrica/impl/ob/qi;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

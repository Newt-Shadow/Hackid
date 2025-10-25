.class Lcom/yandex/metrica/impl/ob/m2$p;
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
    name = "p"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final b:Lcom/yandex/metrica/impl/ob/dj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/ij;

    new-instance v2, Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ij;-><init>(Lcom/yandex/metrica/impl/ob/pi$b;)V

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ej;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bj;)Lcom/yandex/metrica/impl/ob/dj;

    move-result-object p1

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/m2$p;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/dj;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/dj;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$p;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/m2$p;->b:Lcom/yandex/metrica/impl/ob/dj;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$p;->b:Lcom/yandex/metrica/impl/ob/dj;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dj;->a()Lcom/yandex/metrica/impl/ob/W0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$p;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/yandex/metrica/impl/ob/qi;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/qi;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$p;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/qi;->r:Lcom/yandex/metrica/impl/ob/Sh;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/qi;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qi$b;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qi$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/qi$b;->a()Lcom/yandex/metrica/impl/ob/qi;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v1, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

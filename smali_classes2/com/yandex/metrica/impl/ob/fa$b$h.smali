.class Lcom/yandex/metrica/impl/ob/fa$b$h;
.super Lcom/yandex/metrica/impl/ob/ga;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fa$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ga<",
        "Lcom/yandex/metrica/impl/ob/Z1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fa$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ga;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/R7;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;
    .locals 3

    .line 1
    new-instance p1, Lcom/yandex/metrica/impl/ob/l9;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/n9;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/n9;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/yandex/metrica/impl/ob/T9;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/T9;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "satellite_clids_info"

    .line 14
    .line 15
    invoke-direct {p1, v2, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/l9;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/R7;Lcom/yandex/metrica/core/api/ProtobufStateSerializer;Lcom/yandex/metrica/core/api/ProtobufConverter;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method protected c(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->n()Lcom/yandex/metrica/impl/ob/R7;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected d(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->o()Lcom/yandex/metrica/impl/ob/R7;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

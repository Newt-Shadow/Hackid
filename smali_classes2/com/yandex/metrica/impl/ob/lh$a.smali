.class Lcom/yandex/metrica/impl/ob/lh$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/yandex/metrica/impl/ob/Jf$e$b$a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->c:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 5
    .line 6
    const-string v1, "complete"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->d:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 12
    .line 13
    const-string v1, "error"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->a:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 19
    .line 20
    const-string v1, "offline"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->b:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 26
    .line 27
    const-string v1, "incompatible_network_type"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
.end method

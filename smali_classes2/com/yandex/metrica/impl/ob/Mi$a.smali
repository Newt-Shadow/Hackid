.class final Lcom/yandex/metrica/impl/ob/Mi$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Mi;->a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Tl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lid/l;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Tl$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Tl$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mi$a;->a:Lcom/yandex/metrica/impl/ob/Tl$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yandex/metrica/impl/ob/hd;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mi$a;->a:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/hd;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

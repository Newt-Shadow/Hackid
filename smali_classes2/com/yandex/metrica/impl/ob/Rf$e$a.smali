.class Lcom/yandex/metrica/impl/ob/Rf$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ll;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Rf$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Rf$e;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Rf$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf$e$a;->a:Lcom/yandex/metrica/impl/ob/Rf$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$e$a;->a:Lcom/yandex/metrica/impl/ob/Rf$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Rf$e;->a:Lcom/yandex/metrica/p$Ucc;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/yandex/metrica/p$Ucc;->onError(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResult(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$e$a;->a:Lcom/yandex/metrica/impl/ob/Rf$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Rf$e;->a:Lcom/yandex/metrica/p$Ucc;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/yandex/metrica/p$Ucc;->onResult(Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.class Lcom/yandex/metrica/impl/ob/Rf$b;
.super Lcom/yandex/metrica/impl/ob/dm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Rf;->a()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/dm<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Rf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Rf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf$b;->a:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dm;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$b;->a:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Rf;->a(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->k()Lcom/yandex/metrica/impl/ob/R2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/R2;->e()Lcom/yandex/metrica/impl/ob/Eb;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Eb;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

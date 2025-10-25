.class Lcom/yandex/metrica/impl/ob/Uf$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Uf;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Uf$r;->b:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Uf$r;->a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf$r;->b:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lf;->e()Lcom/yandex/metrica/impl/ob/Sf;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uf$r;->a:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

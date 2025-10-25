.class Lcom/yandex/metrica/impl/ob/rg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/vg;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/rg;->a:Lcom/yandex/metrica/impl/ob/vg;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/rg;->b:Ljava/lang/Throwable;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/rg;->a:Lcom/yandex/metrica/impl/ob/vg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rg;->b:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/vg;->a(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

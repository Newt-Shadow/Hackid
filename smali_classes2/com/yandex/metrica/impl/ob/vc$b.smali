.class Lcom/yandex/metrica/impl/ob/vc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/mc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mc;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/vc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/vc$b;->a:Lcom/yandex/metrica/impl/ob/mc;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc$b;->b:Lcom/yandex/metrica/impl/ob/vc;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc$b;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

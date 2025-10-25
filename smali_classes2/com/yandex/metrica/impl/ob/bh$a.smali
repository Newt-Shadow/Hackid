.class Lcom/yandex/metrica/impl/ob/bh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/bh;->a(Lcom/yandex/metrica/impl/ob/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ah;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/bh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bh;Lcom/yandex/metrica/impl/ob/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bh$a;->b:Lcom/yandex/metrica/impl/ob/bh;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bh$a;->a:Lcom/yandex/metrica/impl/ob/ah;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bh$a;->b:Lcom/yandex/metrica/impl/ob/bh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bh$a;->a:Lcom/yandex/metrica/impl/ob/ah;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bh;->a(Lcom/yandex/metrica/impl/ob/bh;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bh;->a(Lcom/yandex/metrica/impl/ob/bh;Lcom/yandex/metrica/impl/ob/ah;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

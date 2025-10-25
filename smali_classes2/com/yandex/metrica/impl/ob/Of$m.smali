.class Lcom/yandex/metrica/impl/ob/Of$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Of;->a(Lcom/yandex/metrica/impl/ob/H6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/H6;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Of;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of$m;->b:Lcom/yandex/metrica/impl/ob/Of;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Of$m;->a:Lcom/yandex/metrica/impl/ob/H6;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of$m;->b:Lcom/yandex/metrica/impl/ob/Of;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Of;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Of$m;->a:Lcom/yandex/metrica/impl/ob/H6;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R0;->a(Lcom/yandex/metrica/impl/ob/H6;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

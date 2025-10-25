.class Lcom/yandex/metrica/impl/ob/Uf$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Uf;->a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/YandexMetricaConfig;

.field final synthetic c:Lcom/yandex/metrica/j;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->d:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->b:Lcom/yandex/metrica/YandexMetricaConfig;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->c:Lcom/yandex/metrica/j;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->d:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lf;->e()Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->b:Lcom/yandex/metrica/YandexMetricaConfig;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->d:Lcom/yandex/metrica/impl/ob/Uf;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Lf;->c()Lcom/yandex/metrica/impl/ob/l0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Uf$k;->c:Lcom/yandex/metrica/j;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/l0;->a(Lcom/yandex/metrica/j;)Lcom/yandex/metrica/j;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/R2;->b(Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

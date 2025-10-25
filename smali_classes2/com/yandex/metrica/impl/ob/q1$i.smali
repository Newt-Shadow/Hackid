.class Lcom/yandex/metrica/impl/ob/q1$i;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/q1;->b(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/q1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/q1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q1$i;->b:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q1$i;->a:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q1$i;->b:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/q1;->c(Lcom/yandex/metrica/impl/ob/q1;)Lcom/yandex/metrica/impl/ob/p1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q1$i;->a:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/B1;->b(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

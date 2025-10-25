.class Lcom/yandex/metrica/impl/ob/q1$e;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/q1;->a(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/yandex/metrica/impl/ob/q1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/q1;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q1$e;->c:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q1$e;->a:Landroid/content/Intent;

    .line 4
    .line 5
    iput p3, p0, Lcom/yandex/metrica/impl/ob/q1$e;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q1$e;->c:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/q1;->c(Lcom/yandex/metrica/impl/ob/q1;)Lcom/yandex/metrica/impl/ob/p1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q1$e;->a:Landroid/content/Intent;

    .line 8
    .line 9
    iget v2, p0, Lcom/yandex/metrica/impl/ob/q1$e;->b:I

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/B1;->a(Landroid/content/Intent;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

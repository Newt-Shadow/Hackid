.class Lcom/yandex/metrica/impl/ob/q1$j;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/q1;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/yandex/metrica/impl/ob/q1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/q1;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q1$j;->e:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q1$j;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/yandex/metrica/impl/ob/q1$j;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/q1$j;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/q1$j;->d:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q1$j;->e:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/q1;->c(Lcom/yandex/metrica/impl/ob/q1;)Lcom/yandex/metrica/impl/ob/p1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q1$j;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/yandex/metrica/impl/ob/q1$j;->b:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/q1$j;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/q1$j;->d:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/p1;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

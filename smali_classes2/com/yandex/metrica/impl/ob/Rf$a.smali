.class Lcom/yandex/metrica/impl/ob/Rf$a;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Rf;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/IIdentifierCallback;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/Rf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Rf;Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->d:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->b:Lcom/yandex/metrica/IIdentifierCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->c:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->d:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Rf;->a(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->a:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->b:Lcom/yandex/metrica/IIdentifierCallback;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Rf$a;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/R2;->a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
